<?php

namespace App\Listeners\Backend\Domains;

/**
 * Class DomainEventListener.
 */
class DomainEventListener
{
    /**
     * @var string
     */
    private $history_slug = 'Domain';

    /**
     * @param $event
     */
    public function onCreated($event)
    {
        history()->withType($this->history_slug)
            ->withEntity($event->domain->id)
            ->withText('trans("history.backend.domains.created") <strong>'.$event->domain->domain_name.'</strong>')
            ->withIcon('plus')
            ->withClass('bg-green')
            ->log();
    }

    /**
     * @param $event
     */
    public function onUpdated($event)
    {
        history()->withType($this->history_slug)
            ->withEntity($event->domain->id)
            ->withText('trans("history.backend.domains.updated") <strong>'.$event->domain->domain_name.'</strong>')
            ->withIcon('save')
            ->withClass('bg-aqua')
            ->log();
    }

    /**
     * @param $event
     */
    public function onDeleted($event)
    {
        history()->withType($this->history_slug)
            ->withEntity($event->domain->id)
            ->withText('trans("history.backend.domains.deleted") <strong>'.$event->domain->domain_name.'</strong>')
            ->withIcon('trash')
            ->withClass('bg-maroon')
            ->log();
    }

    /**
     * Register the listeners for the subscriber.
     *
     * @param \Illuminate\Events\Dispatcher $events
     */
    public function subscribe($events)
    {
        $events->listen(
            \App\Events\Backend\Domains\DomainCreated::class,
            'App\Listeners\Backend\Domains\DomainEventListener@onCreated'
        );

        $events->listen(
            \App\Events\Backend\Domains\DomainUpdated::class,
            'App\Listeners\Backend\Domains\DomainEventListener@onUpdated'
        );

        $events->listen(
            \App\Events\Backend\Domains\DomainDeleted::class,
            'App\Listeners\Backend\Domains\DomainEventListener@onDeleted'
        );
    }
}

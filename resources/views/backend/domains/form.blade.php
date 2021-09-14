<div class="card-body">
    <div class="row">
        <div class="col-sm-5">
            <h4 class="card-title mb-0">
                {{ __('labels.backend.access.domains.management') }}
                <small class="text-muted">{{ (isset($domain)) ? __('labels.backend.access.domains.edit') : __('labels.backend.access.domains.create') }}</small>
            </h4>
        </div>
        <!--col-->
    </div>
    <!--row-->

    <hr>

    <div class="row mt-4 mb-4">
        <div class="col">
            <div class="form-group row">
                {{ Form::label('domain_name', 'Domain Name', ['class' => 'col-md-2 from-control-label required']) }}

                <div class="col-md-10">
                    {{ Form::text('domain_name', null, ['class' => 'form-control', 'placeholder' => trans('Domain Name'), 'required' => 'required']) }}
                </div>
                <!--col-->
            </div>
            <!--form-group-->

            <div class="form-group row">
                {{ Form::label('domain_url', 'Domain Url', ['class' => 'col-md-2 from-control-label required']) }}

                <div class="col-md-10">
                    {{ Form::text('domain_url', null, ['class' => 'form-control', 'placeholder' => trans('Domain Url')]) }}
                </div>
                <!--col-->
            </div>
            <!--form-group-->

            <div class="form-group row">
                {{ Form::label('domain_description','Domain Description', ['class' => 'col-md-2 from-control-label required']) }}

                <div class="col-md-10">
                    {{ Form::textarea('domain_description', null, ['class' => 'form-control', 'placeholder' => trans('Domain Description')]) }}
                </div>
                <!--col-->
            </div>
           
            <!--form-group-->

            <div class="form-group row">
                {{ Form::label('status','Status', ['class' => 'col-md-2 from-control-label required']) }}

                <div class="col-md-10">
                    <div class="checkbox d-flex align-items-center">
                        @php
                        $status = isset($domain) ? '' : 'checked';
                        @endphp
                        <label class="switch switch-label switch-pill switch-primary mr-2" for="role-1"><input class="switch-input" type="checkbox" name="status" id="role-1" value="1" {{ (isset($domain->status) && $domain->status === 1) ? "checked" : $status }}><span class="switch-slider" data-checked="on" data-unchecked="off"></span></label>
                    </div>
                </div>
                <!--col-->
            </div>
            <!--form-group-->
        </div>
        <!--col-->
    </div>
    <!--row-->
</div>
<!--card-body-->

@section('pagescript')
<script type="text/javascript">
    FTX.Utils.documentReady(function() {
        FTX.Domains.edit.init("{{ config('locale.languages.' . app()->getLocale())[1] }}");
    });
</script>
@stop
<div class="sidebar">
    <nav class="sidebar-nav">
        <ul class="nav">
            <li class="nav-title">
                @lang('menus.backend.sidebar.general')
            </li>
            <li class="nav-item">
                <a class="nav-link {{
                    active_class(Route::is('admin/dashboard'))
                }}" href="{{ route('admin.dashboard') }}">
                    <i class="nav-icon fas fa-tachometer-alt"></i>
                    @lang('menus.backend.sidebar.dashboard')
                </a>
            </li>

            @if ($logged_in_user->isAdmin())
                <li class="nav-title">
                    @lang('menus.backend.sidebar.system')
                </li>

                <li class="nav-item nav-dropdown {{
                    active_class(Route::is('admin/auth*'), 'open')
                }}">
                    <a class="nav-link nav-dropdown-toggle {{
                        active_class(Route::is('admin/auth*'))
                    }}" href="#">
                        <i class="nav-icon far fa-user"></i>
                        Profile
                    </a>

                    <ul class="nav-dropdown-items">
                        <li class="nav-item">
                            <a class="nav-link {{
                                active_class(Route::is('admin/auth/user*'))
                            }}" href="/admin/auth/user/1/edit">
                                Profile Update
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link {{
                                active_class(Route::is('admin/auth/user*'))
                            }}" href="/admin/auth/user/1/password/change">
                                Change Password
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="divider"></li>

                <!-- <li class="nav-item">
                    <a class="nav-link {{
                        active_class(Route::is('admin/pages'))
                    }}" href="{{ route('admin.pages.index') }}">
                        <i class="nav-icon fas fa-file"></i>
                        @lang('menus.backend.sidebar.pages')
                    </a>
                </li> -->

                <!-- <li class="divider"></li> -->

                <li class="nav-item">
                    <a class="nav-link {{
                        active_class(Route::is('admin/domain'))
                    }}" href="{{ route('admin.domains.index') }}">
                        <i class="nav-icon fas fa-file"></i>
                        Domain
                    </a>
                </li>

                <li class="divider"></li>

            @endif
        </ul>
    </nav>

    <button class="sidebar-minimizer brand-minimizer" type="button"></button>
</div><!--sidebar-->

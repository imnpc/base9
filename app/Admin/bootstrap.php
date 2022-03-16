<?php

/**
 * Laravel-admin - admin builder based on Laravel.
 * @author z-song <https://github.com/z-song>
 *
 * Bootstraper for Admin.
 *
 * Here you can remove builtin form field:
 * Encore\Admin\Form::forget(['map', 'editor']);
 *
 * Or extend custom form field:
 * Encore\Admin\Form::extend('php', PHPEditor::class);
 *
 * Or require js and css assets:
 * Admin::css('/packages/prettydocs/css/styles.css');
 * Admin::js('/packages/prettydocs/js/main.js');
 *
 */
use App\Admin\Actions;
use App\Admin\Extensions\Nav;
use Encore\Admin\Facades\Admin;

Encore\Admin\Form::forget(['map']);
Admin::navbar(function (\Encore\Admin\Widgets\Navbar $navbar) {
    if(Admin::user()){
        if(Admin::user()->isAdministrator()){
            $navbar->right(Nav\Link::make(__('Config'), 'configx/edit/0'));
        }
    }

    $navbar->right(new Actions\ClearCache());
});
app('view')->prependNamespace('admin', resource_path('views/admin'));

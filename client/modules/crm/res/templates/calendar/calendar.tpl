<link href="{{basePath}}client/modules/crm/css/fullcalendar.css" rel="stylesheet">
<link href="{{basePath}}client/modules/crm/css/fullcalendar.print.css" rel="stylesheet" media="print">

{{#if header}}
<div class="row button-container">
    <div class="col-sm-4 col-xs-3">
        <div class="btn-group range-switch-group">
            <button class="btn btn-default" data-action="prev"><span class="glyphicon glyphicon-chevron-left"></span></button>
            <button class="btn btn-default" data-action="next"><span class="glyphicon glyphicon-chevron-right"></span></button>
        </div>
        <button class="btn btn-default" data-action="today" title="{{translate 'Today' scope='Calendar'}}"><span class="hidden-xs">{{translate 'Today' scope='Calendar'}}</span><span class="visible-xs">{{todayShortLabel}}</span></button>
    </div>

    <div class="date-title col-sm-4 col-xs-4"><h4><span style="cursor: pointer;" data-action="refresh" title="{{translate 'Refresh'}}"></span></h4></div>

    <div class="col-sm-4 col-xs-5">
        <div class="btn-group pull-right">
            {{#each ../modeDataList}}
            <button class="btn btn-default{{#ifEqual this ../../mode}} active{{/ifEqual}}" data-action="mode" data-mode="{{name}}" title="{{translate name scope='Calendar' category='modes'}}"><span class="hidden-sm hidden-xs">{{translate name scope='Calendar' category='modes'}}</span><span class="visible-sm visible-xs">{{labelShort}}</span></button>
            {{/each}}
            <div class="btn-group" role="group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
                <ul class="dropdown-menu pull-right">
                    {{#each scopeFilterDataList}}
                        <li>
                            <a href="javascript:" data-action="toggleScopeFilter" data-name="{{scope}}">
                                <span class="glyphicon glyphicon-ok filter-check-icon pull-right{{#if disabled}} hidden{{/if}}"></span> {{translate scope category='scopeNamesPlural'}}
                            </a>
                        </li>
                    {{/each}}
                </ul>
            </div>
        </div>
    </div>
</div>
{{/if}}

<div class="calendar"></div>

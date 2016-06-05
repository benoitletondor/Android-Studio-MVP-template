<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

    <#include "activity_layout_recipe.xml.ftl" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="src/app_package/classes/Scope.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${scopeClass}.java" />

    <instantiate from="src/app_package/classes/Activity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <instantiate from="src/app_package/classes/View.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${viewClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${viewClass}.java" />

    <instantiate from="src/app_package/classes/Component.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${componentClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${componentClass}.java" />

    <instantiate from="src/app_package/classes/Module.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${moduleClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${moduleClass}.java" />

    <instantiate from="src/app_package/classes/PresenterImpl.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${presenterClass}Impl.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${presenterClass}Impl.java" />

    <instantiate from="src/app_package/classes/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${presenterClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${presenterClass}.java" />

    <instantiate from="src/app_package/classes/InteractorImpl.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${interactorClass}Impl.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${interactorClass}Impl.java" />

    <instantiate from="src/app_package/classes/Interactor.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${interactorClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${interactorClass}.java" />

</recipe>

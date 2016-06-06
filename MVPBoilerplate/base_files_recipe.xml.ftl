<recipe>
	<instantiate from="src/app_package/classes/App.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/${appClass}.java" />

    <instantiate from="src/app_package/classes/AppComponent.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/injection/AppComponent.java" />

    <instantiate from="src/app_package/classes/AppModule.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/injection/AppModule.java" />

    <instantiate from="src/app_package/classes/ActivityScope.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/injection/ActivityScope.java" />

    <instantiate from="src/app_package/classes/FragmentScope.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/injection/FragmentScope.java" />

    <instantiate from="src/app_package/classes/BaseActivity.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/view/impl/BaseActivity.java" />

    <instantiate from="src/app_package/classes/BaseFragment.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/view/impl/BaseFragment.java" />

    <instantiate from="src/app_package/classes/BasePresenter.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/presenter/BasePresenter.java" />

    <instantiate from="src/app_package/classes/BaseInteractor.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/interactor/BaseInteractor.java" />   
</recipe>

package ${packageName};

import javax.inject.Inject;

public final class ${activityClass} extends BaseActivity implements ${viewClass}
{
    @Inject 
    ${presenterClass} mPresenter;

    @Override
    protected void setupComponent(${parentComponentClass} parentComponent) 
    {
        new Dagger${componentClass}.builder()
        .${parentComponentClass?uncap_first}(parentComponent)
        .${moduleClass?uncap_first}(new ${moduleClass}(this))
        .build()
        .inject(this);
    }

    @Override
    protected BasePresenter getBasePresenter() 
    {
        return mPresenter;
    }  
}

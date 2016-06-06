package ${packageName}.view.impl;

import android.os.Bundle;
import android.support.annotation.NonNull;

import ${packageName}.R;
import ${packageName}.view.${viewClass};
import ${packageName}.presenter.BasePresenter;
import ${packageName}.presenter.${presenterClass};
import ${packageName}.injection.AppComponent;
import ${packageName}.injection.${moduleClass};
import ${packageName}.injection.Dagger${componentClass};

import javax.inject.Inject;

public final class ${activityClass} extends BaseActivity implements ${viewClass}
{
    @Inject 
    ${presenterClass} mPresenter;

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
    }

    @Override
    protected void setupComponent(@NonNull AppComponent parentComponent) 
    {
        Dagger${componentClass}.builder()
            .appComponent(parentComponent)
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

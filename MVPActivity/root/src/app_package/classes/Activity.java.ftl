package ${packageName}.view.impl;

import android.os.Bundle;
import android.support.annotation.NonNull;

import ${packageName}.R;
import ${packageName}.view.${viewClass};
import ${packageName}.presenter.loader.PresenterFactory;
import ${packageName}.presenter.${presenterClass};
import ${packageName}.injection.AppComponent;
import ${packageName}.injection.${moduleClass};
import ${packageName}.injection.Dagger${componentClass};

import javax.inject.Inject;

public final class ${activityClass} extends BaseActivity<${presenterClass}, ${viewClass}> implements ${viewClass}
{
    @Inject
    PresenterFactory<${presenterClass}> mPresenterFactory;

    // Your presenter is available using the mPresenter variable

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});

        // Your code here
        // Do not call mPresenter from here, it will be null! Wait for onStart or onPostCreate.
    }

    @Override
    protected void setupComponent(@NonNull AppComponent parentComponent) 
    {
        Dagger${componentClass}.builder()
            .appComponent(parentComponent)
            .${moduleClass?uncap_first}(new ${moduleClass}())
            .build()
            .inject(this);
    }

    @NonNull
    @Override
    protected PresenterFactory<${presenterClass}> getPresenterFactory()
    {
        return mPresenterFactory;
    }
}

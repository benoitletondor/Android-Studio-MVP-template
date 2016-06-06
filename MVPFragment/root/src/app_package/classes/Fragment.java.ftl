package ${packageName}.view.impl;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import ${packageName}.R;
import ${packageName}.view.${viewClass};
import ${packageName}.presenter.BasePresenter;
import ${packageName}.presenter.${presenterClass};
import ${packageName}.injection.AppComponent;
import ${packageName}.injection.${moduleClass};
import ${packageName}.injection.Dagger${componentClass};

import javax.inject.Inject;

public final class ${activityClass} extends BaseFragment implements ${viewClass}
{
    @Inject 
    ${presenterClass} mPresenter;

    public ${activityClass}()
    {
        // Required empty public constructor
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        final View v = inflater.inflate(R.layout.${layoutName}, container, false);

        return v;
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

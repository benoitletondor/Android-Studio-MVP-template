package ${packageName}.presenter.impl;

import android.os.Bundle;

import android.support.annotation.NonNull;

import ${packageName}.presenter.${presenterClass};
import ${packageName}.view.${viewClass};
import ${packageName}.interactor.${interactorClass};

import javax.inject.Inject;

public final class ${presenterClass}Impl implements ${presenterClass}
{
    /**
     * The view
     */
    @NonNull
    private final ${viewClass} mView;
    /**
     * The interactor
     */
    @NonNull
    private final ${interactorClass} mInteractor;

    @Inject
    public ${presenterClass}Impl(@NonNull ${viewClass} view, @NonNull ${interactorClass} interactor)
    {
    	mView = view;
    	mInteractor = interactor;
    }

    @Override
    public void onRestoreState(@NonNull Bundle savedInstanceState)
    {
        
    }

    @Override
    public void onStart(boolean firstStart)
    {

    }

    @Override
    public void onStop()
    {

    }

    @Override
    public void onSaveInstanceState(@NonNull Bundle outState)
    {

    }
}
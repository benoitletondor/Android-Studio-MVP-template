package ${packageName};

import android.support.annotation.NonNull;

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
}
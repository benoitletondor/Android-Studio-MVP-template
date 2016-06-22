package ${packageName}.presenter.loader;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.Loader;

import ${packageName}.presenter.BasePresenter;

/**
 * Loader that implements the loading of a Presenter, made to persist on activity recreation
 */
public final class PresenterLoader<T extends BasePresenter> extends Loader<T>
{
    /**
     * The presenter, will be null if not created yet
     */
    @Nullable
    private T mPresenter;
    /**
     * Factory to create the presenter
     */
    @NonNull
    private final PresenterFactory<T> mPresenterFactory;

// ---------------------------------------->

    public PresenterLoader(Context context, @NonNull PresenterFactory<T> presenterFactory)
    {
        super(context);

        mPresenterFactory = presenterFactory;
    }

    @Override
    protected void onStartLoading()
    {
        // if we already own a presenter instance, simply deliver it.
        if (mPresenter != null)
        {
            deliverResult(mPresenter);
            return;
        }

        // Otherwise, force a load
        forceLoad();
    }

    @Override
    protected void onForceLoad()
    {
        // Create the Presenter using the Factory
        mPresenter = mPresenterFactory.create();

        // Deliver the result
        deliverResult(mPresenter);
    }

    @Override
    protected void onReset()
    {
        if (mPresenter != null)
        {
            mPresenter.onPresenterDestroyed();
            mPresenter = null;
        }
    }
}

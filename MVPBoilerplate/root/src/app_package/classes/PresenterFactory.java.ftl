package ${packageName}.presenter.loader;

import android.support.annotation.NonNull;

import ${packageName}.presenter.BasePresenter;

/**
 * Factory to implement to create a presenter
 */
public interface PresenterFactory<T extends BasePresenter>
{
    @NonNull
    T create();
}

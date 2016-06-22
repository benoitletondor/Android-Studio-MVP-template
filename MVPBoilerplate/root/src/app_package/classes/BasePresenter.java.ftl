package ${packageName}.presenter;

import android.support.annotation.NonNull;

public interface BasePresenter<V>
{
    /**
     * Called when the view is attached to the presenter. Presenters should normally not use this
     * method since it's only used to link the view to the presenter which is done by the BasePresenter.
     *
     * @param view the view
     */
    void onViewAttached(@NonNull V view);

    /**
     * Called every time the view starts, the view is guarantee to be not null starting at this
     * method, until {@link #onStop()} is called.
     *
     * @param firstStart true if it's the first start of this presenter, only once in the presenter lifetime
     */
    void onStart(boolean firstStart);

    /**
     * Called every time the view stops. After this method, the view will be null until next 
     * {@link #onStart(boolean)} call.
     */
    void onStop();

    /**
     * Called when the view is detached from the presenter. Presenters should normally not use this
     * method since it's only used to unlink the view from the presenter which is done by the BasePresenter.
     */
    void onViewDetached();

    /**
     * Called when the presenter is definitely destroyed, you should use this method only to release
     * any resource used by the presenter (cancel HTTP requests, close database connection...).
     */
    void onPresenterDestroyed();
}
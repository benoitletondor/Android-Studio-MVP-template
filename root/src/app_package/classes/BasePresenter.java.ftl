package ${packageName}.presenter;

import android.os.Bundle;
import android.support.annotation.NonNull;

public interface BasePresenter
{
    /**
     * Should be called by the view when the state of a previous view restores
     *
     * @param savedInstanceState the saved state
     */
    void onRestoreState(@NonNull Bundle savedInstanceState);

    /**
     * Should be called by the view every time it starts
     *
     * @param firstStart is it the first start?
     */
    void onStart(boolean firstStart);

    /**
     * Should be called by the view every time it stops
     */
    void onStop();

    /**
     * Should be called by the view before being destroyed to save its current state
     *
     * @param outState bundle to put data into
     */
    void onSaveInstanceState(@NonNull Bundle outState);
}

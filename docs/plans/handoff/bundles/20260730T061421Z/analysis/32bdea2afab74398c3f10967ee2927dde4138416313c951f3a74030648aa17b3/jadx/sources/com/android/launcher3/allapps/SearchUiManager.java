package com.android.launcher3.allapps;

import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.animation.Interpolator;
import android.widget.EditText;
import com.android.launcher3.anim.PropertySetter;

/* loaded from: classes.dex */
public interface SearchUiManager {
    float getScrollRangeDelta(Rect rect);

    void initialize(AllAppsContainerView allAppsContainerView);

    default boolean isQsbVisible(int i) {
        return (i & 4) != 0;
    }

    void preDispatchKeyEvent(KeyEvent keyEvent);

    void resetSearch();

    void setContentVisibility(int i, PropertySetter propertySetter, Interpolator interpolator);

    EditText setTextSearchEnabled(boolean z);
}

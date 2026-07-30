package com.android.launcher3.allapps;

import android.graphics.Rect;
import android.view.animation.Interpolator;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.anim.PropertySetter;

/* loaded from: classes.dex */
public interface FloatingHeaderRow {
    public static final FloatingHeaderRow[] NO_ROWS = new FloatingHeaderRow[0];

    int getExpectedHeight();

    Class getTypeClass();

    boolean hasVisibleContent();

    void setContentVisibility(boolean z, boolean z2, PropertySetter propertySetter, Interpolator interpolator, Interpolator interpolator2);

    void setInsets(Rect rect, DeviceProfile deviceProfile);

    void setVerticalScroll(int i, boolean z);

    void setup(FloatingHeaderView floatingHeaderView, FloatingHeaderRow[] floatingHeaderRowArr, boolean z);

    boolean shouldDraw();
}

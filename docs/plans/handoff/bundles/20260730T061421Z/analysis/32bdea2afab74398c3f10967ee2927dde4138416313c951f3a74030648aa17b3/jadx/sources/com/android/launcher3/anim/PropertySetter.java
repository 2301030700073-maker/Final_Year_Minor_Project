package com.android.launcher3.anim;

import android.animation.TimeInterpolator;
import android.util.FloatProperty;
import android.util.IntProperty;
import android.view.View;

/* loaded from: classes.dex */
public interface PropertySetter {
    public static final PropertySetter NO_ANIM_PROPERTY_SETTER = new PropertySetter() { // from class: com.android.launcher3.anim.PropertySetter.1
    };

    default void setFloat(Object obj, FloatProperty floatProperty, float f, TimeInterpolator timeInterpolator) {
        floatProperty.setValue(obj, f);
    }

    default void setInt(Object obj, IntProperty intProperty, int i, TimeInterpolator timeInterpolator) {
        intProperty.setValue(obj, i);
    }

    default void setViewAlpha(View view, float f, TimeInterpolator timeInterpolator) {
        if (view != null) {
            view.setAlpha(f);
            AlphaUpdateListener.updateVisibility(view);
        }
    }
}

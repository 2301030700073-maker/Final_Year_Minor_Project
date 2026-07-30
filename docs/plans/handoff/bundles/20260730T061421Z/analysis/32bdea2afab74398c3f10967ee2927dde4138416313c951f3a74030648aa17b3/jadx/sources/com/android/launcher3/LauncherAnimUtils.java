package com.android.launcher3;

import android.graphics.drawable.Drawable;
import android.util.FloatProperty;
import android.util.IntProperty;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class LauncherAnimUtils {
    public static final FloatProperty VIEW_ALPHA;
    public static final FloatProperty VIEW_TRANSLATE_X;
    public static final FloatProperty VIEW_TRANSLATE_Y;
    public static final IntProperty DRAWABLE_ALPHA = new IntProperty("drawableAlpha") { // from class: com.android.launcher3.LauncherAnimUtils.1
        @Override // android.util.Property
        public Integer get(Object obj) {
            return Integer.valueOf(((Drawable) obj).getAlpha());
        }

        @Override // android.util.IntProperty
        public void setValue(Object obj, int i) {
            ((Drawable) obj).setAlpha(i);
        }
    };
    public static final FloatProperty SCALE_PROPERTY = new FloatProperty("scale") { // from class: com.android.launcher3.LauncherAnimUtils.2
        @Override // android.util.Property
        public Float get(Object obj) {
            return Float.valueOf(((View) obj).getScaleX());
        }

        @Override // android.util.FloatProperty
        public void setValue(Object obj, float f) {
            View view = (View) obj;
            view.setScaleX(f);
            view.setScaleY(f);
        }
    };
    public static final IntProperty LAYOUT_WIDTH = new IntProperty("width") { // from class: com.android.launcher3.LauncherAnimUtils.3
        @Override // android.util.Property
        public Integer get(Object obj) {
            return Integer.valueOf(((ViewGroup.LayoutParams) obj).width);
        }

        @Override // android.util.IntProperty
        public void setValue(Object obj, int i) {
            ((ViewGroup.LayoutParams) obj).width = i;
        }
    };
    public static final IntProperty LAYOUT_HEIGHT = new IntProperty("height") { // from class: com.android.launcher3.LauncherAnimUtils.4
        @Override // android.util.Property
        public Integer get(Object obj) {
            return Integer.valueOf(((ViewGroup.LayoutParams) obj).height);
        }

        @Override // android.util.IntProperty
        public void setValue(Object obj, int i) {
            ((ViewGroup.LayoutParams) obj).height = i;
        }
    };

    static {
        Property property = View.TRANSLATION_X;
        VIEW_TRANSLATE_X = property instanceof FloatProperty ? (FloatProperty) property : new FloatProperty("translateX") { // from class: com.android.launcher3.LauncherAnimUtils.5
            @Override // android.util.Property
            public Float get(Object obj) {
                return Float.valueOf(((View) obj).getTranslationX());
            }

            @Override // android.util.FloatProperty
            public void setValue(Object obj, float f) {
                ((View) obj).setTranslationX(f);
            }
        };
        Property property2 = View.TRANSLATION_Y;
        VIEW_TRANSLATE_Y = property2 instanceof FloatProperty ? (FloatProperty) property2 : new FloatProperty("translateY") { // from class: com.android.launcher3.LauncherAnimUtils.6
            @Override // android.util.Property
            public Float get(Object obj) {
                return Float.valueOf(((View) obj).getTranslationY());
            }

            @Override // android.util.FloatProperty
            public void setValue(Object obj, float f) {
                ((View) obj).setTranslationY(f);
            }
        };
        Property property3 = View.ALPHA;
        VIEW_ALPHA = property3 instanceof FloatProperty ? (FloatProperty) property3 : new FloatProperty("alpha") { // from class: com.android.launcher3.LauncherAnimUtils.7
            @Override // android.util.Property
            public Float get(Object obj) {
                return Float.valueOf(((View) obj).getAlpha());
            }

            @Override // android.util.FloatProperty
            public void setValue(Object obj, float f) {
                ((View) obj).setAlpha(f);
            }
        };
    }

    public static int blockedFlingDurationFactor(float f) {
        return (int) Utilities.boundToRange(Math.abs(f) / 2.0f, 2.0f, 6.0f);
    }
}

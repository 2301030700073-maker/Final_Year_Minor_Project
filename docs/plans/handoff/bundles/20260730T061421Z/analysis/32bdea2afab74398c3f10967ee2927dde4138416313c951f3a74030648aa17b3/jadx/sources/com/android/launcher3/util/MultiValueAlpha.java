package com.android.launcher3.util;

import android.util.FloatProperty;
import android.view.View;
import java.util.Arrays;

/* loaded from: classes.dex */
public class MultiValueAlpha {
    public static final FloatProperty VALUE = new FloatProperty("value") { // from class: com.android.launcher3.util.MultiValueAlpha.1
        @Override // android.util.Property
        public Float get(Object obj) {
            return Float.valueOf(((AlphaProperty) obj).mValue);
        }

        @Override // android.util.FloatProperty
        public void setValue(Object obj, float f) {
            ((AlphaProperty) obj).setValue(f);
        }
    };
    public final AlphaProperty[] mMyProperties;
    public int mValidMask = 0;
    public final View mView;

    public class AlphaProperty {
        public final int mMyMask;
        public float mValue = 1.0f;
        public float mOthers = 1.0f;

        public AlphaProperty(int i) {
            this.mMyMask = i;
        }

        public void setValue(float f) {
            if (this.mValue == f) {
                return;
            }
            MultiValueAlpha multiValueAlpha = MultiValueAlpha.this;
            if ((multiValueAlpha.mValidMask & this.mMyMask) == 0) {
                this.mOthers = 1.0f;
                for (AlphaProperty alphaProperty : multiValueAlpha.mMyProperties) {
                    if (alphaProperty != this) {
                        this.mOthers *= alphaProperty.mValue;
                    }
                }
            }
            MultiValueAlpha multiValueAlpha2 = MultiValueAlpha.this;
            multiValueAlpha2.mValidMask = this.mMyMask;
            this.mValue = f;
            multiValueAlpha2.mView.setAlpha(this.mOthers * f);
        }

        public String toString() {
            return Float.toString(this.mValue);
        }
    }

    public MultiValueAlpha(View view, int i) {
        this.mView = view;
        this.mMyProperties = new AlphaProperty[i];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = 1 << i2;
            this.mValidMask |= i3;
            this.mMyProperties[i2] = new AlphaProperty(i3);
        }
    }

    public String toString() {
        return Arrays.toString(this.mMyProperties);
    }
}

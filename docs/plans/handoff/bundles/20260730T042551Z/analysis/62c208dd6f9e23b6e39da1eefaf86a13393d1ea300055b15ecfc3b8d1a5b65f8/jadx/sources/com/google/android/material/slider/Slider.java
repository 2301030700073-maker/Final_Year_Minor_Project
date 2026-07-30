package com.google.android.material.slider;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.joeykrim.rootcheck.R;

/* loaded from: classes3.dex */
public class Slider extends BaseSlider<Slider, Object, Object> {
    public Slider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.sliderStyle);
    }

    @Override // com.google.android.material.slider.BaseSlider
    /* renamed from: native */
    public final boolean mo5901native() {
        if (this.f11395extends != -1) {
            return true;
        }
        this.f11395extends = 0;
        return true;
    }

    public Slider(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{android.R.attr.value});
        if (obtainStyledAttributes.hasValue(0)) {
            mo5907static(Float.valueOf(obtainStyledAttributes.getFloat(0, 0.0f)));
        }
        obtainStyledAttributes.recycle();
    }
}

package com.google.android.material.slider;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import com.joeykrim.rootcheck.R;
import defpackage.C0682aH;
import defpackage.O2;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class RangeSlider extends BaseSlider<RangeSlider, Object, Object> {

    /* renamed from: case, reason: not valid java name */
    public float f11447case;

    /* renamed from: volatile, reason: not valid java name */
    public int f11448volatile;

    public static class RangeSliderState extends AbsSavedState {
        public static final Parcelable.Creator<RangeSliderState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public float f11449do;

        /* renamed from: for, reason: not valid java name */
        public int f11450for;

        /* renamed from: com.google.android.material.slider.RangeSlider$RangeSliderState$do, reason: invalid class name */
        public class Cdo implements Parcelable.Creator<RangeSliderState> {
            @Override // android.os.Parcelable.Creator
            public final RangeSliderState createFromParcel(Parcel parcel) {
                return new RangeSliderState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final RangeSliderState[] newArray(int i) {
                return new RangeSliderState[i];
            }
        }

        public RangeSliderState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.f11449do);
            parcel.writeInt(this.f11450for);
        }

        public RangeSliderState(Parcel parcel) {
            super(parcel.readParcelable(RangeSliderState.class.getClassLoader()));
            this.f11449do = parcel.readFloat();
            this.f11450for = parcel.readInt();
        }
    }

    public RangeSlider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.sliderStyle);
    }

    @Override // com.google.android.material.slider.BaseSlider
    /* renamed from: break */
    public final ArrayList mo5885break() {
        return super.mo5885break();
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        RangeSliderState rangeSliderState = (RangeSliderState) parcelable;
        super.onRestoreInstanceState(rangeSliderState.getSuperState());
        this.f11447case = rangeSliderState.f11449do;
        int i = rangeSliderState.f11450for;
        this.f11448volatile = i;
        this.f11375continue = i;
        ((BaseSlider) this).f11434try = true;
        postInvalidate();
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public final Parcelable onSaveInstanceState() {
        RangeSliderState rangeSliderState = new RangeSliderState(super.onSaveInstanceState());
        rangeSliderState.f11449do = this.f11447case;
        rangeSliderState.f11450for = this.f11448volatile;
        return rangeSliderState;
    }

    @Override // com.google.android.material.slider.BaseSlider
    /* renamed from: static */
    public final void mo5907static(Float... fArr) {
        super.mo5907static(fArr);
    }

    @Override // com.google.android.material.slider.BaseSlider
    /* renamed from: this */
    public final float mo5911this() {
        return this.f11447case;
    }

    public RangeSlider(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray m3115new = C0682aH.m3115new(context, attributeSet, O2.e, i, R.style.Widget_MaterialComponents_Slider, new int[0]);
        if (m3115new.hasValue(1)) {
            TypedArray obtainTypedArray = m3115new.getResources().obtainTypedArray(m3115new.getResourceId(1, 0));
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                arrayList.add(Float.valueOf(obtainTypedArray.getFloat(i2, -1.0f)));
            }
            m5910switch(new ArrayList<>(arrayList));
        }
        this.f11447case = m3115new.getDimension(0, 0.0f);
        m3115new.recycle();
    }
}

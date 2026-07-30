package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.customview.view.AbsSavedState;
import defpackage.C3893w;
import defpackage.Cimplements;
import defpackage.QK;

/* loaded from: classes3.dex */
public class CheckableImageButton extends AppCompatImageButton implements Checkable {

    /* renamed from: do, reason: not valid java name */
    public static final int[] f11163do = {R.attr.state_checked};

    /* renamed from: for, reason: not valid java name */
    public boolean f11164for;

    /* renamed from: if, reason: not valid java name */
    public boolean f11165if;

    /* renamed from: new, reason: not valid java name */
    public boolean f11166new;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public boolean f11167do;

        /* renamed from: com.google.android.material.internal.CheckableImageButton$SavedState$do, reason: invalid class name */
        public class Cdo implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(super.f6568do, i);
            parcel.writeInt(this.f11167do ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f11167do = parcel.readInt() == 1;
        }
    }

    /* renamed from: com.google.android.material.internal.CheckableImageButton$do, reason: invalid class name */
    public class Cdo extends Cimplements {
        public Cdo() {
        }

        @Override // defpackage.Cimplements
        /* renamed from: for */
        public final void mo2847for(View view, AccessibilityEvent accessibilityEvent) {
            super.mo2847for(view, accessibilityEvent);
            accessibilityEvent.setChecked(CheckableImageButton.this.isChecked());
        }

        @Override // defpackage.Cimplements
        /* renamed from: new */
        public final void mo1356new(View view, C3893w c3893w) {
            View.AccessibilityDelegate accessibilityDelegate = ((Cimplements) this).f13562do;
            AccessibilityNodeInfo accessibilityNodeInfo = c3893w.f16161do;
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            CheckableImageButton checkableImageButton = CheckableImageButton.this;
            accessibilityNodeInfo.setCheckable(checkableImageButton.f11164for);
            accessibilityNodeInfo.setChecked(checkableImageButton.isChecked());
        }
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.joeykrim.rootcheck.R.attr.imageButtonStyle);
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f11165if;
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        return this.f11165if ? View.mergeDrawableStates(super.onCreateDrawableState(i + 1), f11163do) : super.onCreateDrawableState(i);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(((AbsSavedState) savedState).f6568do);
        setChecked(savedState.f11167do);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f11167do = this.f11165if;
        return savedState;
    }

    @Override // android.widget.Checkable
    public final void setChecked(boolean z) {
        if (!this.f11164for || this.f11165if == z) {
            return;
        }
        this.f11165if = z;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    @Override // android.view.View
    public final void setPressed(boolean z) {
        if (this.f11166new) {
            super.setPressed(z);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f11165if);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f11164for = true;
        this.f11166new = true;
        QK.m1858native(this, new Cdo());
    }
}

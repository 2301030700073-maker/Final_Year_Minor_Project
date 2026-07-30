package com.google.android.material.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import androidx.appcompat.widget.LinearLayoutCompat;
import defpackage.C0682aH;
import defpackage.O2;

/* loaded from: classes3.dex */
public class ForegroundLinearLayout extends LinearLayoutCompat {

    /* renamed from: class, reason: not valid java name */
    public int f11175class;

    /* renamed from: do, reason: not valid java name */
    public final Rect f11176do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f11177for;

    /* renamed from: if, reason: not valid java name */
    public final Rect f11178if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public Drawable f11179if;

    /* renamed from: new, reason: not valid java name */
    public boolean f11180new;

    public ForegroundLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f11179if;
        if (drawable != null) {
            if (this.f11180new) {
                this.f11180new = false;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                boolean z = this.f11177for;
                Rect rect = this.f11176do;
                if (z) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                int i = this.f11175class;
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                Rect rect2 = this.f11178if;
                Gravity.apply(i, intrinsicWidth, intrinsicHeight, rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    @TargetApi(21)
    public final void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.f11179if;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f11179if;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f11179if.setState(getDrawableState());
    }

    @Override // android.view.View
    public final Drawable getForeground() {
        return this.f11179if;
    }

    @Override // android.view.View
    public final int getForegroundGravity() {
        return this.f11175class;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f11179if;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f11180new = z | this.f11180new;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f11180new = true;
    }

    @Override // android.view.View
    public final void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f11179if;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f11179if);
            }
            this.f11179if = drawable;
            this.f11180new = true;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f11175class == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public final void setForegroundGravity(int i) {
        if (this.f11175class != i) {
            if ((8388615 & i) == 0) {
                i |= 8388611;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.f11175class = i;
            if (i == 119 && this.f11179if != null) {
                this.f11179if.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f11179if;
    }

    public ForegroundLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f11176do = new Rect();
        this.f11178if = new Rect();
        this.f11175class = 119;
        this.f11177for = true;
        this.f11180new = false;
        TypedArray m3115new = C0682aH.m3115new(context, attributeSet, O2.f2510static, i, 0, new int[0]);
        this.f11175class = m3115new.getInt(1, this.f11175class);
        Drawable drawable = m3115new.getDrawable(0);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f11177for = m3115new.getBoolean(2, true);
        m3115new.recycle();
    }
}

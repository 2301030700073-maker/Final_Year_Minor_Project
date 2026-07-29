package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v7.a.a;
import android.util.AttributeSet;
import android.widget.CompoundButton;

/* loaded from: classes.dex */
class k {
    private final CompoundButton a;
    private ColorStateList b = null;
    private PorterDuff.Mode c = null;
    private boolean d = false;
    private boolean e = false;
    private boolean f;

    k(CompoundButton compoundButton) {
        this.a = compoundButton;
    }

    int a(int i) {
        Drawable a;
        return (Build.VERSION.SDK_INT >= 17 || (a = android.support.v4.widget.c.a(this.a)) == null) ? i : i + a.getIntrinsicWidth();
    }

    ColorStateList a() {
        return this.b;
    }

    void a(ColorStateList colorStateList) {
        this.b = colorStateList;
        this.d = true;
        d();
    }

    void a(PorterDuff.Mode mode) {
        this.c = mode;
        this.e = true;
        d();
    }

    void a(AttributeSet attributeSet, int i) {
        int resourceId;
        TypedArray obtainStyledAttributes = this.a.getContext().obtainStyledAttributes(attributeSet, a.j.CompoundButton, i, 0);
        try {
            if (obtainStyledAttributes.hasValue(a.j.CompoundButton_android_button) && (resourceId = obtainStyledAttributes.getResourceId(a.j.CompoundButton_android_button, 0)) != 0) {
                this.a.setButtonDrawable(android.support.v7.b.a.b.b(this.a.getContext(), resourceId));
            }
            if (obtainStyledAttributes.hasValue(a.j.CompoundButton_buttonTint)) {
                android.support.v4.widget.c.a(this.a, obtainStyledAttributes.getColorStateList(a.j.CompoundButton_buttonTint));
            }
            if (obtainStyledAttributes.hasValue(a.j.CompoundButton_buttonTintMode)) {
                android.support.v4.widget.c.a(this.a, af.a(obtainStyledAttributes.getInt(a.j.CompoundButton_buttonTintMode, -1), null));
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    PorterDuff.Mode b() {
        return this.c;
    }

    void c() {
        if (this.f) {
            this.f = false;
        } else {
            this.f = true;
            d();
        }
    }

    void d() {
        Drawable a = android.support.v4.widget.c.a(this.a);
        if (a != null) {
            if (this.d || this.e) {
                Drawable mutate = android.support.v4.b.a.a.f(a).mutate();
                if (this.d) {
                    android.support.v4.b.a.a.a(mutate, this.b);
                }
                if (this.e) {
                    android.support.v4.b.a.a.a(mutate, this.c);
                }
                if (mutate.isStateful()) {
                    mutate.setState(this.a.getDrawableState());
                }
                this.a.setButtonDrawable(mutate);
            }
        }
    }
}

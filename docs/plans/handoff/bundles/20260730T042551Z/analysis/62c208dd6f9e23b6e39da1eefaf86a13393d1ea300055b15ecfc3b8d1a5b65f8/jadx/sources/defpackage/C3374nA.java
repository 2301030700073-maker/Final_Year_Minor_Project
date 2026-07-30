package defpackage;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* renamed from: nA, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3374nA extends Drawable implements InterfaceC3789uD, InterfaceC3734tH {

    /* renamed from: do, reason: not valid java name */
    public Cdo f14468do;

    public C3374nA(C3554qD c3554qD) {
        this(new Cdo(new C0716as(c3554qD)));
    }

    @Override // defpackage.InterfaceC3789uD
    /* renamed from: do */
    public final void mo4768do(C3554qD c3554qD) {
        this.f14468do.f14469do.mo4768do(c3554qD);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Cdo cdo = this.f14468do;
        if (cdo.f14470do) {
            cdo.f14469do.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f14468do;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.f14468do.f14469do.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        this.f14468do = new Cdo(this.f14468do);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f14468do.f14469do.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        if (this.f14468do.f14469do.setState(iArr)) {
            onStateChange = true;
        }
        boolean m7698new = C3433oA.m7698new(iArr);
        Cdo cdo = this.f14468do;
        if (cdo.f14470do == m7698new) {
            return onStateChange;
        }
        cdo.f14470do = m7698new;
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f14468do.f14469do.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f14468do.f14469do.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        this.f14468do.f14469do.setTint(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        this.f14468do.f14469do.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        this.f14468do.f14469do.setTintMode(mode);
    }

    public C3374nA(Cdo cdo) {
        this.f14468do = cdo;
    }

    /* renamed from: nA$do, reason: invalid class name */
    public static final class Cdo extends Drawable.ConstantState {

        /* renamed from: do, reason: not valid java name */
        public final C0716as f14469do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f14470do;

        public Cdo(C0716as c0716as) {
            this.f14469do = c0716as;
            this.f14470do = false;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new C3374nA(new Cdo(this));
        }

        public Cdo(Cdo cdo) {
            this.f14469do = (C0716as) cdo.f14469do.f8253do.newDrawable();
            this.f14470do = cdo.f14470do;
        }
    }
}

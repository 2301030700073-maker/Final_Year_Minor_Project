package defpackage;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;

/* renamed from: hN, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C2866hN extends Drawable implements Drawable.Callback, InterfaceC2807gN, InterfaceC3734tH {

    /* renamed from: if, reason: not valid java name */
    public static final PorterDuff.Mode f13298if = PorterDuff.Mode.SRC_IN;

    /* renamed from: do, reason: not valid java name */
    public PorterDuff.Mode f13299do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f13300do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3151jN f13301do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f13302do;

    /* renamed from: for, reason: not valid java name */
    public int f13303for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f13304if;

    public C2866hN(C3151jN c3151jN, Resources resources) {
        Drawable.ConstantState constantState;
        this.f13301do = c3151jN;
        if (c3151jN == null || (constantState = c3151jN.f13710do) == null) {
            return;
        }
        mo6731if(constantState.newDrawable(resources));
    }

    @Override // defpackage.InterfaceC2807gN
    /* renamed from: do */
    public final Drawable mo6730do() {
        return this.f13300do;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        this.f13300do.draw(canvas);
    }

    /* renamed from: for, reason: not valid java name */
    public boolean mo6794for() {
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        C3151jN c3151jN = this.f13301do;
        return changingConfigurations | (c3151jN != null ? c3151jN.getChangingConfigurations() : 0) | this.f13300do.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        C3151jN c3151jN = this.f13301do;
        if (c3151jN == null) {
            return null;
        }
        if (!(c3151jN.f13710do != null)) {
            return null;
        }
        c3151jN.f13707do = getChangingConfigurations();
        return this.f13301do;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable getCurrent() {
        return this.f13300do.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f13300do.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f13300do.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getLayoutDirection() {
        return C0426Pe.m1780if(this.f13300do);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() {
        return this.f13300do.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() {
        return this.f13300do.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.f13300do.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        return this.f13300do.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final int[] getState() {
        return this.f13300do.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        return this.f13300do.getTransparentRegion();
    }

    @Override // defpackage.InterfaceC2807gN
    /* renamed from: if */
    public final void mo6731if(Drawable drawable) {
        Drawable drawable2 = this.f13300do;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f13300do = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            C3151jN c3151jN = this.f13301do;
            if (c3151jN != null) {
                c3151jN.f13710do = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.f13300do.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        C3151jN c3151jN;
        ColorStateList colorStateList = (!mo6794for() || (c3151jN = this.f13301do) == null) ? null : c3151jN.f13708do;
        return (colorStateList != null && colorStateList.isStateful()) || this.f13300do.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        this.f13300do.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.f13304if && super.mutate() == this) {
            this.f13301do = new C3151jN(this.f13301do);
            Drawable drawable = this.f13300do;
            if (drawable != null) {
                drawable.mutate();
            }
            C3151jN c3151jN = this.f13301do;
            if (c3151jN != null) {
                Drawable drawable2 = this.f13300do;
                c3151jN.f13710do = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.f13304if = true;
        }
        return this;
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m6795new(int[] iArr) {
        if (!mo6794for()) {
            return false;
        }
        C3151jN c3151jN = this.f13301do;
        ColorStateList colorStateList = c3151jN.f13708do;
        PorterDuff.Mode mode = c3151jN.f13709do;
        if (colorStateList == null || mode == null) {
            this.f13302do = false;
            clearColorFilter();
        } else {
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (!this.f13302do || colorForState != this.f13303for || mode != this.f13299do) {
                setColorFilter(colorForState, mode);
                this.f13303for = colorForState;
                this.f13299do = mode;
                this.f13302do = true;
                return true;
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f13300do;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i) {
        return C0426Pe.m1778for(this.f13300do, i);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        return this.f13300do.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f13300do.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        this.f13300do.setAutoMirrored(z);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setChangingConfigurations(int i) {
        this.f13300do.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f13300do.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setDither(boolean z) {
        this.f13300do.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setFilterBitmap(boolean z) {
        this.f13300do.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return m6795new(iArr) || this.f13300do.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f13301do.f13708do = colorStateList;
        m6795new(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f13301do.f13709do = mode;
        m6795new(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f13300do.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    public C2866hN(Drawable drawable) {
        this.f13301do = new C3151jN(this.f13301do);
        mo6731if(drawable);
    }
}

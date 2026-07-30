package defpackage;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import java.lang.reflect.Method;

/* renamed from: iN, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2925iN extends C2866hN {

    /* renamed from: do, reason: not valid java name */
    public static Method f13496do;

    public C2925iN(Drawable drawable) {
        super(drawable);
        if (f13496do == null) {
            try {
                f13496do = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Exception unused) {
            }
        }
    }

    @Override // defpackage.C2866hN
    /* renamed from: for */
    public final boolean mo6794for() {
        if (Build.VERSION.SDK_INT != 21) {
            return false;
        }
        Drawable drawable = ((C2866hN) this).f13300do;
        return (drawable instanceof GradientDrawable) || (drawable instanceof DrawableContainer) || (drawable instanceof InsetDrawable) || (drawable instanceof RippleDrawable);
    }

    @Override // android.graphics.drawable.Drawable
    public final Rect getDirtyBounds() {
        return ((C2866hN) this).f13300do.getDirtyBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        ((C2866hN) this).f13300do.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isProjected() {
        Method method;
        Drawable drawable = ((C2866hN) this).f13300do;
        if (drawable != null && (method = f13496do) != null) {
            try {
                return ((Boolean) method.invoke(drawable, new Object[0])).booleanValue();
            } catch (Exception unused) {
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspot(float f, float f2) {
        ((C2866hN) this).f13300do.setHotspot(f, f2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspotBounds(int i, int i2, int i3, int i4) {
        ((C2866hN) this).f13300do.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // defpackage.C2866hN, android.graphics.drawable.Drawable
    public final boolean setState(int[] iArr) {
        if (!super.setState(iArr)) {
            return false;
        }
        invalidateSelf();
        return true;
    }

    @Override // defpackage.C2866hN, android.graphics.drawable.Drawable
    public final void setTint(int i) {
        if (mo6794for()) {
            super.setTint(i);
        } else {
            ((C2866hN) this).f13300do.setTint(i);
        }
    }

    @Override // defpackage.C2866hN, android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        if (mo6794for()) {
            super.setTintList(colorStateList);
        } else {
            ((C2866hN) this).f13300do.setTintList(colorStateList);
        }
    }

    @Override // defpackage.C2866hN, android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        if (mo6794for()) {
            super.setTintMode(mode);
        } else {
            ((C2866hN) this).f13300do.setTintMode(mode);
        }
    }

    public C2925iN(C3151jN c3151jN, Resources resources) {
        super(c3151jN, resources);
        if (f13496do == null) {
            try {
                f13496do = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Exception unused) {
            }
        }
    }
}

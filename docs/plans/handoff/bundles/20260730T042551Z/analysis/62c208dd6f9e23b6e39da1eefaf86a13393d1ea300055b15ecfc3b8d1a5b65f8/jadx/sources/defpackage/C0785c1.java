package defpackage;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import defpackage.C0426Pe;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* renamed from: c1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0785c1 extends AbstractC2745fK implements Animatable {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f8467for = 0;

    /* renamed from: do, reason: not valid java name */
    public final Context f8468do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f8469do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f8470do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C2609d1 f8471do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ArrayList<X0> f8472do;

    /* renamed from: c1$do, reason: invalid class name */
    public class Cdo implements Drawable.Callback {
        public Cdo() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void invalidateDrawable(Drawable drawable) {
            C0785c1.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            C0785c1.this.scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            C0785c1.this.unscheduleSelf(runnable);
        }
    }

    /* renamed from: c1$if, reason: invalid class name */
    public static class Cif extends Drawable.ConstantState {

        /* renamed from: do, reason: not valid java name */
        public F2<Animator, String> f8475do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public AnimatorSet f8476do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C2804gK f8477do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public ArrayList<Animator> f8478do;

        public Cif(Cdo cdo) {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    public C0785c1() {
        this(null);
    }

    @Override // defpackage.AbstractC2745fK, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            C0426Pe.Cdo.m1784do(drawable, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            return C0426Pe.Cdo.m1788if(drawable);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        Cif cif = this.f8470do;
        cif.f8477do.draw(canvas);
        if (cif.f8476do.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        return drawable != null ? drawable.getAlpha() : this.f8470do.f8477do.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        int changingConfigurations = super.getChangingConfigurations();
        this.f8470do.getClass();
        return changingConfigurations | 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        return drawable != null ? C0426Pe.Cdo.m1786for(drawable) : this.f8470do.f8477do.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (((AbstractC2745fK) this).f12895do == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new Cfor(((AbstractC2745fK) this).f12895do.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f8470do.f8477do.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f8470do.f8477do.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        return drawable != null ? drawable.getOpacity() : this.f8470do.f8477do.getOpacity();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x013b, code lost:
    
        if (r8.f8476do != null) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x013d, code lost:
    
        r8.f8476do = new android.animation.AnimatorSet();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0144, code lost:
    
        r8.f8476do.playTogether(r8.f8478do);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x014b, code lost:
    
        return;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void inflate(android.content.res.Resources r21, org.xmlpull.v1.XmlPullParser r22, android.util.AttributeSet r23, android.content.res.Resources.Theme r24) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0785c1.inflate(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        return drawable != null ? drawable.isAutoMirrored() : this.f8470do.f8477do.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.f8470do.f8476do.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        return drawable != null ? drawable.isStateful() : this.f8470do.f8477do.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f8470do.f8477do.setBounds(rect);
        }
    }

    @Override // defpackage.AbstractC2745fK, android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        return drawable != null ? drawable.setLevel(i) : this.f8470do.f8477do.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        return drawable != null ? drawable.setState(iArr) : this.f8470do.f8477do.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else {
            this.f8470do.f8477do.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            drawable.setAutoMirrored(z);
        } else {
            this.f8470do.f8477do.setAutoMirrored(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f8470do.f8477do.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            C0426Pe.m1781new(drawable, i);
        } else {
            this.f8470do.f8477do.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            C0426Pe.m1782try(drawable, colorStateList);
        } else {
            this.f8470do.f8477do.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            C0426Pe.m1775case(drawable, mode);
        } else {
            this.f8470do.f8477do.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.f8470do.f8477do.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
            return;
        }
        Cif cif = this.f8470do;
        if (cif.f8476do.isStarted()) {
            return;
        }
        cif.f8476do.start();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f8470do.f8476do.end();
        }
    }

    public C0785c1(Context context) {
        this.f8471do = null;
        this.f8472do = null;
        Cdo cdo = new Cdo();
        this.f8469do = cdo;
        this.f8468do = context;
        this.f8470do = new Cif(cdo);
    }

    /* renamed from: c1$for, reason: invalid class name */
    public static class Cfor extends Drawable.ConstantState {

        /* renamed from: do, reason: not valid java name */
        public final Drawable.ConstantState f8474do;

        public Cfor(Drawable.ConstantState constantState) {
            this.f8474do = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final boolean canApplyTheme() {
            return this.f8474do.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.f8474do.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            C0785c1 c0785c1 = new C0785c1();
            Drawable newDrawable = this.f8474do.newDrawable();
            ((AbstractC2745fK) c0785c1).f12895do = newDrawable;
            newDrawable.setCallback(c0785c1.f8469do);
            return c0785c1;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            C0785c1 c0785c1 = new C0785c1();
            Drawable newDrawable = this.f8474do.newDrawable(resources);
            ((AbstractC2745fK) c0785c1).f12895do = newDrawable;
            newDrawable.setCallback(c0785c1.f8469do);
            return c0785c1;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C0785c1 c0785c1 = new C0785c1();
            Drawable newDrawable = this.f8474do.newDrawable(resources, theme);
            ((AbstractC2745fK) c0785c1).f12895do = newDrawable;
            newDrawable.setCallback(c0785c1.f8469do);
            return c0785c1;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}

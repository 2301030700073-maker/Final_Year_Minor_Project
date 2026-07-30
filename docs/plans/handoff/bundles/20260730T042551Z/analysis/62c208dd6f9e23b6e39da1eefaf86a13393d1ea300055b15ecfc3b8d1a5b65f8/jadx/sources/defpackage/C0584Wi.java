package defpackage;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import com.google.android.material.floatingactionbutton.Cnew;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.joeykrim.rootcheck.R;
import java.util.ArrayList;

/* renamed from: Wi, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0584Wi extends Cnew {

    /* renamed from: do, reason: not valid java name */
    public StateListAnimator f4396do;

    /* renamed from: Wi$do, reason: invalid class name */
    public static class Cdo extends C0716as {
        public Cdo(C3554qD c3554qD) {
            super(c3554qD);
        }

        @Override // defpackage.C0716as, android.graphics.drawable.Drawable
        public final boolean isStateful() {
            return true;
        }
    }

    public C0584Wi(FloatingActionButton floatingActionButton, FloatingActionButton.Cdo cdo) {
        super(floatingActionButton, cdo);
    }

    @Override // com.google.android.material.floatingactionbutton.Cnew
    /* renamed from: break, reason: not valid java name */
    public final void mo2750break(float f, float f2, float f3) {
        int i = Build.VERSION.SDK_INT;
        FloatingActionButton floatingActionButton = ((Cnew) this).f11110do;
        if (i == 21) {
            floatingActionButton.refreshDrawableState();
        } else if (floatingActionButton.getStateListAnimator() == this.f4396do) {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(Cnew.f11090do, m2757throw(f, f3));
            stateListAnimator.addState(Cnew.f11093if, m2757throw(f, f2));
            stateListAnimator.addState(Cnew.f11092for, m2757throw(f, f2));
            stateListAnimator.addState(Cnew.f11095new, m2757throw(f, f2));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, "elevation", f).setDuration(0L));
            if (i >= 22 && i <= 24) {
                arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, floatingActionButton.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(Cnew.f11089do);
            stateListAnimator.addState(Cnew.f11097try, animatorSet);
            stateListAnimator.addState(Cnew.f11088case, m2757throw(0.0f, 0.0f));
            this.f4396do = stateListAnimator;
            floatingActionButton.setStateListAnimator(stateListAnimator);
        }
        if (mo2752const()) {
            m5834super();
        }
    }

    @Override // com.google.android.material.floatingactionbutton.Cnew
    /* renamed from: case, reason: not valid java name */
    public final void mo2751case(Rect rect) {
        if (FloatingActionButton.this.f11071do) {
            super.mo2751case(rect);
            return;
        }
        boolean z = ((Cnew) this).f11114do;
        FloatingActionButton floatingActionButton = ((Cnew) this).f11110do;
        if (!z || floatingActionButton.m5821else(floatingActionButton.f11074new) >= ((Cnew) this).f11099do) {
            rect.set(0, 0, 0, 0);
        } else {
            int m5821else = (((Cnew) this).f11099do - floatingActionButton.m5821else(floatingActionButton.f11074new)) / 2;
            rect.set(m5821else, m5821else, m5821else, m5821else);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023 A[ORIG_RETURN, RETURN] */
    @Override // com.google.android.material.floatingactionbutton.Cnew
    /* renamed from: const, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo2752const() {
        /*
            r4 = this;
            pD r0 = r4.f11112do
            com.google.android.material.floatingactionbutton.FloatingActionButton$do r0 = (com.google.android.material.floatingactionbutton.FloatingActionButton.Cdo) r0
            com.google.android.material.floatingactionbutton.FloatingActionButton r0 = com.google.android.material.floatingactionbutton.FloatingActionButton.this
            boolean r0 = r0.f11071do
            r1 = 1
            if (r0 != 0) goto L24
            boolean r0 = r4.f11114do
            r2 = 0
            if (r0 == 0) goto L1f
            com.google.android.material.floatingactionbutton.FloatingActionButton r0 = r4.f11110do
            int r3 = r0.f11074new
            int r0 = r0.m5821else(r3)
            int r3 = r4.f11099do
            if (r0 < r3) goto L1d
            goto L1f
        L1d:
            r0 = 0
            goto L20
        L1f:
            r0 = 1
        L20:
            if (r0 != 0) goto L23
            goto L24
        L23:
            r1 = 0
        L24:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0584Wi.mo2752const():boolean");
    }

    @Override // com.google.android.material.floatingactionbutton.Cnew
    /* renamed from: else, reason: not valid java name */
    public final void mo2753else(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        Drawable drawable;
        C0716as m2759while = m2759while();
        ((Cnew) this).f11109do = m2759while;
        m2759while.setTintList(colorStateList);
        if (mode != null) {
            ((Cnew) this).f11109do.setTintMode(mode);
        }
        C0716as c0716as = ((Cnew) this).f11109do;
        FloatingActionButton floatingActionButton = ((Cnew) this).f11110do;
        c0716as.m4766class(floatingActionButton.getContext());
        if (i > 0) {
            Context context = floatingActionButton.getContext();
            C3554qD c3554qD = ((Cnew) this).f11113do;
            c3554qD.getClass();
            C5 c5 = new C5(c3554qD);
            int color = C0466Ra.getColor(context, R.color.design_fab_stroke_top_outer_color);
            int color2 = C0466Ra.getColor(context, R.color.design_fab_stroke_top_inner_color);
            int color3 = C0466Ra.getColor(context, R.color.design_fab_stroke_end_inner_color);
            int color4 = C0466Ra.getColor(context, R.color.design_fab_stroke_end_outer_color);
            c5.f316do = color;
            c5.f327if = color2;
            c5.f326for = color3;
            c5.f329new = color4;
            float f = i;
            if (c5.f315do != f) {
                c5.f315do = f;
                c5.f319do.setStrokeWidth(f * 1.3333f);
                c5.f325do = true;
                c5.invalidateSelf();
            }
            if (colorStateList != null) {
                c5.f330try = colorStateList.getColorForState(c5.getState(), c5.f330try);
            }
            c5.f318do = colorStateList;
            c5.f325do = true;
            c5.invalidateSelf();
            ((Cnew) this).f11100do = c5;
            C5 c52 = ((Cnew) this).f11100do;
            c52.getClass();
            C0716as c0716as2 = ((Cnew) this).f11109do;
            c0716as2.getClass();
            drawable = new LayerDrawable(new Drawable[]{c52, c0716as2});
        } else {
            ((Cnew) this).f11100do = null;
            drawable = ((Cnew) this).f11109do;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(C3433oA.m7696for(colorStateList2), drawable, null);
        ((Cnew) this).f11107do = rippleDrawable;
        ((Cnew) this).f11108do = rippleDrawable;
    }

    @Override // com.google.android.material.floatingactionbutton.Cnew
    /* renamed from: final, reason: not valid java name */
    public final void mo2754final() {
    }

    @Override // com.google.android.material.floatingactionbutton.Cnew
    /* renamed from: goto, reason: not valid java name */
    public final void mo2755goto() {
    }

    @Override // com.google.android.material.floatingactionbutton.Cnew
    /* renamed from: this, reason: not valid java name */
    public final void mo2756this(int[] iArr) {
        if (Build.VERSION.SDK_INT == 21) {
            FloatingActionButton floatingActionButton = ((Cnew) this).f11110do;
            if (!floatingActionButton.isEnabled()) {
                floatingActionButton.setElevation(0.0f);
                floatingActionButton.setTranslationZ(0.0f);
                return;
            }
            floatingActionButton.setElevation(((Cnew) this).f11098do);
            if (floatingActionButton.isPressed()) {
                floatingActionButton.setTranslationZ(((Cnew) this).f11115for);
            } else if (floatingActionButton.isFocused() || floatingActionButton.isHovered()) {
                floatingActionButton.setTranslationZ(((Cnew) this).f11118if);
            } else {
                floatingActionButton.setTranslationZ(0.0f);
            }
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public final AnimatorSet m2757throw(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        FloatingActionButton floatingActionButton = ((Cnew) this).f11110do;
        animatorSet.play(ObjectAnimator.ofFloat(floatingActionButton, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(Cnew.f11089do);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.Cnew
    /* renamed from: try, reason: not valid java name */
    public final float mo2758try() {
        return ((Cnew) this).f11110do.getElevation();
    }

    /* renamed from: while, reason: not valid java name */
    public final C0716as m2759while() {
        C3554qD c3554qD = ((Cnew) this).f11113do;
        c3554qD.getClass();
        return new Cdo(c3554qD);
    }
}

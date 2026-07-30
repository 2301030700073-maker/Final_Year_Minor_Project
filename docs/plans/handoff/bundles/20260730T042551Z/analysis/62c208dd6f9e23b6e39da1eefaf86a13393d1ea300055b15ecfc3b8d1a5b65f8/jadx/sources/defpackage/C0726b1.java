package defpackage;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.res.Resources;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import defpackage.C0448Qe;
import defpackage.C2799gF;

/* renamed from: b1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0726b1 extends C2799gF implements InterfaceC3734tH {

    /* renamed from: case, reason: not valid java name */
    public int f8305case;

    /* renamed from: do, reason: not valid java name */
    public Ccase f8306do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cif f8307do;

    /* renamed from: else, reason: not valid java name */
    public int f8308else;

    /* renamed from: new, reason: not valid java name */
    public boolean f8309new;

    /* renamed from: b1$case, reason: invalid class name */
    public static abstract class Ccase {
        /* renamed from: do, reason: not valid java name */
        public boolean mo4805do() {
            return false;
        }

        /* renamed from: for, reason: not valid java name */
        public abstract void mo4806for();

        /* renamed from: if, reason: not valid java name */
        public void mo4807if() {
        }

        /* renamed from: new, reason: not valid java name */
        public abstract void mo4808new();
    }

    /* renamed from: b1$do, reason: invalid class name */
    public static class Cdo extends Ccase {

        /* renamed from: do, reason: not valid java name */
        public final Animatable f8310do;

        public Cdo(Animatable animatable) {
            this.f8310do = animatable;
        }

        @Override // defpackage.C0726b1.Ccase
        /* renamed from: for */
        public final void mo4806for() {
            this.f8310do.start();
        }

        @Override // defpackage.C0726b1.Ccase
        /* renamed from: new */
        public final void mo4808new() {
            this.f8310do.stop();
        }
    }

    /* renamed from: b1$for, reason: invalid class name */
    public static class Cfor extends Ccase {

        /* renamed from: do, reason: not valid java name */
        public final C0785c1 f8311do;

        public Cfor(C0785c1 c0785c1) {
            this.f8311do = c0785c1;
        }

        @Override // defpackage.C0726b1.Ccase
        /* renamed from: for */
        public final void mo4806for() {
            this.f8311do.start();
        }

        @Override // defpackage.C0726b1.Ccase
        /* renamed from: new */
        public final void mo4808new() {
            this.f8311do.stop();
        }
    }

    /* renamed from: b1$if, reason: invalid class name */
    public static class Cif extends C2799gF.Cdo {

        /* renamed from: do, reason: not valid java name */
        public ME<Integer> f8312do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C3354mr<Long> f8313do;

        public Cif(Cif cif, C0726b1 c0726b1, Resources resources) {
            super(cif, c0726b1, resources);
            if (cif != null) {
                this.f8313do = cif.f8313do;
                this.f8312do = cif.f8312do;
            } else {
                this.f8313do = new C3354mr<>();
                this.f8312do = new ME<>();
            }
        }

        @Override // defpackage.C2799gF.Cdo, android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new C0726b1(this, null);
        }

        @Override // defpackage.C2799gF.Cdo, defpackage.C0448Qe.Cfor
        /* renamed from: try */
        public final void mo1985try() {
            this.f8313do = this.f8313do.clone();
            this.f8312do = this.f8312do.clone();
        }

        @Override // defpackage.C2799gF.Cdo, android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new C0726b1(this, resources);
        }
    }

    /* renamed from: b1$new, reason: invalid class name */
    public static class Cnew extends Ccase {

        /* renamed from: do, reason: not valid java name */
        public final ObjectAnimator f8314do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f8315do;

        public Cnew(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i = z ? numberOfFrames - 1 : 0;
            int i2 = z ? 0 : numberOfFrames - 1;
            Ctry ctry = new Ctry(animationDrawable, z);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            O8.m1635do(ofInt, true);
            ofInt.setDuration(ctry.f8318if);
            ofInt.setInterpolator(ctry);
            this.f8315do = z2;
            this.f8314do = ofInt;
        }

        @Override // defpackage.C0726b1.Ccase
        /* renamed from: do */
        public final boolean mo4805do() {
            return this.f8315do;
        }

        @Override // defpackage.C0726b1.Ccase
        /* renamed from: for */
        public final void mo4806for() {
            this.f8314do.start();
        }

        @Override // defpackage.C0726b1.Ccase
        /* renamed from: if */
        public final void mo4807if() {
            this.f8314do.reverse();
        }

        @Override // defpackage.C0726b1.Ccase
        /* renamed from: new */
        public final void mo4808new() {
            this.f8314do.cancel();
        }
    }

    /* renamed from: b1$try, reason: invalid class name */
    public static class Ctry implements TimeInterpolator {

        /* renamed from: do, reason: not valid java name */
        public int f8316do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int[] f8317do;

        /* renamed from: if, reason: not valid java name */
        public int f8318if;

        public Ctry(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.f8316do = numberOfFrames;
            int[] iArr = this.f8317do;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.f8317do = new int[numberOfFrames];
            }
            int[] iArr2 = this.f8317do;
            int i = 0;
            for (int i2 = 0; i2 < numberOfFrames; i2++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
                iArr2[i2] = duration;
                i += duration;
            }
            this.f8318if = i;
        }

        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            int i = (int) ((f * this.f8318if) + 0.5f);
            int i2 = this.f8316do;
            int[] iArr = this.f8317do;
            int i3 = 0;
            while (i3 < i2) {
                int i4 = iArr[i3];
                if (i < i4) {
                    break;
                }
                i -= i4;
                i3++;
            }
            return (i3 / i2) + (i3 < i2 ? i / this.f8318if : 0.0f);
        }
    }

    public C0726b1() {
        this(null, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x026d, code lost:
    
        r4.onStateChange(r4.getState());
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0274, code lost:
    
        return r4;
     */
    /* renamed from: else, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.C0726b1 m4803else(android.content.Context r23, android.content.res.Resources.Theme r24, android.content.res.Resources r25, android.util.AttributeSet r26, android.content.res.XmlResourceParser r27) {
        /*
            Method dump skipped, instructions count: 659
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0726b1.m4803else(android.content.Context, android.content.res.Resources$Theme, android.content.res.Resources, android.util.AttributeSet, android.content.res.XmlResourceParser):b1");
    }

    @Override // defpackage.C2799gF
    /* renamed from: case, reason: not valid java name */
    public final C2799gF.Cdo mo1978if() {
        return new Cif(this.f8307do, this, null);
    }

    @Override // defpackage.C2799gF, defpackage.C0448Qe
    /* renamed from: if */
    public final C0448Qe.Cfor mo1978if() {
        return new Cif(this.f8307do, this, null);
    }

    @Override // defpackage.C0448Qe, android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        super.jumpToCurrentState();
        Ccase ccase = this.f8306do;
        if (ccase != null) {
            ccase.mo4808new();
            this.f8306do = null;
            m1979new(this.f8305case);
            this.f8305case = -1;
            this.f8308else = -1;
        }
    }

    @Override // defpackage.C2799gF, defpackage.C0448Qe, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.f8309new) {
            super.mutate();
            this.f8307do.mo1985try();
            this.f8309new = true;
        }
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0107  */
    @Override // defpackage.C2799gF, defpackage.C0448Qe, android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onStateChange(int[] r18) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0726b1.onStateChange(int[]):boolean");
    }

    @Override // defpackage.C0448Qe, android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Ccase ccase = this.f8306do;
        if (ccase != null && (visible || z2)) {
            if (z) {
                ccase.mo4806for();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    @Override // defpackage.C2799gF, defpackage.C0448Qe
    /* renamed from: try */
    public final void mo1980try(C0448Qe.Cfor cfor) {
        super.mo1980try(cfor);
        if (cfor instanceof Cif) {
            this.f8307do = (Cif) cfor;
        }
    }

    public C0726b1(Cif cif, Resources resources) {
        this.f8305case = -1;
        this.f8308else = -1;
        mo1980try(new Cif(cif, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }
}

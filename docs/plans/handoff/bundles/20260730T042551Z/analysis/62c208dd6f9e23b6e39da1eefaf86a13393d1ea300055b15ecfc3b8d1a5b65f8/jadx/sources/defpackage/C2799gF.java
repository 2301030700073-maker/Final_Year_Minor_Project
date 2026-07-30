package defpackage;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.StateSet;
import defpackage.C0448Qe;

/* renamed from: gF, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C2799gF extends C0448Qe {

    /* renamed from: do, reason: not valid java name */
    public Cdo f13081do;

    /* renamed from: for, reason: not valid java name */
    public boolean f13082for;

    /* renamed from: gF$do, reason: invalid class name */
    public static class Cdo extends C0448Qe.Cfor {

        /* renamed from: do, reason: not valid java name */
        public int[][] f13083do;

        public Cdo(Cdo cdo, C2799gF c2799gF, Resources resources) {
            super(cdo, c2799gF, resources);
            if (cdo != null) {
                this.f13083do = cdo.f13083do;
            } else {
                this.f13083do = new int[((C0448Qe.Cfor) this).f3011do.length][];
            }
        }

        /* renamed from: case, reason: not valid java name */
        public final int m6716case(int[] iArr) {
            int[][] iArr2 = this.f13083do;
            int i = ((C0448Qe.Cfor) this).f3020new;
            for (int i2 = 0; i2 < i; i2++) {
                if (StateSet.stateSetMatches(iArr2[i2], iArr)) {
                    return i2;
                }
            }
            return -1;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C2799gF(this, null);
        }

        @Override // defpackage.C0448Qe.Cfor
        /* renamed from: try */
        public void mo1985try() {
            int[][] iArr = this.f13083do;
            int[][] iArr2 = new int[iArr.length][];
            for (int length = iArr.length - 1; length >= 0; length--) {
                int[] iArr3 = this.f13083do[length];
                iArr2[length] = iArr3 != null ? (int[]) iArr3.clone() : null;
            }
            this.f13083do = iArr2;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C2799gF(this, resources);
        }
    }

    public C2799gF(Cdo cdo, Resources resources) {
        mo1980try(new Cdo(cdo, this, resources));
        onStateChange(getState());
    }

    @Override // defpackage.C0448Qe, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // defpackage.C0448Qe
    /* renamed from: case, reason: merged with bridge method [inline-methods] */
    public Cdo mo1978if() {
        return new Cdo(this.f13081do, this, null);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // defpackage.C0448Qe, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f13082for) {
            super.mutate();
            this.f13081do.mo1985try();
            this.f13082for = true;
        }
        return this;
    }

    @Override // defpackage.C0448Qe, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        int m6716case = this.f13081do.m6716case(iArr);
        if (m6716case < 0) {
            m6716case = this.f13081do.m6716case(StateSet.WILD_CARD);
        }
        return m1979new(m6716case) || onStateChange;
    }

    @Override // defpackage.C0448Qe
    /* renamed from: try */
    public void mo1980try(C0448Qe.Cfor cfor) {
        ((C0448Qe) this).f2982do = cfor;
        int i = this.f2991new;
        if (i >= 0) {
            Drawable m1984new = cfor.m1984new(i);
            ((C0448Qe) this).f2985do = m1984new;
            if (m1984new != null) {
                m1977for(m1984new);
            }
        }
        ((C0448Qe) this).f2989if = null;
        if (cfor instanceof Cdo) {
            this.f13081do = (Cdo) cfor;
        }
    }

    public C2799gF() {
    }
}

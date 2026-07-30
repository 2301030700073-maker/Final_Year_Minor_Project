package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* renamed from: mA, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3315mA extends RD {

    /* renamed from: do, reason: not valid java name */
    public final SideSheetBehavior<? extends View> f14316do;

    public C3315mA(SideSheetBehavior<? extends View> sideSheetBehavior) {
        this.f14316do = sideSheetBehavior;
    }

    @Override // defpackage.RD
    /* renamed from: break */
    public final int mo2017break() {
        return 0;
    }

    @Override // defpackage.RD
    /* renamed from: case */
    public final int mo2018case() {
        return this.f14316do.f11359try;
    }

    @Override // defpackage.RD
    /* renamed from: catch */
    public final boolean mo2019catch(float f) {
        return f < 0.0f;
    }

    @Override // defpackage.RD
    /* renamed from: class */
    public final boolean mo2020class(View view) {
        return view.getLeft() > (mo2028new() + this.f14316do.f11359try) / 2;
    }

    @Override // defpackage.RD
    /* renamed from: const */
    public final boolean mo2021const(float f, float f2) {
        if (Math.abs(f) > Math.abs(f2)) {
            float abs = Math.abs(f);
            this.f14316do.getClass();
            if (abs > 500) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.RD
    /* renamed from: do */
    public final int mo2022do(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.rightMargin;
    }

    @Override // defpackage.RD
    /* renamed from: else */
    public final int mo2023else() {
        return mo2028new();
    }

    @Override // defpackage.RD
    /* renamed from: final */
    public final boolean mo2024final(View view, float f) {
        return Math.abs((f * this.f14316do.f11354if) + ((float) view.getRight())) > 0.5f;
    }

    @Override // defpackage.RD
    /* renamed from: for */
    public final int mo2025for(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.rightMargin;
    }

    @Override // defpackage.RD
    /* renamed from: goto */
    public final <V extends View> int mo2026goto(V v) {
        return v.getLeft() - this.f14316do.f11351else;
    }

    @Override // defpackage.RD
    /* renamed from: if */
    public final float mo2027if(int i) {
        float f = this.f14316do.f11359try;
        return (f - i) / (f - mo2028new());
    }

    @Override // defpackage.RD
    /* renamed from: new */
    public final int mo2028new() {
        SideSheetBehavior<? extends View> sideSheetBehavior = this.f14316do;
        return Math.max(0, (sideSheetBehavior.f11359try - sideSheetBehavior.f11357new) - sideSheetBehavior.f11351else);
    }

    @Override // defpackage.RD
    /* renamed from: super */
    public final void mo2029super(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        marginLayoutParams.rightMargin = i;
    }

    @Override // defpackage.RD
    /* renamed from: this */
    public final int mo2030this(CoordinatorLayout coordinatorLayout) {
        return coordinatorLayout.getRight();
    }

    @Override // defpackage.RD
    /* renamed from: throw */
    public final void mo2031throw(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2) {
        int i3 = this.f14316do.f11359try;
        if (i <= i3) {
            marginLayoutParams.rightMargin = i3 - i;
        }
    }

    @Override // defpackage.RD
    /* renamed from: try */
    public final int mo2032try() {
        return this.f14316do.f11359try;
    }
}

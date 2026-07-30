package defpackage;

import android.view.View;

/* renamed from: gL, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2805gL {

    /* renamed from: do, reason: not valid java name */
    public int f13152do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final View f13153do;

    /* renamed from: for, reason: not valid java name */
    public int f13154for;

    /* renamed from: if, reason: not valid java name */
    public int f13155if;

    public C2805gL(View view) {
        this.f13153do = view;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6724do() {
        int i = this.f13154for;
        View view = this.f13153do;
        QK.m1850const(view, i - (view.getTop() - this.f13152do));
        QK.m1849class(view, 0 - (view.getLeft() - this.f13155if));
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m6725if(int i) {
        if (this.f13154for == i) {
            return false;
        }
        this.f13154for = i;
        m6724do();
        return true;
    }
}

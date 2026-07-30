package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.Cif;

/* renamed from: androidx.recyclerview.widget.static, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cstatic implements Cif.InterfaceC0042if {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ RecyclerView f7676do;

    public Cstatic(RecyclerView recyclerView) {
        this.f7676do = recyclerView;
    }

    /* renamed from: do, reason: not valid java name */
    public final int m4567do() {
        return this.f7676do.getChildCount();
    }

    /* renamed from: if, reason: not valid java name */
    public final void m4568if(int i) {
        RecyclerView recyclerView = this.f7676do;
        View childAt = recyclerView.getChildAt(i);
        if (childAt != null) {
            recyclerView.m4350import(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeViewAt(i);
    }
}

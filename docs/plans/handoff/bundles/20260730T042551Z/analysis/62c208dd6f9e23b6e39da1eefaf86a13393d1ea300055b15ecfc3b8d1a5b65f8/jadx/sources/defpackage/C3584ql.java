package defpackage;

import android.app.Activity;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

/* renamed from: ql, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3584ql implements SwipeRefreshLayout.Ctry {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Activity f15153do;

    public C3584ql(Activity activity) {
        this.f15153do = activity;
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.Ctry
    /* renamed from: do */
    public final void mo4599do() {
        C3289ll.m7380switch(this.f15153do);
        SwipeRefreshLayout swipeRefreshLayout = C0126Bl.f263do;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.m4594goto(false, false);
        }
    }
}

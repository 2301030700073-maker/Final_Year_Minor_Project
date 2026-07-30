package defpackage;

import android.view.View;
import com.google.android.material.navigationrail.NavigationRailView;
import defpackage.C3738tL;
import java.util.WeakHashMap;

/* renamed from: nu, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3416nu implements C3738tL.Cif {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ NavigationRailView f14631do;

    public C3416nu(NavigationRailView navigationRailView) {
        this.f14631do = navigationRailView;
    }

    @Override // defpackage.C3738tL.Cif
    /* renamed from: do */
    public final C3150jM mo1008do(View view, C3150jM c3150jM, C3738tL.Cfor cfor) {
        C0633Yn m7057do = c3150jM.m7057do(7);
        NavigationRailView navigationRailView = this.f14631do;
        if (NavigationRailView.m5851for(navigationRailView, navigationRailView.f11247do)) {
            cfor.f15698if += m7057do.f4760if;
        }
        if (NavigationRailView.m5851for(navigationRailView, navigationRailView.f11250if)) {
            cfor.f15699new += m7057do.f4761new;
        }
        if (NavigationRailView.m5851for(navigationRailView, navigationRailView.f11249for)) {
            cfor.f15696do += C3738tL.m8282else(view) ? m7057do.f4759for : m7057do.f4758do;
        }
        int i = cfor.f15696do;
        int i2 = cfor.f15698if;
        int i3 = cfor.f15697for;
        int i4 = cfor.f15699new;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        view.setPaddingRelative(i, i2, i3, i4);
        return c3150jM;
    }
}

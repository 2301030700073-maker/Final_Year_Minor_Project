package defpackage;

import android.view.View;
import com.google.android.material.bottomappbar.BottomAppBar;
import defpackage.C3738tL;
import java.util.WeakHashMap;

/* renamed from: sL, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3679sL implements C3738tL.Cif {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3738tL.Cif f15440do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f15441do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ boolean f15442for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ boolean f15443if;

    public C3679sL(boolean z, boolean z2, boolean z3, BottomAppBar.Cfor cfor) {
        this.f15441do = z;
        this.f15443if = z2;
        this.f15442for = z3;
        this.f15440do = cfor;
    }

    @Override // defpackage.C3738tL.Cif
    /* renamed from: do */
    public final C3150jM mo1008do(View view, C3150jM c3150jM, C3738tL.Cfor cfor) {
        if (this.f15441do) {
            cfor.f15699new = c3150jM.m7061if() + cfor.f15699new;
        }
        boolean m8282else = C3738tL.m8282else(view);
        if (this.f15443if) {
            if (m8282else) {
                cfor.f15697for = c3150jM.m7059for() + cfor.f15697for;
            } else {
                cfor.f15696do = c3150jM.m7059for() + cfor.f15696do;
            }
        }
        if (this.f15442for) {
            if (m8282else) {
                cfor.f15696do = c3150jM.m7062new() + cfor.f15696do;
            } else {
                cfor.f15697for = c3150jM.m7062new() + cfor.f15697for;
            }
        }
        int i = cfor.f15696do;
        int i2 = cfor.f15698if;
        int i3 = cfor.f15697for;
        int i4 = cfor.f15699new;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        view.setPaddingRelative(i, i2, i3, i4);
        C3738tL.Cif cif = this.f15440do;
        return cif != null ? cif.mo1008do(view, c3150jM, cfor) : c3150jM;
    }
}

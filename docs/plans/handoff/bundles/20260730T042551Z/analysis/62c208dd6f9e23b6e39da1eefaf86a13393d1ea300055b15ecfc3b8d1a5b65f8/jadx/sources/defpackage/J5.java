package defpackage;

import android.view.View;
import defpackage.C3738tL;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public final class J5 implements C3738tL.Cif {
    @Override // defpackage.C3738tL.Cif
    /* renamed from: do, reason: not valid java name */
    public final C3150jM mo1008do(View view, C3150jM c3150jM, C3738tL.Cfor cfor) {
        cfor.f15699new = c3150jM.m7061if() + cfor.f15699new;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        boolean z = view.getLayoutDirection() == 1;
        int m7059for = c3150jM.m7059for();
        int m7062new = c3150jM.m7062new();
        int i = cfor.f15696do + (z ? m7062new : m7059for);
        cfor.f15696do = i;
        int i2 = cfor.f15697for;
        if (!z) {
            m7059for = m7062new;
        }
        int i3 = i2 + m7059for;
        cfor.f15697for = i3;
        view.setPaddingRelative(i, cfor.f15698if, i3, cfor.f15699new);
        return c3150jM;
    }
}

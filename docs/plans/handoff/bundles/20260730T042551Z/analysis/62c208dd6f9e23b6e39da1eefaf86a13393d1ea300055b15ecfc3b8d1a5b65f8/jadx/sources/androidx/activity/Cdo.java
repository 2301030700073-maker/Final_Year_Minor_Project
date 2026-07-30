package androidx.activity;

import androidx.activity.ComponentActivity;
import androidx.activity.result.Cdo;
import defpackage.V;
import defpackage.W;

/* renamed from: androidx.activity.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ W.Cdo f5141do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ComponentActivity.Cdo f5142do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f5143for;

    public Cdo(ComponentActivity.Cdo cdo, int i, W.Cdo cdo2) {
        this.f5142do = cdo;
        this.f5143for = i;
        this.f5141do = cdo2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        V<O> v;
        Object obj = this.f5141do.f4285do;
        ComponentActivity.Cdo cdo = this.f5142do;
        String str = (String) ((androidx.activity.result.Cdo) cdo).f5159do.get(Integer.valueOf(this.f5143for));
        if (str == null) {
            return;
        }
        Cdo.C0026do c0026do = (Cdo.C0026do) cdo.f5162new.get(str);
        if (c0026do == null || (v = c0026do.f5164do) == 0) {
            ((androidx.activity.result.Cdo) cdo).f5157do.remove(str);
            cdo.f5163try.put(str, obj);
        } else if (((androidx.activity.result.Cdo) cdo).f5158do.remove(str)) {
            v.mo2492do(obj);
        }
    }
}

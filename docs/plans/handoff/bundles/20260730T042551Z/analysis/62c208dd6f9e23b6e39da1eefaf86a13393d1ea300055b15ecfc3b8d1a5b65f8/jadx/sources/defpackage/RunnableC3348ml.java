package defpackage;

import androidx.appcompat.app.AppCompatActivity;
import defpackage.C3289ll;

/* renamed from: ml, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC3348ml implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3289ll.Cclass f14382do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3289ll f14383do;

    public RunnableC3348ml(C3289ll c3289ll, C3289ll.Cclass cclass) {
        this.f14383do = c3289ll;
        this.f14382do = cclass;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C2667e1 c2667e1;
        AppCompatActivity appCompatActivity;
        C3289ll c3289ll;
        int i;
        String[] strArr = C0126Bl.f271do;
        C3289ll.Cclass cclass = this.f14382do;
        if (strArr != null && strArr.length > 0 && (appCompatActivity = C0420Ou.f2680do) != null && (i = (c3289ll = this.f14383do).f14191new) != -1 && i != appCompatActivity.getResources().getConfiguration().orientation) {
            C0126Bl.m208for(((C3289ll.Cgoto) cclass).f14216do, C0126Bl.f271do);
            c3289ll.f14191new = C0420Ou.f2680do.getResources().getConfiguration().orientation;
            return;
        }
        String[] strArr2 = C0126Bl.f271do;
        if (strArr2 == null || strArr2.length <= 0 || (c2667e1 = C0126Bl.f266do) == null || c2667e1.f12568do) {
            return;
        }
        C0126Bl.m208for(((C3289ll.Cgoto) cclass).f14216do, strArr2);
    }
}

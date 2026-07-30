package defpackage;

import androidx.appcompat.app.AppCompatActivity;

/* renamed from: Lu, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC0354Lu implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ boolean f2037do;

    public RunnableC0354Lu(boolean z) {
        this.f2037do = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            AppCompatActivity appCompatActivity = C0420Ou.f2680do;
            if (appCompatActivity != null) {
                C3289ll.m7380switch(appCompatActivity);
            }
            if (this.f2037do) {
                C0420Ou.m1687break("RANKINGS");
            }
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
    }
}

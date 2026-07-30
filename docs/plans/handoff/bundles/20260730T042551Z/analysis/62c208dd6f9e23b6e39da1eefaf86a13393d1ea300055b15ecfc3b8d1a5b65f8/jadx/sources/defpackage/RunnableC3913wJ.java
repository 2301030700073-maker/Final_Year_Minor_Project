package defpackage;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import j$.util.Objects;

/* renamed from: wJ, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC3913wJ implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ CJ f16315do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Runnable f16316do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ AbstractC3794uI f16317do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f16318for;

    public /* synthetic */ RunnableC3913wJ(CJ cj, C4075z4 c4075z4, int i, Runnable runnable) {
        this.f16315do = cj;
        this.f16317do = c4075z4;
        this.f16318for = i;
        this.f16316do = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC3794uI abstractC3794uI = this.f16317do;
        int i = this.f16318for;
        Runnable runnable = this.f16316do;
        CJ cj = this.f16315do;
        InterfaceC3380nG interfaceC3380nG = cj.f357do;
        int i2 = 1;
        try {
            try {
                InterfaceC4109zg interfaceC4109zg = cj.f358do;
                Objects.requireNonNull(interfaceC4109zg);
                interfaceC3380nG.mo6440new(new C0391Nn(interfaceC4109zg, i2));
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) cj.f353do.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                    cj.m260do(abstractC3794uI, i);
                } else {
                    interfaceC3380nG.mo6440new(new C3341me(cj, abstractC3794uI, i));
                }
            } catch (C3321mG unused) {
                cj.f352do.mo2151do(abstractC3794uI, i + 1);
            }
        } finally {
            runnable.run();
        }
    }
}

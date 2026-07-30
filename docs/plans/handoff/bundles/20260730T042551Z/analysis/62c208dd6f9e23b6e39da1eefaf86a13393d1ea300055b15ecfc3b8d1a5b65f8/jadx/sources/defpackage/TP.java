package defpackage;

import com.android.billingclient.api.Cdo;
import com.android.billingclient.api.Cif;

/* loaded from: classes.dex */
public final /* synthetic */ class TP implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f3672do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f3673for;

    public /* synthetic */ TP(Object obj, int i) {
        this.f3673for = i;
        this.f3672do = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3673for) {
            case 0:
                ServiceConnectionC2810gQ serviceConnectionC2810gQ = (ServiceConnectionC2810gQ) this.f3672do;
                C3428o5 c3428o5 = serviceConnectionC2810gQ.f13169do;
                c3428o5.m7675throw(0);
                Cdo cdo = Cif.f9117final;
                c3428o5.m7663default(24, 6, cdo);
                serviceConnectionC2810gQ.m6732do(cdo);
                return;
            default:
                IL il = (IL) this.f3672do;
                synchronized (il.f1503do) {
                    if (il.m927if()) {
                        String.valueOf(il.f1504do).concat(" ** IS FORCE-RELEASED ON TIMEOUT **");
                        il.m928new();
                        if (il.m927if()) {
                            il.f1498do = 1;
                            il.m929try();
                            return;
                        }
                        return;
                    }
                    return;
                }
        }
    }
}

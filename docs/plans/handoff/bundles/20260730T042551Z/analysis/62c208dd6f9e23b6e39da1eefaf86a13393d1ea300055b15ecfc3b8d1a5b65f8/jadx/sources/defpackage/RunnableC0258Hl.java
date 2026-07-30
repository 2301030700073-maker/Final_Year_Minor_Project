package defpackage;

import android.util.Log;
import android.util.Pair;
import com.facebook.GraphRequest;
import defpackage.C0324Kl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;

/* renamed from: Hl, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0258Hl implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f1381do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f1382for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f1383if;

    public /* synthetic */ RunnableC0258Hl(int i, Object obj, Object obj2) {
        this.f1382for = i;
        this.f1381do = obj;
        this.f1383if = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f1382for;
        Object obj = this.f1383if;
        Object obj2 = this.f1381do;
        switch (i) {
            case 0:
                ArrayList arrayList = (ArrayList) obj2;
                C0324Kl c0324Kl = (C0324Kl) obj;
                C0173Do.m401try(arrayList, "$callbacks");
                C0173Do.m401try(c0324Kl, "$requests");
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Pair pair = (Pair) it.next();
                    GraphRequest.Cif cif = (GraphRequest.Cif) pair.first;
                    Object obj3 = pair.second;
                    C0173Do.m399new(obj3, "pair.second");
                    cif.mo78if((C0346Ll) obj3);
                }
                Iterator it2 = c0324Kl.f1876if.iterator();
                while (it2.hasNext()) {
                    ((C0324Kl.Cdo) it2.next()).mo1205if(c0324Kl);
                }
                break;
            default:
                Az az = (Az) obj2;
                CountDownLatch countDownLatch = (CountDownLatch) obj;
                az.getClass();
                try {
                    InterfaceC3617rI<AbstractC0533Ub> interfaceC3617rI = az.f180do;
                    Ex ex = Ex.HIGHEST;
                    if (interfaceC3617rI instanceof C3971xI) {
                        BI.m173do().f225do.m260do(((C3971xI) interfaceC3617rI).f16541do.m8383try(ex), 1);
                    } else if (Log.isLoggable(C0636Yq.m2961if("ForcedSender"), 5)) {
                        String.format("Expected instance of `TransportImpl`, got `%s`.", interfaceC3617rI);
                    }
                } catch (Exception unused) {
                }
                countDownLatch.countDown();
                break;
        }
    }
}

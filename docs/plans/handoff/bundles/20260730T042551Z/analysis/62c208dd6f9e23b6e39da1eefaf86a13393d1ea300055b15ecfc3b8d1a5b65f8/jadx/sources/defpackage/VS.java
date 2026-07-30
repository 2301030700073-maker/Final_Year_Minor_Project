package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdo;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import java.util.Iterator;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class VS implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f4125do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f4126for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f4127if;

    public /* synthetic */ VS(int i, Object obj, Object obj2) {
        this.f4126for = i;
        this.f4125do = obj2;
        this.f4127if = obj;
    }

    /* renamed from: do, reason: not valid java name */
    private final void m2643do() {
        synchronized (((VT) this.f4127if).f4129do) {
            try {
                InterfaceC0487Rv interfaceC0487Rv = ((VT) this.f4127if).f4128do;
                if (interfaceC0487Rv != null) {
                    interfaceC0487Rv.onFailure((Exception) Preconditions.checkNotNull(((FG) this.f4125do).mo591catch()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bundle m73do;
        boolean z;
        switch (this.f4126for) {
            case 0:
                C3217kU m2261while = ((AppMeasurementDynamiteService) this.f4127if).f10293do.m2261while();
                zzdo zzdoVar = (zzdo) this.f4125do;
                m2261while.mo1960catch();
                m2261while.m8474import();
                m2261while.m7267static(new RQ(m2261while, m2261while.m7263interface(false), zzdoVar));
                return;
            case 1:
                C4041yT c4041yT = (C4041yT) this.f4125do;
                Bundle bundle = (Bundle) this.f4127if;
                c4041yT.getClass();
                if (bundle.isEmpty()) {
                    m73do = bundle;
                } else {
                    m73do = c4041yT.m7574this().f16755if.m73do();
                    if (c4041yT.m7572else().m3012throws(null, C3684sQ.t0)) {
                        m73do = new Bundle(m73do);
                    }
                    Iterator<String> it = bundle.keySet().iterator();
                    while (true) {
                        boolean hasNext = it.hasNext();
                        C2776ft c2776ft = c4041yT.f16774do;
                        if (hasNext) {
                            String next = it.next();
                            Object obj = bundle.get(next);
                            if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                                c4041yT.m7571break();
                                if (C3395nV.g(obj)) {
                                    c4041yT.m7571break();
                                    C3395nV.b(c2776ft, null, 27, null, null, 0);
                                }
                                c4041yT.mo2249case().f13713case.m7367do(next, "Invalid default event parameter type. Name, value", obj);
                            } else if (C3395nV.E(next)) {
                                c4041yT.mo2249case().f13713case.m7368for("Invalid default event parameter name. Name", next);
                            } else if (obj == null) {
                                m73do.remove(next);
                            } else if (c4041yT.m7571break().i("param", next, c4041yT.m7572else().m2999final(null, false), obj)) {
                                c4041yT.m7571break().m7581abstract(m73do, next, obj);
                            }
                        } else {
                            c4041yT.m7571break();
                            int i = c4041yT.m7572else().m7571break().n(201500000) ? 100 : 25;
                            if (m73do.size() <= i) {
                                z = false;
                            } else {
                                Iterator it2 = new TreeSet(m73do.keySet()).iterator();
                                int i2 = 0;
                                while (true) {
                                    z = true;
                                    if (it2.hasNext()) {
                                        String str = (String) it2.next();
                                        i2++;
                                        if (i2 > i) {
                                            m73do.remove(str);
                                        }
                                    }
                                }
                            }
                            if (z) {
                                c4041yT.m7571break();
                                C3395nV.b(c2776ft, null, 26, null, null, 0);
                                c4041yT.mo2249case().f13713case.m7369if("Too many default event parameters set. Discarding beyond event parameter limit");
                            }
                        }
                    }
                }
                c4041yT.m7574this().f16755if.m74if(m73do);
                if (!bundle.isEmpty() || c4041yT.m7572else().m3012throws(null, C3684sQ.r0)) {
                    C3217kU m8800throw = c4041yT.m8800throw();
                    m8800throw.mo1960catch();
                    m8800throw.m8474import();
                    m8800throw.m7267static(new RunnableC3747tU(m8800throw, m8800throw.m7263interface(false), m73do));
                    return;
                }
                return;
            case 2:
                synchronized (((AtomicReference) this.f4125do)) {
                    try {
                        ((AtomicReference) this.f4125do).set(Long.valueOf(((C4041yT) this.f4127if).m7572else().m3003native(((C4041yT) this.f4127if).m8796class().m4907return(), C3684sQ.b)));
                    } finally {
                        ((AtomicReference) this.f4125do).notify();
                    }
                }
                return;
            default:
                m2643do();
                return;
        }
    }

    public /* synthetic */ VS(C4041yT c4041yT, Bundle bundle) {
        this.f4126for = 1;
        this.f4125do = c4041yT;
        this.f4127if = bundle;
    }
}

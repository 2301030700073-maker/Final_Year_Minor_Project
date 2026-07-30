package defpackage;

import android.content.Context;
import defpackage.InterfaceC3380nG;
import defpackage.W3;
import j$.util.Objects;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class CJ {

    /* renamed from: do, reason: not valid java name */
    public final D4 f351do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SM f352do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f353do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC2616d8 f354do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC2792g8 f355do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f356do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3380nG f357do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC4109zg f358do;

    /* renamed from: if, reason: not valid java name */
    public final InterfaceC2792g8 f359if;

    public CJ(Context context, D4 d4, InterfaceC4109zg interfaceC4109zg, SM sm, Executor executor, InterfaceC3380nG interfaceC3380nG, InterfaceC2792g8 interfaceC2792g8, InterfaceC2792g8 interfaceC2792g82, InterfaceC2616d8 interfaceC2616d8) {
        this.f353do = context;
        this.f351do = d4;
        this.f358do = interfaceC4109zg;
        this.f352do = sm;
        this.f356do = executor;
        this.f357do = interfaceC3380nG;
        this.f355do = interfaceC2792g8;
        this.f359if = interfaceC2792g82;
        this.f354do = interfaceC2616d8;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m260do(final AbstractC3794uI abstractC3794uI, int i) {
        C3426o3 mo6878if;
        InterfaceC3735tI mo348do = this.f351do.mo348do(abstractC3794uI.mo8381if());
        new C3426o3(1, 0L);
        final long j = 0;
        while (true) {
            C3972xJ c3972xJ = new C3972xJ(this, abstractC3794uI);
            InterfaceC3380nG interfaceC3380nG = this.f357do;
            if (!((Boolean) interfaceC3380nG.mo6440new(c3972xJ)).booleanValue()) {
                interfaceC3380nG.mo6440new(new BJ(this, j, abstractC3794uI));
                return;
            }
            final Iterable iterable = (Iterable) interfaceC3380nG.mo6440new(new C4031yJ(this, abstractC3794uI));
            if (!iterable.iterator().hasNext()) {
                return;
            }
            int i2 = 2;
            if (mo348do == null) {
                C0636Yq.m2960do("Uploader", abstractC3794uI, "Unknown backend for %s, deleting event batch for it...");
                mo6878if = new C3426o3(3, -1L);
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList.add(((Iw) it.next()).mo989do());
                }
                if (abstractC3794uI.mo8380for() != null) {
                    InterfaceC2616d8 interfaceC2616d8 = this.f354do;
                    Objects.requireNonNull(interfaceC2616d8);
                    C2733f8 c2733f8 = (C2733f8) interfaceC3380nG.mo6440new(new C0391Nn(interfaceC2616d8, i2));
                    W3.Cdo cdo = new W3.Cdo();
                    cdo.f4316do = new HashMap();
                    cdo.f4314do = Long.valueOf(this.f355do.mo445do());
                    cdo.f4319if = Long.valueOf(this.f359if.mo445do());
                    cdo.m2702new("GDT_CLIENT_METRICS");
                    C0823cg c0823cg = new C0823cg("proto");
                    c2733f8.getClass();
                    C3420ny c3420ny = AbstractC2781fy.f13021do;
                    c3420ny.getClass();
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        c3420ny.m7625do(c2733f8, byteArrayOutputStream);
                    } catch (IOException unused) {
                    }
                    cdo.m2700for(new C0581Wf(c0823cg, byteArrayOutputStream.toByteArray()));
                    arrayList.add(mo348do.mo6877do(cdo.m2701if()));
                }
                mo6878if = mo348do.mo6878if(new C3367n3(arrayList, abstractC3794uI.mo8380for()));
            }
            if (mo6878if.f14653do == 2) {
                interfaceC3380nG.mo6440new(new InterfaceC3380nG.Cdo() { // from class: zJ
                    @Override // defpackage.InterfaceC3380nG.Cdo
                    /* renamed from: try */
                    public final Object mo69try() {
                        CJ cj = CJ.this;
                        InterfaceC4109zg interfaceC4109zg = cj.f358do;
                        interfaceC4109zg.mo6442switch(iterable);
                        interfaceC4109zg.mo6437final(cj.f355do.mo445do() + j, abstractC3794uI);
                        return null;
                    }
                });
                this.f352do.mo2152if(abstractC3794uI, i + 1, true);
                return;
            }
            interfaceC3380nG.mo6440new(new C3784u8(this, iterable));
            int i3 = mo6878if.f14653do;
            if (i3 == 1) {
                j = Math.max(j, mo6878if.f14654do);
                if (abstractC3794uI.mo8380for() != null) {
                    interfaceC3380nG.mo6440new(new TK(this));
                }
            } else if (i3 == 4) {
                HashMap hashMap = new HashMap();
                Iterator it2 = iterable.iterator();
                while (it2.hasNext()) {
                    String mo2692catch = ((Iw) it2.next()).mo989do().mo2692catch();
                    if (hashMap.containsKey(mo2692catch)) {
                        hashMap.put(mo2692catch, Integer.valueOf(((Integer) hashMap.get(mo2692catch)).intValue() + 1));
                    } else {
                        hashMap.put(mo2692catch, 1);
                    }
                }
                interfaceC3380nG.mo6440new(new AJ(this, hashMap));
            }
        }
    }
}

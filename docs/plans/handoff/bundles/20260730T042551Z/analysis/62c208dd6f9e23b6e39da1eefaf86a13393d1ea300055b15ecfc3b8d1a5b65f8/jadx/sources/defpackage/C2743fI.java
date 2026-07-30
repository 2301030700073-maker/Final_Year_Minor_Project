package defpackage;

import com.google.firebase.perf.metrics.Counter;
import com.google.firebase.perf.metrics.Trace;
import com.google.firebase.perf.session.PerfSession;
import com.google.firebase.perf.util.Timer;
import defpackage.C2684eI;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: fI, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2743fI {

    /* renamed from: do, reason: not valid java name */
    public final Trace f12893do;

    public C2743fI(Trace trace) {
        this.f12893do = trace;
    }

    /* renamed from: do, reason: not valid java name */
    public final C2684eI m6652do() {
        List unmodifiableList;
        C2684eI.Cdo l = C2684eI.l();
        l.m6556static(this.f12893do.f11956break);
        l.m6554public(this.f12893do.f11961do.f11971do);
        Trace trace = this.f12893do;
        Timer timer = trace.f11961do;
        Timer timer2 = trace.f11966if;
        timer.getClass();
        l.m6555return(timer2.f11972if - timer.f11972if);
        for (Counter counter : this.f12893do.f11962do.values()) {
            l.m6553native(counter.f11954do.get(), counter.f11953break);
        }
        ArrayList arrayList = this.f12893do.f11964do;
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                l.m6552import(new C2743fI((Trace) it.next()).m6652do());
            }
        }
        Map<String, String> attributes = this.f12893do.getAttributes();
        l.m6307super();
        C2684eI.m6550transient((C2684eI) l.f12107if).putAll(attributes);
        Trace trace2 = this.f12893do;
        synchronized (trace2.f11965do) {
            ArrayList arrayList2 = new ArrayList();
            for (PerfSession perfSession : trace2.f11965do) {
                if (perfSession != null) {
                    arrayList2.add(perfSession);
                }
            }
            unmodifiableList = DesugarCollections.unmodifiableList(arrayList2);
        }
        Hw[] m6118if = PerfSession.m6118if(unmodifiableList);
        if (m6118if != null) {
            List asList = Arrays.asList(m6118if);
            l.m6307super();
            C2684eI.m6545instanceof((C2684eI) l.f12107if, asList);
        }
        return l.m6305const();
    }
}

package defpackage;

import android.content.Context;
import com.facebook.appevents.AppEventsConstants;
import defpackage.AbstractC0533Ub;
import defpackage.Az.Cdo;
import defpackage.C3720t3;
import defpackage.E3;
import defpackage.F3;
import defpackage.P3;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class OC {

    /* renamed from: do, reason: not valid java name */
    public final KJ f2590do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0482Rq f2591do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0534Uc f2592do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0555Vb f2593do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0643Zb f2594do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3162jc f2595do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3232kn f2596do;

    public OC(C0555Vb c0555Vb, C0643Zb c0643Zb, C0534Uc c0534Uc, C0482Rq c0482Rq, KJ kj, C3232kn c3232kn, C3162jc c3162jc) {
        this.f2593do = c0555Vb;
        this.f2594do = c0643Zb;
        this.f2592do = c0534Uc;
        this.f2591do = c0482Rq;
        this.f2590do = kj;
        this.f2596do = c3232kn;
        this.f2595do = c3162jc;
    }

    /* renamed from: do, reason: not valid java name */
    public static E3 m1639do(E3 e3, C0482Rq c0482Rq, KJ kj) {
        E3.Cdo cdo = new E3.Cdo(e3);
        String mo658do = c0482Rq.f3239do.mo658do();
        if (mo658do != null) {
            cdo.f727do = new O3(mo658do);
        }
        List<AbstractC0533Ub.Cfor> m1642new = m1642new(kj.f1784do.f1792do.getReference().m1554do());
        List<AbstractC0533Ub.Cfor> m1642new2 = m1642new(kj.f1790if.f1792do.getReference().m1554do());
        if (!m1642new.isEmpty() || !m1642new2.isEmpty()) {
            F3.Cdo mo567goto = e3.f718do.mo567goto();
            mo567goto.f978do = m1642new;
            mo567goto.f980if = m1642new2;
            cdo.f725do = mo567goto.m571do();
        }
        return cdo.m432do();
    }

    /* renamed from: for, reason: not valid java name */
    public static OC m1640for(Context context, C3232kn c3232kn, C0495Sh c0495Sh, X1 x1, C0482Rq c0482Rq, KJ kj, C2835gt c2835gt, C2856hD c2856hD, C0327Ko c0327Ko, C0182Eb c0182Eb, C3162jc c3162jc) {
        C0555Vb c0555Vb = new C0555Vb(context, c3232kn, x1, c2835gt, c2856hD);
        C0643Zb c0643Zb = new C0643Zb(c0495Sh, c2856hD, c0182Eb);
        C0577Wb c0577Wb = C0534Uc.f3934do;
        BI.m174if(context);
        return new OC(c0555Vb, c0643Zb, new C0534Uc(new Az(BI.m173do().m175for(new C3547q6(C0534Uc.f3935do, C0534Uc.f3937if)).mo8467do("FIREBASE_CRASHLYTICS_REPORT", new C0823cg("json"), C0534Uc.f3936do), c2856hD.m6781if(), c0327Ko)), c0482Rq, kj, c3232kn, c3162jc);
    }

    /* renamed from: if, reason: not valid java name */
    public static AbstractC0533Ub.Ctry.Cnew m1641if(E3 e3, KJ kj) {
        List<AbstractC3551qA> m7936do = kj.f1789do.m7936do();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < m7936do.size(); i++) {
            AbstractC3551qA abstractC3551qA = m7936do.get(i);
            P3.Cdo cdo = new P3.Cdo();
            String mo7657try = abstractC3551qA.mo7657try();
            if (mo7657try == null) {
                throw new NullPointerException("Null variantId");
            }
            String mo7654for = abstractC3551qA.mo7654for();
            if (mo7654for == null) {
                throw new NullPointerException("Null rolloutId");
            }
            cdo.f2730do = new Q3(mo7654for, mo7657try);
            String mo7653do = abstractC3551qA.mo7653do();
            if (mo7653do == null) {
                throw new NullPointerException("Null parameterKey");
            }
            cdo.f2731do = mo7653do;
            String mo7655if = abstractC3551qA.mo7655if();
            if (mo7655if == null) {
                throw new NullPointerException("Null parameterValue");
            }
            cdo.f2732if = mo7655if;
            cdo.f2729do = abstractC3551qA.mo7656new();
            cdo.f2728do = (byte) (cdo.f2728do | 1);
            arrayList.add(cdo.m1743do());
        }
        if (arrayList.isEmpty()) {
            return e3;
        }
        E3.Cdo cdo2 = new E3.Cdo(e3);
        cdo2.f724do = new R3(arrayList);
        return cdo2.m432do();
    }

    /* renamed from: new, reason: not valid java name */
    public static List<AbstractC0533Ub.Cfor> m1642new(Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key == null) {
                throw new NullPointerException("Null key");
            }
            String value = entry.getValue();
            if (value == null) {
                throw new NullPointerException("Null value");
            }
            arrayList.add(new C3956x3(key, value));
        }
        Collections.sort(arrayList, new C4104zb(1));
        return DesugarCollections.unmodifiableList(arrayList);
    }

    /* renamed from: case, reason: not valid java name */
    public final XV m1643case(String str, ExecutorC2700ec executorC2700ec) {
        GG<AbstractC0700ac> gg;
        ArrayList m3056if = this.f2594do.m3056if();
        ArrayList arrayList = new ArrayList();
        Iterator it = m3056if.iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            try {
                C0577Wb c0577Wb = C0643Zb.f4871do;
                String m3053new = C0643Zb.m3053new(file);
                c0577Wb.getClass();
                arrayList.add(new C3779u3(C0577Wb.m2742this(m3053new), file.getName(), file));
            } catch (IOException unused) {
                Objects.toString(file);
                file.delete();
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            AbstractC0700ac abstractC0700ac = (AbstractC0700ac) it2.next();
            if (str == null || str.equals(abstractC0700ac.mo3135for())) {
                C0534Uc c0534Uc = this.f2592do;
                boolean z = true;
                if (abstractC0700ac.mo3134do().mo2426case() == null || abstractC0700ac.mo3134do().mo2438try() == null) {
                    C2706ei m7280if = this.f2596do.m7280if(true);
                    C3720t3.Cdo mo2429const = abstractC0700ac.mo3134do().mo2429const();
                    mo2429const.f15608new = m7280if.f12697do;
                    C3720t3.Cdo cdo = new C3720t3.Cdo(mo2429const.m8193do());
                    cdo.f15609try = m7280if.f12698if;
                    abstractC0700ac = new C3779u3(cdo.m8193do(), abstractC0700ac.mo3135for(), abstractC0700ac.mo3136if());
                }
                boolean z2 = str != null;
                Az az = c0534Uc.f3938do;
                synchronized (az.f178do) {
                    gg = new GG<>();
                    if (z2) {
                        ((AtomicInteger) az.f177do.f1881do).getAndIncrement();
                        if (az.f178do.size() >= az.f175do) {
                            z = false;
                        }
                        if (z) {
                            abstractC0700ac.mo3135for();
                            az.f178do.size();
                            az.f179do.execute(az.new Cdo(abstractC0700ac, gg));
                            abstractC0700ac.mo3135for();
                            gg.m722new(abstractC0700ac);
                        } else {
                            az.m134do();
                            abstractC0700ac.mo3135for();
                            ((AtomicInteger) az.f177do.f1882if).getAndIncrement();
                            gg.m722new(abstractC0700ac);
                        }
                    } else {
                        az.m135if(abstractC0700ac, gg);
                    }
                }
                arrayList2.add(gg.f1160do.mo598goto(executorC2700ec, new C2598cr(this)));
            }
        }
        return LG.m1313case(arrayList2);
    }

    /* renamed from: try, reason: not valid java name */
    public final void m1644try(Throwable th, Thread thread, final String str, String str2, long j, boolean z) {
        SE se;
        Iterator<Map.Entry<Thread, StackTraceElement[]>> it;
        SE se2;
        final boolean equals = str2.equals("crash");
        C0555Vb c0555Vb = this.f2593do;
        Context context = c0555Vb.f4149do;
        int i = context.getResources().getConfiguration().orientation;
        Stack stack = new Stack();
        for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
            stack.push(th2);
        }
        C3930we c3930we = null;
        while (true) {
            boolean isEmpty = stack.isEmpty();
            se = c0555Vb.f4147do;
            if (isEmpty) {
                break;
            }
            Throwable th3 = (Throwable) stack.pop();
            c3930we = new C3930we(th3.getLocalizedMessage(), th3.getClass().getName(), se.mo2123do(th3.getStackTrace()), c3930we);
        }
        E3.Cdo cdo = new E3.Cdo();
        cdo.f728do = str2;
        cdo.f723do = j;
        cdo.f722do = (byte) (cdo.f722do | 1);
        AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor m1090for = Jx.f1732do.m1090for(context);
        Boolean valueOf = m1090for.mo1386do() > 0 ? Boolean.valueOf(m1090for.mo1386do() != 100) : null;
        ArrayList m1089if = Jx.m1089if(context);
        byte b = (byte) (1 | 0);
        ArrayList arrayList = new ArrayList();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) c3930we.f16374for;
        String name = thread.getName();
        if (name == null) {
            throw new NullPointerException("Null name");
        }
        byte b2 = (byte) 1;
        List m2655new = C0555Vb.m2655new(stackTraceElementArr, 4);
        if (m2655new == null) {
            throw new NullPointerException("Null frames");
        }
        if (b2 != 1) {
            StringBuilder sb = new StringBuilder();
            if ((b2 & 1) == 0) {
                sb.append(" importance");
            }
            throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb));
        }
        arrayList.add(new K3(name, 4, m2655new));
        if (z) {
            Iterator<Map.Entry<Thread, StackTraceElement[]>> it2 = Thread.getAllStackTraces().entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry<Thread, StackTraceElement[]> next = it2.next();
                Thread key = next.getKey();
                if (key.equals(thread)) {
                    it = it2;
                    se2 = se;
                } else {
                    StackTraceElement[] mo2123do = se.mo2123do(next.getValue());
                    String name2 = key.getName();
                    if (name2 == null) {
                        throw new NullPointerException("Null name");
                    }
                    it = it2;
                    List m2655new2 = C0555Vb.m2655new(mo2123do, 0);
                    if (m2655new2 == null) {
                        throw new NullPointerException("Null frames");
                    }
                    if (b2 != 1) {
                        StringBuilder sb2 = new StringBuilder();
                        if ((b2 & 1) == 0) {
                            sb2.append(" importance");
                        }
                        throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb2));
                    }
                    se2 = se;
                    arrayList.add(new K3(name2, 0, m2655new2));
                }
                it2 = it;
                se = se2;
            }
        }
        List unmodifiableList = DesugarCollections.unmodifiableList(arrayList);
        I3 m2654for = C0555Vb.m2654for(c3930we, 0);
        if (b2 != 1) {
            StringBuilder sb3 = new StringBuilder();
            if ((b2 & 1) == 0) {
                sb3.append(" address");
            }
            throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb3));
        }
        J3 j3 = new J3(AppEventsConstants.EVENT_PARAM_VALUE_NO, AppEventsConstants.EVENT_PARAM_VALUE_NO, 0L);
        List<AbstractC0533Ub.Ctry.Cnew.Cdo.Cif.AbstractC0012do> m2656do = c0555Vb.m2656do();
        if (m2656do == null) {
            throw new NullPointerException("Null binaries");
        }
        G3 g3 = new G3(unmodifiableList, m2654for, null, j3, m2656do);
        if (b != 1) {
            StringBuilder sb4 = new StringBuilder();
            if ((b & 1) == 0) {
                sb4.append(" uiOrientation");
            }
            throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb4));
        }
        cdo.f725do = new F3(g3, null, null, valueOf, m1090for, m1089if, i);
        cdo.f726do = c0555Vb.m2657if(i);
        E3 m432do = cdo.m432do();
        C0482Rq c0482Rq = this.f2591do;
        KJ kj = this.f2590do;
        final AbstractC0533Ub.Ctry.Cnew m1641if = m1641if(m1639do(m432do, c0482Rq, kj), kj);
        if (z) {
            this.f2594do.m3055for(m1641if, str, equals);
        } else {
            this.f2595do.f13736if.m6567do(new Runnable() { // from class: NC
                @Override // java.lang.Runnable
                public final void run() {
                    OC.this.f2594do.m3055for(m1641if, str, equals);
                }
            });
        }
    }
}

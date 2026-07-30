package defpackage;

import androidx.work.Cif;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import defpackage.InterfaceC2603cw;
import java.util.HashMap;
import java.util.HashSet;

/* renamed from: gg, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC2822gg implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final C2661dw f13194do = new C2661dw();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3857vM f13195do;

    static {
        AbstractC0614Xq.m2870try("EnqueueRunnable");
    }

    public RunnableC2822gg(C3857vM c3857vM) {
        this.f13195do = c3857vM;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x036d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x01ab A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02a2  */
    /* JADX WARN: Type inference failed for: r15v9, types: [java.util.List] */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m6746do(defpackage.C3857vM r26) {
        /*
            Method dump skipped, instructions count: 906
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.RunnableC2822gg.m6746do(vM):boolean");
    }

    /* renamed from: if, reason: not valid java name */
    public static void m6747if(TM tm) {
        C0225Ga c0225Ga = tm.f3653do;
        String str = tm.f3664if;
        if (str.equals(ConstraintTrackingWorker.class.getName())) {
            return;
        }
        if (c0225Ga.f1199for || c0225Ga.f1202new) {
            Cif.Cdo cdo = new Cif.Cdo();
            cdo.m4724do(tm.f3654do.f8145do);
            HashMap hashMap = cdo.f8146do;
            hashMap.put("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str);
            tm.f3664if = ConstraintTrackingWorker.class.getName();
            Cif cif = new Cif(hashMap);
            Cif.m4722for(cif);
            tm.f3654do = cif;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        C2661dw c2661dw = this.f13194do;
        C3857vM c3857vM = this.f13195do;
        try {
            c3857vM.getClass();
            GM gm = c3857vM.f16073do;
            if (C3857vM.m8472for(c3857vM, new HashSet())) {
                throw new IllegalStateException(String.format("WorkContinuation has cycles (%s)", c3857vM));
            }
            WorkDatabase workDatabase = gm.f1178do;
            workDatabase.m8560for();
            try {
                boolean m6746do = m6746do(c3857vM);
                workDatabase.m8561goto();
                if (m6746do) {
                    C3418nw.m7624do(gm.f1176do, RescheduleReceiver.class, true);
                    C4023yB.m8704do(gm.f1177do, gm.f1178do, gm.f1179do);
                }
                c2661dw.m6478do(InterfaceC2603cw.f12405do);
            } finally {
                workDatabase.m8557case();
            }
        } catch (Throwable th) {
            c2661dw.m6478do(new InterfaceC2603cw.Cdo.C0083do(th));
        }
    }
}

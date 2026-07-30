package defpackage;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import defpackage.NM;
import defpackage.VM;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* renamed from: fN, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC2748fN implements Runnable {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f12906for = 0;

    /* renamed from: break, reason: not valid java name */
    public final String f12907break;

    /* renamed from: catch, reason: not valid java name */
    public String f12908catch;

    /* renamed from: do, reason: not valid java name */
    public final IG f12909do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TM f12910do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final UM f12912do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0579Wd f12913do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final XM f12914do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f12915do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final WorkerParameters.Cdo f12918do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final androidx.work.Cdo f12919do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final WorkDatabase f12920do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ArrayList f12921do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<InterfaceC3846vB> f12922do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3699sj f12923do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile boolean f12925do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ListenableWorker.Cdo f12916do = new ListenableWorker.Cdo.C0046do();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final UC<Boolean> f12911do = new UC<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InterfaceFutureC3942wq<ListenableWorker.Cdo> f12924do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ListenableWorker f12917do = null;

    /* renamed from: fN$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final IG f12926do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Context f12927do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public WorkerParameters.Cdo f12928do = new WorkerParameters.Cdo();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final androidx.work.Cdo f12929do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final WorkDatabase f12930do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final String f12931do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public List<InterfaceC3846vB> f12932do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final InterfaceC3699sj f12933do;

        public Cdo(Context context, androidx.work.Cdo cdo, IG ig, InterfaceC3699sj interfaceC3699sj, WorkDatabase workDatabase, String str) {
            this.f12927do = context.getApplicationContext();
            this.f12926do = ig;
            this.f12933do = interfaceC3699sj;
            this.f12929do = cdo;
            this.f12930do = workDatabase;
            this.f12931do = str;
        }
    }

    static {
        AbstractC0614Xq.m2870try("WorkerWrapper");
    }

    public RunnableC2748fN(Cdo cdo) {
        this.f12915do = cdo.f12927do;
        this.f12909do = cdo.f12926do;
        this.f12923do = cdo.f12933do;
        this.f12907break = cdo.f12931do;
        this.f12922do = cdo.f12932do;
        this.f12918do = cdo.f12928do;
        this.f12919do = cdo.f12929do;
        WorkDatabase workDatabase = cdo.f12930do;
        this.f12920do = workDatabase;
        this.f12912do = workDatabase.mo4729final();
        this.f12913do = workDatabase.mo4731this();
        this.f12914do = workDatabase.mo4730super();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0038 A[Catch: all -> 0x009b, TryCatch #1 {all -> 0x009b, blocks: (B:3:0x0005, B:10:0x0030, B:12:0x0038, B:14:0x0041, B:15:0x005b, B:17:0x005f, B:19:0x0063, B:21:0x0069, B:22:0x0071, B:30:0x007e, B:32:0x007f, B:38:0x0094, B:39:0x009a, B:5:0x0020, B:7:0x0027, B:24:0x0072, B:25:0x007a), top: B:2:0x0005, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0041 A[Catch: all -> 0x009b, TryCatch #1 {all -> 0x009b, blocks: (B:3:0x0005, B:10:0x0030, B:12:0x0038, B:14:0x0041, B:15:0x005b, B:17:0x005f, B:19:0x0063, B:21:0x0069, B:22:0x0071, B:30:0x007e, B:32:0x007f, B:38:0x0094, B:39:0x009a, B:5:0x0020, B:7:0x0027, B:24:0x0072, B:25:0x007a), top: B:2:0x0005, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0072 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: case, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6660case(boolean r6) {
        /*
            r5 = this;
            androidx.work.impl.WorkDatabase r0 = r5.f12920do
            r0.m8560for()
            androidx.work.impl.WorkDatabase r0 = r5.f12920do     // Catch: java.lang.Throwable -> L9b
            UM r0 = r0.mo4729final()     // Catch: java.lang.Throwable -> L9b
            VM r0 = (defpackage.VM) r0     // Catch: java.lang.Throwable -> L9b
            r0.getClass()     // Catch: java.lang.Throwable -> L9b
            java.lang.String r1 = "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"
            r2 = 0
            yA r1 = defpackage.C4022yA.m8700for(r2, r1)     // Catch: java.lang.Throwable -> L9b
            wA r0 = r0.f4117do     // Catch: java.lang.Throwable -> L9b
            r0.m8562if()     // Catch: java.lang.Throwable -> L9b
            android.database.Cursor r0 = r0.m8559else(r1)     // Catch: java.lang.Throwable -> L9b
            boolean r3 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L93
            r4 = 1
            if (r3 == 0) goto L2f
            int r3 = r0.getInt(r2)     // Catch: java.lang.Throwable -> L93
            if (r3 == 0) goto L2f
            r3 = 1
            goto L30
        L2f:
            r3 = 0
        L30:
            r0.close()     // Catch: java.lang.Throwable -> L9b
            r1.release()     // Catch: java.lang.Throwable -> L9b
            if (r3 != 0) goto L3f
            android.content.Context r0 = r5.f12915do     // Catch: java.lang.Throwable -> L9b
            java.lang.Class<androidx.work.impl.background.systemalarm.RescheduleReceiver> r1 = androidx.work.impl.background.systemalarm.RescheduleReceiver.class
            defpackage.C3418nw.m7624do(r0, r1, r2)     // Catch: java.lang.Throwable -> L9b
        L3f:
            if (r6 == 0) goto L5b
            UM r0 = r5.f12912do     // Catch: java.lang.Throwable -> L9b
            CM r1 = defpackage.CM.ENQUEUED     // Catch: java.lang.Throwable -> L9b
            java.lang.String[] r3 = new java.lang.String[r4]     // Catch: java.lang.Throwable -> L9b
            java.lang.String r4 = r5.f12907break     // Catch: java.lang.Throwable -> L9b
            r3[r2] = r4     // Catch: java.lang.Throwable -> L9b
            VM r0 = (defpackage.VM) r0     // Catch: java.lang.Throwable -> L9b
            r0.m2636final(r1, r3)     // Catch: java.lang.Throwable -> L9b
            UM r0 = r5.f12912do     // Catch: java.lang.Throwable -> L9b
            java.lang.String r1 = r5.f12907break     // Catch: java.lang.Throwable -> L9b
            VM r0 = (defpackage.VM) r0     // Catch: java.lang.Throwable -> L9b
            r2 = -1
            r0.m2631catch(r2, r1)     // Catch: java.lang.Throwable -> L9b
        L5b:
            TM r0 = r5.f12910do     // Catch: java.lang.Throwable -> L9b
            if (r0 == 0) goto L7f
            androidx.work.ListenableWorker r0 = r5.f12917do     // Catch: java.lang.Throwable -> L9b
            if (r0 == 0) goto L7f
            boolean r0 = r0.isRunInForeground()     // Catch: java.lang.Throwable -> L9b
            if (r0 == 0) goto L7f
            sj r0 = r5.f12923do     // Catch: java.lang.Throwable -> L9b
            java.lang.String r1 = r5.f12907break     // Catch: java.lang.Throwable -> L9b
            Lx r0 = (defpackage.Lx) r0     // Catch: java.lang.Throwable -> L9b
            java.lang.Object r2 = r0.f2056do     // Catch: java.lang.Throwable -> L9b
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L9b
            java.util.HashMap r3 = r0.f2058do     // Catch: java.lang.Throwable -> L7c
            r3.remove(r1)     // Catch: java.lang.Throwable -> L7c
            r0.m1369this()     // Catch: java.lang.Throwable -> L7c
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L7c
            goto L7f
        L7c:
            r6 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L7c
            throw r6     // Catch: java.lang.Throwable -> L9b
        L7f:
            androidx.work.impl.WorkDatabase r0 = r5.f12920do     // Catch: java.lang.Throwable -> L9b
            r0.m8561goto()     // Catch: java.lang.Throwable -> L9b
            androidx.work.impl.WorkDatabase r0 = r5.f12920do
            r0.m8557case()
            UC<java.lang.Boolean> r0 = r5.f12911do
            java.lang.Boolean r6 = java.lang.Boolean.valueOf(r6)
            r0.m2365goto(r6)
            return
        L93:
            r6 = move-exception
            r0.close()     // Catch: java.lang.Throwable -> L9b
            r1.release()     // Catch: java.lang.Throwable -> L9b
            throw r6     // Catch: java.lang.Throwable -> L9b
        L9b:
            r6 = move-exception
            androidx.work.impl.WorkDatabase r0 = r5.f12920do
            r0.m8557case()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.RunnableC2748fN.m6660case(boolean):void");
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6661do(ListenableWorker.Cdo cdo) {
        if (!(cdo instanceof ListenableWorker.Cdo.Cfor)) {
            if (cdo instanceof ListenableWorker.Cdo.Cif) {
                AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
                String.format("Worker result RETRY for %s", this.f12908catch);
                m2869for.mo2874new(new Throwable[0]);
                m6666new();
                return;
            }
            AbstractC0614Xq m2869for2 = AbstractC0614Xq.m2869for();
            String.format("Worker result FAILURE for %s", this.f12908catch);
            m2869for2.mo2874new(new Throwable[0]);
            if (this.f12910do.m2242for()) {
                m6668try();
                return;
            } else {
                m6664goto();
                return;
            }
        }
        AbstractC0614Xq m2869for3 = AbstractC0614Xq.m2869for();
        String.format("Worker result SUCCESS for %s", this.f12908catch);
        m2869for3.mo2874new(new Throwable[0]);
        if (this.f12910do.m2242for()) {
            m6668try();
            return;
        }
        InterfaceC0579Wd interfaceC0579Wd = this.f12913do;
        String str = this.f12907break;
        UM um = this.f12912do;
        WorkDatabase workDatabase = this.f12920do;
        workDatabase.m8560for();
        try {
            ((VM) um).m2636final(CM.SUCCEEDED, str);
            ((VM) um).m2632class(str, ((ListenableWorker.Cdo.Cfor) this.f12916do).f8120do);
            long currentTimeMillis = System.currentTimeMillis();
            Iterator it = ((C0601Xd) interfaceC0579Wd).m2840do(str).iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                if (((VM) um).m2630case(str2) == CM.BLOCKED && ((C0601Xd) interfaceC0579Wd).m2841if(str2)) {
                    AbstractC0614Xq m2869for4 = AbstractC0614Xq.m2869for();
                    String.format("Setting status to enqueued for %s", str2);
                    m2869for4.mo2874new(new Throwable[0]);
                    ((VM) um).m2636final(CM.ENQUEUED, str2);
                    ((VM) um).m2633const(currentTimeMillis, str2);
                }
            }
            workDatabase.m8561goto();
        } finally {
            workDatabase.m8557case();
            m6660case(false);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m6662else() {
        VM vm = (VM) this.f12912do;
        String str = this.f12907break;
        CM m2630case = vm.m2630case(str);
        if (m2630case == CM.RUNNING) {
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            String.format("Status for %s is RUNNING;not doing any work and rescheduling for later execution", str);
            m2869for.mo2872do(new Throwable[0]);
            m6660case(true);
            return;
        }
        AbstractC0614Xq m2869for2 = AbstractC0614Xq.m2869for();
        String.format("Status for %s is %s; not doing any work", str, m2630case);
        m2869for2.mo2872do(new Throwable[0]);
        m6660case(false);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m6663for() {
        boolean m6667this = m6667this();
        String str = this.f12907break;
        WorkDatabase workDatabase = this.f12920do;
        if (!m6667this) {
            workDatabase.m8560for();
            try {
                CM m2630case = ((VM) this.f12912do).m2630case(str);
                NM nm = (NM) workDatabase.mo4728const();
                AbstractC3904wA abstractC3904wA = nm.f2367do;
                abstractC3904wA.m8562if();
                NM.Cif cif = nm.f2366do;
                C0607Xj m1752do = cif.m1752do();
                if (str == null) {
                    m1752do.m2764new(1);
                } else {
                    m1752do.m2760case(1, str);
                }
                abstractC3904wA.m8560for();
                try {
                    m1752do.m2868goto();
                    abstractC3904wA.m8561goto();
                    if (m2630case == null) {
                        m6660case(false);
                    } else if (m2630case == CM.RUNNING) {
                        m6661do(this.f12916do);
                    } else if (!m2630case.m263do()) {
                        m6666new();
                    }
                    workDatabase.m8561goto();
                } finally {
                    abstractC3904wA.m8557case();
                    cif.m1753for(m1752do);
                }
            } finally {
                workDatabase.m8557case();
            }
        }
        List<InterfaceC3846vB> list = this.f12922do;
        if (list != null) {
            Iterator<InterfaceC3846vB> it = list.iterator();
            while (it.hasNext()) {
                it.next().mo1459try(str);
            }
            C4023yB.m8704do(this.f12919do, workDatabase, list);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m6664goto() {
        String str = this.f12907break;
        WorkDatabase workDatabase = this.f12920do;
        workDatabase.m8560for();
        try {
            m6665if(str);
            ((VM) this.f12912do).m2632class(str, ((ListenableWorker.Cdo.C0046do) this.f12916do).f8119do);
            workDatabase.m8561goto();
        } finally {
            workDatabase.m8557case();
            m6660case(false);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m6665if(String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            VM vm = (VM) this.f12912do;
            if (vm.m2630case(str2) != CM.CANCELLED) {
                vm.m2636final(CM.FAILED, str2);
            }
            linkedList.addAll(((C0601Xd) this.f12913do).m2840do(str2));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m6666new() {
        String str = this.f12907break;
        UM um = this.f12912do;
        WorkDatabase workDatabase = this.f12920do;
        workDatabase.m8560for();
        try {
            ((VM) um).m2636final(CM.ENQUEUED, str);
            ((VM) um).m2633const(System.currentTimeMillis(), str);
            ((VM) um).m2631catch(-1L, str);
            workDatabase.m8561goto();
        } finally {
            workDatabase.m8557case();
            m6660case(true);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ab, code lost:
    
        if ((r0.f3652do == r8 && r0.f3650do > 0) != false) goto L30;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 717
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.RunnableC2748fN.run():void");
    }

    /* renamed from: this, reason: not valid java name */
    public final boolean m6667this() {
        if (!this.f12925do) {
            return false;
        }
        AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
        String.format("Work interrupted for %s", this.f12908catch);
        m2869for.mo2872do(new Throwable[0]);
        if (((VM) this.f12912do).m2630case(this.f12907break) == null) {
            m6660case(false);
        } else {
            m6660case(!r0.m263do());
        }
        return true;
    }

    /* renamed from: try, reason: not valid java name */
    public final void m6668try() {
        String str = this.f12907break;
        UM um = this.f12912do;
        WorkDatabase workDatabase = this.f12920do;
        workDatabase.m8560for();
        try {
            ((VM) um).m2633const(System.currentTimeMillis(), str);
            ((VM) um).m2636final(CM.ENQUEUED, str);
            VM vm = (VM) um;
            AbstractC3904wA abstractC3904wA = vm.f4117do;
            abstractC3904wA.m8562if();
            VM.Ccase ccase = vm.f4109do;
            C0607Xj m1752do = ccase.m1752do();
            if (str == null) {
                m1752do.m2764new(1);
            } else {
                m1752do.m2760case(1, str);
            }
            abstractC3904wA.m8560for();
            try {
                m1752do.m2868goto();
                abstractC3904wA.m8561goto();
                abstractC3904wA.m8557case();
                ccase.m1753for(m1752do);
                ((VM) um).m2631catch(-1L, str);
                workDatabase.m8561goto();
            } catch (Throwable th) {
                abstractC3904wA.m8557case();
                ccase.m1753for(m1752do);
                throw th;
            }
        } finally {
            workDatabase.m8557case();
            m6660case(false);
        }
    }
}

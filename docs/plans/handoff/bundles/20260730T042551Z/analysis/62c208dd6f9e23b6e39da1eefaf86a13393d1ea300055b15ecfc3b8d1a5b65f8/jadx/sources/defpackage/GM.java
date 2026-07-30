package defpackage;

import android.app.ActivityManager;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.Cdo;
import androidx.work.WorkerParameters;
import androidx.work.impl.Cdo;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.utils.ForceStopRunnable;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC0614Xq;
import defpackage.AbstractC3904wA;
import defpackage.InterfaceC0741bG;
import defpackage.VM;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class GM extends FM {

    /* renamed from: do, reason: not valid java name */
    public static GM f1170do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Object f1171do;

    /* renamed from: if, reason: not valid java name */
    public static GM f1172if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public IG f1173do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Lx f1174do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public BroadcastReceiver.PendingResult f1175do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Context f1176do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f1177do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public WorkDatabase f1178do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public List<InterfaceC3846vB> f1179do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3713sx f1180do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f1181do;

    static {
        AbstractC0614Xq.m2870try("WorkManagerImpl");
        f1170do = null;
        f1172if = null;
        f1171do = new Object();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    public GM(Context context, Cdo cdo, HM hm) {
        AbstractC3904wA.Cdo cdo2;
        Executor executor;
        String str;
        boolean z;
        int i;
        InterfaceC3846vB interfaceC3846vB;
        InterfaceC3846vB interfaceC3846vB2;
        ?? r5;
        boolean isDeviceProtectedStorage;
        boolean z2 = context.getResources().getBoolean(R.bool.workmanager_test_configuration);
        Context applicationContext = context.getApplicationContext();
        ExecutorC3611rC executorC3611rC = hm.f1346do;
        int i2 = WorkDatabase.f8147do;
        if (z2) {
            cdo2 = new AbstractC3904wA.Cdo(applicationContext, null);
            cdo2.f16297do = true;
        } else {
            String[] strArr = C4034yM.f16735do;
            cdo2 = new AbstractC3904wA.Cdo(applicationContext, "androidx.work.workdb");
            cdo2.f16290do = new C3916wM(applicationContext);
        }
        cdo2.f16295do = executorC3611rC;
        C3975xM c3975xM = new C3975xM();
        if (cdo2.f16293do == null) {
            cdo2.f16293do = new ArrayList<>();
        }
        cdo2.f16293do.add(c3975xM);
        cdo2.m8563do(androidx.work.impl.Cdo.f8201do);
        cdo2.m8563do(new Cdo.Cgoto(applicationContext, 2, 3));
        cdo2.m8563do(androidx.work.impl.Cdo.f8204do);
        cdo2.m8563do(androidx.work.impl.Cdo.f8203do);
        cdo2.m8563do(new Cdo.Cgoto(applicationContext, 5, 6));
        cdo2.m8563do(androidx.work.impl.Cdo.f8205do);
        cdo2.m8563do(androidx.work.impl.Cdo.f8206do);
        cdo2.m8563do(androidx.work.impl.Cdo.f8200do);
        cdo2.m8563do(new Cdo.Cthis(applicationContext));
        cdo2.m8563do(new Cdo.Cgoto(applicationContext, 10, 11));
        cdo2.m8563do(androidx.work.impl.Cdo.f8202do);
        cdo2.f16300if = false;
        cdo2.f16298for = true;
        Context context2 = cdo2.f16289do;
        if (context2 == null) {
            throw new IllegalArgumentException("Cannot provide null context for the database.");
        }
        Class cls = cdo2.f16291do;
        if (cls == null) {
            throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
        }
        Executor executor2 = cdo2.f16295do;
        if (executor2 == null && cdo2.f16299if == null) {
            ExecutorC3778u2 executorC3778u2 = C3837v2.f15982do;
            cdo2.f16299if = executorC3778u2;
            cdo2.f16295do = executorC3778u2;
        } else if (executor2 != null && cdo2.f16299if == null) {
            cdo2.f16299if = executor2;
        } else if (executor2 == null && (executor = cdo2.f16299if) != null) {
            cdo2.f16295do = executor;
        }
        if (cdo2.f16290do == null) {
            cdo2.f16290do = new C0563Vj();
        }
        String str2 = cdo2.f16292do;
        InterfaceC0741bG.Cfor cfor = cdo2.f16290do;
        AbstractC3904wA.Cfor cfor2 = cdo2.f16296do;
        ArrayList<AbstractC3904wA.Cif> arrayList = cdo2.f16293do;
        boolean z3 = cdo2.f16297do;
        ActivityManager activityManager = (ActivityManager) context2.getSystemService("activity");
        int i3 = (activityManager == null || activityManager.isLowRamDevice()) ? 2 : 3;
        Executor executor3 = cdo2.f16295do;
        C0556Vc c0556Vc = new C0556Vc(context2, str2, cfor, cfor2, arrayList, z3, i3, executor3, cdo2.f16299if, cdo2.f16300if, cdo2.f16298for);
        String name = cls.getPackage().getName();
        String canonicalName = cls.getCanonicalName();
        String str3 = (name.isEmpty() ? canonicalName : canonicalName.substring(name.length() + 1)).replace('.', '_') + "_Impl";
        try {
            if (name.isEmpty()) {
                str = str3;
            } else {
                str = name + "." + str3;
            }
            AbstractC3904wA abstractC3904wA = (AbstractC3904wA) Class.forName(str).newInstance();
            InterfaceC0741bG mo4733try = abstractC3904wA.mo4733try(c0556Vc);
            abstractC3904wA.f16282do = mo4733try;
            if (mo4733try instanceof XA) {
                ((XA) mo4733try).f4468do = c0556Vc;
            }
            boolean z4 = i3 == 3;
            mo4733try.setWriteAheadLoggingEnabled(z4);
            abstractC3904wA.f16284do = arrayList;
            abstractC3904wA.f16285do = executor3;
            new ArrayDeque();
            abstractC3904wA.f16287do = z3;
            abstractC3904wA.f16288if = z4;
            WorkDatabase workDatabase = (WorkDatabase) abstractC3904wA;
            Context applicationContext2 = context.getApplicationContext();
            AbstractC0614Xq.Cdo cdo3 = new AbstractC0614Xq.Cdo(cdo.f8136do);
            synchronized (AbstractC0614Xq.class) {
                AbstractC0614Xq.f4612do = cdo3;
            }
            InterfaceC3846vB[] interfaceC3846vBArr = new InterfaceC3846vB[2];
            int i4 = Build.VERSION.SDK_INT;
            int i5 = C4023yB.f16693do;
            if (i4 >= 23) {
                interfaceC3846vB2 = new C4028yG(applicationContext2, this);
                r5 = 1;
                C3418nw.m7624do(applicationContext2, SystemJobService.class, true);
                AbstractC0614Xq.m2869for().mo2872do(new Throwable[0]);
                i = 0;
            } else {
                try {
                    InterfaceC3846vB interfaceC3846vB3 = (InterfaceC3846vB) Class.forName("androidx.work.impl.background.gcm.GcmScheduler").getConstructor(Context.class).newInstance(applicationContext2);
                    AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
                    String.format("Created %s", "androidx.work.impl.background.gcm.GcmScheduler");
                    m2869for.mo2872do(new Throwable[0]);
                    interfaceC3846vB = interfaceC3846vB3;
                    z = true;
                    i = 0;
                } catch (Throwable th) {
                    z = true;
                    i = 0;
                    AbstractC0614Xq.m2869for().mo2872do(th);
                    interfaceC3846vB = null;
                }
                if (interfaceC3846vB == null) {
                    interfaceC3846vB2 = new C3498pG(applicationContext2);
                    C3418nw.m7624do(applicationContext2, SystemAlarmService.class, z);
                    AbstractC0614Xq.m2869for().mo2872do(new Throwable[i]);
                    r5 = z;
                } else {
                    interfaceC3846vB2 = interfaceC3846vB;
                    r5 = z;
                }
            }
            interfaceC3846vBArr[i] = interfaceC3846vB2;
            interfaceC3846vBArr[r5] = new C0367Ml(applicationContext2, cdo, hm, this);
            List<InterfaceC3846vB> asList = Arrays.asList(interfaceC3846vBArr);
            Lx lx = new Lx(context, cdo, hm, workDatabase, asList);
            Context applicationContext3 = context.getApplicationContext();
            this.f1176do = applicationContext3;
            this.f1177do = cdo;
            this.f1173do = hm;
            this.f1178do = workDatabase;
            this.f1179do = asList;
            this.f1174do = lx;
            this.f1180do = new C3713sx(workDatabase);
            this.f1181do = false;
            if (Build.VERSION.SDK_INT >= 24) {
                isDeviceProtectedStorage = applicationContext3.isDeviceProtectedStorage();
                if (isDeviceProtectedStorage) {
                    throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
                }
            }
            ((HM) this.f1173do).m852do(new ForceStopRunnable(applicationContext3, this));
        } catch (ClassNotFoundException unused) {
            throw new RuntimeException("cannot find implementation for " + cls.getCanonicalName() + ". " + str3 + " does not exist");
        } catch (IllegalAccessException unused2) {
            throw new RuntimeException("Cannot access the constructor" + cls.getCanonicalName());
        } catch (InstantiationException unused3) {
            throw new RuntimeException("Failed to create an instance of " + cls.getCanonicalName());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0016, code lost:
    
        r4 = r4.getApplicationContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x001c, code lost:
    
        if (defpackage.GM.f1172if != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x001e, code lost:
    
        defpackage.GM.f1172if = new defpackage.GM(r4, r5, new defpackage.HM(r5.f8143if));
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
    
        defpackage.GM.f1170do = defpackage.GM.f1172if;
     */
    /* renamed from: case, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m729case(android.content.Context r4, androidx.work.Cdo r5) {
        /*
            java.lang.Object r0 = defpackage.GM.f1171do
            monitor-enter(r0)
            GM r1 = defpackage.GM.f1170do     // Catch: java.lang.Throwable -> L32
            if (r1 == 0) goto L14
            GM r2 = defpackage.GM.f1172if     // Catch: java.lang.Throwable -> L32
            if (r2 != 0) goto Lc
            goto L14
        Lc:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L32
            java.lang.String r5 = "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L32
            throw r4     // Catch: java.lang.Throwable -> L32
        L14:
            if (r1 != 0) goto L30
            android.content.Context r4 = r4.getApplicationContext()     // Catch: java.lang.Throwable -> L32
            GM r1 = defpackage.GM.f1172if     // Catch: java.lang.Throwable -> L32
            if (r1 != 0) goto L2c
            GM r1 = new GM     // Catch: java.lang.Throwable -> L32
            HM r2 = new HM     // Catch: java.lang.Throwable -> L32
            java.util.concurrent.ExecutorService r3 = r5.f8143if     // Catch: java.lang.Throwable -> L32
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L32
            r1.<init>(r4, r5, r2)     // Catch: java.lang.Throwable -> L32
            defpackage.GM.f1172if = r1     // Catch: java.lang.Throwable -> L32
        L2c:
            GM r4 = defpackage.GM.f1172if     // Catch: java.lang.Throwable -> L32
            defpackage.GM.f1170do = r4     // Catch: java.lang.Throwable -> L32
        L30:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L32
            return
        L32:
            r4 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L32
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.GM.m729case(android.content.Context, androidx.work.do):void");
    }

    @Deprecated
    /* renamed from: new, reason: not valid java name */
    public static GM m730new() {
        synchronized (f1171do) {
            GM gm = f1170do;
            if (gm != null) {
                return gm;
            }
            return f1172if;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: try, reason: not valid java name */
    public static GM m731try(Context context) {
        GM m730new;
        synchronized (f1171do) {
            m730new = m730new();
            if (m730new == null) {
                Context applicationContext = context.getApplicationContext();
                if (!(applicationContext instanceof Cdo.Cif)) {
                    throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
                }
                m729case(applicationContext, ((Cdo.Cif) applicationContext).m4720do());
                m730new = m731try(applicationContext);
            }
        }
        return m730new;
    }

    /* renamed from: break, reason: not valid java name */
    public final void m732break(String str) {
        ((HM) this.f1173do).m852do(new RunnableC3438oF(this, str, false));
    }

    /* renamed from: else, reason: not valid java name */
    public final void m733else() {
        synchronized (f1171do) {
            this.f1181do = true;
            BroadcastReceiver.PendingResult pendingResult = this.f1175do;
            if (pendingResult != null) {
                pendingResult.finish();
                this.f1175do = null;
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final C2661dw m734for(List list) {
        if (list.isEmpty()) {
            throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
        }
        C3857vM c3857vM = new C3857vM(this, list);
        if (c3857vM.f16078do) {
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            String.format("Already enqueued work ids (%s)", TextUtils.join(", ", c3857vM.f16076do));
            m2869for.mo2871case(new Throwable[0]);
        } else {
            RunnableC2822gg runnableC2822gg = new RunnableC2822gg(c3857vM);
            ((HM) this.f1173do).m852do(runnableC2822gg);
            c3857vM.f16074do = runnableC2822gg.f13194do;
        }
        return c3857vM.f16074do;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m735goto() {
        ArrayList m8709new;
        if (Build.VERSION.SDK_INT >= 23) {
            Context context = this.f1176do;
            int i = C4028yG.f16725for;
            JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
            if (jobScheduler != null && (m8709new = C4028yG.m8709new(context, jobScheduler)) != null && !m8709new.isEmpty()) {
                Iterator it = m8709new.iterator();
                while (it.hasNext()) {
                    C4028yG.m8707do(jobScheduler, ((JobInfo) it.next()).getId());
                }
            }
        }
        VM vm = (VM) this.f1178do.mo4729final();
        AbstractC3904wA abstractC3904wA = vm.f4117do;
        abstractC3904wA.m8562if();
        VM.Cgoto cgoto = vm.f4113do;
        C0607Xj m1752do = cgoto.m1752do();
        abstractC3904wA.m8560for();
        try {
            m1752do.m2868goto();
            abstractC3904wA.m8561goto();
            abstractC3904wA.m8557case();
            cgoto.m1753for(m1752do);
            C4023yB.m8704do(this.f1177do, this.f1178do, this.f1179do);
        } catch (Throwable th) {
            abstractC3904wA.m8557case();
            cgoto.m1753for(m1752do);
            throw th;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final void m736this(String str, WorkerParameters.Cdo cdo) {
        ((HM) this.f1173do).m852do(new XE(this, str, cdo));
    }
}

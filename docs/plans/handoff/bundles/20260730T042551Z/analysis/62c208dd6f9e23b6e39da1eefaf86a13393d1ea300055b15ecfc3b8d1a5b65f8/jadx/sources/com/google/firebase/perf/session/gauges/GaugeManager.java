package com.google.firebase.perf.session.gauges;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.perf.session.PerfSession;
import com.google.firebase.perf.session.gauges.GaugeManager;
import com.google.firebase.perf.util.Timer;
import defpackage.AI;
import defpackage.C0177Ds;
import defpackage.C0366Mk;
import defpackage.C0388Nk;
import defpackage.C0406Og;
import defpackage.C0410Ok;
import defpackage.C0503Sp;
import defpackage.C0685aK;
import defpackage.C0817ca;
import defpackage.C2757fa;
import defpackage.C2779fw;
import defpackage.C3608r9;
import defpackage.C3986xb;
import defpackage.C4045yb;
import defpackage.EnumC3601r2;
import defpackage.InterfaceC3655ry;
import defpackage.L9;
import defpackage.Pz;
import defpackage.Q0;
import defpackage.R0;
import defpackage.RunnableC0342Lh;
import defpackage.RunnableC0359Md;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

@Keep
/* loaded from: classes3.dex */
public class GaugeManager {
    private static final long APPROX_NUMBER_OF_DATA_POINTS_PER_GAUGE_METRIC = 20;
    private static final long INVALID_GAUGE_COLLECTION_FREQUENCY = -1;
    private static final long TIME_TO_WAIT_BEFORE_FLUSHING_GAUGES_QUEUE_MS = 20;
    private EnumC3601r2 applicationProcessState;
    private final L9 configResolver;
    private final C0503Sp<C3986xb> cpuGaugeCollector;
    private ScheduledFuture gaugeManagerDataCollectionJob;
    private final C0503Sp<ScheduledExecutorService> gaugeManagerExecutor;
    private C0388Nk gaugeMetadataManager;
    private final C0503Sp<C0177Ds> memoryGaugeCollector;
    private String sessionId;
    private final AI transportManager;
    private static final Q0 logger = Q0.m1818new();
    private static final GaugeManager instance = new GaugeManager();

    @SuppressLint({"ThreadPoolCreation"})
    private GaugeManager() {
        this(new C0503Sp(new InterfaceC3655ry() { // from class: Lk
            @Override // defpackage.InterfaceC3655ry
            public final Object get() {
                return Executors.newSingleThreadScheduledExecutor();
            }
        }), AI.f54do, L9.m1286try(), null, new C0503Sp(new C3608r9(3)), new C0503Sp(new C0406Og(1)));
    }

    private static void collectGaugeMetricOnce(C3986xb c3986xb, C0177Ds c0177Ds, Timer timer) {
        synchronized (c3986xb) {
            try {
                c3986xb.f16585do.schedule(new Pz(5, c3986xb, timer), 0L, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                Q0 q0 = C3986xb.f16580do;
                e.getMessage();
                q0.m1819case();
            }
        }
        c0177Ds.m405do(timer);
    }

    private long getCpuGaugeCollectionFrequencyMs(EnumC3601r2 enumC3601r2) {
        long m1294final;
        C0817ca c0817ca;
        int ordinal = enumC3601r2.ordinal();
        if (ordinal == 1) {
            m1294final = this.configResolver.m1294final();
        } else if (ordinal != 2) {
            m1294final = -1;
        } else {
            L9 l9 = this.configResolver;
            l9.getClass();
            synchronized (C0817ca.class) {
                if (C0817ca.f8558do == null) {
                    C0817ca.f8558do = new C0817ca();
                }
                c0817ca = C0817ca.f8558do;
            }
            C2779fw<Long> m1289catch = l9.m1289catch(c0817ca);
            if (m1289catch.m6695if() && L9.m1284public(m1289catch.m6694do().longValue())) {
                m1294final = m1289catch.m6694do().longValue();
            } else {
                C2779fw<Long> m1291const = l9.m1291const(c0817ca);
                if (m1291const.m6695if() && L9.m1284public(m1291const.m6694do().longValue())) {
                    l9.f1932do.m6823for(m1291const.m6694do().longValue(), "com.google.firebase.perf.SessionsCpuCaptureFrequencyBackgroundMs");
                    m1294final = m1291const.m6694do().longValue();
                } else {
                    C2779fw<Long> m1295for = l9.m1295for(c0817ca);
                    if (m1295for.m6695if() && L9.m1284public(m1295for.m6694do().longValue())) {
                        m1294final = m1295for.m6694do().longValue();
                    } else {
                        Long l = 0L;
                        m1294final = l.longValue();
                    }
                }
            }
        }
        Q0 q0 = C3986xb.f16580do;
        return m1294final <= 0 ? INVALID_GAUGE_COLLECTION_FREQUENCY : m1294final;
    }

    private C0366Mk getGaugeMetadata() {
        C0366Mk.Cdo m1449implements = C0366Mk.m1449implements();
        int m3119if = C0685aK.m3119if((this.gaugeMetadataManager.f2425do.totalMem * 1) / 1024);
        m1449implements.m6307super();
        C0366Mk.m1450interface((C0366Mk) m1449implements.f12107if, m3119if);
        int m3119if2 = C0685aK.m3119if((this.gaugeMetadataManager.f2427do.maxMemory() * 1) / 1024);
        m1449implements.m6307super();
        C0366Mk.m1452strictfp((C0366Mk) m1449implements.f12107if, m3119if2);
        int m3119if3 = C0685aK.m3119if((this.gaugeMetadataManager.f2426do.getMemoryClass() * 1048576) / 1024);
        m1449implements.m6307super();
        C0366Mk.m1453volatile((C0366Mk) m1449implements.f12107if, m3119if3);
        return m1449implements.m6305const();
    }

    public static synchronized GaugeManager getInstance() {
        GaugeManager gaugeManager;
        synchronized (GaugeManager.class) {
            gaugeManager = instance;
        }
        return gaugeManager;
    }

    private long getMemoryGaugeCollectionFrequencyMs(EnumC3601r2 enumC3601r2) {
        long m1300super;
        C2757fa c2757fa;
        int ordinal = enumC3601r2.ordinal();
        if (ordinal == 1) {
            m1300super = this.configResolver.m1300super();
        } else if (ordinal != 2) {
            m1300super = -1;
        } else {
            L9 l9 = this.configResolver;
            l9.getClass();
            synchronized (C2757fa.class) {
                if (C2757fa.f12950do == null) {
                    C2757fa.f12950do = new C2757fa();
                }
                c2757fa = C2757fa.f12950do;
            }
            C2779fw<Long> m1289catch = l9.m1289catch(c2757fa);
            if (m1289catch.m6695if() && L9.m1284public(m1289catch.m6694do().longValue())) {
                m1300super = m1289catch.m6694do().longValue();
            } else {
                C2779fw<Long> m1291const = l9.m1291const(c2757fa);
                if (m1291const.m6695if() && L9.m1284public(m1291const.m6694do().longValue())) {
                    l9.f1932do.m6823for(m1291const.m6694do().longValue(), "com.google.firebase.perf.SessionsMemoryCaptureFrequencyBackgroundMs");
                    m1300super = m1291const.m6694do().longValue();
                } else {
                    C2779fw<Long> m1295for = l9.m1295for(c2757fa);
                    if (m1295for.m6695if() && L9.m1284public(m1295for.m6694do().longValue())) {
                        m1300super = m1295for.m6694do().longValue();
                    } else {
                        Long l = 0L;
                        m1300super = l.longValue();
                    }
                }
            }
        }
        Q0 q0 = C0177Ds.f694do;
        return m1300super <= 0 ? INVALID_GAUGE_COLLECTION_FREQUENCY : m1300super;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ C3986xb lambda$new$0() {
        return new C3986xb();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ C0177Ds lambda$new$1() {
        return new C0177Ds();
    }

    private boolean startCollectingCpuMetrics(long j, Timer timer) {
        if (j == INVALID_GAUGE_COLLECTION_FREQUENCY) {
            logger.m1820do();
            return false;
        }
        C3986xb c3986xb = this.cpuGaugeCollector.get();
        long j2 = c3986xb.f16582do;
        if (j2 != INVALID_GAUGE_COLLECTION_FREQUENCY && j2 != 0) {
            if (!(j <= 0)) {
                ScheduledFuture scheduledFuture = c3986xb.f16586do;
                if (scheduledFuture == null) {
                    c3986xb.m8652do(j, timer);
                } else if (c3986xb.f16587if != j) {
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                        c3986xb.f16586do = null;
                        c3986xb.f16587if = INVALID_GAUGE_COLLECTION_FREQUENCY;
                    }
                    c3986xb.m8652do(j, timer);
                }
            }
        }
        return true;
    }

    private boolean startCollectingMemoryMetrics(long j, Timer timer) {
        if (j == INVALID_GAUGE_COLLECTION_FREQUENCY) {
            logger.m1820do();
            return false;
        }
        C0177Ds c0177Ds = this.memoryGaugeCollector.get();
        Q0 q0 = C0177Ds.f694do;
        if (j <= 0) {
            c0177Ds.getClass();
        } else {
            ScheduledFuture scheduledFuture = c0177Ds.f699do;
            if (scheduledFuture == null) {
                c0177Ds.m407if(j, timer);
            } else if (c0177Ds.f695do != j) {
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                    c0177Ds.f699do = null;
                    c0177Ds.f695do = INVALID_GAUGE_COLLECTION_FREQUENCY;
                }
                c0177Ds.m407if(j, timer);
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: syncFlush, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$stopCollectingGauges$3(String str, EnumC3601r2 enumC3601r2) {
        C0410Ok.Cdo c = C0410Ok.c();
        while (!this.cpuGaugeCollector.get().f16584do.isEmpty()) {
            C4045yb poll = this.cpuGaugeCollector.get().f16584do.poll();
            c.m6307super();
            C0410Ok.m1678protected((C0410Ok) c.f12107if, poll);
        }
        while (!this.memoryGaugeCollector.get().f697do.isEmpty()) {
            R0 poll2 = this.memoryGaugeCollector.get().f697do.poll();
            c.m6307super();
            C0410Ok.m1680volatile((C0410Ok) c.f12107if, poll2);
        }
        c.m6307super();
        C0410Ok.m1679strictfp((C0410Ok) c.f12107if, str);
        AI ai = this.transportManager;
        ai.f65do.execute(new RunnableC0359Md(ai, c.m6305const(), enumC3601r2, 1));
    }

    public void initializeGaugeMetadataManager(Context context) {
        this.gaugeMetadataManager = new C0388Nk(context);
    }

    public boolean logGaugeMetadata(String str, EnumC3601r2 enumC3601r2) {
        if (this.gaugeMetadataManager == null) {
            return false;
        }
        C0410Ok.Cdo c = C0410Ok.c();
        c.m6307super();
        C0410Ok.m1679strictfp((C0410Ok) c.f12107if, str);
        C0366Mk gaugeMetadata = getGaugeMetadata();
        c.m6307super();
        C0410Ok.m1677interface((C0410Ok) c.f12107if, gaugeMetadata);
        C0410Ok m6305const = c.m6305const();
        AI ai = this.transportManager;
        ai.f65do.execute(new RunnableC0359Md(ai, m6305const, enumC3601r2, 1));
        return true;
    }

    public void startCollectingGauges(PerfSession perfSession, EnumC3601r2 enumC3601r2) {
        if (this.sessionId != null) {
            stopCollectingGauges();
        }
        long startCollectingGauges = startCollectingGauges(enumC3601r2, perfSession.f11969do);
        if (startCollectingGauges == INVALID_GAUGE_COLLECTION_FREQUENCY) {
            logger.m1819case();
            return;
        }
        String str = perfSession.f11968break;
        this.sessionId = str;
        this.applicationProcessState = enumC3601r2;
        try {
            long j = startCollectingGauges * 20;
            this.gaugeManagerDataCollectionJob = this.gaugeManagerExecutor.get().scheduleAtFixedRate(new RunnableC0342Lh(this, str, enumC3601r2, 2), j, j, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e) {
            Q0 q0 = logger;
            e.getMessage();
            q0.m1819case();
        }
    }

    public void stopCollectingGauges() {
        final String str = this.sessionId;
        if (str == null) {
            return;
        }
        final EnumC3601r2 enumC3601r2 = this.applicationProcessState;
        C3986xb c3986xb = this.cpuGaugeCollector.get();
        ScheduledFuture scheduledFuture = c3986xb.f16586do;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
            c3986xb.f16586do = null;
            c3986xb.f16587if = INVALID_GAUGE_COLLECTION_FREQUENCY;
        }
        C0177Ds c0177Ds = this.memoryGaugeCollector.get();
        ScheduledFuture scheduledFuture2 = c0177Ds.f699do;
        if (scheduledFuture2 != null) {
            scheduledFuture2.cancel(false);
            c0177Ds.f699do = null;
            c0177Ds.f695do = INVALID_GAUGE_COLLECTION_FREQUENCY;
        }
        ScheduledFuture scheduledFuture3 = this.gaugeManagerDataCollectionJob;
        if (scheduledFuture3 != null) {
            scheduledFuture3.cancel(false);
        }
        this.gaugeManagerExecutor.get().schedule(new Runnable() { // from class: Kk
            @Override // java.lang.Runnable
            public final void run() {
                GaugeManager.this.lambda$stopCollectingGauges$3(str, enumC3601r2);
            }
        }, 20L, TimeUnit.MILLISECONDS);
        this.sessionId = null;
        this.applicationProcessState = EnumC3601r2.APPLICATION_PROCESS_STATE_UNKNOWN;
    }

    public GaugeManager(C0503Sp<ScheduledExecutorService> c0503Sp, AI ai, L9 l9, C0388Nk c0388Nk, C0503Sp<C3986xb> c0503Sp2, C0503Sp<C0177Ds> c0503Sp3) {
        this.gaugeManagerDataCollectionJob = null;
        this.sessionId = null;
        this.applicationProcessState = EnumC3601r2.APPLICATION_PROCESS_STATE_UNKNOWN;
        this.gaugeManagerExecutor = c0503Sp;
        this.transportManager = ai;
        this.configResolver = l9;
        this.gaugeMetadataManager = c0388Nk;
        this.cpuGaugeCollector = c0503Sp2;
        this.memoryGaugeCollector = c0503Sp3;
    }

    public void collectGaugeMetricOnce(Timer timer) {
        collectGaugeMetricOnce(this.cpuGaugeCollector.get(), this.memoryGaugeCollector.get(), timer);
    }

    private long startCollectingGauges(EnumC3601r2 enumC3601r2, Timer timer) {
        long cpuGaugeCollectionFrequencyMs = getCpuGaugeCollectionFrequencyMs(enumC3601r2);
        if (!startCollectingCpuMetrics(cpuGaugeCollectionFrequencyMs, timer)) {
            cpuGaugeCollectionFrequencyMs = -1;
        }
        long memoryGaugeCollectionFrequencyMs = getMemoryGaugeCollectionFrequencyMs(enumC3601r2);
        return startCollectingMemoryMetrics(memoryGaugeCollectionFrequencyMs, timer) ? cpuGaugeCollectionFrequencyMs == INVALID_GAUGE_COLLECTION_FREQUENCY ? memoryGaugeCollectionFrequencyMs : Math.min(cpuGaugeCollectionFrequencyMs, memoryGaugeCollectionFrequencyMs) : cpuGaugeCollectionFrequencyMs;
    }
}

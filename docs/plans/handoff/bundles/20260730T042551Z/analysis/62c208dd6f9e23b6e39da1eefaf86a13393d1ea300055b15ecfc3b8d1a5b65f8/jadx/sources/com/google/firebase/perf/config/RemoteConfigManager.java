package com.google.firebase.perf.config;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.Keep;
import com.google.firebase.remoteconfig.internal.Cfor;
import com.google.firebase.remoteconfig.internal.Cif;
import defpackage.AbstractC0680aF;
import defpackage.C0101Ai;
import defpackage.C0706ai;
import defpackage.C2703ef;
import defpackage.C2779fw;
import defpackage.C2850h7;
import defpackage.C2879he;
import defpackage.C3421nz;
import defpackage.EnumC2648di;
import defpackage.InterfaceC0255Hi;
import defpackage.InterfaceC3655ry;
import defpackage.Q0;
import defpackage.SK;
import defpackage.T9;
import defpackage.TK;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

@Keep
/* loaded from: classes3.dex */
public class RemoteConfigManager {
    private static final long FETCH_NEVER_HAPPENED_TIMESTAMP_MS = 0;
    private static final String FIREPERF_FRC_NAMESPACE_NAME = "fireperf";
    private static final long MIN_APP_START_CONFIG_FETCH_DELAY_MS = 5000;
    private static final int RANDOM_APP_START_CONFIG_FETCH_DELAY_MS = 25000;
    private final ConcurrentHashMap<String, InterfaceC0255Hi> allRcConfigMap;
    private final long appStartConfigFetchDelayInMs;
    private final long appStartTimeInMs;
    private final C2879he cache;
    private final Executor executor;
    private C0101Ai firebaseRemoteConfig;
    private long firebaseRemoteConfigLastFetchTimestampMs;
    private InterfaceC3655ry<C3421nz> firebaseRemoteConfigProvider;
    private static final Q0 logger = Q0.m1818new();
    private static final RemoteConfigManager instance = new RemoteConfigManager();
    private static final long TIME_AFTER_WHICH_A_FETCH_IS_CONSIDERED_STALE_MS = TimeUnit.HOURS.toMillis(12);

    /* JADX WARN: Illegal instructions before constructor call */
    @android.annotation.SuppressLint({"ThreadPoolCreation"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private RemoteConfigManager() {
        /*
            r11 = this;
            Q0 r0 = defpackage.C2879he.f13338do
            java.lang.Class<he> r0 = defpackage.C2879he.class
            monitor-enter(r0)
            he r1 = defpackage.C2879he.f13339do     // Catch: java.lang.Throwable -> L41
            if (r1 != 0) goto L14
            he r1 = new he     // Catch: java.lang.Throwable -> L41
            java.util.concurrent.ExecutorService r2 = java.util.concurrent.Executors.newSingleThreadExecutor()     // Catch: java.lang.Throwable -> L41
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L41
            defpackage.C2879he.f13339do = r1     // Catch: java.lang.Throwable -> L41
        L14:
            he r3 = defpackage.C2879he.f13339do     // Catch: java.lang.Throwable -> L41
            monitor-exit(r0)
            java.util.concurrent.ThreadPoolExecutor r0 = new java.util.concurrent.ThreadPoolExecutor
            r5 = 0
            r6 = 1
            r7 = 0
            java.util.concurrent.TimeUnit r9 = java.util.concurrent.TimeUnit.SECONDS
            java.util.concurrent.LinkedBlockingQueue r10 = new java.util.concurrent.LinkedBlockingQueue
            r10.<init>()
            r4 = r0
            r4.<init>(r5, r6, r7, r9, r10)
            r5 = 0
            java.util.Random r1 = new java.util.Random
            r1.<init>()
            r2 = 25000(0x61a8, float:3.5032E-41)
            int r1 = r1.nextInt(r2)
            long r1 = (long) r1
            r6 = 5000(0x1388, double:2.4703E-320)
            long r6 = r6 + r1
            long r8 = getInitialStartupMillis()
            r2 = r11
            r2.<init>(r3, r4, r5, r6, r8)
            return
        L41:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.perf.config.RemoteConfigManager.<init>():void");
    }

    public static long getInitialStartupMillis() {
        AbstractC0680aF abstractC0680aF;
        try {
            abstractC0680aF = (AbstractC0680aF) C0706ai.m3146for().m3149if(AbstractC0680aF.class);
        } catch (IllegalStateException unused) {
            logger.m1820do();
            abstractC0680aF = null;
        }
        return abstractC0680aF != null ? abstractC0680aF.mo3111if() : System.currentTimeMillis();
    }

    public static RemoteConfigManager getInstance() {
        return instance;
    }

    private InterfaceC0255Hi getRemoteConfigValue(String str) {
        triggerRemoteConfigFetchIfNecessary();
        if (!isFirebaseRemoteConfigAvailable() || !this.allRcConfigMap.containsKey(str)) {
            return null;
        }
        InterfaceC0255Hi interfaceC0255Hi = this.allRcConfigMap.get(str);
        if (interfaceC0255Hi.mo872do() != 2) {
            return null;
        }
        logger.m1823if("Fetched value: '%s' for key: '%s' from Firebase Remote Config.", interfaceC0255Hi.mo876try(), str);
        return interfaceC0255Hi;
    }

    public static int getVersionCode(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            return 0;
        }
    }

    private boolean hasAppStartConfigFetchDelayElapsed(long j) {
        return j - this.appStartTimeInMs >= this.appStartConfigFetchDelayInMs;
    }

    private boolean hasLastFetchBecomeStale(long j) {
        return j - this.firebaseRemoteConfigLastFetchTimestampMs > TIME_AFTER_WHICH_A_FETCH_IS_CONSIDERED_STALE_MS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch$0(Boolean bool) {
        syncConfigValues(this.firebaseRemoteConfig.m90do());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch$1(Exception exc) {
        logger.m1821else("Call to Remote Config failed: %s. This may cause a degraded experience with Firebase Performance. Please reach out to Firebase Support https://firebase.google.com/support/", exc);
        this.firebaseRemoteConfigLastFetchTimestampMs = FETCH_NEVER_HAPPENED_TIMESTAMP_MS;
    }

    private boolean shouldFetchAndActivateRemoteConfigValues() {
        long currentSystemTimeMillis = getCurrentSystemTimeMillis();
        return hasAppStartConfigFetchDelayElapsed(currentSystemTimeMillis) && hasLastFetchBecomeStale(currentSystemTimeMillis);
    }

    private void triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch() {
        this.firebaseRemoteConfigLastFetchTimestampMs = getCurrentSystemTimeMillis();
        C0101Ai c0101Ai = this.firebaseRemoteConfig;
        Cif cif = c0101Ai.f129do;
        Cfor cfor = cif.f12008do;
        cfor.getClass();
        cif.m6144do(cfor.f11995do.getLong("minimum_fetch_interval_in_seconds", Cif.f12003do)).mo600import(EnumC2648di.f12524do, new C2850h7(5)).mo600import(c0101Ai.f130do, new SK(c0101Ai)).mo590case(this.executor, new TK(this)).mo605try(this.executor, new C2703ef(this));
    }

    private void triggerRemoteConfigFetchIfNecessary() {
        if (isFirebaseRemoteConfigAvailable()) {
            if (this.allRcConfigMap.isEmpty()) {
                this.allRcConfigMap.putAll(this.firebaseRemoteConfig.m90do());
            }
            if (shouldFetchAndActivateRemoteConfigValues()) {
                triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch();
            }
        }
    }

    public C2779fw<Boolean> getBoolean(String str) {
        if (str == null) {
            logger.m1820do();
            return new C2779fw<>();
        }
        InterfaceC0255Hi remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                return new C2779fw<>(Boolean.valueOf(remoteConfigValue.mo874if()));
            } catch (IllegalArgumentException unused) {
                if (!remoteConfigValue.mo876try().isEmpty()) {
                    logger.m1823if("Could not parse value: '%s' for key: '%s'.", remoteConfigValue.mo876try(), str);
                }
            }
        }
        return new C2779fw<>();
    }

    public long getCurrentSystemTimeMillis() {
        return System.currentTimeMillis();
    }

    public C2779fw<Double> getDouble(String str) {
        if (str == null) {
            logger.m1820do();
            return new C2779fw<>();
        }
        InterfaceC0255Hi remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                return new C2779fw<>(Double.valueOf(remoteConfigValue.mo873for()));
            } catch (IllegalArgumentException unused) {
                if (!remoteConfigValue.mo876try().isEmpty()) {
                    logger.m1823if("Could not parse value: '%s' for key: '%s'.", remoteConfigValue.mo876try(), str);
                }
            }
        }
        return new C2779fw<>();
    }

    public C2779fw<Long> getLong(String str) {
        if (str == null) {
            logger.m1820do();
            return new C2779fw<>();
        }
        InterfaceC0255Hi remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                return new C2779fw<>(Long.valueOf(remoteConfigValue.mo875new()));
            } catch (IllegalArgumentException unused) {
                if (!remoteConfigValue.mo876try().isEmpty()) {
                    logger.m1823if("Could not parse value: '%s' for key: '%s'.", remoteConfigValue.mo876try(), str);
                }
            }
        }
        return new C2779fw<>();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T getRemoteConfigValueOrDefault(String str, T t) {
        Object obj;
        InterfaceC0255Hi remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue == null) {
            return t;
        }
        try {
            if (t instanceof Boolean) {
                obj = Boolean.valueOf(remoteConfigValue.mo874if());
            } else if (t instanceof Double) {
                obj = Double.valueOf(remoteConfigValue.mo873for());
            } else {
                if (!(t instanceof Long) && !(t instanceof Integer)) {
                    if (!(t instanceof String)) {
                        T t2 = (T) remoteConfigValue.mo876try();
                        try {
                            logger.m1823if("No matching type found for the defaultValue: '%s', using String.", t);
                            return t2;
                        } catch (IllegalArgumentException unused) {
                            t = t2;
                            if (remoteConfigValue.mo876try().isEmpty()) {
                                return t;
                            }
                            logger.m1823if("Could not parse value: '%s' for key: '%s'.", remoteConfigValue.mo876try(), str);
                            return t;
                        }
                    }
                    obj = remoteConfigValue.mo876try();
                }
                obj = Long.valueOf(remoteConfigValue.mo875new());
            }
            return obj;
        } catch (IllegalArgumentException unused2) {
        }
    }

    public C2779fw<String> getString(String str) {
        if (str == null) {
            logger.m1820do();
            return new C2779fw<>();
        }
        InterfaceC0255Hi remoteConfigValue = getRemoteConfigValue(str);
        return remoteConfigValue != null ? new C2779fw<>(remoteConfigValue.mo876try()) : new C2779fw<>();
    }

    public boolean isFirebaseRemoteConfigAvailable() {
        InterfaceC3655ry<C3421nz> interfaceC3655ry;
        C3421nz c3421nz;
        if (this.firebaseRemoteConfig == null && (interfaceC3655ry = this.firebaseRemoteConfigProvider) != null && (c3421nz = interfaceC3655ry.get()) != null) {
            this.firebaseRemoteConfig = c3421nz.m7627for(FIREPERF_FRC_NAMESPACE_NAME);
        }
        return this.firebaseRemoteConfig != null;
    }

    public boolean isLastFetchFailed() {
        C0101Ai c0101Ai = this.firebaseRemoteConfig;
        return c0101Ai == null || c0101Ai.m92if().f878do == 1 || this.firebaseRemoteConfig.m92if().f878do == 2;
    }

    public void setFirebaseRemoteConfigProvider(InterfaceC3655ry<C3421nz> interfaceC3655ry) {
        this.firebaseRemoteConfigProvider = interfaceC3655ry;
    }

    public void syncConfigValues(Map<String, InterfaceC0255Hi> map) {
        T9 t9;
        this.allRcConfigMap.putAll(map);
        for (String str : this.allRcConfigMap.keySet()) {
            if (!map.containsKey(str)) {
                this.allRcConfigMap.remove(str);
            }
        }
        synchronized (T9.class) {
            if (T9.f3603do == null) {
                T9.f3603do = new T9();
            }
            t9 = T9.f3603do;
        }
        ConcurrentHashMap<String, InterfaceC0255Hi> concurrentHashMap = this.allRcConfigMap;
        t9.getClass();
        InterfaceC0255Hi interfaceC0255Hi = concurrentHashMap.get("fpr_experiment_app_start_ttid");
        if (interfaceC0255Hi == null) {
            logger.m1820do();
            return;
        }
        try {
            this.cache.m6822case("com.google.firebase.perf.ExperimentTTID", interfaceC0255Hi.mo874if());
        } catch (Exception unused) {
            logger.m1820do();
        }
    }

    public RemoteConfigManager(C2879he c2879he, Executor executor, C0101Ai c0101Ai, long j, long j2) {
        ConcurrentHashMap<String, InterfaceC0255Hi> concurrentHashMap;
        this.firebaseRemoteConfigLastFetchTimestampMs = FETCH_NEVER_HAPPENED_TIMESTAMP_MS;
        this.cache = c2879he;
        this.executor = executor;
        this.firebaseRemoteConfig = c0101Ai;
        if (c0101Ai == null) {
            concurrentHashMap = new ConcurrentHashMap<>();
        } else {
            concurrentHashMap = new ConcurrentHashMap<>(c0101Ai.m90do());
        }
        this.allRcConfigMap = concurrentHashMap;
        this.appStartTimeInMs = j2;
        this.appStartConfigFetchDelayInMs = j;
    }
}

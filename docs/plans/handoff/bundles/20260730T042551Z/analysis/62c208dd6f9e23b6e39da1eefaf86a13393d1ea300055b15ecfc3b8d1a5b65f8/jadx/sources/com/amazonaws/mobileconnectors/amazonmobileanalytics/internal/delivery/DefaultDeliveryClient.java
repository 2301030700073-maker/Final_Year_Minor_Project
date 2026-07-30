package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery;

import com.amazonaws.mobileconnectors.amazonmobileanalytics.MobileAnalyticsManager;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.AnalyticsContext;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.StringUtil;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.EventStore;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.FileEventStore;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.policy.ConnectivityPolicy;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.policy.DefaultDeliveryPolicyFactory;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.policy.SubmissionTimePolicy;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.DefaultEvent;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.EventObserver;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.InternalEvent;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.adapter.EventAdapter;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.adapter.JSONEventAdapter;
import com.amazonaws.util.VersionInfoUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DefaultDeliveryClient implements EventObserver {

    /* renamed from: do, reason: not valid java name */
    public static final String f8843do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AnalyticsContext f8844do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ERSRequestBuilder f8845do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final EventStore f8846do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final DefaultDeliveryPolicyFactory f8847do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final EventAdapter<JSONObject> f8848do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ExecutorService f8849do;

    /* renamed from: if, reason: not valid java name */
    public final ExecutorService f8851if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicLong f8850do = new AtomicLong(25);

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final AtomicLong f8852if = new AtomicLong(0);

    static {
        String name = MobileAnalyticsManager.class.getName();
        String str = VersionInfoUtils.f9082do;
        f8843do = name.concat("/2.2.15");
        HashSet hashSet = new HashSet();
        hashSet.add(401);
        hashSet.add(404);
        hashSet.add(407);
        hashSet.add(408);
    }

    public DefaultDeliveryClient(AnalyticsContext analyticsContext, DefaultDeliveryPolicyFactory defaultDeliveryPolicyFactory, ThreadPoolExecutor threadPoolExecutor, ThreadPoolExecutor threadPoolExecutor2, ERSRequestBuilder eRSRequestBuilder, FileEventStore fileEventStore, JSONEventAdapter jSONEventAdapter) {
        this.f8847do = defaultDeliveryPolicyFactory;
        this.f8849do = threadPoolExecutor;
        this.f8851if = threadPoolExecutor2;
        this.f8844do = analyticsContext;
        this.f8845do = eRSRequestBuilder;
        this.f8846do = fileEventStore;
        this.f8848do = jSONEventAdapter;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m5080if(DefaultDeliveryClient defaultDeliveryClient, long j, long j2) {
        defaultDeliveryClient.f8850do.set((long) Math.ceil((System.currentTimeMillis() - j2) / (defaultDeliveryClient.f8852if.addAndGet(1L) - j)));
    }

    /* renamed from: new, reason: not valid java name */
    public static JSONArray m5081new(EventStore.EventIterator eventIterator, long j) {
        FileEventStore.AnonymousClass1 anonymousClass1 = (FileEventStore.AnonymousClass1) eventIterator;
        long length = anonymousClass1.m5090do() != null ? anonymousClass1.m5090do().length() : 0L;
        JSONArray jSONArray = new JSONArray();
        long j2 = 0;
        while (true) {
            j2 += length;
            if (j2 > j || !anonymousClass1.hasNext()) {
                break;
            }
            length = anonymousClass1.m5090do() != null ? anonymousClass1.m5090do().length() : 0L;
            jSONArray.put(new JSONObject((String) anonymousClass1.next()));
        }
        return jSONArray;
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.EventObserver
    /* renamed from: do, reason: not valid java name */
    public final void mo5082do(final DefaultEvent defaultEvent) {
        final long currentTimeMillis = System.currentTimeMillis();
        final long j = this.f8852if.get();
        this.f8849do.execute(new Runnable() { // from class: com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.DefaultDeliveryClient.1
            @Override // java.lang.Runnable
            public final void run() {
                long j2 = currentTimeMillis;
                long j3 = j;
                InternalEvent internalEvent = defaultEvent;
                DefaultDeliveryClient defaultDeliveryClient = DefaultDeliveryClient.this;
                long currentTimeMillis2 = System.currentTimeMillis();
                try {
                    try {
                        if (((FileEventStore) defaultDeliveryClient.f8846do).m5087if(((JSONEventAdapter) defaultDeliveryClient.f8848do).m5104do(internalEvent).toString())) {
                            String.format("Event: '%s' recorded to local filestore", StringUtil.m5078do(internalEvent.mo5061catch(), 5, true));
                            String.format("Time of enqueueEventForDelivery: %d", Long.valueOf(System.currentTimeMillis() - currentTimeMillis2));
                        } else {
                            String.format("Event: '%s' failed to record to local filestore", StringUtil.m5078do(internalEvent.mo5061catch(), 5, true));
                        }
                    } catch (EventStoreException unused) {
                        String.format("Event: '%s' failed to record to local filestore", StringUtil.m5078do(internalEvent.mo5061catch(), 5, true));
                    }
                } finally {
                    DefaultDeliveryClient.m5080if(defaultDeliveryClient, j3, j2);
                }
            }
        });
    }

    /* renamed from: for, reason: not valid java name */
    public final void m5083for() {
        final ArrayList arrayList = new ArrayList();
        DefaultDeliveryPolicyFactory defaultDeliveryPolicyFactory = this.f8847do;
        long j = defaultDeliveryPolicyFactory.f8872do;
        AnalyticsContext analyticsContext = defaultDeliveryPolicyFactory.f8873do;
        SubmissionTimePolicy submissionTimePolicy = new SubmissionTimePolicy(analyticsContext);
        arrayList.add(new ConnectivityPolicy(analyticsContext, defaultDeliveryPolicyFactory.f8874do));
        arrayList.add(submissionTimePolicy);
        if (System.currentTimeMillis() - 0 > defaultDeliveryPolicyFactory.f8872do || System.currentTimeMillis() - 0 < 0) {
            System.currentTimeMillis();
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            this.f8849do.execute(new Runnable() { // from class: com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.DefaultDeliveryClient.2
                @Override // java.lang.Runnable
                public final void run() {
                    countDownLatch.countDown();
                }
            });
            this.f8851if.execute(new Runnable() { // from class: com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.DefaultDeliveryClient.3
                /* JADX WARN: Removed duplicated region for block: B:17:0x0091  */
                /* JADX WARN: Removed duplicated region for block: B:27:0x00a9 A[Catch: JSONException | Exception -> 0x00af, TRY_LEAVE, TryCatch #2 {JSONException | Exception -> 0x00af, blocks: (B:23:0x009f, B:27:0x00a9), top: B:22:0x009f }] */
                /* JADX WARN: Removed duplicated region for block: B:30:0x00b1 A[EDGE_INSN: B:30:0x00b1->B:31:0x00b1 BREAK  A[LOOP:1: B:19:0x0097->B:29:0x0097], SYNTHETIC] */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        r12 = this;
                        com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.DefaultDeliveryClient r0 = com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.DefaultDeliveryClient.this
                        long r1 = java.lang.System.currentTimeMillis()
                        java.util.List r3 = r2
                        java.util.Iterator r4 = r3.iterator()
                    Lc:
                        boolean r5 = r4.hasNext()
                        if (r5 == 0) goto L26
                        java.lang.Object r5 = r4.next()
                        com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.policy.DeliveryPolicy r5 = (com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.policy.DeliveryPolicy) r5
                        boolean r6 = r5.mo5094if()
                        if (r6 != 0) goto Lc
                        java.lang.Class r0 = r5.getClass()
                        r0.toString()
                        return
                    L26:
                        java.util.concurrent.CountDownLatch r4 = r3     // Catch: java.lang.InterruptedException -> L3e
                        java.util.concurrent.atomic.AtomicLong r5 = r0.f8850do     // Catch: java.lang.InterruptedException -> L3e
                        long r5 = r5.get()     // Catch: java.lang.InterruptedException -> L3e
                        r7 = 1000(0x3e8, double:4.94E-321)
                        long r5 = r5 * r7
                        double r5 = (double) r5     // Catch: java.lang.InterruptedException -> L3e
                        r7 = 4609434218613702656(0x3ff8000000000000, double:1.5)
                        double r5 = r5 * r7
                        long r5 = (long) r5     // Catch: java.lang.InterruptedException -> L3e
                        java.util.concurrent.TimeUnit r7 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.InterruptedException -> L3e
                        r4.await(r5, r7)     // Catch: java.lang.InterruptedException -> L3e
                        goto L3f
                    L3e:
                    L3f:
                        com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.AnalyticsContext r4 = r0.f8844do
                        com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.DefaultAnalyticsContext r4 = (com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.DefaultAnalyticsContext) r4
                        com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.configuration.PreferencesConfiguration r4 = r4.f8803do
                        r5 = 102400(0x19000, double:5.05923E-319)
                        java.lang.Long r5 = java.lang.Long.valueOf(r5)
                        java.lang.String r6 = "maxSubmissionSize"
                        java.lang.Long r4 = r4.m5069if(r6, r5)
                        long r4 = r4.longValue()
                        org.json.JSONArray r6 = new org.json.JSONArray
                        r6.<init>()
                        com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.EventStore r6 = r0.f8846do
                        com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.FileEventStore r6 = (com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.FileEventStore) r6
                        r6.getClass()
                        com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.FileEventStore$1 r7 = new com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.FileEventStore$1
                        r7.<init>()
                        com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.AnalyticsContext r6 = r0.f8844do
                        com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.DefaultAnalyticsContext r6 = (com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.DefaultAnalyticsContext) r6
                        com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.configuration.PreferencesConfiguration r6 = r6.f8803do
                        r8 = 3
                        java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
                        j$.util.concurrent.ConcurrentHashMap r6 = r6.f8809do
                        java.lang.String r9 = "maxSubmissionAllowed"
                        java.lang.Object r6 = r6.get(r9)
                        java.lang.String r6 = (java.lang.String) r6
                        r10 = 0
                        r11 = 1
                        if (r6 == 0) goto L8e
                        java.lang.Integer r6 = java.lang.Integer.decode(r6)     // Catch: java.lang.Exception -> L85
                        goto L8f
                    L85:
                        java.lang.Object[] r6 = new java.lang.Object[r11]
                        r6[r10] = r9
                        java.lang.String r9 = "Could not get Integer for propertyName: %s"
                        java.lang.String.format(r9, r6)
                    L8e:
                        r6 = 0
                    L8f:
                        if (r6 == 0) goto L92
                        r8 = r6
                    L92:
                        int r6 = r8.intValue()
                        r8 = 0
                    L97:
                        boolean r9 = r7.hasNext()
                        if (r9 == 0) goto Lb1
                        if (r8 >= r6) goto Lb1
                        org.json.JSONArray r9 = com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.DefaultDeliveryClient.m5081new(r7, r4)     // Catch: java.lang.Throwable -> Laf
                        boolean r9 = r0.m5084try(r9, r3)     // Catch: java.lang.Throwable -> Laf
                        if (r9 == 0) goto Lb1
                        int r8 = r8 + 1
                        r7.m5092if()     // Catch: java.lang.Throwable -> Laf
                        goto L97
                    Laf:
                        goto L97
                    Lb1:
                        java.lang.Object[] r0 = new java.lang.Object[r11]
                        long r3 = java.lang.System.currentTimeMillis()
                        long r3 = r3 - r1
                        java.lang.Long r1 = java.lang.Long.valueOf(r3)
                        r0[r10] = r1
                        java.lang.String r1 = "Time of attemptDelivery: %d"
                        java.lang.String.format(r1, r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.DefaultDeliveryClient.AnonymousClass3.run():void");
                }
            });
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:0|1|2|3|(6:(11:11|12|(1:14)(6:56|(11:59|60|61|62|(1:66)|67|(1:71)|72|73|74|57)|77|78|(4:82|83|84|85)|88)|15|16|17|19|20|(2:23|21)|24|25)|19|20|(1:21)|24|25)|90|12|(0)(0)|15|16|17|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01f5, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01f6, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01ef, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01f0, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x01de A[Catch: Exception -> 0x01e9, AmazonServiceException -> 0x01ec, LOOP:0: B:21:0x01d8->B:23:0x01de, LOOP_END, TRY_LEAVE, TryCatch #6 {AmazonServiceException -> 0x01ec, Exception -> 0x01e9, blocks: (B:20:0x01c2, B:21:0x01d8, B:23:0x01de), top: B:19:0x01c2 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0223 A[LOOP:1: B:38:0x021d->B:40:0x0223, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0043  */
    /* renamed from: try, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m5084try(org.json.JSONArray r19, java.util.List<com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.policy.DeliveryPolicy> r20) {
        /*
            Method dump skipped, instructions count: 619
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.DefaultDeliveryClient.m5084try(org.json.JSONArray, java.util.List):boolean");
    }
}

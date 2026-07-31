package org.wikipedia.analytics.eventplatform;

import androidx.paging.PageFetcher$flow$1;
import androidx.work.OperationKt;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorJobImpl;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import org.jsoup.Jsoup;
import org.wikimedia.testkitchen.config.StreamConfig;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EventPlatformClient {
    public static boolean ENABLED;
    public static final ContextScope coroutineScope;
    public static final EventPlatformClient INSTANCE = new EventPlatformClient();
    public static final ConcurrentHashMap STREAM_CONFIGS = new ConcurrentHashMap();
    public static final ArrayList INITIAL_QUEUE = new ArrayList();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class OutputBuffer {
        public static final ArrayList QUEUE = new ArrayList();

        public static void sendAllScheduled() {
            LinkedHashMap linkedHashMap;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            Jsoup.getInstance().getMainThreadHandler().removeCallbacksAndMessages("sendScheduled");
            if (EventPlatformClient.ENABLED) {
                ArrayList arrayList = QUEUE;
                synchronized (arrayList) {
                    try {
                        linkedHashMap = new LinkedHashMap();
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            Object next = it.next();
                            String str = ((Event) next).stream;
                            Object obj = linkedHashMap.get(str);
                            if (obj == null) {
                                obj = new ArrayList();
                                linkedHashMap.put(str, obj);
                            }
                            ((List) obj).add(next);
                        }
                        QUEUE.clear();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                for (Map.Entry entry : linkedHashMap.entrySet()) {
                    String str2 = (String) entry.getKey();
                    List list = (List) entry.getValue();
                    EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                    str2.getClass();
                    StreamConfig streamConfig = (StreamConfig) EventPlatformClient.STREAM_CONFIGS.get(str2);
                    if (streamConfig != null) {
                        AwaitKt.launch$default(EventPlatformClient.coroutineScope, new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 3), null, new PageFetcher$flow$1(streamConfig.destinationEventService, list, null, 29), 2);
                    }
                }
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class SamplingController {
        public static final LinkedHashMap SAMPLING_CACHE = new LinkedHashMap();
    }

    static {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        ENABLED = Jsoup.getInstance().isOnline();
        SupervisorJobImpl SupervisorJob$default = AwaitKt.SupervisorJob$default();
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        coroutineScope = AwaitKt.CoroutineScope(OperationKt.plus(SupervisorJob$default, DefaultIoScheduler.INSTANCE));
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x00c8, code lost:
    
        if (r3 <= org.wikipedia.settings.PrefsIoUtil.getInt(org.wikipedia.R.string.preference_key_event_platform_queue_size, 128)) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void doSubmit(org.wikipedia.analytics.eventplatform.Event r11) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.analytics.eventplatform.EventPlatformClient.doSubmit(org.wikipedia.analytics.eventplatform.Event):void");
    }

    public static void submit(Event event) {
        if (!STREAM_CONFIGS.isEmpty()) {
            doSubmit(event);
            return;
        }
        ArrayList arrayList = INITIAL_QUEUE;
        synchronized (arrayList) {
            try {
                int size = arrayList.size();
                Prefs prefs = Prefs.INSTANCE;
                if (size >= PrefsIoUtil.getInt(R.string.preference_key_event_platform_queue_size, 128)) {
                    arrayList.remove(0);
                }
                arrayList.add(event);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006e, code lost:
    
        if (kotlinx.coroutines.AwaitKt.withContext(r6, r1, r0) != r7) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0070, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0054, code lost:
    
        if (r6 == r7) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object refreshStreamConfigs(kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof org.wikipedia.analytics.eventplatform.EventPlatformClient$refreshStreamConfigs$1
            if (r0 == 0) goto L13
            r0 = r7
            org.wikipedia.analytics.eventplatform.EventPlatformClient$refreshStreamConfigs$1 r0 = (org.wikipedia.analytics.eventplatform.EventPlatformClient$refreshStreamConfigs$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.analytics.eventplatform.EventPlatformClient$refreshStreamConfigs$1 r0 = new org.wikipedia.analytics.eventplatform.EventPlatformClient$refreshStreamConfigs$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 0
            r3 = 1
            r4 = 2
            if (r1 == 0) goto L37
            if (r1 == r3) goto L31
            if (r1 != r4) goto L2b
            kotlin.ResultKt.throwOnFailure(r6)
            goto L71
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r2
        L31:
            j$.util.concurrent.ConcurrentHashMap r1 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L57
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            j$.util.concurrent.ConcurrentHashMap r1 = org.wikipedia.analytics.eventplatform.EventPlatformClient.STREAM_CONFIGS
            r1.clear()
            org.wikipedia.dataclient.ServiceFactory r6 = org.wikipedia.dataclient.ServiceFactory.INSTANCE
            org.wikipedia.dataclient.WikiSite r6 = new org.wikipedia.dataclient.WikiSite
            java.lang.String r5 = "https://meta.wikimedia.org"
            r6.<init>(r5)
            org.wikipedia.dataclient.Service r6 = org.wikipedia.dataclient.ServiceFactory.get(r6)
            r0.L$0 = r1
            r0.label = r3
            java.lang.Object r6 = r6.getStreamConfigs(r0)
            if (r6 != r7) goto L57
            goto L70
        L57:
            org.wikimedia.testkitchen.config.StreamConfigCollection r6 = (org.wikimedia.testkitchen.config.StreamConfigCollection) r6
            java.util.Map r6 = r6.streamConfigs
            r1.putAll(r6)
            kotlinx.coroutines.scheduling.DefaultScheduler r6 = kotlinx.coroutines.Dispatchers.Default
            androidx.paging.CachedPagingDataKt$cachedIn$4 r1 = new androidx.paging.CachedPagingDataKt$cachedIn$4
            r3 = 4
            r1.<init>(r4, r3, r2)
            r0.L$0 = r2
            r0.label = r4
            java.lang.Object r6 = kotlinx.coroutines.AwaitKt.withContext(r6, r1, r0)
            if (r6 != r7) goto L71
        L70:
            return r7
        L71:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.analytics.eventplatform.EventPlatformClient.refreshStreamConfigs(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}

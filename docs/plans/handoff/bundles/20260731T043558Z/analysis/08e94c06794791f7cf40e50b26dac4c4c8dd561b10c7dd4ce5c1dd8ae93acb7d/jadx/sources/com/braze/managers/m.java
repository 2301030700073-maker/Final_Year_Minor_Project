package com.braze.managers;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.SystemClock;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.C;
import com.braze.BrazeFlushPushDeliveryReceiver;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.events.IEventSubscriber;
import com.braze.models.IBrazeLocation;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.support.IntentUtils;
import com.braze.support.JsonUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;

/* loaded from: classes2.dex */
public final class m implements c0 {
    public static final String[] v = {"android.os.deadsystemexception"};

    /* renamed from: a, reason: collision with root package name */
    public final Context f123a;
    public final String b;
    public final r c;
    public final com.braze.events.d d;
    public final BrazeConfigurationProvider e;
    public final com.braze.storage.e0 f;
    public final z g;
    public final n h;
    public final com.braze.storage.a0 i;
    public final k0 j;
    public final i0 k;
    public final com.braze.storage.y l;
    public final AtomicInteger m;
    public final AtomicInteger n;
    public final ReentrantLock o;
    public Job p;
    public final com.braze.storage.t q;
    public volatile String r;
    public final AtomicBoolean s;
    public final AtomicBoolean t;
    public Class u;

    public m(Context context, String str, String apiKey, r sessionManager, com.braze.events.d internalEventPublisher, BrazeConfigurationProvider configurationProvider, com.braze.storage.e0 serverConfigStorageProvider, z eventStorageManager, n messagingSessionManager, com.braze.storage.a0 sdkEnablementProvider, k0 pushMaxManager, i0 pushDeliveryManager, com.braze.storage.y pushIdentifierStorageProvider) {
        CompletableJob Job$default;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(sessionManager, "sessionManager");
        Intrinsics.checkNotNullParameter(internalEventPublisher, "internalEventPublisher");
        Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
        Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
        Intrinsics.checkNotNullParameter(eventStorageManager, "eventStorageManager");
        Intrinsics.checkNotNullParameter(messagingSessionManager, "messagingSessionManager");
        Intrinsics.checkNotNullParameter(sdkEnablementProvider, "sdkEnablementProvider");
        Intrinsics.checkNotNullParameter(pushMaxManager, "pushMaxManager");
        Intrinsics.checkNotNullParameter(pushDeliveryManager, "pushDeliveryManager");
        Intrinsics.checkNotNullParameter(pushIdentifierStorageProvider, "pushIdentifierStorageProvider");
        this.f123a = context;
        this.b = str;
        this.c = sessionManager;
        this.d = internalEventPublisher;
        this.e = configurationProvider;
        this.f = serverConfigStorageProvider;
        this.g = eventStorageManager;
        this.h = messagingSessionManager;
        this.i = sdkEnablementProvider;
        this.j = pushMaxManager;
        this.k = pushDeliveryManager;
        this.l = pushIdentifierStorageProvider;
        this.m = new AtomicInteger(0);
        this.n = new AtomicInteger(0);
        this.o = new ReentrantLock();
        Job$default = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        this.p = Job$default;
        this.q = new com.braze.storage.t(context, str, apiKey);
        this.r = "";
        this.s = new AtomicBoolean(false);
        this.t = new AtomicBoolean(false);
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda27
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.a();
            }
        }, 6, (Object) null);
        internalEventPublisher.c(com.braze.events.internal.s.class, new IEventSubscriber() { // from class: com.braze.managers.m$$ExternalSyntheticLambda28
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                m.a(m.this, (com.braze.events.internal.s) obj);
            }
        });
        internalEventPublisher.c(com.braze.events.internal.u.class, new IEventSubscriber() { // from class: com.braze.managers.m$$ExternalSyntheticLambda29
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                m.a(m.this, (com.braze.events.internal.u) obj);
            }
        });
        internalEventPublisher.c(com.braze.events.internal.v.class, new IEventSubscriber() { // from class: com.braze.managers.m$$ExternalSyntheticLambda30
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                m.a(m.this, (com.braze.events.internal.v) obj);
            }
        });
    }

    public static final String A() {
        return "Requesting DUST mite";
    }

    public static final String B() {
        return "Posting geofence request for location.";
    }

    public static final String D() {
        return "Sending Push Max data";
    }

    public static final String E() {
        return "Posting SDK Debugger Logs request.";
    }

    public static final String a() {
        return "BrazeManager init called";
    }

    public static final String b(String str) {
        return com.braze.i.a("Logging push delivery event for campaign id: ", str);
    }

    public static final String c(m mVar) {
        return "Completed the openSession call. Starting or continuing session " + mVar.c.g();
    }

    public static final String d(Activity activity) {
        return "Opened session with activity: " + activity.getLocalClassName();
    }

    public static final String e(com.braze.models.i iVar) {
        return "Not adding user id to event: " + JsonUtils.getPrettyPrintedString(((com.braze.models.outgoing.event.b) iVar).getJsonKey());
    }

    public static final String g() {
        return "SDK is disabled. Not force closing session.";
    }

    public static final String h() {
        return "BrazeManager got SdkDebuggerInitializationRequestedEvent";
    }

    public static final String i() {
        return "Braze SDK Debugger logs being sent";
    }

    public static final String j() {
        return "Failed to log error.";
    }

    public static final String k() {
        return "Publishing an internal push body clicked event for any awaiting triggers.";
    }

    public static final String l() {
        return "Adding push click to dispatcher pending list";
    }

    public static final String m() {
        return "Session in background, data syncing event on delay";
    }

    public static final String n() {
        return "Logging push max campaign";
    }

    public static final String p() {
        return "SDK is disabled. Not opening session.";
    }

    public static final String q() {
        return "Failed to get local class name for activity when opening session";
    }

    public static final String r() {
        return "SDK is disabled. Not opening session.";
    }

    public static final String s() {
        return "Flushing Push Delivery Events now";
    }

    public static final String t() {
        return "Attempted to flush Push Delivery events, but no events are available";
    }

    public static final String u() {
        return "Posting geofence report for geofence event.";
    }

    public static final String v() {
        return "Posting banners refresh request.";
    }

    public static final String x() {
        return "Posting feature flags refresh request.";
    }

    public static final String y() {
        return "Disallowing Content Cards sync due to Content Cards not being enabled.";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [java.util.List] */
    public final void C() {
        ArrayList arrayList;
        if (this.f.K()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda13
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.D();
                }
            }, 7, (Object) null);
            com.braze.storage.e0 e0Var = this.f;
            String baseUrlForRequests = this.e.getBaseUrlForRequests();
            String str = this.b;
            k0 k0Var = this.j;
            long j = k0Var.c.getLong("lastUpdateTime", -1L) - k0Var.f120a.u();
            SharedPreferences pushMaxPrefs = k0Var.b;
            Intrinsics.checkNotNullExpressionValue(pushMaxPrefs, "pushMaxPrefs");
            ArrayList arrayList2 = new ArrayList();
            Map<String, ?> all = pushMaxPrefs.getAll();
            Intrinsics.checkNotNullExpressionValue(all, "getAll(...)");
            Iterator<Map.Entry<String, ?>> it = all.entrySet().iterator();
            while (it.hasNext()) {
                String key = it.next().getKey();
                Intrinsics.checkNotNull(key);
                arrayList2.add(new j0(key, pushMaxPrefs.getLong(key, 0L)));
            }
            List list = CollectionsKt.toList(arrayList2);
            ArrayList arrayList3 = new ArrayList();
            for (Object obj : list) {
                if (((j0) obj).b > j) {
                    arrayList3.add(obj);
                }
            }
            List list2 = CollectionsKt.toList(arrayList3);
            ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList4.add(((j0) it2.next()).f118a);
            }
            long j2 = this.j.c.getLong("lastUpdateTime", -1L);
            com.braze.storage.y yVar = this.l;
            long v2 = this.f.v();
            if (v2 <= 0) {
                arrayList = CollectionsKt.emptyList();
            } else {
                long nowInSeconds = DateTimeUtils.nowInSeconds() - v2;
                ArrayList arrayList5 = new ArrayList();
                Map<String, ?> all2 = yVar.f237a.getAll();
                Intrinsics.checkNotNullExpressionValue(all2, "getAll(...)");
                for (Map.Entry<String, ?> entry : all2.entrySet()) {
                    Long l = (Long) entry.getValue();
                    if (l != null && l.longValue() >= nowInSeconds) {
                        String key2 = entry.getKey();
                        Intrinsics.checkNotNullExpressionValue(key2, "<get-key>(...)");
                        arrayList5.add(key2);
                    }
                }
                arrayList = arrayList5;
            }
            a(new com.braze.requests.r(e0Var, baseUrlForRequests, str, arrayList4, j2, arrayList));
        }
    }

    public final void f() {
        if (this.i.f209a.getBoolean("appboy_sdk_disabled", false)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda40
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.g();
                }
            }, 6, (Object) null);
        } else {
            this.u = null;
            this.c.k();
        }
    }

    public final void o() {
        com.braze.models.l lVar;
        if (this.i.f209a.getBoolean("appboy_sdk_disabled", false)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.r();
                }
            }, 6, (Object) null);
            return;
        }
        r rVar = this.c;
        ReentrantLock reentrantLock = rVar.h;
        reentrantLock.lock();
        try {
            if (rVar.f() && (lVar = rVar.l) != null) {
                rVar.b.a(lVar);
            }
            Job.DefaultImpls.cancel$default(rVar.k, (CancellationException) null, 1, (Object) null);
            rVar.a();
            rVar.c.b(com.braze.events.internal.a0.f49a, com.braze.events.internal.a0.class);
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.c(m.this);
                }
            }, 6, (Object) null);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void w() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.x();
            }
        }, 7, (Object) null);
        a(new com.braze.requests.i(this.f, this.e.getBaseUrlForRequests(), this.b));
    }

    public final void z() {
        if (this.f.E()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.A();
                }
            }, 6, (Object) null);
            a(new com.braze.requests.g(this.f, this.e.getBaseUrlForRequests(), this.b));
        }
    }

    public static final void a(m mVar, com.braze.events.internal.s it) {
        Intrinsics.checkNotNullParameter(it, "it");
        throw null;
    }

    public static final String d(com.braze.models.i iVar) {
        return "Not adding session id to event: " + JsonUtils.getPrettyPrintedString(((com.braze.models.outgoing.event.b) iVar).getJsonKey());
    }

    public final void c(final Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.i.f209a.getBoolean("appboy_sdk_disabled", false)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda31
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.p();
                }
            }, 6, (Object) null);
            return;
        }
        o();
        this.u = activity.getClass();
        this.h.b();
        try {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda32
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.d(activity);
                }
            }, 6, (Object) null);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda34
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.q();
                }
            }, 4, (Object) null);
        }
    }

    public final void g(com.braze.models.i geofenceEvent) {
        Intrinsics.checkNotNullParameter(geofenceEvent, "geofenceEvent");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.u();
            }
        }, 7, (Object) null);
        a(new com.braze.requests.k(this.f, this.e.getBaseUrlForRequests(), geofenceEvent));
    }

    public static final void a(m mVar, com.braze.events.internal.u it) {
        Intrinsics.checkNotNullParameter(it, "it");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) mVar, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.h();
            }
        }, 6, (Object) null);
        mVar.d();
    }

    public static final String e() {
        return "Requesting SDK Debugger Handshake";
    }

    public static final void a(m mVar, com.braze.events.internal.v it) {
        Intrinsics.checkNotNullParameter(it, "it");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) mVar, BrazeLogger.Priority.D, (Throwable) null, true, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.i();
            }
        }, 2, (Object) null);
        mVar.b(it.f74a);
    }

    public final void d() {
        if (this.f.L()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.e();
                }
            }, 6, (Object) null);
            a(new com.braze.requests.v(this.f, this.e.getBaseUrlForRequests(), this.b));
        }
    }

    public static final String f(com.braze.models.i iVar) {
        return "Attempting to log event: " + JsonUtils.getPrettyPrintedString(((com.braze.models.outgoing.event.b) iVar).getJsonKey());
    }

    public final void a(boolean z) {
        this.t.set(z);
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.a(m.this);
            }
        }, 6, (Object) null);
    }

    public static final String a(m mVar) {
        return "Updated shouldRequestFeedInNextRequest to: " + mVar.t;
    }

    public static final String c() {
        return "SDK is disabled. Not closing session.";
    }

    public static final String c(com.braze.models.i iVar) {
        return "Not processing event after validation failed: " + iVar;
    }

    public final void a(final Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.i.f209a.getBoolean("appboy_sdk_disabled", false)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.c();
                }
            }, 6, (Object) null);
        } else if (this.u == null || Intrinsics.areEqual(activity.getClass(), this.u)) {
            this.h.e();
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda18
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.b(activity);
                }
            }, 6, (Object) null);
            this.c.n();
        }
    }

    public final void c(String campaignId) {
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.n();
            }
        }, 7, (Object) null);
        this.j.a(campaignId);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x009e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(final com.braze.models.i r19) {
        /*
            Method dump skipped, instructions count: 482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.braze.managers.m.a(com.braze.models.i):boolean");
    }

    public final void a(com.braze.models.outgoing.j respondWithBuilder) {
        Intrinsics.checkNotNullParameter(respondWithBuilder, "respondWithBuilder");
        Pair a2 = this.f.a();
        if (a2 != null) {
            com.braze.models.outgoing.i outboundConfigParams = new com.braze.models.outgoing.i(((Number) a2.getFirst()).longValue(), ((Boolean) a2.getSecond()).booleanValue());
            Intrinsics.checkNotNullParameter(outboundConfigParams, "outboundConfigParams");
            respondWithBuilder.d = outboundConfigParams;
        }
        if (this.s.get()) {
            respondWithBuilder.c = Boolean.TRUE;
        }
        respondWithBuilder.f167a = this.b;
        a(new com.braze.requests.f(this.f, this.e.getBaseUrlForRequests(), new com.braze.models.outgoing.k(respondWithBuilder.f167a, respondWithBuilder.b, respondWithBuilder.c, respondWithBuilder.d)));
        this.s.set(false);
    }

    public final void a(IBrazeLocation location) {
        Intrinsics.checkNotNullParameter(location, "location");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.B();
            }
        }, 7, (Object) null);
        a(new com.braze.requests.j(this.f, this.e.getBaseUrlForRequests(), location));
    }

    public final void a(ArrayList ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.v();
            }
        }, 7, (Object) null);
        a(new com.braze.requests.a(ids, this.f, this.e.getBaseUrlForRequests(), this.b));
    }

    public final void a(com.braze.requests.b request) {
        Intrinsics.checkNotNullParameter(request, "request");
        if (this.i.f209a.getBoolean("appboy_sdk_disabled", false)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.b();
                }
            }, 6, (Object) null);
            return;
        }
        request.b = this.b;
        com.braze.events.d dVar = this.d;
        Intrinsics.checkNotNullParameter(request, "request");
        dVar.b(new com.braze.events.internal.dispatchmanager.c(com.braze.events.internal.dispatchmanager.b.d, null, null, request, 6), com.braze.events.internal.dispatchmanager.c.class);
    }

    public final void a(long j, long j2, int i) {
        if (!this.f.D()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda16
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.y();
                }
            }, 6, (Object) null);
        } else {
            a(new com.braze.requests.e(this.f, this.e.getBaseUrlForRequests(), j, j2, this.b, i));
        }
    }

    public final boolean a(Throwable th) {
        ReentrantLock reentrantLock = this.o;
        reentrantLock.lock();
        try {
            this.m.getAndIncrement();
            if (Intrinsics.areEqual(this.r, th.getMessage()) && this.n.get() > 3 && this.m.get() < 25) {
                reentrantLock.unlock();
                return true;
            }
            if (Intrinsics.areEqual(this.r, th.getMessage())) {
                this.n.getAndIncrement();
            } else {
                this.n.set(0);
            }
            if (this.m.get() >= 25) {
                this.m.set(0);
            }
            this.r = th.getMessage();
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void a(final Throwable throwable, boolean z) {
        com.braze.models.i a2;
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        try {
            if (a(throwable)) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda23
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return m.b(throwable);
                    }
                }, 6, (Object) null);
                return;
            }
            String th = throwable.toString();
            String str = v[0];
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String lowerCase = th.toLowerCase(US);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) str, false, 2, (Object) null) || (a2 = com.braze.models.outgoing.event.b.g.a(throwable, this.c.g(), z)) == null) {
                return;
            }
            a(a2);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda24
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.j();
                }
            }, 4, (Object) null);
        }
    }

    public final void a(final long j) {
        Object systemService = this.f123a.getSystemService(NotificationCompat.CATEGORY_ALARM);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.AlarmManager");
        AlarmManager alarmManager = (AlarmManager) systemService;
        Intent intent = new Intent(this.f123a, (Class<?>) BrazeFlushPushDeliveryReceiver.class);
        intent.setAction(BrazeFlushPushDeliveryReceiver.FLUSH_BRAZE_PUSH_DELIVERIES_ACTION);
        PendingIntent broadcast = PendingIntent.getBroadcast(this.f123a, 0, intent, IntentUtils.getImmutablePendingIntentFlags() | C.BUFFER_FLAG_FIRST_SAMPLE);
        if (j <= 0) {
            alarmManager.cancel(broadcast);
            i0 i0Var = this.k;
            i0Var.getClass();
            ArrayList arrayList = new ArrayList();
            ReentrantLock reentrantLock = i0Var.f117a;
            reentrantLock.lock();
            try {
                Iterator it = i0Var.b.iterator();
                while (it.hasNext()) {
                    com.braze.models.push.a aVar = (com.braze.models.push.a) it.next();
                    if (arrayList.size() >= 32) {
                        break;
                    } else {
                        arrayList.add(aVar);
                    }
                }
                i0Var.b.removeAll(arrayList);
                reentrantLock.unlock();
                if (!arrayList.isEmpty()) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda7
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return m.s();
                        }
                    }, 7, (Object) null);
                    a(new com.braze.requests.q(this.f, this.e.getBaseUrlForRequests(), this.b, arrayList));
                    return;
                } else {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda8
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return m.t();
                        }
                    }, 7, (Object) null);
                    return;
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.b(j);
            }
        }, 7, (Object) null);
        alarmManager.set(2, SystemClock.elapsedRealtime() + j, broadcast);
    }

    public final void a(final String campaignId) {
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.b(campaignId);
            }
        }, 7, (Object) null);
        this.k.a(campaignId);
    }

    public final void b(boolean z) {
        this.s.set(z);
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda26
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.b(m.this);
            }
        }, 6, (Object) null);
    }

    public static final String b(m mVar) {
        return "Updated shouldRequestTriggersInNextRequest to: " + mVar.s;
    }

    public static final String b(Activity activity) {
        return "Closed session with activity: " + activity.getLocalClassName();
    }

    public static final String b(com.braze.models.i iVar) {
        return "SDK is disabled. Not logging event: " + iVar;
    }

    public static final String b() {
        return "SDK is disabled. Not adding request to dispatch.";
    }

    public final void b(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.D, (Throwable) null, true, new Function0() { // from class: com.braze.managers.m$$ExternalSyntheticLambda25
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.E();
            }
        }, 2, (Object) null);
        a(new com.braze.requests.w(this.f, this.e.getBaseUrlForRequests(), this.b, arrayList));
    }

    public static final String b(Throwable th) {
        return "Not logging duplicate error: " + th;
    }

    public static final String b(long j) {
        return "Scheduling Push Delivery Events Flush in " + j + " ms";
    }
}

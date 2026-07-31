package com.braze.managers;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.KeyEvent;
import android.view.View;
import com.braze.events.BannersUpdatedEvent;
import com.braze.events.BrazeUserChangeEvent;
import com.braze.events.IEventSubscriber;
import com.braze.models.Banner;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.Job;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class h {
    public static Job m;

    /* renamed from: a, reason: collision with root package name */
    public final String f115a;
    public final com.braze.events.e b;
    public final com.braze.storage.e0 c;
    public final m d;
    public List e;
    public final AtomicBoolean f;
    public final SharedPreferences g;
    public final SharedPreferences h;
    public final SharedPreferences i;
    public final AtomicInteger j;
    public static final g k = new g();
    public static final LinkedHashMap l = new LinkedHashMap();
    public static final ReentrantLock n = new ReentrantLock();
    public static final ArrayList o = new ArrayList();
    public static final ReentrantLock p = new ReentrantLock();
    public static final ArrayList q = new ArrayList();

    public h(Context context, String apiKey, String str, com.braze.events.e internalEventPublisher, com.braze.events.e externalEventPublisher, com.braze.storage.e0 serverConfigStorageProvider, m brazeManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(internalEventPublisher, "internalEventPublisher");
        Intrinsics.checkNotNullParameter(externalEventPublisher, "externalEventPublisher");
        Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
        this.f115a = str;
        this.b = externalEventPublisher;
        this.c = serverConfigStorageProvider;
        this.d = brazeManager;
        this.e = CollectionsKt.emptyList();
        this.f = new AtomicBoolean(false);
        SharedPreferences a2 = c.a(context, str, apiKey, new StringBuilder("com.braze.managers.banners.eligibility"), 0);
        Intrinsics.checkNotNullExpressionValue(a2, "getSharedPreferences(...)");
        this.g = a2;
        SharedPreferences a3 = c.a(context, str, apiKey, new StringBuilder("com.braze.managers.banners.storage"), 0);
        Intrinsics.checkNotNullExpressionValue(a3, "getSharedPreferences(...)");
        this.h = a3;
        SharedPreferences a4 = c.a(context, str, apiKey, new StringBuilder("com.braze.managers.banners.impressions"), 0);
        Intrinsics.checkNotNullExpressionValue(a4, "getSharedPreferences(...)");
        this.i = a4;
        this.j = new AtomicInteger(0);
        d();
        com.braze.events.d dVar = (com.braze.events.d) internalEventPublisher;
        dVar.c(com.braze.events.internal.q.class, new IEventSubscriber() { // from class: com.braze.managers.h$$ExternalSyntheticLambda0
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                h.a(h.this, (com.braze.events.internal.q) obj);
            }
        });
        dVar.c(com.braze.events.internal.c.class, new IEventSubscriber() { // from class: com.braze.managers.h$$ExternalSyntheticLambda11
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                h.a(h.this, (com.braze.events.internal.c) obj);
            }
        });
        dVar.c(com.braze.events.internal.b.class, new IEventSubscriber() { // from class: com.braze.managers.h$$ExternalSyntheticLambda22
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                h.a(h.this, (com.braze.events.internal.b) obj);
            }
        });
        dVar.d(BrazeUserChangeEvent.class, new IEventSubscriber() { // from class: com.braze.managers.h$$ExternalSyntheticLambda28
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                h.a(h.this, (BrazeUserChangeEvent) obj);
            }
        });
        dVar.c(com.braze.events.internal.d.class, new IEventSubscriber() { // from class: com.braze.managers.h$$ExternalSyntheticLambda29
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                h.a(h.this, (com.braze.events.internal.d) obj);
            }
        });
    }

    public static final void a(h hVar, com.braze.events.internal.d it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (!it.f53a.F || it.b.F) {
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) hVar, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda27
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.c();
            }
        }, 7, (Object) null);
        hVar.e = CollectionsKt.emptyList();
        hVar.h.edit().clear().apply();
        hVar.l();
    }

    public static final String b(String str) {
        return com.braze.b.a("Returning test Banner with placement id ", str, '.');
    }

    public static final String c(String str) {
        return com.braze.a.a("Banner with placement id ", str, " not found in cache. Returning null for this Banner.");
    }

    public static final String d(String str) {
        return com.braze.a.a("Received null or blank serialized Banner string for Banner id ", str, " from shared preferences. Not parsing.");
    }

    public static final String e(String str) {
        return com.braze.i.a("Encountered unexpected exception while parsing stored banner: ", str);
    }

    public static final String f(String str) {
        return com.braze.a.a("Not logging a Banner click for Banner with placement id ", str, ". The Banner was not present in cache.");
    }

    public static final String g() {
        return "Bypassing rate limit for Banner refresh.";
    }

    public static final String h(String str) {
        return com.braze.a.a("Not logging a Banner impression for Banner with placement id ", str, ". The Banner was not present in cache.");
    }

    public static final String i(String str) {
        return com.braze.b.a("Logging impression for Banner with placement id ", str, '.');
    }

    public static final String j() {
        return "Resetting BannersManager for new session.";
    }

    public static final String k() {
        return "Added new Banners to local storage.";
    }

    public static final String m() {
        return "View is not an IBannerView. Cannot update banner data.";
    }

    public final void l() {
        ArrayList arrayList = new ArrayList();
        ReentrantLock reentrantLock = n;
        reentrantLock.lock();
        try {
            List<d> list = CollectionsKt.toList(o);
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            for (final d dVar : list) {
                try {
                    KeyEvent.Callback callback = (View) dVar.b.get();
                    if (callback == null) {
                        arrayList.add(dVar);
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda30
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return h.a(d.this);
                            }
                        }, 7, (Object) null);
                    } else if (callback instanceof IBannerView) {
                        ((IBannerView) callback).initBanner(dVar.f113a);
                    } else {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda31
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return h.m();
                            }
                        }, 6, (Object) null);
                        arrayList.add(dVar);
                    }
                } catch (Exception e) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda32
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return h.b(d.this);
                        }
                    }, 4, (Object) null);
                    arrayList.add(dVar);
                }
            }
            n.lock();
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    o.remove((d) it.next());
                }
                Unit unit2 = Unit.INSTANCE;
            } finally {
            }
        } finally {
        }
    }

    public final void n() {
        final long nowInSeconds = DateTimeUtils.nowInSeconds();
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.a(nowInSeconds);
            }
        }, 6, (Object) null);
        this.g.edit().putLong("last_refresh", nowInSeconds).apply();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object] */
    public final boolean g(final String id) {
        Set<String> keySet;
        Banner banner;
        Intrinsics.checkNotNullParameter(id, "id");
        final Banner banner2 = (Banner) l.get(id);
        if (banner2 == null) {
            Iterator it = this.e.iterator();
            while (true) {
                if (!it.hasNext()) {
                    banner = 0;
                    break;
                }
                banner = it.next();
                if (Intrinsics.areEqual(id, ((Banner) banner).getPlacementId())) {
                    break;
                }
            }
            banner2 = banner;
        }
        boolean z = false;
        if (banner2 == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda16
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.h(id);
                }
            }, 6, (Object) null);
            return false;
        }
        String id2 = banner2.getTrackingId();
        Intrinsics.checkNotNullParameter(id2, "id");
        Map<String, ?> all = this.i.getAll();
        if (all != null && (keySet = all.keySet()) != null) {
            z = keySet.contains(id2);
        }
        if (z) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda18
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.b(Banner.this);
                }
            }, 6, (Object) null);
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.i(id);
                }
            }, 7, (Object) null);
            com.braze.models.i a2 = com.braze.models.outgoing.event.b.g.a(banner2.getTrackingId());
            if (a2 != null) {
                this.d.a(a2);
            }
            Intrinsics.checkNotNullParameter(id2, "id");
            this.i.edit().putBoolean(id2, true).apply();
        }
        return true;
    }

    public static final void a(h hVar, com.braze.events.internal.q it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it.f71a instanceof com.braze.requests.a) {
            hVar.j.decrementAndGet();
        }
    }

    public static final void a(h hVar, com.braze.events.internal.c it) {
        Intrinsics.checkNotNullParameter(it, "it");
        hVar.f.set(true);
        hVar.n();
    }

    public static final void a(h hVar, com.braze.events.internal.b it) {
        Intrinsics.checkNotNullParameter(it, "it");
        ((com.braze.events.d) hVar.b).b(it, com.braze.events.internal.b.class);
    }

    public static final void a(h hVar, final BrazeUserChangeEvent it) {
        Intrinsics.checkNotNullParameter(it, "it");
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) hVar, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.a(BrazeUserChangeEvent.this);
            }
        }, 7, (Object) null);
        hVar.l();
        BrazeLogger.brazelog$default(brazeLogger, (Object) hVar, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.b(BrazeUserChangeEvent.this);
            }
        }, 7, (Object) null);
    }

    public static final String a(BrazeUserChangeEvent brazeUserChangeEvent) {
        return "Updating banners because of user change to " + brazeUserChangeEvent.getCurrentUserId() + '.';
    }

    public final void a(boolean z) {
        ReentrantLock reentrantLock = p;
        reentrantLock.lock();
        try {
            List mutableList = CollectionsKt.toMutableList((Collection) q);
            reentrantLock.unlock();
            if (mutableList.isEmpty()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda14
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.a();
                    }
                }, 7, (Object) null);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda15
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.b();
                    }
                }, 7, (Object) null);
                a(mutableList, z);
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public static final String a() {
        return "Cached Banners placement IDs are empty. Not refreshing Banners on forced internal call.";
    }

    public final boolean a(final List ids, boolean z) {
        String str;
        Object obj;
        Intrinsics.checkNotNullParameter(ids, "ids");
        if (this.j.get() > 0) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.a(h.this);
                }
            }, 7, (Object) null);
            return false;
        }
        if (z) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.g();
                }
            }, 7, (Object) null);
        } else if (this.f.get()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda12
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.h();
                }
            }, 6, (Object) null);
            return false;
        }
        if (ids.size() > this.c.p()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda13
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.a(h.this, ids);
                }
            }, 7, (Object) null);
        }
        this.j.incrementAndGet();
        List<String> ids2 = CollectionsKt.take(ids, this.c.p());
        Intrinsics.checkNotNullParameter(ids2, "ids");
        ArrayList arrayList = new ArrayList();
        for (String str2 : ids2) {
            Iterator it = this.e.iterator();
            while (true) {
                str = null;
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (Intrinsics.areEqual(((Banner) obj).getPlacementId(), str2)) {
                    break;
                }
            }
            Banner banner = (Banner) obj;
            if (banner != null) {
                str = banner.getTrackingId();
            }
            arrayList.add(new Pair(str2, str));
        }
        this.d.a(arrayList);
        return true;
    }

    public static final String b(BrazeUserChangeEvent brazeUserChangeEvent) {
        return "Done updating banners because of user change to " + brazeUserChangeEvent.getCurrentUserId() + '.';
    }

    public static final String b() {
        return "Refreshing Banners on forced internal refresh.";
    }

    public static final String b(Banner banner) {
        return "Not logging a Banner impression for Banner " + banner + ". The Banner already had an impression logged in the current session";
    }

    public static final String b(String str, String str2) {
        return "Logging click for Banner with placement id " + str + " with buttonID of " + str2 + '.';
    }

    public static final String b(d dVar) {
        return "Error checking banner visibility for " + dVar.f113a + ".Removing banner from visibility monitoring.";
    }

    public static final String c() {
        return "Banners have moved to disabled. Clearing banners data.";
    }

    public static final String c(Banner banner) {
        return "Not storing expired Banner: " + banner + ". The Banner's expiration timestamp is in the past.";
    }

    public static final String h() {
        return "Banners have already been sync'd. Only one sync per session is allowed.";
    }

    public final void i() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.j();
            }
        }, 6, (Object) null);
        this.i.edit().clear().apply();
        this.f.set(false);
        g.a();
    }

    public static final String f() {
        return "Failed to find stored Banner keys.";
    }

    public static final String d(Banner banner) {
        return "Error storing Banner: " + banner + '.';
    }

    public final void d() {
        SharedPreferences sharedPreferences = this.h;
        ArrayList arrayList = new ArrayList();
        Map<String, ?> all = sharedPreferences.getAll();
        if (all != null && !all.isEmpty()) {
            Set<String> keySet = all.keySet();
            if (keySet.isEmpty()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda33
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.f();
                    }
                }, 6, (Object) null);
                this.e = CollectionsKt.emptyList();
                return;
            }
            for (final String str : keySet) {
                final String str2 = (String) all.get(str);
                if (str2 != null) {
                    try {
                    } catch (Exception e) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda1
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return h.e(str2);
                            }
                        }, 4, (Object) null);
                        Unit unit = Unit.INSTANCE;
                    }
                    if (!StringsKt.isBlank(str2)) {
                        Banner a2 = Banner.Companion.a(new JSONObject(str2));
                        if (a2 != null) {
                            arrayList.add(a2);
                        }
                    }
                }
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda34
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.d(str);
                    }
                }, 6, (Object) null);
            }
            this.e = arrayList;
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.e();
            }
        }, 7, (Object) null);
        this.e = CollectionsKt.emptyList();
    }

    public static final String e() {
        return "Did not find stored Banners.";
    }

    public static final String a(h hVar) {
        return "Not refreshing Banners since another " + hVar.j.get() + " request is currently in-flight.";
    }

    public static final String a(h hVar, List list) {
        return "The number of Banner placements requested exceeds the maximum allowed by the server. The server allows a maximum of " + hVar.c.p() + " placements, but " + list.size() + " were requested. Truncating request to fit.\nPlacements that will be requested: " + CollectionsKt.take(list, hVar.c.p()) + "\nTruncated placements not requested: " + list.subList(hVar.c.p(), list.size());
    }

    public final Banner a(final String id) {
        Object obj;
        Intrinsics.checkNotNullParameter(id, "id");
        final Banner banner = (Banner) l.get(id);
        if (banner != null) {
            if (banner.isExpired()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.a(Banner.this);
                    }
                }, 6, (Object) null);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.b(id);
                    }
                }, 6, (Object) null);
                banner.setUserId(this.f115a);
                return banner;
            }
        }
        Iterator it = this.e.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (Intrinsics.areEqual(((Banner) obj).getPlacementId(), id)) {
                break;
            }
        }
        final Banner banner2 = (Banner) obj;
        if (banner2 == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.c(id);
                }
            }, 6, (Object) null);
            return null;
        }
        if (banner2.isExpired()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.a(id, banner2);
                }
            }, 6, (Object) null);
            return null;
        }
        banner2.setUserId(this.f115a);
        return banner2;
    }

    public static final String a(Banner banner) {
        return "Found test banner, but it is expired. Attempting to find non-test banner. " + banner;
    }

    public static final String a(String str, Banner banner) {
        return "Banner with placement id " + str + " has expired. Returning null for this Banner " + banner;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object] */
    public final void a(final String id, final String str) {
        Banner banner;
        Intrinsics.checkNotNullParameter(id, "id");
        Banner banner2 = (Banner) l.get(id);
        if (banner2 == null) {
            Iterator it = this.e.iterator();
            while (true) {
                if (!it.hasNext()) {
                    banner = 0;
                    break;
                } else {
                    banner = it.next();
                    if (Intrinsics.areEqual(id, ((Banner) banner).getPlacementId())) {
                        break;
                    }
                }
            }
            banner2 = banner;
        }
        if (banner2 == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.f(id);
                }
            }, 6, (Object) null);
            return;
        }
        String trackingId = banner2.getTrackingId();
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.b(id, str);
            }
        }, 7, (Object) null);
        com.braze.models.i c = com.braze.models.outgoing.event.b.g.c(trackingId, str);
        if (c != null) {
            this.d.a(c);
        }
    }

    public final BannersUpdatedEvent a(JSONObject bannersJson) {
        Intrinsics.checkNotNullParameter(bannersJson, "bannerData");
        Banner.Companion.getClass();
        Intrinsics.checkNotNullParameter(bannersJson, "bannersJson");
        ArrayList arrayList = new ArrayList();
        Iterator<String> keys = bannersJson.keys();
        Intrinsics.checkNotNullExpressionValue(keys, "keys(...)");
        while (keys.hasNext()) {
            Banner a2 = Banner.Companion.a(bannersJson.optJSONObject(keys.next()));
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (((Banner) next).getIsTestSend()) {
                arrayList2.add(next);
            } else {
                arrayList3.add(next);
            }
        }
        Pair pair = new Pair(arrayList2, arrayList3);
        List<Banner> list = (List) pair.component1();
        List list2 = (List) pair.component2();
        for (Banner banner : list) {
            l.put(banner.getPlacementId(), banner);
        }
        this.e = list2;
        SharedPreferences.Editor edit = this.h.edit();
        edit.clear();
        for (final Banner banner2 : this.e) {
            if (banner2.isExpired()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda24
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.c(Banner.this);
                    }
                }, 6, (Object) null);
            } else {
                try {
                    edit.putString(banner2.getPlacementId(), banner2.getJsonKey().toString());
                } catch (Exception e) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda25
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return h.d(Banner.this);
                        }
                    }, 4, (Object) null);
                }
            }
        }
        edit.apply();
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.h$$ExternalSyntheticLambda26
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.k();
            }
        }, 7, (Object) null);
        l();
        List list3 = this.e;
        ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
        Iterator it2 = list3.iterator();
        while (it2.hasNext()) {
            arrayList4.add(((Banner) it2.next()).deepcopy$android_sdk_base_release());
        }
        return new BannersUpdatedEvent(arrayList4);
    }

    public static final String a(long j) {
        return "Updating last Banners refresh time: " + j;
    }

    public static final String a(d dVar) {
        return "Banner " + dVar.f113a + " removed because view is null";
    }
}

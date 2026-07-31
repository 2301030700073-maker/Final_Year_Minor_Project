package com.braze.dispatch;

import com.braze.enums.DeviceKey;
import com.braze.enums.NotificationSubscriptionType;
import com.braze.events.IEventSubscriber;
import com.braze.managers.d0;
import com.braze.managers.t;
import com.braze.managers.u;
import com.braze.managers.u0;
import com.braze.models.i;
import com.braze.models.o;
import com.braze.models.outgoing.l;
import com.braze.requests.n;
import com.braze.requests.q;
import com.braze.storage.h0;
import com.braze.storage.p;
import com.braze.storage.r;
import com.braze.support.BrazeLogger;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class h {
    public static final g d = new g();

    /* renamed from: a, reason: collision with root package name */
    public final u0 f38a;
    public final ConcurrentHashMap b;
    public final ConcurrentHashMap c;

    public h(u0 udm) {
        Intrinsics.checkNotNullParameter(udm, "udm");
        this.f38a = udm;
        this.b = new ConcurrentHashMap();
        this.c = new ConcurrentHashMap();
        udm.l.c(com.braze.events.internal.dispatchmanager.c.class, new IEventSubscriber() { // from class: com.braze.dispatch.h$$ExternalSyntheticLambda5
            @Override // com.braze.events.IEventSubscriber
            public final void trigger(Object obj) {
                h.a(h.this, (com.braze.events.internal.dispatchmanager.c) obj);
            }
        });
    }

    public static final void a(h hVar, com.braze.events.internal.dispatchmanager.c cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<destruct>");
        com.braze.events.internal.dispatchmanager.b bVar = cVar.f56a;
        List<i> events = cVar.b;
        o oVar = cVar.c;
        int ordinal = bVar.ordinal();
        if (ordinal == 0) {
            hVar.getClass();
            Intrinsics.checkNotNullParameter(events, "events");
            for (i iVar : events) {
                hVar.c.putIfAbsent(((com.braze.models.outgoing.event.b) iVar).d, iVar);
            }
            return;
        }
        if (ordinal != 1) {
            if (ordinal != 2) {
                return;
            }
            hVar.a(oVar);
        } else {
            hVar.getClass();
            Intrinsics.checkNotNullParameter(events, "events");
            for (i iVar2 : events) {
                hVar.b.putIfAbsent(((com.braze.models.outgoing.event.b) iVar2).d, iVar2);
            }
        }
    }

    public static final String b() {
        return "Push permissions were granted, but blocking automatic opt-in";
    }

    public static final String c() {
        return "Push permissions were granted, setting user push notifications to opt-in";
    }

    public static final String d() {
        return "Flushing pending events to dispatcher map";
    }

    public final synchronized com.braze.models.b e() {
        LinkedHashSet linkedHashSet;
        Collection values = this.b.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        linkedHashSet = new LinkedHashSet();
        Iterator it = values.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            final i iVar = (i) next;
            linkedHashSet.add(iVar);
            values.remove(iVar);
            BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.dispatch.h$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.a(i.this);
                }
            }, 7, (Object) null);
            if (linkedHashSet.size() >= 32) {
                BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.dispatch.h$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.a();
                    }
                }, 6, (Object) null);
                break;
            }
        }
        return new com.braze.models.b(linkedHashSet);
    }

    public final void a(com.braze.requests.f dataSyncRequest) {
        Intrinsics.checkNotNullParameter(dataSyncRequest, "dataSyncRequest");
        u0 u0Var = this.f38a;
        dataSyncRequest.o = ((t) u0Var.e).c;
        dataSyncRequest.k = u0Var.b.getSdkFlavor();
        dataSyncRequest.p = ((t) this.f38a.e).c();
        u0 u0Var2 = this.f38a;
        d0 d0Var = u0Var2.e;
        r deviceCache = u0Var2.k;
        if (deviceCache == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deviceCache");
            deviceCache = null;
        }
        t tVar = (t) d0Var;
        tVar.getClass();
        Intrinsics.checkNotNullParameter(deviceCache, "deviceCache");
        deviceCache.e = tVar.b();
        com.braze.models.outgoing.h hVar = (com.braze.models.outgoing.h) deviceCache.a();
        dataSyncRequest.h = hVar;
        if (hVar != null && hVar.m) {
            if (this.f38a.b.getShouldOptInWhenPushAuthorized()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.dispatch.h$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.c();
                    }
                }, 6, (Object) null);
                h0 a2 = this.f38a.a();
                NotificationSubscriptionType notificationSubscriptionType = NotificationSubscriptionType.OPTED_IN;
                synchronized (a2) {
                    a2.c("push_subscribe", notificationSubscriptionType != null ? notificationSubscriptionType.getJsonKey() : null);
                }
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.dispatch.h$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.b();
                    }
                }, 6, (Object) null);
            }
        }
        if (hVar != null && hVar.getJsonKey().has(DeviceKey.NOTIFICATIONS_ENABLED.getKey())) {
            this.f38a.a().j();
        }
        dataSyncRequest.l = (l) this.f38a.a().a();
        com.braze.models.b e = e();
        dataSyncRequest.m = e;
        LinkedHashSet linkedHashSet = e.f142a;
        if (linkedHashSet.isEmpty()) {
            return;
        }
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            if (((com.braze.models.outgoing.event.b) ((i) it.next())).f163a == com.braze.enums.e.B) {
                u0 u0Var3 = this.f38a;
                dataSyncRequest.n = u0Var3.v.b(u0Var3.b.getSdkMetadata());
                return;
            }
        }
    }

    public static final String a(i iVar) {
        com.braze.models.outgoing.event.b bVar = (com.braze.models.outgoing.event.b) iVar;
        return "Event dispatched: " + bVar.getJsonKey() + " with uid: " + bVar.d;
    }

    public static final String a() {
        return "Max number of events per dispatch reached: 32 . No more events will be included in this dispatch";
    }

    public final void a(o oVar) {
        if (oVar == null) {
            return;
        }
        ConcurrentHashMap concurrentHashMap = this.c;
        if (concurrentHashMap.isEmpty()) {
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.dispatch.h$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.d();
            }
        }, 7, (Object) null);
        Collection values = concurrentHashMap.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        Iterator it = values.iterator();
        while (it.hasNext()) {
            ((com.braze.models.outgoing.event.b) ((i) it.next())).a(oVar);
        }
        this.b.putAll(concurrentHashMap);
        Set keySet = concurrentHashMap.keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "<get-keys>(...)");
        Iterator it2 = keySet.iterator();
        while (it2.hasNext()) {
            this.c.remove((String) it2.next());
        }
    }

    public final n a(n brazeRequest) {
        Intrinsics.checkNotNullParameter(brazeRequest, "brazeRequest");
        g gVar = d;
        u0 u0Var = this.f38a;
        gVar.a(u0Var.b, u0Var.t, brazeRequest, ((u) u0Var.c).a());
        if (brazeRequest instanceof com.braze.requests.f) {
            a((com.braze.requests.f) brazeRequest);
        } else if (brazeRequest instanceof q) {
            ((q) brazeRequest).h = ((t) this.f38a.e).b();
        } else if (brazeRequest instanceof com.braze.requests.e) {
            p pVar = this.f38a.D;
            com.braze.requests.e eVar = (com.braze.requests.e) brazeRequest;
            eVar.j = pVar.c;
            eVar.k = pVar.d;
        }
        return brazeRequest;
    }
}

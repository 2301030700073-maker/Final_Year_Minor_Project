package com.braze.requests.framework;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.managers.u0;
import com.braze.models.response.j;
import com.braze.requests.m;
import com.braze.requests.n;
import com.braze.storage.e0;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.support.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* loaded from: classes2.dex */
public abstract class b {
    public static final String j = BrazeLogger.getBrazeLogTag((Class<?>) b.class);

    /* renamed from: a, reason: collision with root package name */
    public final m f192a;
    public final com.braze.dispatch.h b;
    public long c;
    public long d;
    public final ArrayList e;
    public long f;
    public final long g;
    public final com.braze.requests.util.b h;
    public com.braze.requests.util.d i;

    public b(m destination, com.braze.dispatch.h dispatchDataProvider) {
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(dispatchDataProvider, "dispatchDataProvider");
        this.f192a = destination;
        this.b = dispatchDataProvider;
        this.e = new ArrayList();
        int ordinal = destination.ordinal();
        this.g = ordinal != 0 ? ordinal != 2 ? 0L : 75L : 25L;
        this.h = new com.braze.requests.util.b(dispatchDataProvider.f38a.m.j(), dispatchDataProvider.f38a.m.k(), dispatchDataProvider.f38a.m.l());
    }

    public static final String d(b bVar, long j2) {
        return "New state after request success\n" + bVar.d(j2);
    }

    public abstract void a(long j2);

    public final void a(final long j2, n request) {
        Intrinsics.checkNotNullParameter(request, "request");
        request.a(this.b.f38a.l);
        this.e.add(new h(request, j2 + this.g, j2));
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, this, (BrazeLogger.Priority) null, (Throwable) null, c(), new Function0() { // from class: com.braze.requests.framework.b$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.a(b.this, j2);
            }
        }, 3, (Object) null);
    }

    public final com.braze.requests.util.d b() {
        Map w;
        e0 e0Var = this.b.f38a.m;
        ReentrantLock reentrantLock = e0Var.c;
        reentrantLock.lock();
        try {
            com.braze.models.response.m mVar = e0Var.e;
            if (mVar == null || (w = mVar.E) == null) {
                w = e0Var.w();
            }
            reentrantLock.unlock();
            j jVar = (j) w.get(this.f192a);
            if (jVar == null) {
                this.i = null;
                return null;
            }
            com.braze.requests.util.d dVar = this.i;
            int i = jVar.b;
            int i2 = jVar.f177a;
            if (dVar == null) {
                com.braze.dispatch.h dispatchDataProvider = this.b;
                String specificName = String.valueOf(this.f192a.hashCode());
                Intrinsics.checkNotNullParameter(dispatchDataProvider, "dispatchDataProvider");
                Intrinsics.checkNotNullParameter("com.braze.endpointqueue.tokenbucket", "filePrefix");
                Intrinsics.checkNotNullParameter(specificName, "specificName");
                u0 u0Var = dispatchDataProvider.f38a;
                Context context = u0Var.f137a;
                SharedPreferences sharedPreferences = context.getSharedPreferences("com.braze.endpointqueue.tokenbucket." + specificName + StringUtils.getCacheFileSuffix(context, u0Var.g, u0Var.h), 0);
                Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
                dVar = new com.braze.requests.util.d(i2, i, sharedPreferences);
            } else {
                dVar.a(i2, i);
            }
            this.i = dVar;
            return dVar;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public boolean c() {
        return false;
    }

    public final void c(long j2) {
        ArrayList arrayList = this.e;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (((h) next).d.a()) {
                arrayList2.add(next);
            }
        }
        List sortedWith = CollectionsKt.sortedWith(arrayList2, new a());
        if (sortedWith.size() >= 2) {
            int size = sortedWith.size();
            for (int i = 1; i < size; i++) {
                final h hVar = (h) sortedWith.get(i);
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, j, (BrazeLogger.Priority) null, (Throwable) null, c(), new Function0() { // from class: com.braze.requests.framework.b$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return b.a(h.this);
                    }
                }, 6, (Object) null);
                hVar.a(j2, i.d);
            }
        }
    }

    public final String d(final long j2) {
        String str;
        String joinToString$default = CollectionsKt.joinToString$default(this.e, "\n\n", null, null, 0, null, new Function1() { // from class: com.braze.requests.framework.b$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return b.b(j2, (h) obj);
            }
        }, 30, null);
        StringBuilder append = new StringBuilder("\n            |EndpointQueue: ").append(this.f192a).append("\n            |   lastFailureAt = ").append(this.c - j2).append("\n            |   lastSuccessAt = ").append(this.d - j2).append("\n            |   failureBackoffUntil = ").append(this.f - j2).append("\n            |   pendingWaitDuration = ").append(this.g).append("\n            |   endpointRateLimiter = ");
        com.braze.requests.util.d dVar = this.i;
        if (dVar == null || (str = dVar.toString()) == null) {
            str = "unset";
        }
        return StringsKt.trimMargin$default(append.append(str).append("\n            |   requestInfoQueue: \n            |").append(joinToString$default).append("\n        ").toString(), null, 1, null);
    }

    public com.braze.requests.util.b a() {
        return this.h;
    }

    public static final String a(b bVar, long j2) {
        return "Added request now to queue " + bVar.d(j2);
    }

    public static final String a(h hVar, long j2, int i) {
        return "Set retry count for " + hVar.a(j2) + " to " + i;
    }

    public static final String a(h hVar, long j2) {
        return "Marking request as framework complete \n" + hVar.a(j2);
    }

    public final void a(final long j2, final h requestInfo) {
        Intrinsics.checkNotNullParameter(requestInfo, "requestInfo");
        final com.braze.requests.util.d b = b();
        if (b == null) {
            return;
        }
        b.a();
        com.braze.requests.util.d b2 = b();
        if (b2 != null && b2.a(j2) < 1.0d) {
            final long b3 = b.b();
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, this, (BrazeLogger.Priority) null, (Throwable) null, c(), new Function0() { // from class: com.braze.requests.framework.b$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.a(h.this, j2, b3, b);
                }
            }, 3, (Object) null);
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.framework.b$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.b(b.this, j2);
            }
        }, 7, (Object) null);
    }

    public static final String a(h hVar, long j2, long j3, com.braze.requests.util.d dVar) {
        return "Delaying next request after '" + hVar.a(j2) + "' until next token is available in " + j3 + "ms - '" + DateTimeUtils.formatDateFromMillis$default(j2 + j3, null, null, 3, null) + "'\n" + dVar;
    }

    public static final String a(h hVar) {
        return "About to batch request " + hVar;
    }

    public void a(final long j2, h requestInfo, com.braze.models.response.a apiResponse) {
        Intrinsics.checkNotNullParameter(requestInfo, "requestInfo");
        Intrinsics.checkNotNullParameter(apiResponse, "apiResponse");
        com.braze.models.response.g gVar = apiResponse instanceof com.braze.models.response.g ? (com.braze.models.response.g) apiResponse : null;
        com.braze.models.response.d dVar = gVar != null ? gVar.d : null;
        Long l = apiResponse.b;
        long longValue = l != null ? l.longValue() : 0L;
        this.c = j2;
        if (!(dVar instanceof com.braze.models.response.h)) {
            com.braze.requests.util.b a2 = a();
            this.f = longValue + j2 + a2.a(a2.b);
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, j, (BrazeLogger.Priority) null, (Throwable) null, c(), new Function0() { // from class: com.braze.requests.framework.b$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.c(b.this, j2);
            }
        }, 6, (Object) null);
    }

    public void a(final long j2, h requestInfo, com.braze.models.response.g apiResponse) {
        Intrinsics.checkNotNullParameter(requestInfo, "requestInfo");
        Intrinsics.checkNotNullParameter(apiResponse, "apiResponse");
        a().f = 0;
        this.d = j2;
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, j, (BrazeLogger.Priority) null, (Throwable) null, c(), new Function0() { // from class: com.braze.requests.framework.b$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.d(b.this, j2);
            }
        }, 6, (Object) null);
    }

    public final void b(final long j2) {
        a(j2);
        ArrayList arrayList = this.e;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (((h) next).d == i.d) {
                arrayList2.add(next);
            }
        }
        if (!arrayList2.isEmpty()) {
            Iterator it2 = arrayList2.iterator();
            if (it2.hasNext()) {
                final int i = ((h) it2.next()).h;
                while (it2.hasNext()) {
                    int i2 = ((h) it2.next()).h;
                    if (i < i2) {
                        i = i2;
                    }
                }
                ArrayList arrayList3 = this.e;
                ArrayList arrayList4 = new ArrayList();
                Iterator it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    Object next2 = it3.next();
                    if (((h) next2).d.a()) {
                        arrayList4.add(next2);
                    }
                }
                Iterator it4 = arrayList4.iterator();
                while (it4.hasNext()) {
                    final h hVar = (h) it4.next();
                    hVar.h = i;
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, this, (BrazeLogger.Priority) null, (Throwable) null, c(), new Function0() { // from class: com.braze.requests.framework.b$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return b.a(h.this, j2, i);
                        }
                    }, 3, (Object) null);
                }
            } else {
                throw new NoSuchElementException();
            }
        }
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = this.e;
        ArrayList arrayList7 = new ArrayList();
        Iterator it5 = arrayList6.iterator();
        while (it5.hasNext()) {
            Object next3 = it5.next();
            i iVar = ((h) next3).d;
            if (iVar == i.d || iVar == i.e) {
                arrayList7.add(next3);
            }
        }
        arrayList5.addAll(arrayList7);
        ArrayList arrayList8 = this.e;
        ArrayList arrayList9 = new ArrayList();
        Iterator it6 = arrayList8.iterator();
        while (it6.hasNext()) {
            Object next4 = it6.next();
            h hVar2 = (h) next4;
            if (hVar2.h >= 15 && hVar2.d.a()) {
                arrayList9.add(next4);
            }
        }
        arrayList5.addAll(arrayList9);
        Iterator it7 = arrayList5.iterator();
        while (it7.hasNext()) {
            final h hVar3 = (h) it7.next();
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, j, (BrazeLogger.Priority) null, (Throwable) null, c(), new Function0() { // from class: com.braze.requests.framework.b$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.a(h.this, j2);
                }
            }, 6, (Object) null);
            hVar3.f196a.a((com.braze.events.e) this.b.f38a.l);
        }
        this.e.removeAll(arrayList5);
    }

    public static final String c(b bVar, long j2) {
        return "New state after request error " + bVar.d(j2);
    }

    public static final String b(b bVar, long j2) {
        return bVar.d(j2);
    }

    public static final CharSequence b(long j2, h it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.a(j2);
    }
}

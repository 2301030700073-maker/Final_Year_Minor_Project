package com.braze.requests.framework.queue;

import com.braze.requests.m;
import com.braze.requests.n;
import com.braze.requests.x;
import com.braze.support.BrazeLogger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class i extends com.braze.requests.framework.b {
    public final com.braze.requests.util.b k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(com.braze.dispatch.h dispatchDataProvider) {
        super(m.g, dispatchDataProvider);
        Intrinsics.checkNotNullParameter(dispatchDataProvider, "dispatchDataProvider");
        this.k = new com.braze.requests.util.b((int) TimeUnit.MINUTES.toMillis(1L), dispatchDataProvider.f38a.m.k(), dispatchDataProvider.f38a.m.l());
    }

    public static final String b(com.braze.requests.framework.h hVar, long j) {
        return "Template request will expire before send time and is not eligible for a request retry. Not retrying or performing any fallback triggers. " + hVar.a(j);
    }

    @Override // com.braze.requests.framework.b
    public final com.braze.requests.util.b a() {
        return this.k;
    }

    @Override // com.braze.requests.framework.b
    public final void a(final long j) {
        ArrayList arrayList = this.e;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (((com.braze.requests.framework.h) next).d.a()) {
                arrayList2.add(next);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            Object next2 = it2.next();
            com.braze.requests.framework.h hVar = (com.braze.requests.framework.h) next2;
            n nVar = hVar.f196a;
            x xVar = nVar instanceof x ? (x) nVar : null;
            if ((xVar != null ? ((com.braze.triggers.events.i) xVar.k).b + xVar.n : -1L) < hVar.b) {
                arrayList3.add(next2);
            }
        }
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            final com.braze.requests.framework.h hVar2 = (com.braze.requests.framework.h) it3.next();
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.framework.queue.i$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return i.b(com.braze.requests.framework.h.this, j);
                }
            }, 7, (Object) null);
            hVar2.a(j, com.braze.requests.framework.i.e);
        }
    }
}

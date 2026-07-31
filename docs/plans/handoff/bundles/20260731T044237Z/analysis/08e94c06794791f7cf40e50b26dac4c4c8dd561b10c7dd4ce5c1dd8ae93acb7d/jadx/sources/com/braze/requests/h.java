package com.braze.requests;

import com.braze.support.BrazeLogger;
import java.util.ArrayList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class h implements p {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.events.e f198a;
    public final com.braze.managers.m b;

    public h(com.braze.events.e internalEventPublisher, com.braze.managers.m brazeManager) {
        Intrinsics.checkNotNullParameter(internalEventPublisher, "internalEventPublisher");
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
        this.f198a = internalEventPublisher;
        this.b = brazeManager;
        new ArrayList();
    }

    @Override // com.braze.requests.p
    public final void a(com.braze.requests.framework.h requestInfo, com.braze.requests.framework.c requestDispatchCallback, boolean z) {
        Intrinsics.checkNotNullParameter(requestInfo, "requestInfo");
        Intrinsics.checkNotNullParameter(requestDispatchCallback, "requestDispatchCallback");
        final n nVar = requestInfo.f196a;
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.h$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.a(n.this);
            }
        }, 7, (Object) null);
        com.braze.models.response.g gVar = new com.braze.models.response.g(nVar, new com.braze.communication.d(201, MapsKt.emptyMap(), 4), this.b);
        com.braze.events.e eVar = this.f198a;
        nVar.a(eVar, eVar, gVar);
        nVar.a(this.f198a);
        requestDispatchCallback.a(gVar);
        ((com.braze.events.d) this.f198a).b(new com.braze.events.internal.g(nVar), com.braze.events.internal.g.class);
    }

    public static final String a(n nVar) {
        return "Short circuiting execution of network request (" + nVar.hashCode() + ") and immediately marking it as succeeded.";
    }
}

package com.braze.analytics;

import com.braze.i;
import com.braze.support.BrazeLogger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class b implements c {
    public static final String e(String str) {
        return i.a("Cannot create card control event for Feed card. Returning null. Card id: ", str);
    }

    public static final String f(String str) {
        return i.a("Cannot create card dismissed event for Feed card. Returning null. Card id: ", str);
    }

    @Override // com.braze.analytics.c
    public final com.braze.models.i a(final String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.analytics.b$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.f(cardId);
            }
        }, 6, (Object) null);
        return null;
    }

    @Override // com.braze.analytics.c
    public final com.braze.models.i b(String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        return com.braze.models.outgoing.event.b.g.k(cardId);
    }

    @Override // com.braze.analytics.c
    public final com.braze.models.i c(final String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.analytics.b$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.e(cardId);
            }
        }, 6, (Object) null);
        return null;
    }

    @Override // com.braze.analytics.c
    public final com.braze.models.i d(String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        return com.braze.models.outgoing.event.b.g.m(cardId);
    }
}

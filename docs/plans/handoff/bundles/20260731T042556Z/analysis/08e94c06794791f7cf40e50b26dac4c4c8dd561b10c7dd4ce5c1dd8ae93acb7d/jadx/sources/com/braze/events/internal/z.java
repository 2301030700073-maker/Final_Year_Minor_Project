package com.braze.events.internal;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class z {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.models.n f78a;

    public z(com.braze.models.n sealedSession) {
        Intrinsics.checkNotNullParameter(sealedSession, "sealedSession");
        this.f78a = sealedSession;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof z) && Intrinsics.areEqual(this.f78a, ((z) obj).f78a);
    }

    public final int hashCode() {
        return this.f78a.hashCode();
    }

    public final String toString() {
        return "SessionSealedEvent(sealedSession=" + this.f78a + ')';
    }
}

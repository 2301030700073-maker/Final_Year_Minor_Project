package com.braze.events.internal;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class y {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.models.l f77a;

    public y(com.braze.models.l session) {
        Intrinsics.checkNotNullParameter(session, "session");
        this.f77a = session;
        if (session.d) {
            throw new IllegalArgumentException("Session created events cannot be created with already sealed sessions.");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof y) && Intrinsics.areEqual(this.f77a, ((y) obj).f77a);
    }

    public final int hashCode() {
        return this.f77a.hashCode();
    }

    public final String toString() {
        return "SessionCreatedEvent(session=" + this.f77a + ')';
    }
}

package com.braze.events.internal;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class d0 {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.requests.f f54a;

    public d0(com.braze.requests.f request) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f54a = request;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof d0) && Intrinsics.areEqual(this.f54a, ((d0) obj).f54a);
    }

    public final int hashCode() {
        return this.f54a.hashCode();
    }

    public final String toString() {
        return "TriggerDispatchStartedEvent(request=" + this.f54a + ')';
    }
}

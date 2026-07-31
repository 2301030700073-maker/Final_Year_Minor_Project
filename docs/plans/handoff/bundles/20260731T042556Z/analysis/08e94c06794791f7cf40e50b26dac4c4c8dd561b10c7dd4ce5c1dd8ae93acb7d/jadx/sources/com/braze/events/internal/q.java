package com.braze.events.internal;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.requests.b f71a;

    public q(com.braze.requests.b request) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f71a = request;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof q) && Intrinsics.areEqual(this.f71a, ((q) obj).f71a);
    }

    public final int hashCode() {
        return this.f71a.hashCode();
    }

    public final String toString() {
        return "RequestDispatchCompletedEvent(request=" + this.f71a + ')';
    }
}

package com.braze.events.internal;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.requests.b f72a;

    public r(com.braze.requests.b request) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f72a = request;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof r) && Intrinsics.areEqual(this.f72a, ((r) obj).f72a);
    }

    public final int hashCode() {
        return this.f72a.hashCode();
    }

    public final String toString() {
        return "RequestDispatchStartedEvent(request=" + this.f72a + ')';
    }
}

package com.braze.events.internal;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.requests.n f58a;

    public f(com.braze.requests.n request) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f58a = request;
        request.b();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f) && Intrinsics.areEqual(this.f58a, ((f) obj).f58a);
    }

    public final int hashCode() {
        return this.f58a.hashCode();
    }

    public final String toString() {
        return "DispatchFailedEvent(request=" + this.f58a + ')';
    }
}

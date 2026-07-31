package com.braze.events.internal;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.requests.n f60a;

    public g(com.braze.requests.n request) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f60a = request;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g) && Intrinsics.areEqual(this.f60a, ((g) obj).f60a);
    }

    public final int hashCode() {
        return this.f60a.hashCode();
    }

    public final String toString() {
        return "DispatchSucceededEvent(request=" + this.f60a + ')';
    }
}

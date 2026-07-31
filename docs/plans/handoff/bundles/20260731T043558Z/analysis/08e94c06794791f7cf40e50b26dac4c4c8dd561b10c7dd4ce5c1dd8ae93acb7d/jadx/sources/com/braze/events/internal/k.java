package com.braze.events.internal;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.requests.i f65a;

    public k(com.braze.requests.i request) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f65a = request;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof k) && Intrinsics.areEqual(this.f65a, ((k) obj).f65a);
    }

    public final int hashCode() {
        return this.f65a.hashCode();
    }

    public final String toString() {
        return "FeatureFlagsRequestSuccessEvent(request=" + this.f65a + ')';
    }
}

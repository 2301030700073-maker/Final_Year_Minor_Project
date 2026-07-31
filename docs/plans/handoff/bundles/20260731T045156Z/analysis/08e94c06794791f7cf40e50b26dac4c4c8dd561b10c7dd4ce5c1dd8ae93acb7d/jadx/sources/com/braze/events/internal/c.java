package com.braze.events.internal;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.requests.a f51a;

    public c(com.braze.requests.a request) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f51a = request;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && Intrinsics.areEqual(this.f51a, ((c) obj).f51a);
    }

    public final int hashCode() {
        return this.f51a.hashCode();
    }

    public final String toString() {
        return "BannersRequestSuccessEvent(request=" + this.f51a + ')';
    }
}

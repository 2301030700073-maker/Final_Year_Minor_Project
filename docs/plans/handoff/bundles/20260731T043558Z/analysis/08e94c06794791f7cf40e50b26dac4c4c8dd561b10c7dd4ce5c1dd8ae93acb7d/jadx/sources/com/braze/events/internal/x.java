package com.braze.events.internal;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.models.response.d f76a;

    public x(com.braze.models.response.d responseError) {
        Intrinsics.checkNotNullParameter(responseError, "responseError");
        this.f76a = responseError;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof x) && Intrinsics.areEqual(this.f76a, ((x) obj).f76a);
    }

    public final int hashCode() {
        return this.f76a.hashCode();
    }

    public final String toString() {
        return "ServerResponseErrorEvent(responseError=" + this.f76a + ')';
    }
}

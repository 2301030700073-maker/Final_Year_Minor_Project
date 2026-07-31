package com.braze.events.internal;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class c0 {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.requests.f f52a;

    public c0(com.braze.requests.f request) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f52a = request;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c0) && Intrinsics.areEqual(this.f52a, ((c0) obj).f52a);
    }

    public final int hashCode() {
        return this.f52a.hashCode();
    }

    public final String toString() {
        return "TriggerDispatchCompletedEvent(request=" + this.f52a + ')';
    }
}

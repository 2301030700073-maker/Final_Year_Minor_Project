package com.braze.events.internal;

/* loaded from: classes2.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public final long f70a;

    public p(long j) {
        this.f70a = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof p) && this.f70a == ((p) obj).f70a;
    }

    public final int hashCode() {
        return Long.hashCode(this.f70a);
    }

    public final String toString() {
        return "PushMaxRequestSuccessEvent(lastUpdateTime=" + this.f70a + ')';
    }
}

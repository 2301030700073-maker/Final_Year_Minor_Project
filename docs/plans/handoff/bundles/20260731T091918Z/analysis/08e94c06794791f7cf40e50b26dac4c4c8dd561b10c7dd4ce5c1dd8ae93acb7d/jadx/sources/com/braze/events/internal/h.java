package com.braze.events.internal;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public final String f62a;

    public h(String mite) {
        Intrinsics.checkNotNullParameter(mite, "mite");
        this.f62a = mite;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h) && Intrinsics.areEqual(this.f62a, ((h) obj).f62a);
    }

    public final int hashCode() {
        return this.f62a.hashCode();
    }

    public final String toString() {
        return "DustMiteReceivedEvent(mite=" + this.f62a + ')';
    }
}

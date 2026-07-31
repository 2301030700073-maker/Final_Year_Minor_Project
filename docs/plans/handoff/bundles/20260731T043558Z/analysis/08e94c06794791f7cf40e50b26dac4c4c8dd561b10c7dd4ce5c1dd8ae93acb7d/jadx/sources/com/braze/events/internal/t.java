package com.braze.events.internal;

import com.braze.managers.o0;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public final o0 f73a;

    public t(o0 debugConfig) {
        Intrinsics.checkNotNullParameter(debugConfig, "debugConfig");
        this.f73a = debugConfig;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof t) && Intrinsics.areEqual(this.f73a, ((t) obj).f73a);
    }

    public final int hashCode() {
        return this.f73a.hashCode();
    }

    public final String toString() {
        return "SdkDebuggerConfigUpdateEvent(debugConfig=" + this.f73a + ')';
    }
}

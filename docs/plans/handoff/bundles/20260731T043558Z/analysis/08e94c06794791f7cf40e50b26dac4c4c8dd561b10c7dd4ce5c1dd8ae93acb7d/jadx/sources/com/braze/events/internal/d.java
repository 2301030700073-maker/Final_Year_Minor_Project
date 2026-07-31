package com.braze.events.internal;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.models.response.m f53a;
    public final com.braze.models.response.m b;

    public d(com.braze.models.response.m oldConfig, com.braze.models.response.m newConfig) {
        Intrinsics.checkNotNullParameter(oldConfig, "oldConfig");
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        this.f53a = oldConfig;
        this.b = newConfig;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return Intrinsics.areEqual(this.f53a, dVar.f53a) && Intrinsics.areEqual(this.b, dVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f53a.hashCode() * 31);
    }

    public final String toString() {
        return "ConfigChangeEvent(oldConfig=" + this.f53a + ", newConfig=" + this.b + ')';
    }
}

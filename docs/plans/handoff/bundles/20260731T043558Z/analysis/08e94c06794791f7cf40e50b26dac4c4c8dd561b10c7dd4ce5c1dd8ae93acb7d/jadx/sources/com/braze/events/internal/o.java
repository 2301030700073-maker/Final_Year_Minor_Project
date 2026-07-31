package com.braze.events.internal;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.enums.f f69a;
    public final com.braze.enums.f b;

    public o(com.braze.enums.f oldNetworkLevel, com.braze.enums.f newNetworkLevel) {
        Intrinsics.checkNotNullParameter(oldNetworkLevel, "oldNetworkLevel");
        Intrinsics.checkNotNullParameter(newNetworkLevel, "newNetworkLevel");
        this.f69a = oldNetworkLevel;
        this.b = newNetworkLevel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.f69a == oVar.f69a && this.b == oVar.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f69a.hashCode() * 31);
    }

    public final String toString() {
        return "NetworkLevelChangeEvent(oldNetworkLevel=" + this.f69a + ", newNetworkLevel=" + this.b + ')';
    }
}

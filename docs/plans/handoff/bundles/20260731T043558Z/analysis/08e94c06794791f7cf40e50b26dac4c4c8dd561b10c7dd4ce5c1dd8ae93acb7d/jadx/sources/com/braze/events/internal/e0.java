package com.braze.events.internal;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class e0 {

    /* renamed from: a, reason: collision with root package name */
    public final String f57a;
    public final com.braze.models.outgoing.event.push.b b;

    public e0(String campaignId, com.braze.models.outgoing.event.push.b pushClickEvent) {
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        Intrinsics.checkNotNullParameter(pushClickEvent, "pushClickEvent");
        this.f57a = campaignId;
        this.b = pushClickEvent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e0)) {
            return false;
        }
        e0 e0Var = (e0) obj;
        return Intrinsics.areEqual(this.f57a, e0Var.f57a) && Intrinsics.areEqual(this.b, e0Var.b);
    }

    public final int hashCode() {
        return this.b.d.hashCode() + (this.f57a.hashCode() * 31);
    }

    public final String toString() {
        return "TriggerEligiblePushClickEvent(campaignId=" + this.f57a + ", pushClickEvent=" + this.b + ')';
    }
}

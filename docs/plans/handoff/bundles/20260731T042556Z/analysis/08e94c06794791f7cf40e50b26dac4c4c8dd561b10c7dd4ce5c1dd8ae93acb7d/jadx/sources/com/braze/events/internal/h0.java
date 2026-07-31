package com.braze.events.internal;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class h0 {

    /* renamed from: a, reason: collision with root package name */
    public final List f63a;

    public h0(List triggeredActions) {
        Intrinsics.checkNotNullParameter(triggeredActions, "triggeredActions");
        this.f63a = triggeredActions;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h0) && Intrinsics.areEqual(this.f63a, ((h0) obj).f63a);
    }

    public final int hashCode() {
        return this.f63a.hashCode();
    }

    public final String toString() {
        return "TriggeredActionsReceivedEvent(triggeredActions=" + this.f63a + ')';
    }
}

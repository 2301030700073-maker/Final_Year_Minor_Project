package com.braze.events.internal;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f74a;

    public v(ArrayList logs) {
        Intrinsics.checkNotNullParameter(logs, "logs");
        this.f74a = logs;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof v) && Intrinsics.areEqual(this.f74a, ((v) obj).f74a);
    }

    public final int hashCode() {
        return this.f74a.hashCode();
    }

    public final String toString() {
        return "SdkDebuggerSendLogEvent(logs=" + this.f74a + ')';
    }
}

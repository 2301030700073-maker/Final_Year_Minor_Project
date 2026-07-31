package com.braze.events.internal;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final List f66a;

    public l(List geofencesList) {
        Intrinsics.checkNotNullParameter(geofencesList, "geofencesList");
        this.f66a = geofencesList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof l) && Intrinsics.areEqual(this.f66a, ((l) obj).f66a);
    }

    public final int hashCode() {
        return this.f66a.hashCode();
    }

    public final String toString() {
        return "GeofencesReceivedEvent(geofencesList=" + this.f66a + ')';
    }
}

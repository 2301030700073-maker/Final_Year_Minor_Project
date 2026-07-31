package com.braze.events.internal;

import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;

/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final JSONArray f64a;

    public i(JSONArray featureFlagsData) {
        Intrinsics.checkNotNullParameter(featureFlagsData, "featureFlagsData");
        this.f64a = featureFlagsData;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof i) && Intrinsics.areEqual(this.f64a, ((i) obj).f64a);
    }

    public final int hashCode() {
        return this.f64a.hashCode();
    }

    public final String toString() {
        return "FeatureFlagsReceivedEvent(featureFlagsData=" + this.f64a + ')';
    }
}

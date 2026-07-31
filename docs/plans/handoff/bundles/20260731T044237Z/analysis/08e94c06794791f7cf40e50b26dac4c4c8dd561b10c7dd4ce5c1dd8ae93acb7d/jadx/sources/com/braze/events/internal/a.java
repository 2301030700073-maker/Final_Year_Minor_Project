package com.braze.events.internal;

import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final JSONObject f48a;

    public a(JSONObject bannersData) {
        Intrinsics.checkNotNullParameter(bannersData, "bannersData");
        this.f48a = bannersData;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && Intrinsics.areEqual(this.f48a, ((a) obj).f48a);
    }

    public final int hashCode() {
        return this.f48a.hashCode();
    }

    public final String toString() {
        return "BannersReceivedEvent(bannersData=" + this.f48a + ')';
    }
}

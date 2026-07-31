package com.braze.managers;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class j0 {

    /* renamed from: a, reason: collision with root package name */
    public final String f118a;
    public final long b;

    public j0(String id, long j) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.f118a = id;
        this.b = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j0)) {
            return false;
        }
        j0 j0Var = (j0) obj;
        return Intrinsics.areEqual(this.f118a, j0Var.f118a) && this.b == j0Var.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (this.f118a.hashCode() * 31);
    }

    public final String toString() {
        return "CampaignData(id=" + this.f118a + ", timestamp=" + this.b + ')';
    }
}

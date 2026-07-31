package com.braze.models.response;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class b implements d {

    /* renamed from: a, reason: collision with root package name */
    public final String f171a;
    public final com.braze.requests.n b;

    public b(String str, com.braze.requests.n originalRequest) {
        Intrinsics.checkNotNullParameter(originalRequest, "originalRequest");
        this.f171a = str;
        this.b = originalRequest;
    }

    @Override // com.braze.models.response.d
    public final String a() {
        return this.f171a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.areEqual(this.f171a, bVar.f171a) && Intrinsics.areEqual(this.b, bVar.b);
    }

    public final int hashCode() {
        String str = this.f171a;
        return this.b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return "BasicResponseError(errorMessage=" + this.f171a + ", originalRequest=" + this.b + ')';
    }
}

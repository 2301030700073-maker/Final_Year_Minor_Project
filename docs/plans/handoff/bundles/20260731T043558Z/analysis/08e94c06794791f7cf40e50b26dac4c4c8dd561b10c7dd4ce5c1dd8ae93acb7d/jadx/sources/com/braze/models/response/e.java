package com.braze.models.response;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class e implements d {

    /* renamed from: a, reason: collision with root package name */
    public final String f173a;
    public final com.braze.requests.n b;

    public e(String str, com.braze.requests.n originalRequest) {
        Intrinsics.checkNotNullParameter(originalRequest, "originalRequest");
        this.f173a = str;
        this.b = originalRequest;
    }

    @Override // com.braze.models.response.d
    public final String a() {
        return this.f173a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return Intrinsics.areEqual(this.f173a, eVar.f173a) && Intrinsics.areEqual(this.b, eVar.b);
    }

    public final int hashCode() {
        String str = this.f173a;
        return this.b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return "InvalidApiKeyError(errorMessage=" + this.f173a + ", originalRequest=" + this.b + ')';
    }
}

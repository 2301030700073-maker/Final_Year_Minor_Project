package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;

/* compiled from: com.google.android.play:integrity@@1.3.0 */
/* loaded from: classes4.dex */
final class h extends StandardIntegrityManager.StandardIntegrityTokenRequest {

    /* renamed from: a, reason: collision with root package name */
    private final String f337a;

    /* synthetic */ h(String str, g gVar) {
        this.f337a = str;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenRequest
    public final String a() {
        return this.f337a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StandardIntegrityManager.StandardIntegrityTokenRequest)) {
            return false;
        }
        StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest = (StandardIntegrityManager.StandardIntegrityTokenRequest) obj;
        String str = this.f337a;
        return str == null ? standardIntegrityTokenRequest.a() == null : str.equals(standardIntegrityTokenRequest.a());
    }

    public final int hashCode() {
        String str = this.f337a;
        return (str == null ? 0 : str.hashCode()) ^ 1000003;
    }

    public final String toString() {
        return "StandardIntegrityTokenRequest{requestHash=" + this.f337a + "}";
    }
}

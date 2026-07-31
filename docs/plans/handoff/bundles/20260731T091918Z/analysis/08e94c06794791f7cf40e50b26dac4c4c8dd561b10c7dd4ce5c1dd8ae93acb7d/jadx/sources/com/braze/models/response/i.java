package com.braze.models.response;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* loaded from: classes2.dex */
public final class i implements d {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.requests.n f176a;
    public final int b;
    public final String c;

    public i(com.braze.requests.n originalRequest, int i, String str) {
        Intrinsics.checkNotNullParameter(originalRequest, "originalRequest");
        this.f176a = originalRequest;
        this.b = i;
        this.c = str;
    }

    @Override // com.braze.models.response.d
    public final String a() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return Intrinsics.areEqual(this.f176a, iVar.f176a) && this.b == iVar.b && Intrinsics.areEqual(this.c, iVar.c);
    }

    public final int hashCode() {
        int hashCode = (Integer.hashCode(this.b) + (this.f176a.hashCode() * 31)) * 31;
        String str = this.c;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "{code = " + this.b + ", reason = " + this.c + AbstractJsonLexerKt.END_OBJ;
    }
}

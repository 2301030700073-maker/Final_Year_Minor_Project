package com.braze.models.outgoing;

import com.braze.models.IPutIntoJson;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class b implements IPutIntoJson {

    /* renamed from: a, reason: collision with root package name */
    public final String f162a;

    public b(String apiKey) {
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        this.f162a = apiKey;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && Intrinsics.areEqual(this.f162a, ((b) obj).f162a);
    }

    @Override // com.braze.models.IPutIntoJson
    public final Object forJsonPut() {
        return this.f162a;
    }

    public final int hashCode() {
        return this.f162a.hashCode();
    }

    public final String toString() {
        return this.f162a;
    }
}

package com.braze.models;

import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class o implements IPutIntoJson {

    /* renamed from: a, reason: collision with root package name */
    public final UUID f161a;
    public final String b;

    public o(UUID sessionIdUuid) {
        Intrinsics.checkNotNullParameter(sessionIdUuid, "sessionIdUuid");
        this.f161a = sessionIdUuid;
        String uuid = sessionIdUuid.toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
        this.b = uuid;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof o) && Intrinsics.areEqual(this.f161a, ((o) obj).f161a);
    }

    @Override // com.braze.models.IPutIntoJson
    public final Object forJsonPut() {
        return this.b;
    }

    public final int hashCode() {
        return this.f161a.hashCode();
    }

    public final String toString() {
        return this.b;
    }
}

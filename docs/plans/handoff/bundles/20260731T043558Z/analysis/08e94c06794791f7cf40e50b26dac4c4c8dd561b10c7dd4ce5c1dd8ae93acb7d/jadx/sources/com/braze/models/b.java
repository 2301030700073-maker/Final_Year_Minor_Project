package com.braze.models;

import java.util.LinkedHashSet;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class b implements k {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashSet f142a;
    public final boolean b;

    public b(LinkedHashSet eventsList) {
        Intrinsics.checkNotNullParameter(eventsList, "eventsList");
        this.f142a = eventsList;
        this.b = eventsList.isEmpty();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && Intrinsics.areEqual(this.f142a, ((b) obj).f142a);
    }

    public final int hashCode() {
        return this.f142a.hashCode();
    }

    @Override // com.braze.models.k
    public final boolean isEmpty() {
        return this.b;
    }

    public final String toString() {
        return "BrazeEventContainer(eventsList=" + this.f142a + ')';
    }
}

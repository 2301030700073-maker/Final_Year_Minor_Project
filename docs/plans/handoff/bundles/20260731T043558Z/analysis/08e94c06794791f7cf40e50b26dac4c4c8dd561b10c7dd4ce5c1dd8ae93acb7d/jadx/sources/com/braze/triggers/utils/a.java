package com.braze.triggers.utils;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.triggers.enums.b f281a;
    public final String b;

    public a(com.braze.triggers.enums.b pathType, String remoteUrl) {
        Intrinsics.checkNotNullParameter(pathType, "pathType");
        Intrinsics.checkNotNullParameter(remoteUrl, "remoteUrl");
        this.f281a = pathType;
        this.b = remoteUrl;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f281a == aVar.f281a && Intrinsics.areEqual(this.b, aVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f281a.hashCode() * 31);
    }

    public final String toString() {
        return "RemotePath(pathType=" + this.f281a + ", remoteUrl=" + this.b + ')';
    }
}

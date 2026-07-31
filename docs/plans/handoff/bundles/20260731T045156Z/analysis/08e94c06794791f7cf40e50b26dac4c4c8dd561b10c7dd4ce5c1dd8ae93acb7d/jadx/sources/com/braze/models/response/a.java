package com.braze.models.response;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.communication.d f170a;
    public final Long b;

    public a(com.braze.requests.n request, com.braze.communication.d connectionResult) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(connectionResult, "connectionResult");
        this.f170a = connectionResult;
        String str = (String) connectionResult.b.get("retry-after");
        this.b = str != null ? com.braze.support.l.a(str) : null;
    }
}

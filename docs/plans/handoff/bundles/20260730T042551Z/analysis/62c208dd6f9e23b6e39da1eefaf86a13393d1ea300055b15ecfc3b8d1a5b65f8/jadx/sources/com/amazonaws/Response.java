package com.amazonaws;

import com.amazonaws.http.HttpResponse;

/* loaded from: classes.dex */
public final class Response<T> {

    /* renamed from: do, reason: not valid java name */
    public final HttpResponse f8695do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final T f8696do;

    public Response(T t, HttpResponse httpResponse) {
        this.f8696do = t;
        this.f8695do = httpResponse;
    }
}

package com.amazonaws.http;

import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPInputStream;

/* loaded from: classes.dex */
public class HttpResponse {

    /* renamed from: do, reason: not valid java name */
    public final int f8757do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InputStream f8758do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f8759do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Map<String, String> f8760do;

    /* renamed from: if, reason: not valid java name */
    public InputStream f8761if;

    public static class Builder {

        /* renamed from: do, reason: not valid java name */
        public int f8762do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public InputStream f8763do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f8764do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final HashMap f8765do = new HashMap();
    }

    public HttpResponse(String str, int i, Map map, InputStream inputStream) {
        this.f8759do = str;
        this.f8757do = i;
        this.f8760do = map;
        this.f8758do = inputStream;
    }

    /* renamed from: do, reason: not valid java name */
    public final InputStream m5047do() {
        if (this.f8761if == null) {
            synchronized (this) {
                if (this.f8758do == null || !"gzip".equals(this.f8760do.get("Content-Encoding"))) {
                    this.f8761if = this.f8758do;
                } else {
                    this.f8761if = new GZIPInputStream(this.f8758do);
                }
            }
        }
        return this.f8761if;
    }

    /* renamed from: for, reason: not valid java name */
    public final InputStream m5048for() {
        return this.f8758do;
    }

    /* renamed from: if, reason: not valid java name */
    public final Map<String, String> m5049if() {
        return this.f8760do;
    }

    /* renamed from: new, reason: not valid java name */
    public final int m5050new() {
        return this.f8757do;
    }

    /* renamed from: try, reason: not valid java name */
    public final String m5051try() {
        return this.f8759do;
    }
}

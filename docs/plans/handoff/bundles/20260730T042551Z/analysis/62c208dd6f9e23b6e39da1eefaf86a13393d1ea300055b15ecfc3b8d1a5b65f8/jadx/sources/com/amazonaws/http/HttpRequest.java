package com.amazonaws.http;

import com.amazonaws.util.StringUtils;
import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import java.io.InputStream;
import java.net.URI;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public class HttpRequest {

    /* renamed from: do, reason: not valid java name */
    public final InputStream f8753do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f8754do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public URI f8755do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Map<String, String> f8756do;

    public HttpRequest(String str, URI uri, HashMap hashMap, InputStream inputStream) {
        Charset charset = StringUtils.f9077do;
        this.f8754do = str == null ? null : str.isEmpty() ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : str.toUpperCase(Locale.ENGLISH);
        this.f8755do = uri;
        this.f8756do = DesugarCollections.unmodifiableMap(hashMap);
        this.f8753do = inputStream;
    }

    /* renamed from: do, reason: not valid java name */
    public final InputStream m5043do() {
        return this.f8753do;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m5044for(URI uri) {
        this.f8755do = uri;
    }

    /* renamed from: if, reason: not valid java name */
    public final long m5045if() {
        String str;
        Map<String, String> map = this.f8756do;
        if (map == null || (str = map.get("Content-Length")) == null || str.isEmpty()) {
            return 0L;
        }
        return Long.valueOf(str).longValue();
    }
}

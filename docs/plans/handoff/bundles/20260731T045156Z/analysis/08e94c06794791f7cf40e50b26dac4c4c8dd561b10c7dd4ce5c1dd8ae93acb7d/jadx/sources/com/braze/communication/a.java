package com.braze.communication;

import java.io.BufferedInputStream;
import java.io.FilterInputStream;
import java.net.HttpURLConnection;
import java.util.zip.GZIPInputStream;
import kotlin.text.StringsKt;

/* loaded from: classes2.dex */
public final class a {
    public static final FilterInputStream a(HttpURLConnection httpURLConnection) {
        int i = b.b;
        httpURLConnection.connect();
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode / 100 == 2) {
            return StringsKt.equals("gzip", httpURLConnection.getContentEncoding(), true) ? new GZIPInputStream(httpURLConnection.getInputStream()) : new BufferedInputStream(httpURLConnection.getInputStream());
        }
        throw new com.braze.exceptions.a("Bad HTTP response code from Braze: [" + responseCode + "] to url: " + httpURLConnection.getURL());
    }
}

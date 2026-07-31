package com.braze.communication;

import android.net.TrafficStats;
import com.braze.Constants;
import com.braze.support.BrazeLogger;
import com.braze.support.l;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class b {
    public static final int b = (int) TimeUnit.SECONDS.toMillis(15);

    /* renamed from: a, reason: collision with root package name */
    public final int f10a;

    public b(int i) {
        this.f10a = i;
    }

    public final d a(final com.braze.requests.util.c requestTarget, HashMap requestHeaders, JSONObject payload) {
        Intrinsics.checkNotNullParameter(requestTarget, "requestTarget");
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        Intrinsics.checkNotNullParameter(payload, "payload");
        TrafficStats.setThreadStatsTag(Constants.TRAFFIC_STATS_THREAD_TAG);
        URL url = requestTarget.c;
        Map emptyMap = MapsKt.emptyMap();
        int i = -1;
        try {
            HttpURLConnection a2 = a(url, payload, requestHeaders);
            i = a2.getResponseCode();
            Map<String, List<String>> headerFields = a2.getHeaderFields();
            Intrinsics.checkNotNullExpressionValue(headerFields, "getHeaderFields(...)");
            emptyMap = l.a(headerFields);
            Reader inputStreamReader = new InputStreamReader(a.a(a2), Charsets.UTF_8);
            BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
            try {
                String readText = TextStreamsKt.readText(bufferedReader);
                CloseableKt.closeFinally(bufferedReader, null);
                return new d(i, emptyMap, new JSONObject(readText));
            } finally {
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.communication.b$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.a(com.braze.requests.util.c.this);
                }
            }, 4, (Object) null);
            return new d(i, emptyMap, 4);
        }
    }

    public static final String a(com.braze.requests.util.c cVar) {
        return "Failed request to [" + cVar + AbstractJsonLexerKt.END_LIST;
    }

    public final HttpURLConnection a(URL url, JSONObject jSONObject, HashMap hashMap) {
        String jSONObject2 = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "toString(...)");
        Charset forName = Charset.forName("UTF-8");
        Intrinsics.checkNotNullExpressionValue(forName, "forName(...)");
        byte[] bytes = jSONObject2.getBytes(forName);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        HttpURLConnection a2 = g.f23a.a(url);
        for (Map.Entry entry : hashMap.entrySet()) {
            a2.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        a2.setConnectTimeout(b);
        a2.setReadTimeout(this.f10a);
        a2.setUseCaches(false);
        a2.setInstanceFollowRedirects(false);
        a2.setRequestMethod("POST");
        a2.setDoOutput(true);
        a2.setFixedLengthStreamingMode(bytes.length);
        OutputStream outputStream = a2.getOutputStream();
        try {
            outputStream.write(bytes);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(outputStream, null);
            return a2;
        } finally {
        }
    }
}

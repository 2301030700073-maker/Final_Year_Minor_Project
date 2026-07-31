package org.schabi.newpipe;

import android.content.Context;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.ChildHelper;
import com.grack.nanojson.JsonArray$$ExternalSyntheticLambda0;
import j$.lang.Iterable;
import j$.util.Map;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import kotlin.io.CloseableKt;
import okhttp3.Dispatcher;
import okhttp3.Headers;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.platform.Platform;
import okio.RealBufferedSink;
import org.jsoup.Jsoup;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;
import org.schabi.newpipe.util.InfoCache;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DownloaderImpl extends CloseableKt {
    public static DownloaderImpl instance;
    public final OkHttpClient client;
    public final HashMap mCookies;

    public static void $r8$lambda$2a0p9oMkkgzxSmpcGeYXtuomImY(Request.Builder builder, String str, List list) {
        str.getClass();
        builder.headers.removeAll(str);
        Iterable.EL.forEach(list, new DownloaderImpl$$ExternalSyntheticLambda3(builder, str, 0));
    }

    public DownloaderImpl(OkHttpClient.Builder builder) {
        TimeUnit.SECONDS.getClass();
        TimeZone timeZone = _UtilJvmKt.UTC;
        builder.readTimeout = 30000;
        this.client = new OkHttpClient(builder);
        this.mCookies = new HashMap();
    }

    @Override // kotlin.io.CloseableKt
    public final ChildHelper execute(org.schabi.newpipe.extractor.downloader.Request request) {
        RequestBody requestBody;
        String str = request.httpMethod;
        String str2 = request.url;
        Map map = request.headers;
        final byte[] bArr = request.dataToSend;
        if (bArr != null) {
            int i = RequestBody.$r8$clinit;
            final int length = bArr.length;
            _UtilCommonKt.checkOffsetAndCount(bArr.length, 0L, length);
            requestBody = new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$3
                @Override // okhttp3.RequestBody
                public final long contentLength() {
                    return length;
                }

                @Override // okhttp3.RequestBody
                public final MediaType contentType() {
                    return null;
                }

                @Override // okhttp3.RequestBody
                public final void writeTo(RealBufferedSink realBufferedSink) {
                    byte[] bArr2 = bArr;
                    bArr2.getClass();
                    if (realBufferedSink.closed) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("closed");
                    } else {
                        realBufferedSink.bufferField.write(length, bArr2);
                        realBufferedSink.emitCompleteSegments();
                    }
                }
            };
        } else {
            requestBody = null;
        }
        Request.Builder builder = new Request.Builder();
        builder.method(str, requestBody);
        builder.url(str2);
        Headers.Builder builder2 = builder.headers;
        builder2.getClass();
        Jsoup.headersCheckName("User-Agent");
        Jsoup.headersCheckValue("Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0", "User-Agent");
        Jsoup.commonAddLenient(builder2, "User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0");
        String str3 = (String) Stream.CC.of((Object[]) new String[]{str2.contains("youtube.com") ? (String) this.mCookies.get("youtube_restricted_mode_key") : null, (String) this.mCookies.get("recaptcha_cookies")}).filter(new JsonArray$$ExternalSyntheticLambda0(1)).flatMap(new Nodes$$ExternalSyntheticLambda0(17)).distinct().collect(Collectors.joining("; "));
        if (!str3.isEmpty()) {
            Headers.Builder builder3 = builder.headers;
            builder3.getClass();
            Jsoup.headersCheckName("Cookie");
            Jsoup.headersCheckValue(str3, "Cookie");
            Jsoup.commonAddLenient(builder3, "Cookie", str3);
        }
        Map.EL.forEach(map, new DownloaderImpl$$ExternalSyntheticLambda0(builder, 0));
        OkHttpClient okHttpClient = this.client;
        Request request2 = new Request(builder);
        okHttpClient.getClass();
        RealCall realCall = new RealCall(okHttpClient, request2);
        if (!realCall.executed.compareAndSet(false, true)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Already Executed");
            return null;
        }
        realCall.timeout.enter();
        Platform platform = Platform.platform;
        realCall.callStackTrace = Platform.platform.getStackTraceForCloseable();
        realCall.eventListener.getClass();
        try {
            Dispatcher dispatcher = okHttpClient.dispatcher;
            synchronized (dispatcher) {
                ((ArrayDeque) dispatcher.runningSyncCalls).add(realCall);
            }
            Response responseWithInterceptorChain$okhttp = realCall.getResponseWithInterceptorChain$okhttp();
            Dispatcher dispatcher2 = okHttpClient.dispatcher;
            dispatcher2.getClass();
            Dispatcher.promoteAndExecute$default(dispatcher2, null, realCall, null, 5);
            try {
                if (responseWithInterceptorChain$okhttp.code == 429) {
                    throw new ReCaptchaException(str2);
                }
                ResponseBody responseBody = responseWithInterceptorChain$okhttp.body;
                try {
                    String string = responseBody.string();
                    responseBody.close();
                    ChildHelper childHelper = new ChildHelper(responseWithInterceptorChain$okhttp.code, responseWithInterceptorChain$okhttp.message, responseWithInterceptorChain$okhttp.headers.toMultimap(), string, responseWithInterceptorChain$okhttp.request.url.url);
                    responseWithInterceptorChain$okhttp.close();
                    return childHelper;
                } finally {
                }
            } finally {
            }
        } catch (Throwable th) {
            Dispatcher dispatcher3 = realCall.client.dispatcher;
            dispatcher3.getClass();
            Dispatcher.promoteAndExecute$default(dispatcher3, null, realCall, null, 5);
            throw th;
        }
    }

    public final void updateYoutubeRestrictedModeCookies(Context context) {
        boolean z = context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0).getBoolean(context.getString(R.string.youtube_restricted_mode_enabled), false);
        HashMap hashMap = this.mCookies;
        if (z) {
            hashMap.put("youtube_restricted_mode_key", "PREF=f2=8000000");
        } else {
            hashMap.remove("youtube_restricted_mode_key");
        }
        InfoCache.INSTANCE.getClass();
        InfoCache.clearCache();
    }
}

package rnauthenticator.authenticator.network.http;

import android.net.Uri;
import androidx.browser.trusted.sharing.ShareTarget;
import com.google.android.gms.actions.SearchIntents;
import com.google.common.net.HttpHeaders;
import com.google.firebase.perf.FirebasePerformance;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import io.sentry.protocol.Response;
import java.io.IOException;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;

/* compiled from: HttpRequest.kt */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001:\u0001.B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006Jr\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152:\u0010\u0016\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0018¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001b\u0012\u0015\u0012\u0013\u0018\u00010\u001c¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u001e0\u0017H\u0002Jp\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\u0014\u001a\u00020\u001f2:\u0010\u0016\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0018¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001b\u0012\u0015\u0012\u0013\u0018\u00010\u001c¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u001e0\u0017H\u0002Jp\u0010 \u001a\u00020\u001e\"\u0004\b\u0000\u0010!2\u0006\u0010\"\u001a\u00020\u00032\u0016\b\u0002\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\b2\u0018\u0010\u0016\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H!0%\u0012\u0004\u0012\u00020\u001e0$2\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\b2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u0002H!0$J\u0086\u0001\u0010'\u001a\u00020\u001e\"\u0004\b\u0000\u0010!2\u0006\u0010\"\u001a\u00020\u00032\u0016\b\u0002\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\b2\u0014\b\u0002\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\b2\u0018\u0010\u0016\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H!0%\u0012\u0004\u0012\u00020\u001e0$2\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\b2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u0002H!0$J\u0086\u0001\u0010)\u001a\u00020\u001e\"\u0004\b\u0000\u0010!2\u0006\u0010\"\u001a\u00020\u00032\u0016\b\u0002\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\b2\u0014\b\u0002\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\b2\u0018\u0010\u0016\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H!0%\u0012\u0004\u0012\u00020\u001e0$2\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\b2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u0002H!0$JC\u0010*\u001a\b\u0012\u0004\u0012\u0002H!0%\"\u0004\b\u0000\u0010!2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u00182\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u0002H!0$H\u0002¢\u0006\u0004\b,\u0010-R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R'\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\n¨\u0006/"}, d2 = {"Lrnauthenticator/authenticator/network/http/HttpRequest;", "", "clientId", "", "clientSecret", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "defaultHeaders", "", "getDefaultHeaders", "()Ljava/util/Map;", "defaultHeaders$delegate", "Lkotlin/Lazy;", "request", "Lokhttp3/Call;", "method", "Lrnauthenticator/authenticator/network/http/HttpRequest$Method;", "uri", "Landroid/net/Uri;", "headers", "body", "Lrnauthenticator/authenticator/network/http/HttpBody;", "callback", "Lkotlin/Function2;", "Lokhttp3/Response;", "Lkotlin/ParameterName;", "name", Response.TYPE, "", "error", "", "Lokhttp3/RequestBody;", "get", "T", "url", "params", "Lkotlin/Function1;", "Lkotlin/Result;", "parseResponse", "post", SearchIntents.EXTRA_QUERY, "delete", "convertToResult", "responseToResult", "convertToResult-0E7RQCE", "(Ljava/lang/Throwable;Lokhttp3/Response;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "Method", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class HttpRequest {
    private final String clientId;
    private final String clientSecret;

    /* renamed from: defaultHeaders$delegate, reason: from kotlin metadata */
    private final Lazy defaultHeaders;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: HttpRequest.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lrnauthenticator/authenticator/network/http/HttpRequest$Method;", "", "<init>", "(Ljava/lang/String;I)V", "GET", "POST", FirebasePerformance.HttpMethod.DELETE, "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Method {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Method[] $VALUES;
        public static final Method GET = new Method("GET", 0);
        public static final Method POST = new Method("POST", 1);
        public static final Method DELETE = new Method(FirebasePerformance.HttpMethod.DELETE, 2);

        private static final /* synthetic */ Method[] $values() {
            return new Method[]{GET, POST, DELETE};
        }

        public static EnumEntries<Method> getEntries() {
            return $ENTRIES;
        }

        private Method(String str, int i) {
        }

        static {
            Method[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        public static Method valueOf(String str) {
            return (Method) Enum.valueOf(Method.class, str);
        }

        public static Method[] values() {
            return (Method[]) $VALUES.clone();
        }
    }

    public HttpRequest(String clientId, String str) {
        Intrinsics.checkNotNullParameter(clientId, "clientId");
        this.clientId = clientId;
        this.clientSecret = str;
        this.defaultHeaders = LazyKt.lazy(new Function0() { // from class: rnauthenticator.authenticator.network.http.HttpRequest$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Map defaultHeaders_delegate$lambda$0;
                defaultHeaders_delegate$lambda$0 = HttpRequest.defaultHeaders_delegate$lambda$0(HttpRequest.this);
                return defaultHeaders_delegate$lambda$0;
            }
        });
    }

    private final Map<String, String> getDefaultHeaders() {
        return (Map) this.defaultHeaders.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map defaultHeaders_delegate$lambda$0(HttpRequest httpRequest) {
        Pair[] pairArr = new Pair[3];
        pairArr[0] = TuplesKt.to(HttpHeaders.CONTENT_TYPE, ShareTarget.ENCODING_TYPE_URL_ENCODED);
        pairArr[1] = TuplesKt.to("X-CLIENTID", httpRequest.clientId);
        String str = httpRequest.clientSecret;
        if (str == null) {
            str = "";
        }
        pairArr[2] = TuplesKt.to("X-CLIENTSECRET", str);
        return MapsKt.mapOf(pairArr);
    }

    private final Call request(Method method, Uri uri, Map<String, String> headers, HttpBody body, final Function2<? super okhttp3.Response, ? super Throwable, Unit> callback) {
        String data;
        Headers of = Headers.INSTANCE.of(MapsKt.plus(getDefaultHeaders(), headers));
        RequestBody create = (body == null || (data = body.data()) == null) ? null : RequestBody.INSTANCE.create(data, MediaType.INSTANCE.parse(body.getContentType()));
        Request.Builder builder = new Request.Builder();
        String uri2 = uri.toString();
        Intrinsics.checkNotNullExpressionValue(uri2, "toString(...)");
        Call newCall = new OkHttpClient.Builder().build().newCall(builder.url(uri2).headers(of).method(method.name(), create).build());
        FirebasePerfOkHttpClient.enqueue(newCall, new Callback() { // from class: rnauthenticator.authenticator.network.http.HttpRequest$request$1
            @Override // okhttp3.Callback
            public void onResponse(Call call, okhttp3.Response response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                callback.invoke(response, null);
            }

            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException e) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(e, "e");
                callback.invoke(null, e);
            }
        });
        return newCall;
    }

    private final Call request(Method method, Uri uri, Map<String, String> headers, RequestBody body, final Function2<? super okhttp3.Response, ? super Throwable, Unit> callback) {
        Headers of = Headers.INSTANCE.of(MapsKt.plus(getDefaultHeaders(), headers));
        Request.Builder builder = new Request.Builder();
        String uri2 = uri.toString();
        Intrinsics.checkNotNullExpressionValue(uri2, "toString(...)");
        Call newCall = new OkHttpClient.Builder().build().newCall(builder.url(uri2).headers(of).method(method.name(), body).build());
        FirebasePerfOkHttpClient.enqueue(newCall, new Callback() { // from class: rnauthenticator.authenticator.network.http.HttpRequest$request$2
            @Override // okhttp3.Callback
            public void onResponse(Call call, okhttp3.Response response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                callback.invoke(response, null);
            }

            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException e) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(e, "e");
                callback.invoke(null, e);
            }
        });
        return newCall;
    }

    public static /* synthetic */ void get$default(HttpRequest httpRequest, String str, Map map, Function1 function1, Map map2, Function1 function12, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        Map map3 = map;
        if ((i & 8) != 0) {
            map2 = MapsKt.emptyMap();
        }
        httpRequest.get(str, map3, function1, map2, function12);
    }

    public final <T> void get(String url, Map<String, ? extends Object> params, final Function1<? super Result<? extends T>, Unit> callback, Map<String, String> headers, final Function1<? super okhttp3.Response, ? extends T> parseResponse) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(parseResponse, "parseResponse");
        Uri.Builder buildUpon = Uri.parse(url).buildUpon();
        for (Map.Entry<String, ? extends Object> entry : params.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            buildUpon.appendQueryParameter(key, value != null ? value.toString() : null);
        }
        Method method = Method.GET;
        Uri build = buildUpon.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        request(method, build, headers, (HttpBody) null, new Function2() { // from class: rnauthenticator.authenticator.network.http.HttpRequest$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit unit;
                unit = HttpRequest.get$lambda$2(Function1.this, this, parseResponse, (okhttp3.Response) obj, (Throwable) obj2);
                return unit;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit get$lambda$2(Function1 function1, HttpRequest httpRequest, Function1 function12, okhttp3.Response response, Throwable th) {
        function1.invoke(Result.m2097boximpl(httpRequest.m3926convertToResult0E7RQCE(th, response, function12)));
        return Unit.INSTANCE;
    }

    public static /* synthetic */ void post$default(HttpRequest httpRequest, String str, Map map, Map map2, Function1 function1, Map map3, Function1 function12, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        Map map4 = map;
        if ((i & 4) != 0) {
            map2 = MapsKt.emptyMap();
        }
        Map map5 = map2;
        if ((i & 16) != 0) {
            map3 = MapsKt.emptyMap();
        }
        httpRequest.post(str, map4, map5, function1, map3, function12);
    }

    public final <T> void post(String url, Map<String, ? extends Object> params, Map<String, String> query, final Function1<? super Result<? extends T>, Unit> callback, Map<String, String> headers, final Function1<? super okhttp3.Response, ? extends T> parseResponse) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(query, "query");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(parseResponse, "parseResponse");
        Uri.Builder buildUpon = Uri.parse(url).buildUpon();
        Intrinsics.checkNotNull(buildUpon);
        HttpQueryHelperKt.appendQueryParam(buildUpon, query);
        if (!headers.isEmpty() && headers.containsValue("application/json")) {
            String str = "{" + CollectionsKt.joinToString$default(params.entrySet(), ",", null, null, 0, null, new Function1() { // from class: rnauthenticator.authenticator.network.http.HttpRequest$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    CharSequence post$lambda$3;
                    post$lambda$3 = HttpRequest.post$lambda$3((Map.Entry) obj);
                    return post$lambda$3;
                }
            }, 30, null) + "}";
            Method method = Method.POST;
            Uri build = buildUpon.build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            request(method, build, headers, RequestBody.INSTANCE.create(str, MediaType.INSTANCE.parse("application/json")), new Function2() { // from class: rnauthenticator.authenticator.network.http.HttpRequest$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit post$lambda$4;
                    post$lambda$4 = HttpRequest.post$lambda$4(Function1.this, this, parseResponse, (okhttp3.Response) obj, (Throwable) obj2);
                    return post$lambda$4;
                }
            });
            return;
        }
        HttpUrlEncodedBody httpUrlEncodedBody = new HttpUrlEncodedBody(params);
        Method method2 = Method.POST;
        Uri build2 = buildUpon.build();
        Intrinsics.checkNotNullExpressionValue(build2, "build(...)");
        request(method2, build2, headers, httpUrlEncodedBody, new Function2() { // from class: rnauthenticator.authenticator.network.http.HttpRequest$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit post$lambda$5;
                post$lambda$5 = HttpRequest.post$lambda$5(Function1.this, this, parseResponse, (okhttp3.Response) obj, (Throwable) obj2);
                return post$lambda$5;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence post$lambda$3(Map.Entry it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (Intrinsics.areEqual(it.getKey(), "notificationOptions") || Intrinsics.areEqual(it.getKey(), "otpOptions")) {
            return "\"" + it.getKey() + "\":" + it.getValue();
        }
        return "\"" + it.getKey() + "\":\"" + it.getValue() + "\"";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit post$lambda$4(Function1 function1, HttpRequest httpRequest, Function1 function12, okhttp3.Response response, Throwable th) {
        function1.invoke(Result.m2097boximpl(httpRequest.m3926convertToResult0E7RQCE(th, response, function12)));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit post$lambda$5(Function1 function1, HttpRequest httpRequest, Function1 function12, okhttp3.Response response, Throwable th) {
        function1.invoke(Result.m2097boximpl(httpRequest.m3926convertToResult0E7RQCE(th, response, function12)));
        return Unit.INSTANCE;
    }

    public static /* synthetic */ void delete$default(HttpRequest httpRequest, String str, Map map, Map map2, Function1 function1, Map map3, Function1 function12, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        Map map4 = map;
        if ((i & 4) != 0) {
            map2 = MapsKt.emptyMap();
        }
        Map map5 = map2;
        if ((i & 16) != 0) {
            map3 = MapsKt.emptyMap();
        }
        httpRequest.delete(str, map4, map5, function1, map3, function12);
    }

    public final <T> void delete(String url, Map<String, String> params, Map<String, String> query, final Function1<? super Result<? extends T>, Unit> callback, Map<String, String> headers, final Function1<? super okhttp3.Response, ? extends T> parseResponse) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(query, "query");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(parseResponse, "parseResponse");
        Uri.Builder buildUpon = Uri.parse(url).buildUpon();
        Intrinsics.checkNotNull(buildUpon);
        HttpQueryHelperKt.appendQueryParam(buildUpon, query);
        HttpUrlEncodedBody httpUrlEncodedBody = new HttpUrlEncodedBody(params);
        Method method = Method.DELETE;
        Uri build = buildUpon.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        request(method, build, headers, httpUrlEncodedBody, new Function2() { // from class: rnauthenticator.authenticator.network.http.HttpRequest$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit delete$lambda$6;
                delete$lambda$6 = HttpRequest.delete$lambda$6(Function1.this, this, parseResponse, (okhttp3.Response) obj, (Throwable) obj2);
                return delete$lambda$6;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit delete$lambda$6(Function1 function1, HttpRequest httpRequest, Function1 function12, okhttp3.Response response, Throwable th) {
        function1.invoke(Result.m2097boximpl(httpRequest.m3926convertToResult0E7RQCE(th, response, function12)));
        return Unit.INSTANCE;
    }

    /* renamed from: convertToResult-0E7RQCE, reason: not valid java name */
    private final <T> Object m3926convertToResult0E7RQCE(Throwable error, okhttp3.Response response, Function1<? super okhttp3.Response, ? extends T> responseToResult) {
        if (response == null) {
            if (error != null) {
                Result.Companion companion = Result.INSTANCE;
                return Result.m2098constructorimpl(ResultKt.createFailure(error));
            }
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m2098constructorimpl(ResultKt.createFailure(new Exception("Unknown error")));
        }
        if (response.isSuccessful()) {
            try {
                Result.Companion companion3 = Result.INSTANCE;
                return Result.m2098constructorimpl(responseToResult.invoke(response));
            } catch (Exception e) {
                Result.Companion companion4 = Result.INSTANCE;
                return Result.m2098constructorimpl(ResultKt.createFailure(e));
            }
        }
        Result.Companion companion5 = Result.INSTANCE;
        ResponseBody body = response.body();
        return Result.m2098constructorimpl(ResultKt.createFailure(new Exception(body != null ? body.string() : null)));
    }
}

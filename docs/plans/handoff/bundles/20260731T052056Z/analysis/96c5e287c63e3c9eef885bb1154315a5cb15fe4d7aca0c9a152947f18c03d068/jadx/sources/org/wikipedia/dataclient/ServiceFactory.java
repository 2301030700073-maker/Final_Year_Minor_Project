package org.wikipedia.dataclient;

import androidx.appcompat.widget.ResourceManagerInternal;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.json.JsonImpl;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.internal.cache.CacheInterceptor;
import okhttp3.logging.HttpLoggingInterceptor;
import org.wikimedia.testkitchen.config.DestinationEventService;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.EventService;
import org.wikipedia.dataclient.okhttp.OkHttpConnectionFactory;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import retrofit2.AndroidMainExecutor;
import retrofit2.BuiltInConverters;
import retrofit2.OptionalConverterFactory$OptionalConverter;
import retrofit2.Platform;
import retrofit2.Reflection;
import retrofit2.Retrofit;
import retrofit2.converter.kotlinx.serialization.Factory;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ServiceFactory {
    public static final ResourceManagerInternal.ColorFilterLruCache ANALYTICS_REST_SERVICE_CACHE;
    public static final ResourceManagerInternal.ColorFilterLruCache CORE_REST_SERVICE_CACHE;
    public static final ServiceFactory INSTANCE = new ServiceFactory();
    public static final ResourceManagerInternal.ColorFilterLruCache REST_SERVICE_CACHE;
    public static final ResourceManagerInternal.ColorFilterLruCache SERVICE_CACHE;

    static {
        int i = 8;
        SERVICE_CACHE = new ResourceManagerInternal.ColorFilterLruCache(i, 1);
        REST_SERVICE_CACHE = new ResourceManagerInternal.ColorFilterLruCache(i, 2);
        CORE_REST_SERVICE_CACHE = new ResourceManagerInternal.ColorFilterLruCache(i, 3);
        ANALYTICS_REST_SERVICE_CACHE = new ResourceManagerInternal.ColorFilterLruCache(i, 4);
    }

    public static Retrofit createRetrofit$default(ServiceFactory serviceFactory, WikiSite wikiSite, String str) {
        str.getClass();
        OkHttpClient okHttpClient = OkHttpConnectionFactory.client;
        okHttpClient.getClass();
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.dispatcher = okHttpClient.dispatcher;
        builder.connectionPool = okHttpClient.connectionPool;
        List list = okHttpClient.interceptors;
        ArrayList arrayList = builder.interceptors;
        CollectionsKt.addAll(arrayList, list);
        CollectionsKt.addAll(builder.networkInterceptors, okHttpClient.networkInterceptors);
        builder.eventListenerFactory = okHttpClient.eventListenerFactory;
        builder.retryOnConnectionFailure = okHttpClient.retryOnConnectionFailure;
        builder.fastFallback = okHttpClient.fastFallback;
        builder.authenticator = okHttpClient.authenticator;
        builder.followRedirects = okHttpClient.followRedirects;
        builder.followSslRedirects = okHttpClient.followSslRedirects;
        builder.cookieJar = okHttpClient.cookieJar;
        builder.cache = okHttpClient.cache;
        builder.dns = okHttpClient.dns;
        builder.proxySelector = okHttpClient.proxySelector;
        builder.proxyAuthenticator = okHttpClient.proxyAuthenticator;
        builder.socketFactory = okHttpClient.socketFactory;
        builder.sslSocketFactoryOrNull = okHttpClient.sslSocketFactoryOrNull;
        builder.x509TrustManagerOrNull = okHttpClient.x509TrustManager;
        builder.connectionSpecs = okHttpClient.connectionSpecs;
        builder.protocols = okHttpClient.protocols;
        builder.hostnameVerifier = okHttpClient.hostnameVerifier;
        builder.certificatePinner = okHttpClient.certificatePinner;
        builder.certificateChainCleaner = okHttpClient.certificateChainCleaner;
        builder.connectTimeout = okHttpClient.connectTimeoutMillis;
        builder.readTimeout = okHttpClient.readTimeoutMillis;
        builder.writeTimeout = okHttpClient.writeTimeoutMillis;
        builder.webSocketCloseTimeout = okHttpClient.webSocketCloseTimeout;
        builder.minWebSocketMessageToCompress = okHttpClient.minWebSocketMessageToCompress;
        builder.routeDatabase = okHttpClient.routeDatabase;
        builder.taskRunner = okHttpClient.taskRunner;
        builder.readTimeout();
        Iterator it = arrayList.iterator();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            }
            if (((Interceptor) it.next()) instanceof HttpLoggingInterceptor) {
                break;
            }
            i2++;
        }
        arrayList.add(i2, new CacheInterceptor(3, wikiSite));
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        HttpUrl.Builder builder2 = new HttpUrl.Builder(0);
        builder2.parse$okhttp(null, str);
        HttpUrl m872build = builder2.m872build();
        if (!"".equals(m872build.pathSegments.get(r2.size() - 1))) {
            Gson$$ExternalSyntheticBUOutline0.m("baseUrl must end in /: ", m872build);
            return null;
        }
        OkHttpClient okHttpClient2 = new OkHttpClient(builder);
        JsonImpl jsonImpl = JsonUtil.json;
        Regex regex = MediaType.TYPE_SUBTYPE;
        MediaType mediaType = ReadingListFragment.MultiSelectCallback.get("application/json");
        jsonImpl.getClass();
        arrayList2.add(new Factory(mediaType, new OptionalConverterFactory$OptionalConverter(jsonImpl)));
        AndroidMainExecutor androidMainExecutor = Platform.callbackExecutor;
        Reflection reflection = Platform.builtInFactories;
        ArrayList arrayList4 = new ArrayList(arrayList3);
        List createDefaultCallAdapterFactories = reflection.createDefaultCallAdapterFactories(androidMainExecutor);
        arrayList4.addAll(createDefaultCallAdapterFactories);
        List createDefaultConverterFactories = reflection.createDefaultConverterFactories();
        ArrayList arrayList5 = new ArrayList(arrayList2.size() + 1 + createDefaultConverterFactories.size());
        arrayList5.add(new BuiltInConverters(i));
        arrayList5.addAll(arrayList2);
        arrayList5.addAll(createDefaultConverterFactories);
        List unmodifiableList = DesugarCollections.unmodifiableList(arrayList5);
        List unmodifiableList2 = DesugarCollections.unmodifiableList(arrayList4);
        createDefaultCallAdapterFactories.size();
        return new Retrofit(okHttpClient2, m872build, unmodifiableList, unmodifiableList2);
    }

    public static EventService getAnalyticsRest(DestinationEventService destinationEventService) {
        destinationEventService.getClass();
        Object obj = ANALYTICS_REST_SERVICE_CACHE.get(destinationEventService);
        obj.getClass();
        return (EventService) obj;
    }

    public static CoreRestService getCoreRest(WikiSite wikiSite) {
        wikiSite.getClass();
        Object obj = CORE_REST_SERVICE_CACHE.get(wikiSite);
        obj.getClass();
        return (CoreRestService) obj;
    }

    public static RestService getRest(WikiSite wikiSite) {
        wikiSite.getClass();
        Object obj = REST_SERVICE_CACHE.get(wikiSite);
        obj.getClass();
        return (RestService) obj;
    }

    public static String getRestBasePath(WikiSite wikiSite) {
        String format;
        wikiSite.getClass();
        Prefs prefs = Prefs.INSTANCE;
        String string = PrefsIoUtil.getString(R.string.preference_key_restbase_uri_format, null);
        if (string == null) {
            string = "";
        }
        if (string.length() == 0) {
            string = "%1$s://%2$s/api/rest_v1/";
        }
        if (string.length() == 0) {
            format = wikiSite.url().concat("//api/rest_v1");
        } else {
            String string2 = PrefsIoUtil.getString(R.string.preference_key_restbase_uri_format, null);
            String str = string2 != null ? string2 : "";
            format = String.format(str.length() != 0 ? str : "%1$s://%2$s/api/rest_v1/", Arrays.copyOf(new Object[]{"https", wikiSite.authority()}, 2));
        }
        return !StringsKt__StringsJVMKt.endsWith(format, "/", false) ? format.concat("/") : format;
    }

    public final Object get(WikiSite wikiSite, String str, Class cls) {
        wikiSite.getClass();
        if (str.length() == 0) {
            str = wikiSite.url().concat("/");
        }
        return createRetrofit$default(this, wikiSite, str).create(cls);
    }

    public static Service get(WikiSite wikiSite) {
        wikiSite.getClass();
        Object obj = SERVICE_CACHE.get(wikiSite);
        obj.getClass();
        return (Service) obj;
    }
}

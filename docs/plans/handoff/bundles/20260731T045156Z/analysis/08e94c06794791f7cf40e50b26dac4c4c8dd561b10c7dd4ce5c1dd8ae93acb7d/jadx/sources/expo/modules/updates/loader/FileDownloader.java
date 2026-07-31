package expo.modules.updates.loader;

import android.content.Context;
import android.net.Uri;
import com.facebook.common.util.UriUtil;
import com.facebook.internal.ServerProtocol;
import com.google.common.net.HttpHeaders;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import expo.modules.easclient.EASClientID;
import expo.modules.manifests.core.Manifest;
import expo.modules.structuredheaders.Dictionary;
import expo.modules.structuredheaders.OuterList;
import expo.modules.structuredheaders.StringItem;
import expo.modules.updates.UpdatesConfiguration;
import expo.modules.updates.UpdatesUtils;
import expo.modules.updates.codesigning.CodeSigningConfiguration;
import expo.modules.updates.codesigning.ExpoProjectInformation;
import expo.modules.updates.codesigning.SignatureValidationResult;
import expo.modules.updates.codesigning.ValidationResult;
import expo.modules.updates.db.UpdatesDatabase;
import expo.modules.updates.db.entity.AssetEntity;
import expo.modules.updates.db.entity.UpdateEntity;
import expo.modules.updates.launcher.NoDatabaseLauncher;
import expo.modules.updates.loader.FileDownloader;
import expo.modules.updates.loader.UpdateResponsePart;
import expo.modules.updates.logging.UpdatesErrorCode;
import expo.modules.updates.logging.UpdatesLogger;
import expo.modules.updates.manifest.ManifestMetadata;
import expo.modules.updates.manifest.ResponseHeaderData;
import expo.modules.updates.manifest.ResponsePartHeaderData;
import expo.modules.updates.manifest.ResponsePartInfo;
import expo.modules.updates.manifest.Update;
import expo.modules.updates.manifest.UpdateFactory;
import expo.modules.updates.selectionpolicy.SelectionPolicies;
import io.sentry.SentryEvent;
import io.sentry.protocol.Response;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.sequences.SequencesKt;
import kotlin.text.Charsets;
import okhttp3.Cache;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.MultipartReader;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.ResponseBody;
import okhttp3.brotli.BrotliInterceptor;
import okio.BufferedSource;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: FileDownloader.kt */
@Metadata(d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u0000 ;2\u00020\u0001:\u00066789:;B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tB)\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\b\u0010\fJ*\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u001d\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u001aH\u0000¢\u0006\u0002\b\u001bJ(\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0015\u001a\u00020\u001aH\u0002J\"\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0015\u001a\u00020%H\u0002J,\u0010&\u001a\u00020\u000e2\u0006\u0010'\u001a\u00020#2\b\u0010(\u001a\u0004\u0018\u00010)2\b\u0010$\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0015\u001a\u00020*H\u0002J\u0018\u0010+\u001a\u00020\u000e2\b\u0010,\u001a\u0004\u0018\u00010)2\u0006\u0010\u0015\u001a\u00020\u001aJ(\u0010-\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020/2\b\u00100\u001a\u0004\u0018\u00010\u00142\u0006\u0010,\u001a\u00020)2\u0006\u0010\u0015\u001a\u000201J\u0018\u00102\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u000203H\u0002J \u00102\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u0002032\u0006\u00104\u001a\u000205H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006<"}, d2 = {"Lexpo/modules/updates/loader/FileDownloader;", "", "context", "Landroid/content/Context;", "configuration", "Lexpo/modules/updates/UpdatesConfiguration;", SentryEvent.JsonKeys.LOGGER, "Lexpo/modules/updates/logging/UpdatesLogger;", "<init>", "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;)V", "client", "Lokhttp3/OkHttpClient;", "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lokhttp3/OkHttpClient;)V", "downloadAssetAndVerifyHashAndWriteToPath", "", "request", "Lokhttp3/Request;", "expectedBase64URLEncodedSHA256Hash", "", "destination", "Ljava/io/File;", "callback", "Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;", "parseRemoteUpdateResponse", Response.TYPE, "Lokhttp3/Response;", "Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;", "parseRemoteUpdateResponse$expo_updates_release", "parseMultipartRemoteUpdateResponse", "responseBody", "Lokhttp3/ResponseBody;", "responseHeaderData", "Lexpo/modules/updates/manifest/ResponseHeaderData;", "parseDirective", "directiveResponsePartInfo", "Lexpo/modules/updates/manifest/ResponsePartInfo;", "certificateChainFromManifestResponse", "Lexpo/modules/updates/loader/FileDownloader$ParseDirectiveCallback;", "parseManifest", "manifestResponseInfo", "extensions", "Lorg/json/JSONObject;", "Lexpo/modules/updates/loader/FileDownloader$ParseManifestCallback;", "downloadRemoteUpdate", "extraHeaders", "downloadAsset", UriUtil.LOCAL_ASSET_SCHEME, "Lexpo/modules/updates/db/entity/AssetEntity;", "destinationDirectory", "Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;", "downloadData", "Lokhttp3/Callback;", "isRetry", "", "FileDownloadCallback", "RemoteUpdateDownloadCallback", "AssetDownloadCallback", "ParseDirectiveCallback", "ParseManifestCallback", "Companion", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class FileDownloader {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private OkHttpClient client;
    private final UpdatesConfiguration configuration;
    private final Context context;
    private final UpdatesLogger logger;

    /* compiled from: FileDownloader.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\u0007\u001a\u00020\bH&J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bH&¨\u0006\f"}, d2 = {"Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;", "", "onFailure", "", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "assetEntity", "Lexpo/modules/updates/db/entity/AssetEntity;", "onSuccess", "isNew", "", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface AssetDownloadCallback {
        void onFailure(Exception e, AssetEntity assetEntity);

        void onSuccess(AssetEntity assetEntity, boolean isNew);
    }

    /* compiled from: FileDownloader.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\bf\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H&J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&¨\u0006\f"}, d2 = {"Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;", "", "onFailure", "", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "onSuccess", "file", "Ljava/io/File;", "hash", "", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface FileDownloadCallback {
        void onFailure(Exception e);

        void onSuccess(File file, byte[] hash);
    }

    /* compiled from: FileDownloader.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&¨\u0006\n"}, d2 = {"Lexpo/modules/updates/loader/FileDownloader$ParseDirectiveCallback;", "", "onFailure", "", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "onSuccess", "directiveUpdateResponsePart", "Lexpo/modules/updates/loader/UpdateResponsePart$DirectiveUpdateResponsePart;", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface ParseDirectiveCallback {
        void onFailure(Exception e);

        void onSuccess(UpdateResponsePart.DirectiveUpdateResponsePart directiveUpdateResponsePart);
    }

    /* compiled from: FileDownloader.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&¨\u0006\n"}, d2 = {"Lexpo/modules/updates/loader/FileDownloader$ParseManifestCallback;", "", "onFailure", "", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "onSuccess", "manifestUpdateResponsePart", "Lexpo/modules/updates/loader/UpdateResponsePart$ManifestUpdateResponsePart;", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface ParseManifestCallback {
        void onFailure(Exception e);

        void onSuccess(UpdateResponsePart.ManifestUpdateResponsePart manifestUpdateResponsePart);
    }

    /* compiled from: FileDownloader.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&¨\u0006\n"}, d2 = {"Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;", "", "onFailure", "", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "onSuccess", "updateResponse", "Lexpo/modules/updates/loader/UpdateResponse;", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface RemoteUpdateDownloadCallback {
        void onFailure(Exception e);

        void onSuccess(UpdateResponse updateResponse);
    }

    public FileDownloader(Context context, UpdatesConfiguration configuration, UpdatesLogger logger) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.context = context;
        this.configuration = configuration;
        this.logger = logger;
        this.client = new OkHttpClient.Builder().cache(INSTANCE.getCache(context)).connectTimeout(Math.max(configuration.getLaunchWaitMs(), 10000L), TimeUnit.MILLISECONDS).readTimeout(Math.max(configuration.getLaunchWaitMs(), 10000L), TimeUnit.MILLISECONDS).addInterceptor(BrotliInterceptor.INSTANCE).build();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FileDownloader(Context context, UpdatesConfiguration configuration, UpdatesLogger logger, OkHttpClient client) {
        this(context, configuration, logger);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(client, "client");
        this.client = client;
    }

    private final void downloadAssetAndVerifyHashAndWriteToPath(final Request request, final String expectedBase64URLEncodedSHA256Hash, final File destination, final FileDownloadCallback callback) {
        downloadData(request, new Callback() { // from class: expo.modules.updates.loader.FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException e) {
                UpdatesLogger updatesLogger;
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(e, "e");
                String str = "Failed to download asset from URL " + Request.this.url();
                updatesLogger = this.logger;
                updatesLogger.error(str, e, UpdatesErrorCode.AssetsFailedToLoad);
                callback.onFailure(new IOException(str, e));
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, okhttp3.Response response) throws IOException {
                UpdatesLogger updatesLogger;
                UpdatesLogger updatesLogger2;
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccessful()) {
                    ResponseBody body = response.body();
                    Intrinsics.checkNotNull(body);
                    IOException iOException = new IOException(body.string());
                    updatesLogger2 = this.logger;
                    updatesLogger2.error("Asset download request not successful", iOException, UpdatesErrorCode.AssetsFailedToLoad);
                    callback.onFailure(new IOException("Asset download request not successful", iOException));
                    return;
                }
                try {
                    ResponseBody body2 = response.body();
                    Intrinsics.checkNotNull(body2);
                    InputStream byteStream = body2.byteStream();
                    File file = destination;
                    String str = expectedBase64URLEncodedSHA256Hash;
                    try {
                        callback.onSuccess(file, UpdatesUtils.INSTANCE.verifySHA256AndWriteToFile(byteStream, file, str));
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(byteStream, null);
                    } finally {
                    }
                } catch (Exception e) {
                    String str2 = "Failed to write asset file from " + Request.this.url() + " to destination " + destination;
                    updatesLogger = this.logger;
                    updatesLogger.error(str2, e, UpdatesErrorCode.AssetsFailedToLoad);
                    callback.onFailure(new IOException(str2, e));
                }
            }
        });
    }

    public final void parseRemoteUpdateResponse$expo_updates_release(okhttp3.Response response, final RemoteUpdateDownloadCallback callback) {
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Headers headers = response.headers();
        final ResponseHeaderData responseHeaderData = new ResponseHeaderData(headers.get("expo-protocol-version"), headers.get("expo-server-defined-headers"), headers.get("expo-manifest-filters"));
        ResponseBody body = response.body();
        if (response.code() == 204 || body == null) {
            if (responseHeaderData.getProtocolVersion() != null && responseHeaderData.getProtocolVersion().intValue() > 0) {
                callback.onSuccess(new UpdateResponse(responseHeaderData, null, null));
                return;
            }
            IOException iOException = new IOException("Empty body");
            this.logger.error("Invalid update response", iOException, UpdatesErrorCode.UpdateFailedToLoad);
            callback.onFailure(new IOException("Invalid update response", iOException));
            return;
        }
        MediaType mediaType = body.get$contentType();
        if (Intrinsics.areEqual(mediaType != null ? mediaType.type() : null, "multipart")) {
            parseMultipartRemoteUpdateResponse(response, body, responseHeaderData, callback);
            return;
        }
        ResponsePartHeaderData responsePartHeaderData = new ResponsePartHeaderData(headers.get("expo-signature"));
        ResponseBody body2 = response.body();
        Intrinsics.checkNotNull(body2);
        parseManifest(new ResponsePartInfo(responseHeaderData, responsePartHeaderData, body2.string()), null, null, new ParseManifestCallback() { // from class: expo.modules.updates.loader.FileDownloader$parseRemoteUpdateResponse$1
            @Override // expo.modules.updates.loader.FileDownloader.ParseManifestCallback
            public void onFailure(Exception e) {
                Intrinsics.checkNotNullParameter(e, "e");
                FileDownloader.RemoteUpdateDownloadCallback.this.onFailure(e);
            }

            @Override // expo.modules.updates.loader.FileDownloader.ParseManifestCallback
            public void onSuccess(UpdateResponsePart.ManifestUpdateResponsePart manifestUpdateResponsePart) {
                Intrinsics.checkNotNullParameter(manifestUpdateResponsePart, "manifestUpdateResponsePart");
                FileDownloader.RemoteUpdateDownloadCallback.this.onSuccess(new UpdateResponse(responseHeaderData, manifestUpdateResponsePart, null));
            }
        });
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    private final void parseMultipartRemoteUpdateResponse(okhttp3.Response response, ResponseBody responseBody, final ResponseHeaderData responseHeaderData, final RemoteUpdateDownloadCallback callback) {
        Pair pair;
        String str;
        Pair pair2;
        String str2;
        String parseContentDispositionNameParameter;
        JSONObject jSONObject;
        ResponseHeaderData responseHeaderData2 = responseHeaderData;
        ResponsePartInfo responsePartInfo = null;
        if (response.peekBody(1L).bytes().length == 0) {
            pair = null;
            str = null;
            pair2 = null;
            str2 = null;
        } else {
            try {
                MultipartReader.Part multipartReader = new MultipartReader(responseBody);
                try {
                    MultipartReader multipartReader2 = multipartReader;
                    pair = null;
                    str = null;
                    String str3 = null;
                    pair2 = null;
                    while (true) {
                        MultipartReader.Part nextPart = multipartReader2.nextPart();
                        if (nextPart == null) {
                            Unit unit = Unit.INSTANCE;
                            CloseableKt.closeFinally(multipartReader, null);
                            str2 = str3;
                        } else {
                            multipartReader = nextPart;
                            try {
                                MultipartReader.Part part = multipartReader;
                                Headers headers = part.getHeaders();
                                BufferedSource body = part.getBody();
                                String str4 = headers.get("content-disposition");
                                if (str4 != null && (parseContentDispositionNameParameter = UpdatesUtils.INSTANCE.parseContentDispositionNameParameter(str4)) != null) {
                                    switch (parseContentDispositionNameParameter.hashCode()) {
                                        case -1809421292:
                                            if (!parseContentDispositionNameParameter.equals("extensions")) {
                                                break;
                                            } else {
                                                str = body.readUtf8();
                                                break;
                                            }
                                        case -1044926951:
                                            if (!parseContentDispositionNameParameter.equals("certificate_chain")) {
                                                break;
                                            } else {
                                                str3 = body.readUtf8();
                                                break;
                                            }
                                        case -962590641:
                                            if (!parseContentDispositionNameParameter.equals("directive")) {
                                                break;
                                            } else {
                                                pair2 = new Pair(body.readUtf8(), headers);
                                                break;
                                            }
                                        case 130625071:
                                            if (!parseContentDispositionNameParameter.equals("manifest")) {
                                                break;
                                            } else {
                                                pair = new Pair(body.readUtf8(), headers);
                                                break;
                                            }
                                    }
                                }
                                Unit unit2 = Unit.INSTANCE;
                                CloseableKt.closeFinally(multipartReader, null);
                                responseHeaderData2 = responseHeaderData;
                            } finally {
                            }
                        }
                    }
                } finally {
                }
            } catch (Exception e) {
                this.logger.error("Error while reading multipart remote update response", e, UpdatesErrorCode.UpdateFailedToLoad);
                callback.onFailure(new IOException("Error while reading multipart remote update response", e));
                return;
            }
        }
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (Exception e2) {
                this.logger.error("Failed to parse multipart remote update extensions part", e2, UpdatesErrorCode.UpdateFailedToLoad);
                callback.onFailure(new IOException("Failed to parse multipart remote update extensions part", e2));
                return;
            }
        } else {
            jSONObject = null;
        }
        if (this.configuration.getEnableExpoUpdatesProtocolV0CompatibilityMode() && pair == null) {
            IOException iOException = new IOException("Multipart response missing manifest part. Manifest is required in version 0 of the expo-updates protocol. This may be due to the response being for a different protocol version.");
            this.logger.error("Invalid update response", iOException, UpdatesErrorCode.UpdateFailedToLoad);
            callback.onFailure(new IOException("Invalid update response", iOException));
            return;
        }
        ResponsePartInfo responsePartInfo2 = pair != null ? new ResponsePartInfo(responseHeaderData2, new ResponsePartHeaderData(((Headers) pair.getSecond()).get("expo-signature")), (String) pair.getFirst()) : null;
        if (!this.configuration.getEnableExpoUpdatesProtocolV0CompatibilityMode() && pair2 != null) {
            responsePartInfo = new ResponsePartInfo(responseHeaderData2, new ResponsePartHeaderData(((Headers) pair2.getSecond()).get("expo-signature")), (String) pair2.getFirst());
        }
        final ResponsePartInfo responsePartInfo3 = responsePartInfo;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        final ResponsePartInfo responsePartInfo4 = responsePartInfo2;
        JSONObject jSONObject2 = jSONObject;
        final Function0 function0 = new Function0() { // from class: expo.modules.updates.loader.FileDownloader$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit parseMultipartRemoteUpdateResponse$lambda$5;
                parseMultipartRemoteUpdateResponse$lambda$5 = FileDownloader.parseMultipartRemoteUpdateResponse$lambda$5(Ref.BooleanRef.this, responsePartInfo4, objectRef, responsePartInfo3, objectRef2, callback, responseHeaderData);
                return parseMultipartRemoteUpdateResponse$lambda$5;
            }
        };
        if (responsePartInfo3 != null) {
            parseDirective(responsePartInfo3, str2, new ParseDirectiveCallback() { // from class: expo.modules.updates.loader.FileDownloader$parseMultipartRemoteUpdateResponse$2
                @Override // expo.modules.updates.loader.FileDownloader.ParseDirectiveCallback
                public void onFailure(Exception e3) {
                    Intrinsics.checkNotNullParameter(e3, "e");
                    if (Ref.BooleanRef.this.element) {
                        return;
                    }
                    Ref.BooleanRef.this.element = true;
                    callback.onFailure(e3);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // expo.modules.updates.loader.FileDownloader.ParseDirectiveCallback
                public void onSuccess(UpdateResponsePart.DirectiveUpdateResponsePart directiveUpdateResponsePart) {
                    Intrinsics.checkNotNullParameter(directiveUpdateResponsePart, "directiveUpdateResponsePart");
                    objectRef2.element = directiveUpdateResponsePart;
                    function0.invoke();
                }
            });
        }
        if (responsePartInfo2 != null) {
            parseManifest(responsePartInfo2, jSONObject2, str2, new ParseManifestCallback() { // from class: expo.modules.updates.loader.FileDownloader$parseMultipartRemoteUpdateResponse$3
                @Override // expo.modules.updates.loader.FileDownloader.ParseManifestCallback
                public void onFailure(Exception e3) {
                    Intrinsics.checkNotNullParameter(e3, "e");
                    if (Ref.BooleanRef.this.element) {
                        return;
                    }
                    Ref.BooleanRef.this.element = true;
                    callback.onFailure(e3);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // expo.modules.updates.loader.FileDownloader.ParseManifestCallback
                public void onSuccess(UpdateResponsePart.ManifestUpdateResponsePart manifestUpdateResponsePart) {
                    Intrinsics.checkNotNullParameter(manifestUpdateResponsePart, "manifestUpdateResponsePart");
                    objectRef.element = manifestUpdateResponsePart;
                    function0.invoke();
                }
            });
        }
        if (responsePartInfo2 == null && responsePartInfo3 == null) {
            function0.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit parseMultipartRemoteUpdateResponse$lambda$5(Ref.BooleanRef booleanRef, ResponsePartInfo responsePartInfo, Ref.ObjectRef objectRef, ResponsePartInfo responsePartInfo2, Ref.ObjectRef objectRef2, RemoteUpdateDownloadCallback remoteUpdateDownloadCallback, ResponseHeaderData responseHeaderData) {
        if (!booleanRef.element) {
            boolean z = responsePartInfo == null || objectRef.element != 0;
            boolean z2 = responsePartInfo2 == null || objectRef2.element != 0;
            if (z && z2) {
                remoteUpdateDownloadCallback.onSuccess(new UpdateResponse(responseHeaderData, (UpdateResponsePart.ManifestUpdateResponsePart) objectRef.element, (UpdateResponsePart.DirectiveUpdateResponsePart) objectRef2.element));
            }
        }
        return Unit.INSTANCE;
    }

    private final void parseDirective(ResponsePartInfo directiveResponsePartInfo, String certificateChainFromManifestResponse, ParseDirectiveCallback callback) {
        try {
            String body = directiveResponsePartInfo.getBody();
            try {
                CodeSigningConfiguration codeSigningConfiguration = this.configuration.getCodeSigningConfiguration();
                if (codeSigningConfiguration != null) {
                    String signature = directiveResponsePartInfo.getResponsePartHeaderData().getSignature();
                    byte[] bytes = body.getBytes(Charsets.UTF_8);
                    Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                    SignatureValidationResult validateSignature = codeSigningConfiguration.validateSignature(signature, bytes, certificateChainFromManifestResponse);
                    if (validateSignature.getValidationResult() == ValidationResult.INVALID) {
                        throw new IOException("Incorrect signature");
                    }
                    if (validateSignature.getValidationResult() != ValidationResult.SKIPPED) {
                        UpdateDirective fromJSONString = UpdateDirective.INSTANCE.fromJSONString(body);
                        ExpoProjectInformation expoProjectInformation = validateSignature.getExpoProjectInformation();
                        if (expoProjectInformation != null) {
                            String projectId = expoProjectInformation.getProjectId();
                            SigningInfo signingInfo = fromJSONString.getSigningInfo();
                            if (!Intrinsics.areEqual(projectId, signingInfo != null ? signingInfo.getEasProjectId() : null) || !Intrinsics.areEqual(expoProjectInformation.getScopeKey(), fromJSONString.getSigningInfo().getScopeKey())) {
                                throw new CertificateException("Code signing certificate project ID or scope key does not match project ID or scope key in response part");
                            }
                        }
                    }
                }
                callback.onSuccess(new UpdateResponsePart.DirectiveUpdateResponsePart(UpdateDirective.INSTANCE.fromJSONString(body)));
            } catch (Exception e) {
                this.logger.error("Code signing verification failed for directive", e, UpdatesErrorCode.UpdateCodeSigningError);
                callback.onFailure(new IOException("Code signing verification failed for directive", e));
            }
        } catch (Exception e2) {
            this.logger.error("Failed to construct directive from response", e2, UpdatesErrorCode.UpdateFailedToLoad);
            callback.onFailure(new IOException("Failed to construct directive from response", e2));
        }
    }

    private final void parseManifest(ResponsePartInfo manifestResponseInfo, JSONObject extensions, String certificateChainFromManifestResponse, ParseManifestCallback callback) {
        try {
            INSTANCE.checkCodeSigningAndCreateManifest(manifestResponseInfo.getBody(), new JSONObject(manifestResponseInfo.getBody()), manifestResponseInfo.getResponseHeaderData(), manifestResponseInfo.getResponsePartHeaderData(), extensions, certificateChainFromManifestResponse, this.configuration, this.logger, callback);
        } catch (Exception e) {
            this.logger.error("Failed to construct manifest from response", e, UpdatesErrorCode.UpdateFailedToLoad);
            callback.onFailure(new IOException("Failed to construct manifest from response", e));
        }
    }

    public final void downloadRemoteUpdate(JSONObject extraHeaders, final RemoteUpdateDownloadCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        try {
            downloadData(INSTANCE.createRequestForRemoteUpdate$expo_updates_release(extraHeaders, this.configuration, this.logger, this.context), new Callback() { // from class: expo.modules.updates.loader.FileDownloader$downloadRemoteUpdate$1
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException e) {
                    UpdatesLogger updatesLogger;
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(e, "e");
                    updatesLogger = FileDownloader.this.logger;
                    updatesLogger.error("Failed to download remote update", e, UpdatesErrorCode.UpdateFailedToLoad);
                    callback.onFailure(new IOException("Failed to download remote update", e));
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, okhttp3.Response response) throws IOException {
                    UpdatesLogger updatesLogger;
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (!response.isSuccessful()) {
                        ResponseBody body = response.body();
                        Intrinsics.checkNotNull(body);
                        IOException iOException = new IOException(body.string());
                        updatesLogger = FileDownloader.this.logger;
                        updatesLogger.error("Remote update request not successful", iOException, UpdatesErrorCode.UpdateFailedToLoad);
                        callback.onFailure(new IOException("Remote update request not successful", iOException));
                        return;
                    }
                    FileDownloader.this.parseRemoteUpdateResponse$expo_updates_release(response, callback);
                }
            });
        } catch (Exception e) {
            this.logger.error("Failed to download remote update", e, UpdatesErrorCode.UpdateFailedToLoad);
            callback.onFailure(new IOException("Failed to download remote update", e));
        }
    }

    public final void downloadAsset(final AssetEntity asset, File destinationDirectory, JSONObject extraHeaders, final AssetDownloadCallback callback) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(extraHeaders, "extraHeaders");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (asset.getUrl() == null) {
            String str = "Failed to download asset " + asset.getKey();
            Exception exc = new Exception("Asset missing URL");
            this.logger.error(str, exc, UpdatesErrorCode.AssetsFailedToLoad);
            callback.onFailure(new IOException(str, exc), asset);
            return;
        }
        final String createFilenameForAsset = UpdatesUtils.INSTANCE.createFilenameForAsset(asset);
        File file = new File(destinationDirectory, createFilenameForAsset);
        if (file.exists()) {
            asset.setRelativePath(createFilenameForAsset);
            callback.onSuccess(asset, false);
            return;
        }
        try {
            downloadAssetAndVerifyHashAndWriteToPath(INSTANCE.createRequestForAsset$expo_updates_release(asset, extraHeaders, this.configuration, this.context), asset.getExpectedHash(), file, new FileDownloadCallback() { // from class: expo.modules.updates.loader.FileDownloader$downloadAsset$1
                @Override // expo.modules.updates.loader.FileDownloader.FileDownloadCallback
                public void onFailure(Exception e) {
                    Intrinsics.checkNotNullParameter(e, "e");
                    FileDownloader.AssetDownloadCallback.this.onFailure(e, asset);
                }

                @Override // expo.modules.updates.loader.FileDownloader.FileDownloadCallback
                public void onSuccess(File file2, byte[] hash) {
                    Intrinsics.checkNotNullParameter(file2, "file");
                    Intrinsics.checkNotNullParameter(hash, "hash");
                    asset.setDownloadTime(new Date());
                    asset.setRelativePath(createFilenameForAsset);
                    asset.setHash(hash);
                    FileDownloader.AssetDownloadCallback.this.onSuccess(asset, true);
                }
            });
        } catch (Exception e) {
            String str2 = "Failed to download asset " + asset.getKey();
            this.logger.error(str2, e, UpdatesErrorCode.AssetsFailedToLoad);
            callback.onFailure(new IOException(str2, e), asset);
        }
    }

    private final void downloadData(Request request, Callback callback) {
        downloadData(request, callback, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void downloadData(final Request request, final Callback callback, final boolean isRetry) {
        FirebasePerfOkHttpClient.enqueue(this.client.newCall(request), new Callback() { // from class: expo.modules.updates.loader.FileDownloader$downloadData$1
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException e) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(e, "e");
                if (!isRetry) {
                    this.downloadData(request, callback, true);
                } else {
                    callback.onFailure(call, e);
                }
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, okhttp3.Response response) throws IOException {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                callback.onResponse(call, response);
            }
        });
    }

    /* compiled from: FileDownloader.kt */
    @Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JT\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\t2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0016\u0010\u0016\u001a\u00020\u0017*\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\tH\u0002J-\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u001fH\u0000¢\u0006\u0002\b J/\u0010!\u001a\u00020\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u001fH\u0000¢\u0006\u0002\b\"J\u0010\u0010#\u001a\u00020$2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0010\u0010%\u001a\u00020&2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J*\u0010'\u001a\u00020\t2\u0006\u0010(\u001a\u00020)2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010*\u001a\u0004\u0018\u00010+2\b\u0010,\u001a\u0004\u0018\u00010+J$\u0010-\u001a\u00020\t2\b\u0010*\u001a\u0004\u0018\u00010+2\b\u0010,\u001a\u0004\u0018\u00010+2\b\u0010.\u001a\u0004\u0018\u00010+¨\u0006/"}, d2 = {"Lexpo/modules/updates/loader/FileDownloader$Companion;", "", "<init>", "()V", "checkCodeSigningAndCreateManifest", "", "bodyString", "", "preManifest", "Lorg/json/JSONObject;", "responseHeaderData", "Lexpo/modules/updates/manifest/ResponseHeaderData;", "responsePartHeaderData", "Lexpo/modules/updates/manifest/ResponsePartHeaderData;", "extensions", "certificateChainFromManifestResponse", "configuration", "Lexpo/modules/updates/UpdatesConfiguration;", SentryEvent.JsonKeys.LOGGER, "Lexpo/modules/updates/logging/UpdatesLogger;", "callback", "Lexpo/modules/updates/loader/FileDownloader$ParseManifestCallback;", "addHeadersFromJSONObject", "Lokhttp3/Request$Builder;", "headers", "createRequestForAsset", "Lokhttp3/Request;", "assetEntity", "Lexpo/modules/updates/db/entity/AssetEntity;", "extraHeaders", "context", "Landroid/content/Context;", "createRequestForAsset$expo_updates_release", "createRequestForRemoteUpdate", "createRequestForRemoteUpdate$expo_updates_release", "getCache", "Lokhttp3/Cache;", "getCacheDirectory", "Ljava/io/File;", "getExtraHeadersForRemoteUpdateRequest", "database", "Lexpo/modules/updates/db/UpdatesDatabase;", "launchedUpdate", "Lexpo/modules/updates/db/entity/UpdateEntity;", "embeddedUpdate", "getExtraHeadersForRemoteAssetRequest", "requestedUpdate", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkCodeSigningAndCreateManifest(String bodyString, JSONObject preManifest, ResponseHeaderData responseHeaderData, ResponsePartHeaderData responsePartHeaderData, JSONObject extensions, String certificateChainFromManifestResponse, UpdatesConfiguration configuration, UpdatesLogger logger, ParseManifestCallback callback) {
            preManifest.put("isVerified", false);
            try {
                CodeSigningConfiguration codeSigningConfiguration = configuration.getCodeSigningConfiguration();
                if (codeSigningConfiguration != null) {
                    String signature = responsePartHeaderData.getSignature();
                    byte[] bytes = bodyString.getBytes(Charsets.UTF_8);
                    Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                    SignatureValidationResult validateSignature = codeSigningConfiguration.validateSignature(signature, bytes, certificateChainFromManifestResponse);
                    if (validateSignature.getValidationResult() == ValidationResult.INVALID) {
                        throw new IOException("Incorrect signature");
                    }
                    if (validateSignature.getValidationResult() != ValidationResult.SKIPPED) {
                        Manifest manifest = UpdateFactory.INSTANCE.getUpdate(preManifest, responseHeaderData, extensions, configuration).getManifest();
                        ExpoProjectInformation expoProjectInformation = validateSignature.getExpoProjectInformation();
                        if (expoProjectInformation != null && (!Intrinsics.areEqual(expoProjectInformation.getProjectId(), manifest.getEASProjectID()) || !Intrinsics.areEqual(expoProjectInformation.getScopeKey(), manifest.getScopeKey()))) {
                            throw new CertificateException("Code signing certificate project ID or scope key does not match project ID or scope key in response");
                        }
                        UpdatesLogger.info$default(logger, "Manifest code signing signature verified successfully", null, 2, null);
                        preManifest.put("isVerified", true);
                    }
                }
                Update update = UpdateFactory.INSTANCE.getUpdate(preManifest, responseHeaderData, extensions, configuration);
                SelectionPolicies selectionPolicies = SelectionPolicies.INSTANCE;
                UpdateEntity updateEntity = update.getUpdateEntity();
                Intrinsics.checkNotNull(updateEntity);
                if (!selectionPolicies.matchesFilters(updateEntity, responseHeaderData.getManifestFilters())) {
                    callback.onFailure(new Exception("Manifest filters do not match manifest content for downloaded manifest"));
                } else {
                    callback.onSuccess(new UpdateResponsePart.ManifestUpdateResponsePart(update));
                }
            } catch (Exception e) {
                logger.error("Code signing verification failed for manifest", e, UpdatesErrorCode.UpdateCodeSigningError);
                callback.onFailure(new IOException("Code signing verification failed for manifest", e));
            }
        }

        private final Request.Builder addHeadersFromJSONObject(Request.Builder builder, JSONObject jSONObject) {
            JSONObject jSONObject2;
            if (jSONObject == null) {
                return builder;
            }
            Iterator<String> keys = jSONObject.keys();
            Intrinsics.checkNotNullExpressionValue(keys, "keys(...)");
            for (String str : SequencesKt.asSequence(keys)) {
                Intrinsics.checkNotNull(str);
                KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Object.class);
                if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(String.class))) {
                    String string = jSONObject.getString(str);
                    if (string == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Any");
                    }
                    jSONObject2 = string;
                } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Double.TYPE))) {
                    jSONObject2 = Double.valueOf(jSONObject.getDouble(str));
                } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Integer.TYPE))) {
                    jSONObject2 = Integer.valueOf(jSONObject.getInt(str));
                } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Long.TYPE))) {
                    jSONObject2 = Long.valueOf(jSONObject.getLong(str));
                } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Boolean.TYPE))) {
                    jSONObject2 = Boolean.valueOf(jSONObject.getBoolean(str));
                } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(JSONArray.class))) {
                    JSONArray jSONArray = jSONObject.getJSONArray(str);
                    if (jSONArray == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Any");
                    }
                    jSONObject2 = jSONArray;
                } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(JSONObject.class))) {
                    JSONObject jSONObject3 = jSONObject.getJSONObject(str);
                    if (jSONObject3 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Any");
                    }
                    jSONObject2 = jSONObject3;
                } else {
                    jSONObject2 = jSONObject.get(str);
                    if (jSONObject2 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Any");
                    }
                }
                builder.header(str, jSONObject2.toString());
            }
            return builder;
        }

        public final Request createRequestForAsset$expo_updates_release(AssetEntity assetEntity, JSONObject extraHeaders, UpdatesConfiguration configuration, Context context) {
            Intrinsics.checkNotNullParameter(assetEntity, "assetEntity");
            Intrinsics.checkNotNullParameter(extraHeaders, "extraHeaders");
            Intrinsics.checkNotNullParameter(configuration, "configuration");
            Intrinsics.checkNotNullParameter(context, "context");
            Request.Builder builder = new Request.Builder();
            Uri url = assetEntity.getUrl();
            Intrinsics.checkNotNull(url);
            String uri = url.toString();
            Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
            Request.Builder header = addHeadersFromJSONObject(addHeadersFromJSONObject(builder.url(uri), assetEntity.getExtraRequestHeaders()), extraHeaders).header("Expo-Platform", "android").header("Expo-Protocol-Version", "1").header("Expo-API-Version", "1").header("Expo-Updates-Environment", "BARE");
            String uuid = new EASClientID(context).getUuid().toString();
            Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
            Request.Builder header2 = header.header("EAS-Client-ID", uuid);
            for (Map.Entry<String, String> entry : configuration.getRequestHeaders().entrySet()) {
                header2.header(entry.getKey(), entry.getValue());
            }
            return header2.build();
        }

        public final Request createRequestForRemoteUpdate$expo_updates_release(JSONObject extraHeaders, UpdatesConfiguration configuration, UpdatesLogger logger, Context context) {
            Intrinsics.checkNotNullParameter(configuration, "configuration");
            Intrinsics.checkNotNullParameter(logger, "logger");
            Intrinsics.checkNotNullParameter(context, "context");
            Request.Builder builder = new Request.Builder();
            String uri = configuration.getUpdateUrl().toString();
            Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
            Request.Builder header = addHeadersFromJSONObject(builder.url(uri), extraHeaders).header(HttpHeaders.ACCEPT, "multipart/mixed,application/expo+json,application/json").header("Expo-Platform", "android").header("Expo-Protocol-Version", "1").header("Expo-API-Version", "1").header("Expo-Updates-Environment", "BARE").header("Expo-JSON-Error", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            String uuid = new EASClientID(context).getUuid().toString();
            Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
            Request.Builder header2 = header.header("EAS-Client-ID", uuid);
            String runtimeVersionRaw = configuration.getRuntimeVersionRaw();
            String str = runtimeVersionRaw;
            if (str != null && str.length() != 0) {
                header2.header("Expo-Runtime-Version", runtimeVersionRaw);
            }
            String consumeErrorLog = NoDatabaseLauncher.INSTANCE.consumeErrorLog(context, logger);
            if (consumeErrorLog != null) {
                String substring = consumeErrorLog.substring(0, Math.min(1024, consumeErrorLog.length()));
                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                header2.header("Expo-Fatal-Error", substring);
            }
            for (Map.Entry<String, String> entry : configuration.getRequestHeaders().entrySet()) {
                header2.header(entry.getKey(), entry.getValue());
            }
            CodeSigningConfiguration codeSigningConfiguration = configuration.getCodeSigningConfiguration();
            if (codeSigningConfiguration != null) {
                header2.header("expo-expect-signature", codeSigningConfiguration.getAcceptSignatureHeader());
            }
            return header2.build();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Cache getCache(Context context) {
            return new Cache(getCacheDirectory(context), 52428800);
        }

        private final File getCacheDirectory(Context context) {
            return new File(context.getCacheDir(), "okhttp");
        }

        public final JSONObject getExtraHeadersForRemoteUpdateRequest(UpdatesDatabase database, UpdatesConfiguration configuration, UpdateEntity launchedUpdate, UpdateEntity embeddedUpdate) {
            Intrinsics.checkNotNullParameter(database, "database");
            Intrinsics.checkNotNullParameter(configuration, "configuration");
            JSONObject serverDefinedHeaders = ManifestMetadata.getServerDefinedHeaders(database, configuration);
            if (serverDefinedHeaders == null) {
                serverDefinedHeaders = new JSONObject();
            }
            Map<String, String> extraParams = ManifestMetadata.INSTANCE.getExtraParams(database, configuration);
            if (extraParams != null) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(extraParams.size()));
                Iterator<T> it = extraParams.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    linkedHashMap.put(entry.getKey(), StringItem.valueOf((String) entry.getValue()));
                }
                serverDefinedHeaders.put("Expo-Extra-Params", Dictionary.valueOf(linkedHashMap).serialize());
            }
            if (launchedUpdate != null) {
                String uuid = launchedUpdate.getId().toString();
                Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
                String lowerCase = uuid.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                serverDefinedHeaders.put("Expo-Current-Update-ID", lowerCase);
            }
            if (embeddedUpdate != null) {
                String uuid2 = embeddedUpdate.getId().toString();
                Intrinsics.checkNotNullExpressionValue(uuid2, "toString(...)");
                String lowerCase2 = uuid2.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                serverDefinedHeaders.put("Expo-Embedded-Update-ID", lowerCase2);
            }
            List<UUID> loadRecentUpdateIdsWithFailedLaunch = database.updateDao().loadRecentUpdateIdsWithFailedLaunch();
            if (!loadRecentUpdateIdsWithFailedLaunch.isEmpty()) {
                List<UUID> list = loadRecentUpdateIdsWithFailedLaunch;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(StringItem.valueOf(((UUID) it2.next()).toString()));
                }
                serverDefinedHeaders.put("Expo-Recent-Failed-Update-IDs", OuterList.valueOf(arrayList).serialize());
            }
            return serverDefinedHeaders;
        }

        public final JSONObject getExtraHeadersForRemoteAssetRequest(UpdateEntity launchedUpdate, UpdateEntity embeddedUpdate, UpdateEntity requestedUpdate) {
            JSONObject jSONObject = new JSONObject();
            if (launchedUpdate != null) {
                String uuid = launchedUpdate.getId().toString();
                Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
                String lowerCase = uuid.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                jSONObject.put("Expo-Current-Update-ID", lowerCase);
            }
            if (embeddedUpdate != null) {
                String uuid2 = embeddedUpdate.getId().toString();
                Intrinsics.checkNotNullExpressionValue(uuid2, "toString(...)");
                String lowerCase2 = uuid2.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                jSONObject.put("Expo-Embedded-Update-ID", lowerCase2);
            }
            if (requestedUpdate != null) {
                String uuid3 = requestedUpdate.getId().toString();
                Intrinsics.checkNotNullExpressionValue(uuid3, "toString(...)");
                String lowerCase3 = uuid3.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase3, "toLowerCase(...)");
                jSONObject.put("Expo-Requested-Update-ID", lowerCase3);
            }
            return jSONObject;
        }
    }
}

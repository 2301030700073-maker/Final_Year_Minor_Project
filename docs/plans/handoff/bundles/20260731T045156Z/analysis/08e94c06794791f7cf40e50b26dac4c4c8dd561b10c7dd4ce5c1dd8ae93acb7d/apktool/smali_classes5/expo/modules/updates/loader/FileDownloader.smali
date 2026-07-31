.class public final Lexpo/modules/updates/loader/FileDownloader;
.super Ljava/lang/Object;
.source "FileDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;,
        Lexpo/modules/updates/loader/FileDownloader$Companion;,
        Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;,
        Lexpo/modules/updates/loader/FileDownloader$ParseDirectiveCallback;,
        Lexpo/modules/updates/loader/FileDownloader$ParseManifestCallback;,
        Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileDownloader.kt\nexpo/modules/updates/loader/FileDownloader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,729:1\n1#2:730\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u0000 ;2\u00020\u0001:\u00066789:;B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tB)\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0008\u0010\u000cJ*\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u001d\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u001aH\u0000\u00a2\u0006\u0002\u0008\u001bJ(\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0015\u001a\u00020\u001aH\u0002J\"\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0015\u001a\u00020%H\u0002J,\u0010&\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020#2\u0008\u0010(\u001a\u0004\u0018\u00010)2\u0008\u0010$\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0015\u001a\u00020*H\u0002J\u0018\u0010+\u001a\u00020\u000e2\u0008\u0010,\u001a\u0004\u0018\u00010)2\u0006\u0010\u0015\u001a\u00020\u001aJ(\u0010-\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020/2\u0008\u00100\u001a\u0004\u0018\u00010\u00142\u0006\u0010,\u001a\u00020)2\u0006\u0010\u0015\u001a\u000201J\u0018\u00102\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u000203H\u0002J \u00102\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u0002032\u0006\u00104\u001a\u000205H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006<"
    }
    d2 = {
        "Lexpo/modules/updates/loader/FileDownloader;",
        "",
        "context",
        "Landroid/content/Context;",
        "configuration",
        "Lexpo/modules/updates/UpdatesConfiguration;",
        "logger",
        "Lexpo/modules/updates/logging/UpdatesLogger;",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;)V",
        "client",
        "Lokhttp3/OkHttpClient;",
        "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lokhttp3/OkHttpClient;)V",
        "downloadAssetAndVerifyHashAndWriteToPath",
        "",
        "request",
        "Lokhttp3/Request;",
        "expectedBase64URLEncodedSHA256Hash",
        "",
        "destination",
        "Ljava/io/File;",
        "callback",
        "Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;",
        "parseRemoteUpdateResponse",
        "response",
        "Lokhttp3/Response;",
        "Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;",
        "parseRemoteUpdateResponse$expo_updates_release",
        "parseMultipartRemoteUpdateResponse",
        "responseBody",
        "Lokhttp3/ResponseBody;",
        "responseHeaderData",
        "Lexpo/modules/updates/manifest/ResponseHeaderData;",
        "parseDirective",
        "directiveResponsePartInfo",
        "Lexpo/modules/updates/manifest/ResponsePartInfo;",
        "certificateChainFromManifestResponse",
        "Lexpo/modules/updates/loader/FileDownloader$ParseDirectiveCallback;",
        "parseManifest",
        "manifestResponseInfo",
        "extensions",
        "Lorg/json/JSONObject;",
        "Lexpo/modules/updates/loader/FileDownloader$ParseManifestCallback;",
        "downloadRemoteUpdate",
        "extraHeaders",
        "downloadAsset",
        "asset",
        "Lexpo/modules/updates/db/entity/AssetEntity;",
        "destinationDirectory",
        "Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;",
        "downloadData",
        "Lokhttp3/Callback;",
        "isRetry",
        "",
        "FileDownloadCallback",
        "RemoteUpdateDownloadCallback",
        "AssetDownloadCallback",
        "ParseDirectiveCallback",
        "ParseManifestCallback",
        "Companion",
        "expo-updates_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/updates/loader/FileDownloader$Companion;


# instance fields
.field private client:Lokhttp3/OkHttpClient;

.field private final configuration:Lexpo/modules/updates/UpdatesConfiguration;

.field private final context:Landroid/content/Context;

.field private final logger:Lexpo/modules/updates/logging/UpdatesLogger;


# direct methods
.method public static synthetic $r8$lambda$qiXwGeRoJcc7tWK-sfq91LxBc2g(Lkotlin/jvm/internal/Ref$BooleanRef;Lexpo/modules/updates/manifest/ResponsePartInfo;Lkotlin/jvm/internal/Ref$ObjectRef;Lexpo/modules/updates/manifest/ResponsePartInfo;Lkotlin/jvm/internal/Ref$ObjectRef;Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;Lexpo/modules/updates/manifest/ResponseHeaderData;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Lexpo/modules/updates/loader/FileDownloader;->parseMultipartRemoteUpdateResponse$lambda$5(Lkotlin/jvm/internal/Ref$BooleanRef;Lexpo/modules/updates/manifest/ResponsePartInfo;Lkotlin/jvm/internal/Ref$ObjectRef;Lexpo/modules/updates/manifest/ResponsePartInfo;Lkotlin/jvm/internal/Ref$ObjectRef;Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;Lexpo/modules/updates/manifest/ResponseHeaderData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/loader/FileDownloader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/loader/FileDownloader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/loader/FileDownloader;->Companion:Lexpo/modules/updates/loader/FileDownloader$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lexpo/modules/updates/loader/FileDownloader;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lexpo/modules/updates/loader/FileDownloader;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    .line 39
    iput-object p3, p0, Lexpo/modules/updates/loader/FileDownloader;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    .line 44
    new-instance p3, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p3}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 45
    sget-object v0, Lexpo/modules/updates/loader/FileDownloader;->Companion:Lexpo/modules/updates/loader/FileDownloader$Companion;

    invoke-static {v0, p1}, Lexpo/modules/updates/loader/FileDownloader$Companion;->access$getCache(Lexpo/modules/updates/loader/FileDownloader$Companion;Landroid/content/Context;)Lokhttp3/Cache;

    move-result-object p1

    invoke-virtual {p3, p1}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 46
    invoke-virtual {p2}, Lexpo/modules/updates/UpdatesConfiguration;->getLaunchWaitMs()I

    move-result p3

    int-to-long v0, p3

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 47
    invoke-virtual {p2}, Lexpo/modules/updates/UpdatesConfiguration;->getLaunchWaitMs()I

    move-result p2

    int-to-long p2, p2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 48
    sget-object p2, Lokhttp3/brotli/BrotliInterceptor;->INSTANCE:Lokhttp3/brotli/BrotliInterceptor;

    check-cast p2, Lokhttp3/Interceptor;

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/updates/loader/FileDownloader;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lokhttp3/OkHttpClient;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/updates/loader/FileDownloader;-><init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;)V

    .line 55
    iput-object p4, p0, Lexpo/modules/updates/loader/FileDownloader;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static final synthetic access$downloadData(Lexpo/modules/updates/loader/FileDownloader;Lokhttp3/Request;Lokhttp3/Callback;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/updates/loader/FileDownloader;->downloadData(Lokhttp3/Request;Lokhttp3/Callback;Z)V

    return-void
.end method

.method public static final synthetic access$getLogger$p(Lexpo/modules/updates/loader/FileDownloader;)Lexpo/modules/updates/logging/UpdatesLogger;
    .locals 0

    .line 36
    iget-object p0, p0, Lexpo/modules/updates/loader/FileDownloader;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    return-object p0
.end method

.method private final downloadAssetAndVerifyHashAndWriteToPath(Lokhttp3/Request;Ljava/lang/String;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;)V
    .locals 7

    .line 81
    new-instance v6, Lexpo/modules/updates/loader/FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lexpo/modules/updates/loader/FileDownloader$downloadAssetAndVerifyHashAndWriteToPath$1;-><init>(Lokhttp3/Request;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;Ljava/io/File;Ljava/lang/String;)V

    check-cast v6, Lokhttp3/Callback;

    .line 79
    invoke-direct {p0, p1, v6}, Lexpo/modules/updates/loader/FileDownloader;->downloadData(Lokhttp3/Request;Lokhttp3/Callback;)V

    return-void
.end method

.method private final downloadData(Lokhttp3/Request;Lokhttp3/Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 496
    invoke-direct {p0, p1, p2, v0}, Lexpo/modules/updates/loader/FileDownloader;->downloadData(Lokhttp3/Request;Lokhttp3/Callback;Z)V

    return-void
.end method

.method private final downloadData(Lokhttp3/Request;Lokhttp3/Callback;Z)V
    .locals 2

    .line 500
    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lexpo/modules/updates/loader/FileDownloader$downloadData$1;

    invoke-direct {v1, p3, p2, p0, p1}, Lexpo/modules/updates/loader/FileDownloader$downloadData$1;-><init>(ZLokhttp3/Callback;Lexpo/modules/updates/loader/FileDownloader;Lokhttp3/Request;)V

    check-cast v1, Lokhttp3/Callback;

    invoke-static {v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method private final parseDirective(Lexpo/modules/updates/manifest/ResponsePartInfo;Ljava/lang/String;Lexpo/modules/updates/loader/FileDownloader$ParseDirectiveCallback;)V
    .locals 4

    .line 340
    :try_start_0
    invoke-virtual {p1}, Lexpo/modules/updates/manifest/ResponsePartInfo;->getBody()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 349
    :try_start_1
    iget-object v1, p0, Lexpo/modules/updates/loader/FileDownloader;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    invoke-virtual {v1}, Lexpo/modules/updates/UpdatesConfiguration;->getCodeSigningConfiguration()Lexpo/modules/updates/codesigning/CodeSigningConfiguration;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 351
    invoke-virtual {p1}, Lexpo/modules/updates/manifest/ResponsePartInfo;->getResponsePartHeaderData()Lexpo/modules/updates/manifest/ResponsePartHeaderData;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/updates/manifest/ResponsePartHeaderData;->getSignature()Ljava/lang/String;

    move-result-object p1

    .line 352
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string v3, "getBytes(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v1, p1, v2, p2}, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;->validateSignature(Ljava/lang/String;[BLjava/lang/String;)Lexpo/modules/updates/codesigning/SignatureValidationResult;

    move-result-object p1

    .line 355
    invoke-virtual {p1}, Lexpo/modules/updates/codesigning/SignatureValidationResult;->getValidationResult()Lexpo/modules/updates/codesigning/ValidationResult;

    move-result-object p2

    sget-object v1, Lexpo/modules/updates/codesigning/ValidationResult;->INVALID:Lexpo/modules/updates/codesigning/ValidationResult;

    if-eq p2, v1, :cond_2

    .line 359
    invoke-virtual {p1}, Lexpo/modules/updates/codesigning/SignatureValidationResult;->getValidationResult()Lexpo/modules/updates/codesigning/ValidationResult;

    move-result-object p2

    sget-object v1, Lexpo/modules/updates/codesigning/ValidationResult;->SKIPPED:Lexpo/modules/updates/codesigning/ValidationResult;

    if-eq p2, v1, :cond_3

    .line 360
    sget-object p2, Lexpo/modules/updates/loader/UpdateDirective;->Companion:Lexpo/modules/updates/loader/UpdateDirective$Companion;

    invoke-virtual {p2, v0}, Lexpo/modules/updates/loader/UpdateDirective$Companion;->fromJSONString(Ljava/lang/String;)Lexpo/modules/updates/loader/UpdateDirective;

    move-result-object p2

    .line 361
    invoke-virtual {p1}, Lexpo/modules/updates/codesigning/SignatureValidationResult;->getExpoProjectInformation()Lexpo/modules/updates/codesigning/ExpoProjectInformation;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 362
    invoke-virtual {p1}, Lexpo/modules/updates/codesigning/ExpoProjectInformation;->getProjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lexpo/modules/updates/loader/UpdateDirective;->getSigningInfo()Lexpo/modules/updates/loader/SigningInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lexpo/modules/updates/loader/SigningInfo;->getEasProjectId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    invoke-virtual {p1}, Lexpo/modules/updates/codesigning/ExpoProjectInformation;->getScopeKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lexpo/modules/updates/loader/UpdateDirective;->getSigningInfo()Lexpo/modules/updates/loader/SigningInfo;

    move-result-object p2

    invoke-virtual {p2}, Lexpo/modules/updates/loader/SigningInfo;->getScopeKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 365
    :cond_1
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Code signing certificate project ID or scope key does not match project ID or scope key in response part"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 356
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Incorrect signature"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 377
    :cond_3
    :goto_1
    :try_start_2
    new-instance p1, Lexpo/modules/updates/loader/UpdateResponsePart$DirectiveUpdateResponsePart;

    sget-object p2, Lexpo/modules/updates/loader/UpdateDirective;->Companion:Lexpo/modules/updates/loader/UpdateDirective$Companion;

    invoke-virtual {p2, v0}, Lexpo/modules/updates/loader/UpdateDirective$Companion;->fromJSONString(Ljava/lang/String;)Lexpo/modules/updates/loader/UpdateDirective;

    move-result-object p2

    invoke-direct {p1, p2}, Lexpo/modules/updates/loader/UpdateResponsePart$DirectiveUpdateResponsePart;-><init>(Lexpo/modules/updates/loader/UpdateDirective;)V

    invoke-interface {p3, p1}, Lexpo/modules/updates/loader/FileDownloader$ParseDirectiveCallback;->onSuccess(Lexpo/modules/updates/loader/UpdateResponsePart$DirectiveUpdateResponsePart;)V

    goto :goto_2

    :catch_0
    move-exception p1

    .line 371
    const-string p2, "Code signing verification failed for directive"

    .line 372
    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    sget-object v1, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateCodeSigningError:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v0, p2, p1, v1}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 373
    new-instance v0, Ljava/io/IOException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Exception;

    invoke-interface {p3, v0}, Lexpo/modules/updates/loader/FileDownloader$ParseDirectiveCallback;->onFailure(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 380
    iget-object p2, p0, Lexpo/modules/updates/loader/FileDownloader;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    sget-object v0, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v1, "Failed to construct directive from response"

    invoke-virtual {p2, v1, p1, v0}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 381
    new-instance p2, Ljava/io/IOException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p2, Ljava/lang/Exception;

    invoke-interface {p3, p2}, Lexpo/modules/updates/loader/FileDownloader$ParseDirectiveCallback;->onFailure(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method private final parseManifest(Lexpo/modules/updates/manifest/ResponsePartInfo;Lorg/json/JSONObject;Ljava/lang/String;Lexpo/modules/updates/loader/FileDownloader$ParseManifestCallback;)V
    .locals 10

    .line 397
    :try_start_0
    sget-object v0, Lexpo/modules/updates/loader/FileDownloader;->Companion:Lexpo/modules/updates/loader/FileDownloader$Companion;

    .line 398
    invoke-virtual {p1}, Lexpo/modules/updates/manifest/ResponsePartInfo;->getBody()Ljava/lang/String;

    move-result-object v1

    .line 399
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lexpo/modules/updates/manifest/ResponsePartInfo;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1}, Lexpo/modules/updates/manifest/ResponsePartInfo;->getResponseHeaderData()Lexpo/modules/updates/manifest/ResponseHeaderData;

    move-result-object v3

    .line 401
    invoke-virtual {p1}, Lexpo/modules/updates/manifest/ResponsePartInfo;->getResponsePartHeaderData()Lexpo/modules/updates/manifest/ResponsePartHeaderData;

    move-result-object v4

    .line 404
    iget-object v7, p0, Lexpo/modules/updates/loader/FileDownloader;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    .line 405
    iget-object v8, p0, Lexpo/modules/updates/loader/FileDownloader;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    move-object v5, p2

    move-object v6, p3

    move-object v9, p4

    .line 397
    invoke-static/range {v0 .. v9}, Lexpo/modules/updates/loader/FileDownloader$Companion;->access$checkCodeSigningAndCreateManifest(Lexpo/modules/updates/loader/FileDownloader$Companion;Ljava/lang/String;Lorg/json/JSONObject;Lexpo/modules/updates/manifest/ResponseHeaderData;Lexpo/modules/updates/manifest/ResponsePartHeaderData;Lorg/json/JSONObject;Ljava/lang/String;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/loader/FileDownloader$ParseManifestCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 410
    iget-object p2, p0, Lexpo/modules/updates/loader/FileDownloader;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    sget-object p3, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v0, "Failed to construct manifest from response"

    invoke-virtual {p2, v0, p1, p3}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 411
    new-instance p2, Ljava/io/IOException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p2, Ljava/lang/Exception;

    invoke-interface {p4, p2}, Lexpo/modules/updates/loader/FileDownloader$ParseManifestCallback;->onFailure(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private final parseMultipartRemoteUpdateResponse(Lokhttp3/Response;Lokhttp3/ResponseBody;Lexpo/modules/updates/manifest/ResponseHeaderData;Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v10, p4

    const-wide/16 v2, 0x1

    move-object/from16 v4, p1

    .line 183
    invoke-virtual {v4, v2, v3}, Lokhttp3/Response;->peekBody(J)Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v5, v3

    move-object v6, v5

    move-object v8, v6

    move-object v11, v8

    goto :goto_1

    .line 186
    :cond_0
    :try_start_0
    new-instance v2, Lokhttp3/MultipartReader;

    move-object/from16 v4, p2

    invoke-direct {v2, v4}, Lokhttp3/MultipartReader;-><init>(Lokhttp3/ResponseBody;)V

    check-cast v2, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v4, v2

    check-cast v4, Lokhttp3/MultipartReader;

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    .line 188
    :goto_0
    invoke-virtual {v4}, Lokhttp3/MultipartReader;->nextPart()Lokhttp3/MultipartReader$Part;

    move-result-object v9

    if-nez v9, :cond_9

    .line 207
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 186
    :try_start_2
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v11, v7

    :goto_1
    if-eqz v6, :cond_1

    .line 218
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v12, v2

    goto :goto_2

    :catch_0
    move-exception v0

    .line 221
    iget-object v2, v1, Lexpo/modules/updates/loader/FileDownloader;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    sget-object v3, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v4, "Failed to parse multipart remote update extensions part"

    invoke-virtual {v2, v4, v0, v3}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 222
    new-instance v2, Ljava/io/IOException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v2, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v2, Ljava/lang/Exception;

    invoke-interface {v10, v2}, Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_1
    move-object v12, v3

    .line 227
    :goto_2
    iget-object v2, v1, Lexpo/modules/updates/loader/FileDownloader;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    invoke-virtual {v2}, Lexpo/modules/updates/UpdatesConfiguration;->getEnableExpoUpdatesProtocolV0CompatibilityMode()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v5, :cond_2

    .line 229
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Multipart response missing manifest part. Manifest is required in version 0 of the expo-updates protocol. This may be due to the response being for a different protocol version."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 230
    iget-object v2, v1, Lexpo/modules/updates/loader/FileDownloader;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    move-object v3, v0

    check-cast v3, Ljava/lang/Exception;

    sget-object v4, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v5, "Invalid update response"

    invoke-virtual {v2, v5, v3, v4}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 231
    new-instance v2, Ljava/io/IOException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v2, v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v2, Ljava/lang/Exception;

    invoke-interface {v10, v2}, Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;->onFailure(Ljava/lang/Exception;)V

    return-void

    .line 235
    :cond_2
    const-string v2, "expo-signature"

    if-eqz v5, :cond_3

    .line 236
    new-instance v4, Lexpo/modules/updates/manifest/ResponsePartInfo;

    .line 238
    new-instance v6, Lexpo/modules/updates/manifest/ResponsePartHeaderData;

    .line 239
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokhttp3/Headers;

    invoke-virtual {v7, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 238
    invoke-direct {v6, v7}, Lexpo/modules/updates/manifest/ResponsePartHeaderData;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 236
    invoke-direct {v4, v0, v6, v5}, Lexpo/modules/updates/manifest/ResponsePartInfo;-><init>(Lexpo/modules/updates/manifest/ResponseHeaderData;Lexpo/modules/updates/manifest/ResponsePartHeaderData;Ljava/lang/String;)V

    move-object v13, v4

    goto :goto_3

    :cond_3
    move-object v13, v3

    .line 246
    :goto_3
    iget-object v4, v1, Lexpo/modules/updates/loader/FileDownloader;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    invoke-virtual {v4}, Lexpo/modules/updates/UpdatesConfiguration;->getEnableExpoUpdatesProtocolV0CompatibilityMode()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    :goto_4
    move-object v14, v3

    goto :goto_5

    :cond_5
    if-eqz v8, :cond_4

    .line 250
    new-instance v3, Lexpo/modules/updates/manifest/ResponsePartInfo;

    .line 252
    new-instance v4, Lexpo/modules/updates/manifest/ResponsePartHeaderData;

    .line 253
    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/Headers;

    invoke-virtual {v5, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-direct {v4, v2}, Lexpo/modules/updates/manifest/ResponsePartHeaderData;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v8}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 250
    invoke-direct {v3, v0, v4, v2}, Lexpo/modules/updates/manifest/ResponsePartInfo;-><init>(Lexpo/modules/updates/manifest/ResponseHeaderData;Lexpo/modules/updates/manifest/ResponsePartHeaderData;Ljava/lang/String;)V

    goto :goto_4

    .line 260
    :goto_5
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 261
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 262
    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 266
    new-instance v7, Lexpo/modules/updates/loader/FileDownloader$$ExternalSyntheticLambda0;

    move-object v2, v7

    move-object v3, v8

    move-object v4, v13

    move-object v5, v15

    move-object v6, v14

    move-object v0, v7

    move-object v7, v9

    move-object/from16 p1, v12

    move-object v12, v8

    move-object/from16 v8, p4

    move-object/from16 p2, v15

    move-object v15, v9

    move-object/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lexpo/modules/updates/loader/FileDownloader$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lexpo/modules/updates/manifest/ResponsePartInfo;Lkotlin/jvm/internal/Ref$ObjectRef;Lexpo/modules/updates/manifest/ResponsePartInfo;Lkotlin/jvm/internal/Ref$ObjectRef;Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;Lexpo/modules/updates/manifest/ResponseHeaderData;)V

    if-eqz v14, :cond_6

    .line 287
    new-instance v2, Lexpo/modules/updates/loader/FileDownloader$parseMultipartRemoteUpdateResponse$2;

    invoke-direct {v2, v12, v10, v15, v0}, Lexpo/modules/updates/loader/FileDownloader$parseMultipartRemoteUpdateResponse$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lexpo/modules/updates/loader/FileDownloader$ParseDirectiveCallback;

    .line 284
    invoke-direct {v1, v14, v11, v2}, Lexpo/modules/updates/loader/FileDownloader;->parseDirective(Lexpo/modules/updates/manifest/ResponsePartInfo;Ljava/lang/String;Lexpo/modules/updates/loader/FileDownloader$ParseDirectiveCallback;)V

    :cond_6
    if-eqz v13, :cond_7

    .line 308
    new-instance v2, Lexpo/modules/updates/loader/FileDownloader$parseMultipartRemoteUpdateResponse$3;

    move-object/from16 v3, p2

    invoke-direct {v2, v12, v10, v3, v0}, Lexpo/modules/updates/loader/FileDownloader$parseMultipartRemoteUpdateResponse$3;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lexpo/modules/updates/loader/FileDownloader$ParseManifestCallback;

    move-object/from16 v3, p1

    .line 304
    invoke-direct {v1, v13, v3, v11, v2}, Lexpo/modules/updates/loader/FileDownloader;->parseManifest(Lexpo/modules/updates/manifest/ResponsePartInfo;Lorg/json/JSONObject;Ljava/lang/String;Lexpo/modules/updates/loader/FileDownloader$ParseManifestCallback;)V

    :cond_7
    if-nez v13, :cond_8

    if-nez v14, :cond_8

    .line 325
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_8
    return-void

    .line 189
    :cond_9
    :try_start_4
    check-cast v9, Ljava/io/Closeable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    move-object v0, v9

    check-cast v0, Lokhttp3/MultipartReader$Part;

    .line 190
    invoke-virtual {v0}, Lokhttp3/MultipartReader$Part;->headers()Lokhttp3/Headers;

    move-result-object v11

    .line 191
    invoke-virtual {v0}, Lokhttp3/MultipartReader$Part;->body()Lokio/BufferedSource;

    move-result-object v0

    .line 192
    const-string v12, "content-disposition"

    invoke-virtual {v11, v12}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_e

    .line 195
    sget-object v13, Lexpo/modules/updates/UpdatesUtils;->INSTANCE:Lexpo/modules/updates/UpdatesUtils;

    invoke-virtual {v13, v12}, Lexpo/modules/updates/UpdatesUtils;->parseContentDispositionNameParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_e

    .line 197
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    goto :goto_6

    :sswitch_0
    const-string v13, "manifest"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    goto :goto_6

    .line 198
    :cond_a
    new-instance v5, Lkotlin/Pair;

    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 197
    :sswitch_1
    const-string v13, "directive"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    goto :goto_6

    .line 201
    :cond_b
    new-instance v8, Lkotlin/Pair;

    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 197
    :sswitch_2
    const-string v11, "certificate_chain"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    goto :goto_6

    .line 200
    :cond_c
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 197
    :sswitch_3
    const-string v11, "extensions"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    goto :goto_6

    .line 199
    :cond_d
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8()Ljava/lang/String;

    move-result-object v6

    .line 205
    :cond_e
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 189
    :try_start_6
    invoke-static {v9, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v0, p3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_8
    invoke-static {v9, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 186
    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    move-object v4, v0

    :try_start_a
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception v0

    .line 211
    iget-object v2, v1, Lexpo/modules/updates/loader/FileDownloader;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    sget-object v3, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v4, "Error while reading multipart remote update response"

    invoke-virtual {v2, v4, v0, v3}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 212
    new-instance v2, Ljava/io/IOException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v2, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v2, Ljava/lang/Exception;

    invoke-interface {v10, v2}, Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;->onFailure(Ljava/lang/Exception;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6bd993ec -> :sswitch_3
        -0x3e4851e7 -> :sswitch_2
        -0x395ff7b1 -> :sswitch_1
        0x7c92e2f -> :sswitch_0
    .end sparse-switch
.end method

.method private static final parseMultipartRemoteUpdateResponse$lambda$5(Lkotlin/jvm/internal/Ref$BooleanRef;Lexpo/modules/updates/manifest/ResponsePartInfo;Lkotlin/jvm/internal/Ref$ObjectRef;Lexpo/modules/updates/manifest/ResponsePartInfo;Lkotlin/jvm/internal/Ref$ObjectRef;Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;Lexpo/modules/updates/manifest/ResponseHeaderData;)Lkotlin/Unit;
    .locals 1

    .line 267
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p0, :cond_4

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 268
    iget-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    if-eqz p3, :cond_2

    .line 269
    iget-object p3, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p3, :cond_3

    :cond_2
    move p0, v0

    :cond_3
    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    .line 273
    new-instance p0, Lexpo/modules/updates/loader/UpdateResponse;

    .line 275
    iget-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lexpo/modules/updates/loader/UpdateResponsePart$ManifestUpdateResponsePart;

    .line 276
    iget-object p2, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lexpo/modules/updates/loader/UpdateResponsePart$DirectiveUpdateResponsePart;

    .line 273
    invoke-direct {p0, p6, p1, p2}, Lexpo/modules/updates/loader/UpdateResponse;-><init>(Lexpo/modules/updates/manifest/ResponseHeaderData;Lexpo/modules/updates/loader/UpdateResponsePart$ManifestUpdateResponsePart;Lexpo/modules/updates/loader/UpdateResponsePart$DirectiveUpdateResponsePart;)V

    .line 272
    invoke-interface {p5, p0}, Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;->onSuccess(Lexpo/modules/updates/loader/UpdateResponse;)V

    .line 281
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final downloadAsset(Lexpo/modules/updates/db/entity/AssetEntity;Ljava/io/File;Lorg/json/JSONObject;Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;)V
    .locals 5

    const-string v0, "asset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraHeaders"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getUrl()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Failed to download asset "

    if-nez v0, :cond_0

    .line 457
    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 458
    new-instance p3, Ljava/lang/Exception;

    const-string v0, "Asset missing URL"

    invoke-direct {p3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    sget-object v1, Lexpo/modules/updates/logging/UpdatesErrorCode;->AssetsFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v0, p2, p3, v1}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 460
    new-instance v0, Ljava/io/IOException;

    check-cast p3, Ljava/lang/Throwable;

    invoke-direct {v0, p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Exception;

    invoke-interface {p4, v0, p1}, Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;->onFailure(Ljava/lang/Exception;Lexpo/modules/updates/db/entity/AssetEntity;)V

    return-void

    .line 463
    :cond_0
    sget-object v0, Lexpo/modules/updates/UpdatesUtils;->INSTANCE:Lexpo/modules/updates/UpdatesUtils;

    invoke-virtual {v0, p1}, Lexpo/modules/updates/UpdatesUtils;->createFilenameForAsset(Lexpo/modules/updates/db/entity/AssetEntity;)Ljava/lang/String;

    move-result-object v0

    .line 464
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 465
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 466
    invoke-virtual {p1, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setRelativePath(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 467
    invoke-interface {p4, p1, p2}, Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;->onSuccess(Lexpo/modules/updates/db/entity/AssetEntity;Z)V

    goto :goto_0

    .line 471
    :cond_1
    :try_start_0
    sget-object p2, Lexpo/modules/updates/loader/FileDownloader;->Companion:Lexpo/modules/updates/loader/FileDownloader$Companion;

    iget-object v3, p0, Lexpo/modules/updates/loader/FileDownloader;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    iget-object v4, p0, Lexpo/modules/updates/loader/FileDownloader;->context:Landroid/content/Context;

    invoke-virtual {p2, p1, p3, v3, v4}, Lexpo/modules/updates/loader/FileDownloader$Companion;->createRequestForAsset$expo_updates_release(Lexpo/modules/updates/db/entity/AssetEntity;Lorg/json/JSONObject;Lexpo/modules/updates/UpdatesConfiguration;Landroid/content/Context;)Lokhttp3/Request;

    move-result-object p2

    .line 472
    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getExpectedHash()Ljava/lang/String;

    move-result-object p3

    .line 474
    new-instance v3, Lexpo/modules/updates/loader/FileDownloader$downloadAsset$1;

    invoke-direct {v3, p4, p1, v0}, Lexpo/modules/updates/loader/FileDownloader$downloadAsset$1;-><init>(Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;Lexpo/modules/updates/db/entity/AssetEntity;Ljava/lang/String;)V

    check-cast v3, Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;

    .line 470
    invoke-direct {p0, p2, p3, v2, v3}, Lexpo/modules/updates/loader/FileDownloader;->downloadAssetAndVerifyHashAndWriteToPath(Lokhttp3/Request;Ljava/lang/String;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader$FileDownloadCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 488
    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 489
    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    sget-object v1, Lexpo/modules/updates/logging/UpdatesErrorCode;->AssetsFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v0, p3, p2, v1}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 490
    new-instance v0, Ljava/io/IOException;

    check-cast p2, Ljava/lang/Throwable;

    invoke-direct {v0, p3, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Exception;

    invoke-interface {p4, v0, p1}, Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;->onFailure(Ljava/lang/Exception;Lexpo/modules/updates/db/entity/AssetEntity;)V

    :goto_0
    return-void
.end method

.method public final downloadRemoteUpdate(Lorg/json/JSONObject;Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;)V
    .locals 4

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    :try_start_0
    sget-object v0, Lexpo/modules/updates/loader/FileDownloader;->Companion:Lexpo/modules/updates/loader/FileDownloader$Companion;

    iget-object v1, p0, Lexpo/modules/updates/loader/FileDownloader;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    iget-object v2, p0, Lexpo/modules/updates/loader/FileDownloader;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    iget-object v3, p0, Lexpo/modules/updates/loader/FileDownloader;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v1, v2, v3}, Lexpo/modules/updates/loader/FileDownloader$Companion;->createRequestForRemoteUpdate$expo_updates_release(Lorg/json/JSONObject;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Landroid/content/Context;)Lokhttp3/Request;

    move-result-object p1

    .line 422
    new-instance v0, Lexpo/modules/updates/loader/FileDownloader$downloadRemoteUpdate$1;

    invoke-direct {v0, p0, p2}, Lexpo/modules/updates/loader/FileDownloader$downloadRemoteUpdate$1;-><init>(Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;)V

    check-cast v0, Lokhttp3/Callback;

    .line 420
    invoke-direct {p0, p1, v0}, Lexpo/modules/updates/loader/FileDownloader;->downloadData(Lokhttp3/Request;Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 445
    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    sget-object v1, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v2, "Failed to download remote update"

    invoke-virtual {v0, v2, p1, v1}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 446
    new-instance v0, Ljava/io/IOException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Exception;

    invoke-interface {p2, v0}, Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;->onFailure(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public final parseRemoteUpdateResponse$expo_updates_release(Lokhttp3/Response;Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;)V
    .locals 6

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    .line 115
    const-string v1, "expo-protocol-version"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    const-string v2, "expo-manifest-filters"

    invoke-virtual {v0, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    const-string v3, "expo-server-defined-headers"

    invoke-virtual {v0, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    new-instance v4, Lexpo/modules/updates/manifest/ResponseHeaderData;

    invoke-direct {v4, v1, v3, v2}, Lexpo/modules/updates/manifest/ResponseHeaderData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    .line 121
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0xcc

    const/4 v5, 0x0

    if-eq v2, v3, :cond_3

    if-nez v1, :cond_0

    goto :goto_2

    .line 142
    :cond_0
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v5

    :goto_0
    const-string v3, "multipart"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    invoke-direct {p0, p1, v1, v4, p2}, Lexpo/modules/updates/loader/FileDownloader;->parseMultipartRemoteUpdateResponse(Lokhttp3/Response;Lokhttp3/ResponseBody;Lexpo/modules/updates/manifest/ResponseHeaderData;Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;)V

    goto :goto_1

    .line 146
    :cond_2
    new-instance v1, Lexpo/modules/updates/manifest/ResponsePartInfo;

    .line 148
    new-instance v2, Lexpo/modules/updates/manifest/ResponsePartHeaderData;

    .line 149
    const-string v3, "expo-signature"

    invoke-virtual {v0, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-direct {v2, v0}, Lexpo/modules/updates/manifest/ResponsePartHeaderData;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-direct {v1, v4, v2, p1}, Lexpo/modules/updates/manifest/ResponsePartInfo;-><init>(Lexpo/modules/updates/manifest/ResponseHeaderData;Lexpo/modules/updates/manifest/ResponsePartHeaderData;Ljava/lang/String;)V

    .line 158
    new-instance p1, Lexpo/modules/updates/loader/FileDownloader$parseRemoteUpdateResponse$1;

    invoke-direct {p1, p2, v4}, Lexpo/modules/updates/loader/FileDownloader$parseRemoteUpdateResponse$1;-><init>(Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;Lexpo/modules/updates/manifest/ResponseHeaderData;)V

    check-cast p1, Lexpo/modules/updates/loader/FileDownloader$ParseManifestCallback;

    .line 154
    invoke-direct {p0, v1, v5, v5, p1}, Lexpo/modules/updates/loader/FileDownloader;->parseManifest(Lexpo/modules/updates/manifest/ResponsePartInfo;Lorg/json/JSONObject;Ljava/lang/String;Lexpo/modules/updates/loader/FileDownloader$ParseManifestCallback;)V

    :goto_1
    return-void

    .line 124
    :cond_3
    :goto_2
    invoke-virtual {v4}, Lexpo/modules/updates/manifest/ResponseHeaderData;->getProtocolVersion()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {v4}, Lexpo/modules/updates/manifest/ResponseHeaderData;->getProtocolVersion()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_4

    .line 126
    new-instance p1, Lexpo/modules/updates/loader/UpdateResponse;

    invoke-direct {p1, v4, v5, v5}, Lexpo/modules/updates/loader/UpdateResponse;-><init>(Lexpo/modules/updates/manifest/ResponseHeaderData;Lexpo/modules/updates/loader/UpdateResponsePart$ManifestUpdateResponsePart;Lexpo/modules/updates/loader/UpdateResponsePart$DirectiveUpdateResponsePart;)V

    .line 125
    invoke-interface {p2, p1}, Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;->onSuccess(Lexpo/modules/updates/loader/UpdateResponse;)V

    return-void

    .line 136
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Empty body"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lexpo/modules/updates/loader/FileDownloader;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    move-object v1, p1

    check-cast v1, Ljava/lang/Exception;

    sget-object v2, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v3, "Invalid update response"

    invoke-virtual {v0, v3, v1, v2}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 138
    new-instance v0, Ljava/io/IOException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, v3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Exception;

    invoke-interface {p2, v0}, Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

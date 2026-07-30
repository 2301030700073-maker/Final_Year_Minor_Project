.class public final Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "IncognitoWebViewChromeClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$AnchorLinkHandler;,
        Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIncognitoWebViewChromeClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IncognitoWebViewChromeClient.kt\ncom/propertyguru/webkit/IncognitoWebViewChromeClient\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,400:1\n4154#2:401\n4254#2,2:402\n1557#3:404\n1628#3,3:405\n295#3,2:412\n295#3,2:414\n295#3,2:416\n37#4,2:408\n37#4,2:410\n37#4,2:418\n*S KotlinDebug\n*F\n+ 1 IncognitoWebViewChromeClient.kt\ncom/propertyguru/webkit/IncognitoWebViewChromeClient\n*L\n143#1:401\n143#1:402,2\n145#1:404\n145#1:405,3\n244#1:412,2\n262#1:414,2\n288#1:416,2\n162#1:408,2\n195#1:410,2\n318#1:418,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000w\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0010\u0018\u0000 -2\u00020\u0001:\u0002-.B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J(\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J,\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u00152\u0012\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\t2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J&\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\r2\u000e\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0!2\u0006\u0010\"\u001a\u00020#H\u0002J&\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\r2\u000e\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0!2\u0006\u0010\"\u001a\u00020#H\u0002JB\u0010%\u001a\u00020&2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\r2\u0006\u0010(\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#2\u0006\u0010)\u001a\u00020*2\u0012\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\tH\u0002J\u0010\u0010+\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u000eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0011\u00a8\u0006/"
    }
    d2 = {
        "Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;",
        "Landroid/webkit/WebChromeClient;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "anchorLinkHandler",
        "Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$AnchorLinkHandler;",
        "filePathCallback",
        "Landroid/webkit/ValueCallback;",
        "",
        "Landroid/net/Uri;",
        "tempFilePaths",
        "",
        "",
        "activityEventListener",
        "com/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1",
        "Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1;",
        "onCreateWindow",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "isDialog",
        "isUserGesture",
        "resultMsg",
        "Landroid/os/Message;",
        "onShowFileChooser",
        "webView",
        "fileChooserParams",
        "Landroid/webkit/WebChromeClient$FileChooserParams;",
        "cameraPermissionGranted",
        "Landroid/content/Intent;",
        "acceptTypes",
        "",
        "manager",
        "Landroid/content/pm/PackageManager;",
        "recordAudioPermissionGranted",
        "startIntent",
        "",
        "intents",
        "filesIntent",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "getOutputUri",
        "directory",
        "Companion",
        "AnchorLinkHandler",
        "propertyguru_react-native-webkit_release"
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
.field private static final CHOOSER_REQUEST_CODE:I = 0x1

.field public static final Companion:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$Companion;

.field private static final DEFAULT_MIME_TYPE:Ljava/lang/String; = "*/*"

.field private static final PERMISSION_REQUEST_CODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ChromeClient"


# instance fields
.field private final activityEventListener:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1;

.field private final anchorLinkHandler:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$AnchorLinkHandler;

.field private final context:Landroid/content/Context;

.field private filePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private tempFilePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->Companion:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->context:Landroid/content/Context;

    .line 50
    new-instance p1, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$AnchorLinkHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "getMainLooper(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$AnchorLinkHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->anchorLinkHandler:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$AnchorLinkHandler;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->tempFilePaths:Ljava/util/List;

    .line 54
    new-instance p1, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1;

    invoke-direct {p1, p0}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1;-><init>(Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;)V

    iput-object p1, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->activityEventListener:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1;

    return-void
.end method

.method public static final synthetic access$cameraPermissionGranted(Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->cameraPermissionGranted(Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFilePathCallback$p(Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->filePathCallback:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method public static final synthetic access$getTempFilePaths$p(Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->tempFilePaths:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$recordAudioPermissionGranted(Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->recordAudioPermissionGranted(Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setFilePathCallback$p(Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->filePathCallback:Landroid/webkit/ValueCallback;

    return-void
.end method

.method public static final synthetic access$startIntent(Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;Ljava/util/List;Landroid/content/Intent;Landroid/content/pm/PackageManager;Lcom/facebook/react/bridge/ReactContext;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->startIntent(Ljava/util/List;Landroid/content/Intent;Landroid/content/pm/PackageManager;Lcom/facebook/react/bridge/ReactContext;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private final cameraPermissionGranted(Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    .line 244
    check-cast p1, Ljava/lang/Iterable;

    .line 412
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "*/*"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 246
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    const-string v6, "image/"

    invoke-static {v1, v6, v4, v3, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 244
    :cond_1
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    .line 414
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 264
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string v1, "video/"

    invoke-static {v0, v1, v4, v3, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 262
    :cond_3
    check-cast v5, Ljava/lang/String;

    return-object p2
.end method

.method private final getOutputUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 5

    .line 343
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "IMAGE"

    if-eqz v0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 345
    :cond_1
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 346
    :cond_2
    const-string v1, "UNKNOWN"

    .line 350
    :goto_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ".jpg"

    goto :goto_1

    .line 351
    :cond_3
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ".mp4"

    goto :goto_1

    .line 352
    :cond_4
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ".mp3"

    goto :goto_1

    .line 353
    :cond_5
    const-string v0, ""

    .line 357
    :goto_1
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 358
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss"

    invoke-direct {v3, v4, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    iget-object v2, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->context:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 363
    invoke-static {v1, v0, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 368
    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 372
    const-string v0, "Unable to create Image File"

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "ChromeClient"

    invoke-static {v1, v0, p1}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    .line 375
    iget-object v0, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->tempFilePaths:Ljava/util/List;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v0, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".FileProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-static {v0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6

    goto :goto_3

    .line 379
    :cond_6
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v0, "EMPTY"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object p1
.end method

.method private final recordAudioPermissionGranted(Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 287
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    .line 288
    check-cast p1, Ljava/lang/Iterable;

    .line 416
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 290
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 291
    const-string v4, "audio/"

    invoke-static {v0, v4, v2, v3, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "*/*"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 288
    :cond_1
    check-cast v1, Ljava/lang/String;

    return-object p2
.end method

.method private final startIntent(Ljava/util/List;Landroid/content/Intent;Landroid/content/pm/PackageManager;Lcom/facebook/react/bridge/ReactContext;Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager;",
            "Lcom/facebook/react/bridge/ReactContext;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 315
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    const-string v1, "android.intent.extra.INTENT"

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 317
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 419
    new-array p2, p2, [Landroid/content/Intent;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    .line 318
    const-string p2, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 322
    :cond_0
    invoke-virtual {v0, p3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 323
    iput-object p5, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->filePathCallback:Landroid/webkit/ValueCallback;

    .line 324
    invoke-virtual {p4}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 326
    const-class p2, Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;

    .line 325
    invoke-virtual {p4, p2}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object p2

    check-cast p2, Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;

    if-eqz p2, :cond_2

    .line 328
    iget-object p3, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->activityEventListener:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$activityEventListener$1;

    check-cast p3, Lcom/facebook/react/bridge/ActivityEventListener;

    const/4 p4, 0x1

    .line 327
    invoke-virtual {p2, p1, v0, p4, p3}, Lcom/propertyguru/webkit/IncognitoFileChooserActivityEventListenerModule;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILcom/facebook/react/bridge/ActivityEventListener;)V

    goto :goto_0

    .line 331
    :cond_1
    move-object p1, p0

    check-cast p1, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;

    .line 334
    const-string p1, "ChromeClient"

    const-string p2, "Not supported"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 335
    invoke-interface {p5, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 336
    iput-object p1, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->filePathCallback:Landroid/webkit/ValueCallback;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultMsg"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 95
    new-instance p2, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 96
    iget-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type android.webkit.WebView.WebViewTransport"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    .line 97
    invoke-virtual {v0, p2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 98
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 p2, 0x1

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    return p2

    .line 103
    :cond_0
    instance-of p2, p1, Lcom/propertyguru/webkit/IncognitoWebView;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lcom/propertyguru/webkit/IncognitoWebView;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x0

    if-nez p2, :cond_2

    return p3

    .line 104
    :cond_2
    invoke-virtual {p2}, Lcom/propertyguru/webkit/IncognitoWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    .line 112
    invoke-virtual {p2}, Lcom/propertyguru/webkit/IncognitoWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p4

    invoke-virtual {p4}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 113
    invoke-virtual {p2}, Lcom/propertyguru/webkit/IncognitoWebView;->getShouldDispatchOnLinkPressedEvent()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 114
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    .line 115
    const-string v0, "url"

    invoke-interface {p2, v0, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object p4, Lcom/propertyguru/webkit/IncognitoWebView;->Companion:Lcom/propertyguru/webkit/IncognitoWebView$Companion;

    check-cast p1, Landroid/view/View;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "onLinkPressed"

    invoke-virtual {p4, p1, v0, p2}, Lcom/propertyguru/webkit/IncognitoWebView$Companion;->dispatchEvent(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :cond_3
    return p3

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->anchorLinkHandler:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$AnchorLinkHandler;

    invoke-virtual {v0, p1}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$AnchorLinkHandler;->setView(Landroid/webkit/WebView;)V

    .line 107
    iget-object p1, p0, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->anchorLinkHandler:Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$AnchorLinkHandler;

    check-cast p1, Landroid/os/Handler;

    invoke-virtual {p4, p1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 108
    invoke-virtual {p2, p4}, Lcom/propertyguru/webkit/IncognitoWebView;->requestFocusNodeHref(Landroid/os/Message;)V

    return p3
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    move-object/from16 v9, p0

    const-string v0, "webView"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePathCallback"

    move-object/from16 v5, p2

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileChooserParams"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, v9, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->context:Landroid/content/Context;

    instance-of v2, v0, Lcom/facebook/react/bridge/ReactContext;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object v8, v3

    :goto_0
    const/4 v0, 0x0

    if-eqz v8, :cond_11

    .line 129
    invoke-virtual {v8}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_a

    .line 138
    :cond_1
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 139
    instance-of v4, v2, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    move-object v10, v4

    goto :goto_1

    :cond_2
    move-object v10, v3

    .line 141
    :goto_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v7

    const-string v11, "getAcceptTypes(...)"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, [Ljava/lang/Object;

    .line 401
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/Collection;

    .line 402
    array-length v12, v7

    move v13, v0

    :goto_2
    if-ge v13, v12, :cond_5

    aget-object v14, v7, v13

    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    .line 144
    check-cast v15, Ljava/lang/CharSequence;

    if-eqz v15, :cond_4

    invoke-static {v15}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_3

    .line 402
    :cond_3
    invoke-interface {v11, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 403
    :cond_5
    check-cast v11, Ljava/util/List;

    .line 401
    check-cast v11, Ljava/lang/Iterable;

    .line 404
    new-instance v7, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v11, v12}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 405
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 406
    check-cast v12, Ljava/lang/String;

    .line 146
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v15, "."

    invoke-static {v12, v15, v0, v13, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    goto :goto_5

    .line 149
    :cond_6
    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Lkotlin/text/StringsKt;->single(Ljava/lang/CharSequence;)C

    move-result v13

    new-array v14, v14, [C

    aput-char v13, v14, v0

    invoke-static {v12, v14}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v13

    .line 150
    invoke-virtual {v4, v13}, Landroid/webkit/MimeTypeMap;->hasExtension(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 151
    invoke-virtual {v4, v13}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 406
    :cond_7
    :goto_5
    invoke-interface {v7, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 407
    :cond_8
    check-cast v7, Ljava/util/List;

    .line 404
    check-cast v7, Ljava/lang/Iterable;

    .line 156
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result v1

    if-ne v14, v1, :cond_9

    move v1, v14

    goto :goto_6

    :cond_9
    move v1, v0

    .line 160
    :goto_6
    new-instance v7, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    const-string v3, "*/*"

    invoke-virtual {v7, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    move-object v3, v4

    check-cast v3, Ljava/util/Collection;

    .line 409
    new-array v11, v0, [Ljava/lang/String;

    invoke-interface {v3, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 162
    const-string v11, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v7, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v3, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v7, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    .line 169
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v6, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 170
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v1, :cond_a

    new-array v1, v0, [Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 172
    :catch_0
    new-array v1, v0, [Ljava/lang/String;

    :cond_a
    :goto_7
    move-object v11, v1

    if-nez v10, :cond_b

    return v0

    .line 176
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    const-string v2, "android.permission.CAMERA"

    invoke-static {v11, v2}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 179
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_c
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v11, v2}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 183
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const-string v15, "iterator(...)"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    const-string v14, "next(...)"

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Ljava/lang/String;

    .line 188
    invoke-interface {v10, v15}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_e

    .line 195
    check-cast v1, Ljava/util/Collection;

    .line 411
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [Ljava/lang/String;

    .line 197
    new-instance v14, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v3

    move-object/from16 v3, p0

    move-object v5, v6

    move-object v6, v11

    invoke-direct/range {v0 .. v8}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient$onShowFileChooser$1;-><init>(Landroid/webkit/ValueCallback;Ljava/util/List;Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;Ljava/util/List;Landroid/content/pm/PackageManager;[Ljava/lang/String;Landroid/content/Intent;Lcom/facebook/react/bridge/ReactContext;)V

    check-cast v14, Lcom/facebook/react/modules/core/PermissionListener;

    .line 194
    invoke-interface {v10, v12, v13, v14}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->requestPermissions([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V

    :goto_9
    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v14, 0x1

    goto :goto_8

    .line 232
    :cond_f
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v9, v4, v6}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->cameraPermissionGranted(Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 233
    invoke-static {v11, v2}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 234
    invoke-direct {v9, v4, v6}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->recordAudioPermissionGranted(Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_10
    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v7

    move-object v3, v6

    move-object v4, v8

    move-object/from16 v5, p2

    .line 236
    invoke-direct/range {v0 .. v5}, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;->startIntent(Ljava/util/List;Landroid/content/Intent;Landroid/content/pm/PackageManager;Lcom/facebook/react/bridge/ReactContext;Landroid/webkit/ValueCallback;)V

    goto :goto_9

    .line 129
    :cond_11
    :goto_a
    move-object v1, v9

    check-cast v1, Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;

    return v0
.end method

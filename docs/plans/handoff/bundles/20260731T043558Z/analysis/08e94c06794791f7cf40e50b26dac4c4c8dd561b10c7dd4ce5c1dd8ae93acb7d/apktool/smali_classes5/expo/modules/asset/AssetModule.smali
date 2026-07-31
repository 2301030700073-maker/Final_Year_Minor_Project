.class public final Lexpo/modules/asset/AssetModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "AssetModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetModule.kt\nexpo/modules/asset/AssetModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilderKt\n+ 6 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 8 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n*L\n1#1,100:1\n61#2:101\n14#3:102\n25#3:103\n27#4,3:104\n31#4:152\n263#5:107\n45#6:108\n48#6,3:149\n193#7,9:109\n168#7:118\n158#7,8:121\n202#7:129\n168#7:130\n158#7,8:131\n203#7:139\n168#7:140\n158#7,8:141\n143#8,2:119\n*S KotlinDebug\n*F\n+ 1 AssetModule.kt\nexpo/modules/asset/AssetModule\n*L\n75#1:101\n75#1:102\n75#1:103\n75#1:104,3\n75#1:152\n78#1:107\n78#1:108\n78#1:149,3\n78#1:109,9\n78#1:118\n78#1:121,8\n78#1:129\n78#1:130\n78#1:131,8\n78#1:139\n78#1:140\n78#1:141,8\n78#1:119,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\t2\u0006\u0010\r\u001a\u00020\u000eH\u0002J&\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000eH\u0082@\u00a2\u0006\u0002\u0010\u0014J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016R\u0014\u0010\u0004\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/asset/AssetModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "<init>",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "getMD5HashOfFilePath",
        "",
        "uri",
        "Ljava/net/URI;",
        "getMD5HashOfFileContent",
        "file",
        "Ljava/io/File;",
        "downloadAsset",
        "Landroid/net/Uri;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "localUrl",
        "(Lexpo/modules/kotlin/AppContext;Ljava/net/URI;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "expo-asset_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$DVf5qSeASp3q5qUrRqhSzM5V8EQ(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lexpo/modules/asset/AssetModule;->getMD5HashOfFilePath$lambda$0(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tDK3mg-lJkG-STkET5xlZ37u4Ws(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lexpo/modules/asset/AssetModule;->getMD5HashOfFileContent$lambda$3$lambda$2$lambda$1(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method

.method public static final synthetic access$downloadAsset(Lexpo/modules/asset/AssetModule;Lexpo/modules/kotlin/AppContext;Ljava/net/URI;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/asset/AssetModule;->downloadAsset(Lexpo/modules/kotlin/AppContext;Ljava/net/URI;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext(Lexpo/modules/asset/AssetModule;)Landroid/content/Context;
    .locals 0

    .line 22
    invoke-direct {p0}, Lexpo/modules/asset/AssetModule;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMD5HashOfFileContent(Lexpo/modules/asset/AssetModule;Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lexpo/modules/asset/AssetModule;->getMD5HashOfFileContent(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMD5HashOfFilePath(Lexpo/modules/asset/AssetModule;Ljava/net/URI;)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lexpo/modules/asset/AssetModule;->getMD5HashOfFilePath(Ljava/net/URI;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final downloadAsset(Lexpo/modules/kotlin/AppContext;Ljava/net/URI;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/AppContext;",
            "Ljava/net/URI;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lexpo/modules/asset/AssetModule$downloadAsset$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lexpo/modules/asset/AssetModule$downloadAsset$1;

    iget v1, v0, Lexpo/modules/asset/AssetModule$downloadAsset$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lexpo/modules/asset/AssetModule$downloadAsset$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lexpo/modules/asset/AssetModule$downloadAsset$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/asset/AssetModule$downloadAsset$1;

    invoke-direct {v0, p0, p4}, Lexpo/modules/asset/AssetModule$downloadAsset$1;-><init>(Lexpo/modules/asset/AssetModule;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lexpo/modules/asset/AssetModule$downloadAsset$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 47
    iget v2, v0, Lexpo/modules/asset/AssetModule$downloadAsset$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p4

    if-ne p4, v3, :cond_3

    goto :goto_1

    .line 49
    :cond_3
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 52
    :goto_1
    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getFilePermission()Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;

    move-result-object p4

    if-eqz p4, :cond_5

    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v2, v4}, Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;->getPathPermissions(Landroid/content/Context;Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object p4

    if-eqz p4, :cond_5

    sget-object v2, Lexpo/modules/interfaces/filesystem/Permission;->WRITE:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p4, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-ne p4, v3, :cond_5

    .line 56
    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getBackgroundCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance p4, Lexpo/modules/asset/AssetModule$downloadAsset$2;

    const/4 v2, 0x0

    invoke-direct {p4, p2, p0, p3, v2}, Lexpo/modules/asset/AssetModule$downloadAsset$2;-><init>(Ljava/net/URI;Lexpo/modules/asset/AssetModule;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    check-cast p4, Lkotlin/jvm/functions/Function2;

    iput v3, v0, Lexpo/modules/asset/AssetModule$downloadAsset$1;->label:I

    invoke-static {p1, p4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    const-string p1, "withContext(...)"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p4

    .line 53
    :cond_5
    new-instance p1, Lexpo/modules/asset/UnableToDownloadAssetException;

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "toString(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lexpo/modules/asset/UnableToDownloadAssetException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lexpo/modules/asset/AssetModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;-><init>()V

    throw v0
.end method

.method private final getMD5HashOfFileContent(Ljava/io/File;)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    .line 33
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;->create(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v1, p1

    check-cast v1, Ljava/io/FileInputStream;

    .line 34
    new-instance v2, Ljava/security/DigestInputStream;

    .line 35
    check-cast v1, Ljava/io/InputStream;

    .line 36
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 34
    invoke-direct {v2, v1, v3}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    check-cast v2, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 37
    :try_start_2
    move-object v1, v2

    check-cast v1, Ljava/security/DigestInputStream;

    .line 38
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const-string v1, "digest(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v9, Lexpo/modules/asset/AssetModule$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lexpo/modules/asset/AssetModule$$ExternalSyntheticLambda0;-><init>()V

    const/16 v10, 0x1e

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    :try_start_3
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 33
    :try_start_4
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 37
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    .line 33
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private static final getMD5HashOfFileContent$lambda$3$lambda$2$lambda$1(B)Ljava/lang/CharSequence;
    .locals 1

    .line 38
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final getMD5HashOfFilePath(Ljava/net/URI;)Ljava/lang/String;
    .locals 11

    .line 27
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "getBytes(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    const-string p1, "digest(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, ""

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v8, Lexpo/modules/asset/AssetModule$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lexpo/modules/asset/AssetModule$$ExternalSyntheticLambda1;-><init>()V

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final getMD5HashOfFilePath$lambda$0(B)Ljava/lang/CharSequence;
    .locals 1

    .line 28
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 12

    .line 75
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ModuleDefinition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 101
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 76
    const-string v0, "ExpoAsset"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 78
    const-string v0, "downloadAsync"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->AsyncFunction(Ljava/lang/String;)Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;

    move-result-object v0

    .line 108
    new-instance v2, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v4

    .line 111
    const-class v5, Ljava/net/URI;

    .line 112
    const-class v5, Ljava/lang/String;

    .line 113
    const-class v5, Ljava/lang/String;

    const/4 v5, 0x3

    .line 117
    new-array v5, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 118
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 119
    new-instance v7, Lkotlin/Pair;

    const-class v8, Ljava/net/URI;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v7, v8, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    if-nez v6, :cond_0

    .line 118
    sget-object v6, Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$1;->INSTANCE:Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$1;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 121
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 122
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Ljava/net/URI;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v8, v10, v9, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 121
    invoke-direct {v7, v8, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v6, v7

    .line 118
    :cond_0
    aput-object v6, v5, v9

    .line 130
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 119
    new-instance v7, Lkotlin/Pair;

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v7, v8, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    if-nez v6, :cond_1

    .line 130
    sget-object v6, Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$2;->INSTANCE:Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$2;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 131
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 132
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v8, v11, v10, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 131
    invoke-direct {v7, v8, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v6, v7

    .line 130
    :cond_1
    aput-object v6, v5, v10

    .line 140
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 119
    new-instance v7, Lkotlin/Pair;

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v7, v8, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    if-nez v6, :cond_2

    .line 140
    sget-object v6, Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$3;->INSTANCE:Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$3;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 141
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 142
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v8, v10, v9, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 141
    invoke-direct {v7, v8, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v6, v7

    :cond_2
    const/4 v4, 0x2

    .line 140
    aput-object v6, v5, v4

    .line 149
    new-instance v4, Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$4;

    const/4 v6, 0x0

    invoke-direct {v4, v6, p0}, Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$4;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/asset/AssetModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function3;

    .line 108
    invoke-direct {v2, v3, v5, v4}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function3;)V

    .line 150
    check-cast v2, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    invoke-virtual {v0, v2}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->setAsyncFunctionComponent(Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;)V

    .line 101
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

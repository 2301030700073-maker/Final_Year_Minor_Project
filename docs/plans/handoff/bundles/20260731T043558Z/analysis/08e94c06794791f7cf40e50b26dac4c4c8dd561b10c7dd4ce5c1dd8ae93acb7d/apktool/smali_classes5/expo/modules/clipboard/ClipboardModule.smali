.class public final Lexpo/modules/clipboard/ClipboardModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "ClipboardModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;,
        Lexpo/modules/clipboard/ClipboardModule$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClipboardModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClipboardModule.kt\nexpo/modules/clipboard/ClipboardModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 8 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 9 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 10 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilderKt\n+ 11 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder\n+ 12 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder\n+ 13 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,255:1\n61#2:256\n14#3:257\n25#3:258\n27#4,3:259\n31#4:490\n243#5,8:262\n251#5,2:314\n259#5:316\n262#5,3:373\n233#5:376\n234#5,2:403\n233#5:453\n234#5,2:480\n171#6,7:270\n168#6:277\n158#6,8:280\n181#6,8:317\n168#6:325\n158#6,8:328\n189#6:336\n168#6:337\n158#6,8:338\n187#6:346\n171#6,7:407\n168#6:414\n158#6,8:417\n176#6:425\n171#6,7:431\n168#6:438\n158#6,8:441\n176#6:449\n143#7,2:278\n143#7,2:326\n143#7,2:415\n143#7,2:439\n13#8,6:288\n19#8,19:295\n13#8,6:347\n19#8,19:354\n13#8,6:377\n19#8,19:384\n13#8,6:454\n19#8,19:461\n11#9:294\n11#9:353\n11#9:383\n11#9:460\n261#10:405\n261#10:429\n27#11:406\n30#11,3:426\n27#11:430\n30#11,3:450\n110#12,2:482\n124#12,2:484\n138#12,2:486\n131#12,2:488\n1#13:491\n*S KotlinDebug\n*F\n+ 1 ClipboardModule.kt\nexpo/modules/clipboard/ClipboardModule\n*L\n36#1:256\n36#1:257\n36#1:258\n36#1:259,3\n36#1:490\n40#1:262,8\n40#1:314,2\n48#1:316\n48#1:373,3\n61#1:376\n61#1:403,2\n105#1:453\n105#1:480,2\n40#1:270,7\n40#1:277\n40#1:280,8\n48#1:317,8\n48#1:325\n48#1:328,8\n48#1:336\n48#1:337\n48#1:338,8\n48#1:346\n70#1:407,7\n70#1:414\n70#1:417,8\n70#1:425\n92#1:431,7\n92#1:438\n92#1:441,8\n92#1:449\n40#1:278,2\n48#1:326,2\n70#1:415,2\n92#1:439,2\n40#1:288,6\n40#1:295,19\n48#1:347,6\n48#1:354,19\n61#1:377,6\n61#1:384,19\n105#1:454,6\n105#1:461,19\n40#1:294\n48#1:353\n61#1:383\n105#1:460\n70#1:405\n92#1:429\n70#1:406\n70#1:426,3\n92#1:430\n92#1:450,3\n113#1:482,2\n118#1:484,2\n122#1:486,2\n126#1:488,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002R\u0014\u0010\u0006\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011R\u0012\u0010\u0014\u001a\u00060\u0015R\u00020\u0000X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u001b*\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lexpo/modules/clipboard/ClipboardModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "<init>",
        "()V",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "clipboardManager",
        "Landroid/content/ClipboardManager;",
        "getClipboardManager",
        "()Landroid/content/ClipboardManager;",
        "clipboardCacheDir",
        "Ljava/io/File;",
        "getClipboardCacheDir",
        "()Ljava/io/File;",
        "clipboardCacheDir$delegate",
        "Lkotlin/Lazy;",
        "clipboardEventEmitter",
        "Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;",
        "clipboardHasItemWithType",
        "",
        "mimeType",
        "",
        "firstItem",
        "Landroid/content/ClipData$Item;",
        "getFirstItem",
        "(Landroid/content/ClipboardManager;)Landroid/content/ClipData$Item;",
        "ClipboardEventEmitter",
        "expo-clipboard_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final clipboardCacheDir$delegate:Lkotlin/Lazy;

.field private clipboardEventEmitter:Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;


# direct methods
.method public static synthetic $r8$lambda$os2ZqQOuc3go9ftQEZ_3vNrdAVw(Lexpo/modules/clipboard/ClipboardModule;)Ljava/io/File;
    .locals 0

    invoke-static {p0}, Lexpo/modules/clipboard/ClipboardModule;->clipboardCacheDir_delegate$lambda$15(Lexpo/modules/clipboard/ClipboardModule;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 141
    new-instance v0, Lexpo/modules/clipboard/ClipboardModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lexpo/modules/clipboard/ClipboardModule$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/clipboard/ClipboardModule;->clipboardCacheDir$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$clipboardHasItemWithType(Lexpo/modules/clipboard/ClipboardModule;Ljava/lang/String;)Z
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lexpo/modules/clipboard/ClipboardModule;->clipboardHasItemWithType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getClipboardCacheDir(Lexpo/modules/clipboard/ClipboardModule;)Ljava/io/File;
    .locals 0

    .line 35
    invoke-direct {p0}, Lexpo/modules/clipboard/ClipboardModule;->getClipboardCacheDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getClipboardEventEmitter$p(Lexpo/modules/clipboard/ClipboardModule;)Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;
    .locals 0

    .line 35
    iget-object p0, p0, Lexpo/modules/clipboard/ClipboardModule;->clipboardEventEmitter:Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;

    return-object p0
.end method

.method public static final synthetic access$getClipboardManager(Lexpo/modules/clipboard/ClipboardModule;)Landroid/content/ClipboardManager;
    .locals 0

    .line 35
    invoke-direct {p0}, Lexpo/modules/clipboard/ClipboardModule;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext(Lexpo/modules/clipboard/ClipboardModule;)Landroid/content/Context;
    .locals 0

    .line 35
    invoke-direct {p0}, Lexpo/modules/clipboard/ClipboardModule;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFirstItem(Lexpo/modules/clipboard/ClipboardModule;Landroid/content/ClipboardManager;)Landroid/content/ClipData$Item;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lexpo/modules/clipboard/ClipboardModule;->getFirstItem(Landroid/content/ClipboardManager;)Landroid/content/ClipData$Item;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setClipboardEventEmitter$p(Lexpo/modules/clipboard/ClipboardModule;Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lexpo/modules/clipboard/ClipboardModule;->clipboardEventEmitter:Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;

    return-void
.end method

.method private static final clipboardCacheDir_delegate$lambda$15(Lexpo/modules/clipboard/ClipboardModule;)Ljava/io/File;
    .locals 2

    .line 142
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lexpo/modules/clipboard/ClipboardModule;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, ".clipboard"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method private final clipboardHasItemWithType(Ljava/lang/String;)Z
    .locals 1

    .line 209
    invoke-direct {p0}, Lexpo/modules/clipboard/ClipboardModule;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final getClipboardCacheDir()Ljava/io/File;
    .locals 1

    .line 141
    iget-object v0, p0, Lexpo/modules/clipboard/ClipboardModule;->clipboardCacheDir$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method private final getClipboardManager()Landroid/content/ClipboardManager;
    .locals 2

    .line 138
    invoke-direct {p0}, Lexpo/modules/clipboard/ClipboardModule;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/content/ClipboardManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/content/ClipboardManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 139
    :cond_1
    new-instance v0, Lexpo/modules/clipboard/ClipboardUnavailableException;

    invoke-direct {v0}, Lexpo/modules/clipboard/ClipboardUnavailableException;-><init>()V

    throw v0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 2

    .line 133
    invoke-virtual {p0}, Lexpo/modules/clipboard/ClipboardModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "React Application Context is null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getFirstItem(Landroid/content/ClipboardManager;)Landroid/content/ClipData$Item;
    .locals 2

    .line 215
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 13

    .line 36
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 256
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

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 256
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 37
    const-string v0, "ExpoClipboard"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 40
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getStringAsync"

    .line 262
    const-class v3, Lexpo/modules/clipboard/GetStringOptions;

    const-class v4, Lexpo/modules/kotlin/Promise;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 263
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v6, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 269
    new-instance v7, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$1;

    invoke-direct {v7, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 263
    invoke-direct {v3, v2, v6, v7}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto/16 :goto_1

    .line 265
    :cond_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v3

    .line 272
    const-class v6, Lexpo/modules/clipboard/GetStringOptions;

    .line 276
    new-array v6, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 277
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 278
    new-instance v8, Lkotlin/Pair;

    const-class v9, Lexpo/modules/clipboard/GetStringOptions;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    if-nez v7, :cond_1

    .line 277
    sget-object v7, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$2;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 280
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 281
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Lexpo/modules/clipboard/GetStringOptions;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v9, v10, v5, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 280
    invoke-direct {v8, v9, v3}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v8

    .line 277
    :cond_1
    aput-object v7, v6, v5

    .line 265
    new-instance v3, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$3;

    invoke-direct {v3, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 291
    const-class v7, Ljava/lang/String;

    .line 292
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 295
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    :goto_0
    move-object v3, v7

    goto :goto_1

    .line 297
    :cond_2
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 299
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 301
    :cond_3
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 303
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 305
    :cond_4
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 307
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 309
    :cond_5
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 311
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 313
    :cond_6
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 314
    :goto_1
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "setStringAsync"

    .line 316
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v3

    .line 319
    const-class v6, Ljava/lang/String;

    .line 320
    const-class v6, Lexpo/modules/clipboard/SetStringOptions;

    const/4 v6, 0x2

    .line 324
    new-array v6, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 325
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 326
    new-instance v8, Lkotlin/Pair;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 327
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    if-nez v7, :cond_7

    .line 325
    sget-object v7, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$4;->INSTANCE:Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$4;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 328
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 329
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v9, v10, v5, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 328
    invoke-direct {v8, v9, v3}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v8

    .line 325
    :cond_7
    aput-object v7, v6, v5

    .line 337
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 326
    new-instance v8, Lkotlin/Pair;

    const-class v9, Lexpo/modules/clipboard/SetStringOptions;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 327
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    if-nez v7, :cond_8

    .line 337
    sget-object v7, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$5;->INSTANCE:Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$5;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 338
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 339
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Lexpo/modules/clipboard/SetStringOptions;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v9, v10, v5, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 338
    invoke-direct {v8, v9, v3}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v7, v8

    .line 337
    :cond_8
    aput-object v7, v6, v4

    .line 316
    new-instance v3, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$6;

    invoke-direct {v3, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$6;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 350
    const-class v7, Ljava/lang/Boolean;

    .line 351
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 354
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 356
    :cond_9
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 358
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 360
    :cond_a
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 362
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 364
    :cond_b
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 366
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 368
    :cond_c
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 370
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 372
    :cond_d
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v2, v6, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 374
    :goto_2
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "hasStringAsync"

    .line 376
    new-array v3, v5, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v6, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$7;

    invoke-direct {v6, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$7;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 380
    const-class v7, Ljava/lang/Boolean;

    .line 381
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 384
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_3

    .line 386
    :cond_e
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 388
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_3

    .line 390
    :cond_f
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 392
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_3

    .line 394
    :cond_10
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 396
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_3

    .line 398
    :cond_11
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 400
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_3

    .line 402
    :cond_12
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 403
    :goto_3
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "getImageAsync"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->AsyncFunction(Ljava/lang/String;)Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;

    move-result-object v0

    .line 406
    new-instance v2, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 409
    const-class v7, Lexpo/modules/clipboard/GetImageOptions;

    .line 413
    new-array v7, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 414
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 415
    new-instance v9, Lkotlin/Pair;

    const-class v10, Lexpo/modules/clipboard/GetImageOptions;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 416
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_13

    .line 414
    sget-object v8, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$1;->INSTANCE:Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$1;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 417
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 418
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Lexpo/modules/clipboard/GetImageOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 417
    invoke-direct {v9, v10, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v8, v9

    .line 414
    :cond_13
    aput-object v8, v7, v5

    .line 426
    new-instance v6, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$2;

    const/4 v8, 0x0

    invoke-direct {v6, v8, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$2;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function3;

    .line 406
    invoke-direct {v2, v3, v7, v6}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function3;)V

    .line 427
    check-cast v2, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    invoke-virtual {v0, v2}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->setAsyncFunctionComponent(Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;)V

    .line 92
    const-string v0, "setImageAsync"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->AsyncFunction(Ljava/lang/String;)Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;

    move-result-object v0

    .line 430
    new-instance v2, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 433
    const-class v7, Ljava/lang/String;

    .line 437
    new-array v7, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 438
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 439
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 440
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_14

    .line 438
    sget-object v9, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$3;->INSTANCE:Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$3;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 441
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 442
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v5, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 441
    invoke-direct {v10, v11, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v10

    .line 438
    :cond_14
    aput-object v9, v7, v5

    .line 450
    new-instance v6, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;

    invoke-direct {v6, v8, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$Coroutine$4;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function3;

    .line 430
    invoke-direct {v2, v3, v7, v6}, Lexpo/modules/kotlin/functions/SuspendFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function3;)V

    .line 451
    check-cast v2, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    invoke-virtual {v0, v2}, Lexpo/modules/kotlin/functions/AsyncFunctionBuilder;->setAsyncFunctionComponent(Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;)V

    .line 105
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "hasImageAsync"

    .line 453
    new-array v3, v5, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v6, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$8;

    invoke-direct {v6, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$8;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 457
    const-class v7, Ljava/lang/Boolean;

    .line 458
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 461
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 463
    :cond_15
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 465
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 467
    :cond_16
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 469
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 471
    :cond_17
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 473
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 475
    :cond_18
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 477
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 479
    :cond_19
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v2, v3, v6}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 480
    :goto_4
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "onClipboardChanged"

    aput-object v2, v0, v5

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Events([Ljava/lang/String;)V

    .line 113
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .line 482
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;

    new-instance v3, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;

    new-instance v5, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnCreate$1;

    invoke-direct {v5, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnCreate$1;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .line 484
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v3, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v5, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnDestroy$1;

    invoke-direct {v5, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnDestroy$1;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .line 486
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_ENTERS_BACKGROUND:Lexpo/modules/kotlin/events/EventName;

    new-instance v3, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_ENTERS_BACKGROUND:Lexpo/modules/kotlin/events/EventName;

    new-instance v5, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnActivityEntersBackground$1;

    invoke-direct {v5, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnActivityEntersBackground$1;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .line 488
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_ENTERS_FOREGROUND:Lexpo/modules/kotlin/events/EventName;

    new-instance v3, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_ENTERS_FOREGROUND:Lexpo/modules/kotlin/events/EventName;

    new-instance v5, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnActivityEntersForeground$1;

    invoke-direct {v5, p0}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$OnActivityEntersForeground$1;-><init>(Lexpo/modules/clipboard/ClipboardModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

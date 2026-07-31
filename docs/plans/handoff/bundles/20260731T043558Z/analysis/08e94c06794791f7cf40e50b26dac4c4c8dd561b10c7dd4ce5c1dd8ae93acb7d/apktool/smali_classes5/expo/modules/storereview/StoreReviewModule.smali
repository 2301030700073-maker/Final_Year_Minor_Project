.class public final Lexpo/modules/storereview/StoreReviewModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "StoreReviewModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoreReviewModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoreReviewModule.kt\nexpo/modules/storereview/StoreReviewModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 7 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 8 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 9 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n*L\n1#1,60:1\n61#2:61\n14#3:62\n25#3:63\n27#4,3:64\n31#4:150\n235#5:67\n236#5,2:94\n245#5,8:96\n253#5,2:148\n13#6,6:68\n19#6,19:75\n13#6,6:122\n19#6,19:129\n11#7:74\n11#7:128\n162#8,7:104\n159#8:111\n149#8,8:114\n143#9,2:112\n*S KotlinDebug\n*F\n+ 1 StoreReviewModule.kt\nexpo/modules/storereview/StoreReviewModule\n*L\n17#1:61\n17#1:62\n17#1:63\n17#1:64,3\n17#1:150\n20#1:67\n20#1:94,2\n24#1:96,8\n24#1:148,2\n20#1:68,6\n20#1:75,19\n24#1:122,6\n24#1:129,19\n20#1:74\n24#1:128\n24#1:104,7\n24#1:111\n24#1:114,8\n24#1:112,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0002R\u0014\u0010\u0004\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/storereview/StoreReviewModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "<init>",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "requestReview",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "isPlayStoreInstalled",
        "",
        "expo-store-review_release"
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
.method public static synthetic $r8$lambda$N5SONALOfc5wZtrWEuvqB-APXJw(Lexpo/modules/kotlin/Promise;Lcom/google/android/play/core/review/ReviewManager;Lexpo/modules/storereview/StoreReviewModule;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lexpo/modules/storereview/StoreReviewModule;->requestReview$lambda$5(Lexpo/modules/kotlin/Promise;Lcom/google/android/play/core/review/ReviewManager;Lexpo/modules/storereview/StoreReviewModule;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xUENRKAJ3EMnUo-n_NhRQ75L-XE(Lexpo/modules/kotlin/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/storereview/StoreReviewModule;->requestReview$lambda$5$lambda$4$lambda$3(Lexpo/modules/kotlin/Promise;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method

.method public static final synthetic access$isPlayStoreInstalled(Lexpo/modules/storereview/StoreReviewModule;)Z
    .locals 0

    .line 13
    invoke-direct {p0}, Lexpo/modules/storereview/StoreReviewModule;->isPlayStoreInstalled()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$requestReview(Lexpo/modules/storereview/StoreReviewModule;Lexpo/modules/kotlin/Promise;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lexpo/modules/storereview/StoreReviewModule;->requestReview(Lexpo/modules/kotlin/Promise;)V

    return-void
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lexpo/modules/storereview/StoreReviewModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;-><init>()V

    throw v0
.end method

.method private final isPlayStoreInstalled()Z
    .locals 3

    const/4 v0, 0x0

    .line 53
    :try_start_0
    invoke-direct {p0}, Lexpo/modules/storereview/StoreReviewModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 54
    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method private final requestReview(Lexpo/modules/kotlin/Promise;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Lexpo/modules/storereview/StoreReviewModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {v0}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    const-string v2, "requestReviewFlow(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v2, Lexpo/modules/storereview/StoreReviewModule$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0, p0}, Lexpo/modules/storereview/StoreReviewModule$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/Promise;Lcom/google/android/play/core/review/ReviewManager;Lexpo/modules/storereview/StoreReviewModule;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static final requestReview$lambda$5(Lexpo/modules/kotlin/Promise;Lcom/google/android/play/core/review/ReviewManager;Lexpo/modules/storereview/StoreReviewModule;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/play/core/review/ReviewInfo;

    if-eqz p3, :cond_0

    .line 37
    invoke-virtual {p2}, Lexpo/modules/storereview/StoreReviewModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object p2

    invoke-virtual {p2}, Lexpo/modules/kotlin/AppContext;->getThrowingActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const-string p2, "launchReviewFlow(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance p2, Lexpo/modules/storereview/StoreReviewModule$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lexpo/modules/storereview/StoreReviewModule$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/kotlin/Promise;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    if-nez p1, :cond_2

    .line 45
    :cond_0
    new-instance p1, Lexpo/modules/storereview/RMTaskException;

    invoke-direct {p1}, Lexpo/modules/storereview/RMTaskException;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {p0, p1}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 47
    :cond_1
    new-instance p1, Lexpo/modules/storereview/RMUnsuccessfulTaskException;

    invoke-direct {p1}, Lexpo/modules/storereview/RMUnsuccessfulTaskException;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {p0, p1}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    :goto_0
    return-void
.end method

.method private static final requestReview$lambda$5$lambda$4$lambda$3(Lexpo/modules/kotlin/Promise;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 40
    invoke-interface {p0, p1}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 42
    :cond_0
    new-instance p1, Lexpo/modules/storereview/RMTaskException;

    invoke-direct {p1}, Lexpo/modules/storereview/RMTaskException;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {p0, p1}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 9

    .line 17
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 61
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

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 61
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 18
    const-string v0, "ExpoStoreReview"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 20
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "isAvailableAsync"

    const/4 v3, 0x0

    .line 67
    new-array v4, v3, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v5, Lexpo/modules/storereview/StoreReviewModule$definition$lambda$2$$inlined$AsyncFunction$1;

    invoke-direct {v5, p0}, Lexpo/modules/storereview/StoreReviewModule$definition$lambda$2$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/storereview/StoreReviewModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 71
    const-class v6, Ljava/lang/Boolean;

    .line 72
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 75
    new-instance v6, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v5}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 77
    :cond_0
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 79
    new-instance v6, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v5}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 81
    :cond_1
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 83
    new-instance v6, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v5}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 85
    :cond_2
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 87
    new-instance v6, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v5}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 89
    :cond_3
    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 91
    new-instance v6, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v5}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 93
    :cond_4
    new-instance v6, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v5}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 94
    :goto_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "requestReview"

    .line 96
    const-class v4, Lexpo/modules/kotlin/Promise;

    const-class v5, Lexpo/modules/kotlin/Promise;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 97
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v3, v3, [Lexpo/modules/kotlin/types/AnyType;

    .line 103
    new-instance v5, Lexpo/modules/storereview/StoreReviewModule$definition$lambda$2$$inlined$AsyncFunction$2;

    invoke-direct {v5, p0}, Lexpo/modules/storereview/StoreReviewModule$definition$lambda$2$$inlined$AsyncFunction$2;-><init>(Lexpo/modules/storereview/StoreReviewModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 97
    invoke-direct {v4, v2, v3, v5}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto/16 :goto_2

    .line 106
    :cond_5
    const-class v4, Lexpo/modules/kotlin/Promise;

    const/4 v4, 0x1

    .line 110
    new-array v4, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 111
    sget-object v5, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 112
    new-instance v6, Lkotlin/Pair;

    const-class v7, Lexpo/modules/kotlin/Promise;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v5}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    if-nez v5, :cond_6

    .line 111
    sget-object v5, Lexpo/modules/storereview/StoreReviewModule$definition$lambda$2$$inlined$AsyncFunction$3;->INSTANCE:Lexpo/modules/storereview/StoreReviewModule$definition$lambda$2$$inlined$AsyncFunction$3;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 114
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 115
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v8, Lexpo/modules/kotlin/Promise;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-direct {v7, v8, v3, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    const/4 v5, 0x0

    .line 114
    invoke-direct {v6, v7, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v5, v6

    .line 111
    :cond_6
    aput-object v5, v4, v3

    .line 99
    new-instance v3, Lexpo/modules/storereview/StoreReviewModule$definition$lambda$2$$inlined$AsyncFunction$4;

    invoke-direct {v3, p0}, Lexpo/modules/storereview/StoreReviewModule$definition$lambda$2$$inlined$AsyncFunction$4;-><init>(Lexpo/modules/storereview/StoreReviewModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 125
    const-class v5, Lkotlin/Unit;

    .line 126
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 129
    new-instance v5, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v5, v2, v4, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    :goto_1
    move-object v4, v5

    goto :goto_2

    .line 131
    :cond_7
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 133
    new-instance v5, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v5, v2, v4, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 135
    :cond_8
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 137
    new-instance v5, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v5, v2, v4, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 139
    :cond_9
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 141
    new-instance v5, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v5, v2, v4, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 143
    :cond_a
    const-class v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 145
    new-instance v5, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v5, v2, v4, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 147
    :cond_b
    new-instance v5, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v5, v2, v4, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 148
    :goto_2
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.class public final Lexpo/modules/ExpoModulesPackage;
.super Ljava/lang/Object;
.source "ExpoModulesPackage.kt"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/ExpoModulesPackage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoModulesPackage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoModulesPackage.kt\nexpo/modules/ExpoModulesPackage\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n1062#2:43\n*S KotlinDebug\n*F\n+ 1 ExpoModulesPackage.kt\nexpo/modules/ExpoModulesPackage\n*L\n26#1:43\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u001e\u0010\r\u001a\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000e0\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/ExpoModulesPackage;",
        "Lcom/facebook/react/ReactPackage;",
        "<init>",
        "()V",
        "moduleRegistryAdapter",
        "Lexpo/modules/adapters/react/ModuleRegistryAdapter;",
        "getModuleRegistryAdapter",
        "()Lexpo/modules/adapters/react/ModuleRegistryAdapter;",
        "createNativeModules",
        "",
        "Lcom/facebook/react/bridge/NativeModule;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "createViewManagers",
        "Lcom/facebook/react/uimanager/ViewManager;",
        "Companion",
        "expo_release"
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
.field public static final Companion:Lexpo/modules/ExpoModulesPackage$Companion;

.field private static final packageList$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/Package;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final moduleRegistryAdapter:Lexpo/modules/adapters/react/ModuleRegistryAdapter;


# direct methods
.method public static synthetic $r8$lambda$QFBV9-FY5jLEWS4oBZ76Yb8QIkI()Ljava/util/List;
    .locals 1

    invoke-static {}, Lexpo/modules/ExpoModulesPackage;->packageList_delegate$lambda$1()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/ExpoModulesPackage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/ExpoModulesPackage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/ExpoModulesPackage;->Companion:Lexpo/modules/ExpoModulesPackage$Companion;

    .line 21
    new-instance v0, Lexpo/modules/ExpoModulesPackage$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lexpo/modules/ExpoModulesPackage$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lexpo/modules/ExpoModulesPackage;->packageList$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lexpo/modules/adapters/react/ModuleRegistryAdapter;

    sget-object v1, Lexpo/modules/ExpoModulesPackage;->Companion:Lexpo/modules/ExpoModulesPackage$Companion;

    invoke-virtual {v1}, Lexpo/modules/ExpoModulesPackage$Companion;->getPackageList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lexpo/modules/adapters/react/ModuleRegistryAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lexpo/modules/ExpoModulesPackage;->moduleRegistryAdapter:Lexpo/modules/adapters/react/ModuleRegistryAdapter;

    return-void
.end method

.method public static final synthetic access$getPackageList$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 16
    sget-object v0, Lexpo/modules/ExpoModulesPackage;->packageList$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private static final packageList_delegate$lambda$1()Ljava/util/List;
    .locals 4

    .line 23
    :try_start_0
    const-string v0, "expo.modules.ExpoModulesPackageList"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    const-string v1, "getPackageList"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 25
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<expo.modules.core.interfaces.Package>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 43
    new-instance v1, Lexpo/modules/ExpoModulesPackage$packageList_delegate$lambda$1$$inlined$sortedByDescending$1;

    invoke-direct {v1}, Lexpo/modules/ExpoModulesPackage$packageList_delegate$lambda$1$$inlined$sortedByDescending$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 28
    const-string v1, "Couldn\'t get expo package list."

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "ExpoModulesPackage"

    invoke-static {v2, v1, v0}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lexpo/modules/ExpoModulesPackage;->moduleRegistryAdapter:Lexpo/modules/adapters/react/ModuleRegistryAdapter;

    invoke-virtual {v0, p1}, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;

    move-result-object p1

    const-string v0, "createNativeModules(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager<",
            "**>;>;"
        }
    .end annotation

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lexpo/modules/ExpoModulesPackage;->moduleRegistryAdapter:Lexpo/modules/adapters/react/ModuleRegistryAdapter;

    invoke-virtual {v0, p1}, Lexpo/modules/adapters/react/ModuleRegistryAdapter;->createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;

    move-result-object p1

    const-string v0, "createViewManagers(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getModuleRegistryAdapter()Lexpo/modules/adapters/react/ModuleRegistryAdapter;
    .locals 1

    .line 17
    iget-object v0, p0, Lexpo/modules/ExpoModulesPackage;->moduleRegistryAdapter:Lexpo/modules/adapters/react/ModuleRegistryAdapter;

    return-object v0
.end method

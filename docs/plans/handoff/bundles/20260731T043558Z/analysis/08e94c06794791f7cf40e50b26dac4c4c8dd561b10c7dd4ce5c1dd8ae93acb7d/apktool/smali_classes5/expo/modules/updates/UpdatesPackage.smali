.class public final Lexpo/modules/updates/UpdatesPackage;
.super Ljava/lang/Object;
.source "UpdatesPackage.kt"

# interfaces
.implements Lexpo/modules/core/interfaces/Package;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/UpdatesPackage$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00052\u0006\u0010\u000b\u001a\u00020\u0008H\u0016J\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0002\u00a8\u0006\u0011"
    }
    d2 = {
        "Lexpo/modules/updates/UpdatesPackage;",
        "Lexpo/modules/core/interfaces/Package;",
        "<init>",
        "()V",
        "createReactNativeHostHandlers",
        "",
        "Lexpo/modules/core/interfaces/ReactNativeHostHandler;",
        "context",
        "Landroid/content/Context;",
        "createReactActivityHandlers",
        "Lexpo/modules/core/interfaces/ReactActivityHandler;",
        "activityContext",
        "createApplicationLifecycleListeners",
        "Lexpo/modules/core/interfaces/ApplicationLifecycleListener;",
        "isRunningAndroidTest",
        "",
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
.field public static final Companion:Lexpo/modules/updates/UpdatesPackage$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static final isUsingCustomInit:Z

.field private static final isUsingNativeDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/UpdatesPackage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/UpdatesPackage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/UpdatesPackage;->Companion:Lexpo/modules/updates/UpdatesPackage$Companion;

    .line 122
    const-string v0, "UpdatesPackage"

    sput-object v0, Lexpo/modules/updates/UpdatesPackage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$isRunningAndroidTest(Lexpo/modules/updates/UpdatesPackage;)Z
    .locals 0

    .line 24
    invoke-direct {p0}, Lexpo/modules/updates/UpdatesPackage;->isRunningAndroidTest()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isUsingCustomInit$cp()Z
    .locals 1

    .line 24
    sget-boolean v0, Lexpo/modules/updates/UpdatesPackage;->isUsingCustomInit:Z

    return v0
.end method

.method public static final synthetic access$isUsingNativeDebug$cp()Z
    .locals 1

    .line 24
    sget-boolean v0, Lexpo/modules/updates/UpdatesPackage;->isUsingNativeDebug:Z

    return v0
.end method

.method private final isRunningAndroidTest()Z
    .locals 1

    .line 114
    :try_start_0
    const-string v0, "androidx.test.espresso.Espresso"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public createApplicationLifecycleListeners(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/ApplicationLifecycleListener;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lexpo/modules/updates/UpdatesPackage$createApplicationLifecycleListeners$handler$1;

    invoke-direct {v0, p0, p1}, Lexpo/modules/updates/UpdatesPackage$createApplicationLifecycleListeners$handler$1;-><init>(Lexpo/modules/updates/UpdatesPackage;Landroid/content/Context;)V

    .line 109
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public createReactActivityHandlers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/ReactActivityHandler;",
            ">;"
        }
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance p1, Lexpo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1;

    invoke-direct {p1}, Lexpo/modules/updates/UpdatesPackage$createReactActivityHandlers$handler$1;-><init>()V

    .line 94
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public createReactNativeHostHandlers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/ReactNativeHostHandler;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lexpo/modules/updates/UpdatesPackage$createReactNativeHostHandlers$handler$1;

    invoke-direct {v0, p1}, Lexpo/modules/updates/UpdatesPackage$createReactNativeHostHandlers$handler$1;-><init>(Landroid/content/Context;)V

    check-cast v0, Lexpo/modules/core/interfaces/ReactNativeHostHandler;

    .line 53
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

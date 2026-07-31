.class public final Lexpo/modules/kotlin/ExpoModulesHelper;
.super Ljava/lang/Object;
.source "ExpoModulesHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/ExpoModulesHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lexpo/modules/kotlin/ExpoModulesHelper;",
        "",
        "<init>",
        "()V",
        "Companion",
        "expo-modules-core_release"
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
.field public static final Companion:Lexpo/modules/kotlin/ExpoModulesHelper$Companion;

.field private static final modulesProvider$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lexpo/modules/kotlin/ModulesProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$zH22VWPZWHcXGnKndIcP6uY-PpE()Lexpo/modules/kotlin/ModulesProvider;
    .locals 1

    invoke-static {}, Lexpo/modules/kotlin/ExpoModulesHelper;->modulesProvider_delegate$lambda$0()Lexpo/modules/kotlin/ModulesProvider;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/kotlin/ExpoModulesHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/ExpoModulesHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/kotlin/ExpoModulesHelper;->Companion:Lexpo/modules/kotlin/ExpoModulesHelper$Companion;

    .line 7
    new-instance v0, Lexpo/modules/kotlin/ExpoModulesHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lexpo/modules/kotlin/ExpoModulesHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lexpo/modules/kotlin/ExpoModulesHelper;->modulesProvider$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getModulesProvider$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 5
    sget-object v0, Lexpo/modules/kotlin/ExpoModulesHelper;->modulesProvider$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private static final modulesProvider_delegate$lambda$0()Lexpo/modules/kotlin/ModulesProvider;
    .locals 3

    .line 9
    :try_start_0
    const-string v0, "expo.modules.ExpoModulesPackageList"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 10
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type expo.modules.kotlin.ModulesProvider"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lexpo/modules/kotlin/ModulesProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    const-string v1, "Couldn\'t get expo modules list."

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "ExpoModulesHelper"

    invoke-static {v2, v1, v0}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

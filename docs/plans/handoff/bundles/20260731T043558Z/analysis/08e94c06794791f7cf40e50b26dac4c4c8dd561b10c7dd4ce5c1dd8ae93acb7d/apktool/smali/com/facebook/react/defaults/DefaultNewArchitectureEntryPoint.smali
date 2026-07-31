.class public final Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;
.super Ljava/lang/Object;
.source "DefaultNewArchitectureEntryPoint.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\rH\u0007J,\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0007R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0010\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\r8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0011\u0010\u0003\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u00020\r8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0015\u0010\u0003\u001a\u0004\u0008\u0016\u0010\u0013R\u000e\u0010\u0017\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u00020\r8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0019\u0010\u0003\u001a\u0004\u0008\u001a\u0010\u0013R\u000e\u0010\u001b\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\r8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001c\u0010\u0003\u001a\u0004\u0008\u001d\u0010\u0013\u00a8\u0006!"
    }
    d2 = {
        "Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;",
        "",
        "<init>",
        "()V",
        "releaseLevel",
        "Lcom/facebook/react/common/ReleaseLevel;",
        "getReleaseLevel",
        "()Lcom/facebook/react/common/ReleaseLevel;",
        "setReleaseLevel",
        "(Lcom/facebook/react/common/ReleaseLevel;)V",
        "load",
        "",
        "turboModulesEnabled",
        "",
        "fabricEnabled",
        "bridgelessEnabled",
        "privateFabricEnabled",
        "getFabricEnabled$annotations",
        "getFabricEnabled",
        "()Z",
        "privateTurboModulesEnabled",
        "getTurboModulesEnabled$annotations",
        "getTurboModulesEnabled",
        "privateConcurrentReactEnabled",
        "concurrentReactEnabled",
        "getConcurrentReactEnabled$annotations",
        "getConcurrentReactEnabled",
        "privateBridgelessEnabled",
        "getBridgelessEnabled$annotations",
        "getBridgelessEnabled",
        "isConfigurationValid",
        "Lkotlin/Pair;",
        "",
        "ReactAndroid_release"
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
.field public static final INSTANCE:Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;

.field private static privateBridgelessEnabled:Z

.field private static privateConcurrentReactEnabled:Z

.field private static privateFabricEnabled:Z

.field private static privateTurboModulesEnabled:Z

.field private static releaseLevel:Lcom/facebook/react/common/ReleaseLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;

    invoke-direct {v0}, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;-><init>()V

    sput-object v0, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->INSTANCE:Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;

    .line 33
    sget-object v0, Lcom/facebook/react/common/ReleaseLevel;->STABLE:Lcom/facebook/react/common/ReleaseLevel;

    sput-object v0, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->releaseLevel:Lcom/facebook/react/common/ReleaseLevel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBridgelessEnabled()Z
    .locals 1

    .line 93
    sget-boolean v0, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->privateBridgelessEnabled:Z

    return v0
.end method

.method public static synthetic getBridgelessEnabled$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getConcurrentReactEnabled()Z
    .locals 1

    .line 87
    sget-boolean v0, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->privateConcurrentReactEnabled:Z

    return v0
.end method

.method public static synthetic getConcurrentReactEnabled$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getFabricEnabled()Z
    .locals 1

    .line 75
    sget-boolean v0, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->privateFabricEnabled:Z

    return v0
.end method

.method public static synthetic getFabricEnabled$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getTurboModulesEnabled()Z
    .locals 1

    .line 81
    sget-boolean v0, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->privateTurboModulesEnabled:Z

    return v0
.end method

.method public static synthetic getTurboModulesEnabled$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final load()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2, v2, v2, v0, v1}, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->load$default(ZZZILjava/lang/Object;)V

    return-void
.end method

.method public static final load(Z)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->load$default(ZZZILjava/lang/Object;)V

    return-void
.end method

.method public static final load(ZZ)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->load$default(ZZZILjava/lang/Object;)V

    return-void
.end method

.method public static final load(ZZZ)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 43
    sget-object v0, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->INSTANCE:Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;

    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->isConfigurationValid(ZZZ)Lkotlin/Pair;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 48
    sget-object v0, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->releaseLevel:Lcom/facebook/react/common/ReleaseLevel;

    sget-object v1, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/facebook/react/common/ReleaseLevel;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 58
    new-instance v0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsOverrides_RNOSS_Stable_Android;

    invoke-direct {v0, p1, p2, p0}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsOverrides_RNOSS_Stable_Android;-><init>(ZZZ)V

    check-cast v0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsProvider;

    .line 57
    invoke-static {v0}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->override(Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsProvider;)V

    goto :goto_0

    .line 48
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 54
    :cond_1
    new-instance v0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsOverrides_RNOSS_Canary_Android;

    invoke-direct {v0}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsOverrides_RNOSS_Canary_Android;-><init>()V

    check-cast v0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsProvider;

    invoke-static {v0}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->override(Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsProvider;)V

    goto :goto_0

    .line 51
    :cond_2
    new-instance v0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsOverrides_RNOSS_Experimental_Android;

    invoke-direct {v0}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsOverrides_RNOSS_Experimental_Android;-><init>()V

    check-cast v0, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsProvider;

    .line 50
    invoke-static {v0}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->override(Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlagsProvider;)V

    .line 63
    :goto_0
    sput-boolean p1, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->privateFabricEnabled:Z

    .line 64
    sput-boolean p0, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->privateTurboModulesEnabled:Z

    .line 65
    sput-boolean p1, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->privateConcurrentReactEnabled:Z

    .line 66
    sput-boolean p2, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->privateBridgelessEnabled:Z

    .line 68
    sget-object p0, Lcom/facebook/react/defaults/DefaultSoLoader;->Companion:Lcom/facebook/react/defaults/DefaultSoLoader$Companion;

    invoke-virtual {p0}, Lcom/facebook/react/defaults/DefaultSoLoader$Companion;->maybeLoadSoLibrary()V

    return-void

    .line 45
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic load$default(ZZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    move p0, v0

    :cond_0
    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_1

    move p1, v0

    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_2

    move p2, v0

    .line 35
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->load(ZZZ)V

    return-void
.end method


# virtual methods
.method public final getReleaseLevel()Lcom/facebook/react/common/ReleaseLevel;
    .locals 1

    .line 33
    sget-object v0, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->releaseLevel:Lcom/facebook/react/common/ReleaseLevel;

    return-object v0
.end method

.method public final isConfigurationValid(ZZZ)Lkotlin/Pair;
    .locals 1
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 103
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 104
    const-string p1, "fabricEnabled=true requires turboModulesEnabled=true (is now false) - Please update your DefaultNewArchitectureEntryPoint.load() parameters."

    .line 103
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 107
    :cond_1
    const-string p1, "bridgelessEnabled=true requires (turboModulesEnabled=true AND fabricEnabled=true) - Please update your DefaultNewArchitectureEntryPoint.load() parameters."

    .line 106
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 108
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, ""

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final setReleaseLevel(Lcom/facebook/react/common/ReleaseLevel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sput-object p1, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->releaseLevel:Lcom/facebook/react/common/ReleaseLevel;

    return-void
.end method

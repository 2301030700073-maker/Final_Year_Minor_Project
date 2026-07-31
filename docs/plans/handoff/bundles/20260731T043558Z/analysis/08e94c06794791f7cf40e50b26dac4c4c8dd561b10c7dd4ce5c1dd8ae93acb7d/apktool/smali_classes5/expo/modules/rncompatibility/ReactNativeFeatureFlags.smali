.class public final Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;
.super Ljava/lang/Object;
.source "ReactNativeFeatureFlags.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;",
        "",
        "<init>",
        "()V",
        "enableBridgelessArchitecture",
        "",
        "getEnableBridgelessArchitecture",
        "()Z",
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
.field public static final INSTANCE:Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;

.field private static final enableBridgelessArchitecture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;

    invoke-direct {v0}, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;-><init>()V

    sput-object v0, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->INSTANCE:Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;

    .line 11
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBridgelessArchitecture()Z

    move-result v0

    sput-boolean v0, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->enableBridgelessArchitecture:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEnableBridgelessArchitecture()Z
    .locals 1

    .line 11
    sget-boolean v0, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->enableBridgelessArchitecture:Z

    return v0
.end method

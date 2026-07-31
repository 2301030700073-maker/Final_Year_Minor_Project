.class public abstract Lexpo/modules/manifests/core/PluginType;
.super Ljava/lang/Object;
.source "Manifest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/manifests/core/PluginType$Companion;,
        Lexpo/modules/manifests/core/PluginType$WithProps;,
        Lexpo/modules/manifests/core/PluginType$WithoutProps;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u0000 \u00062\u00020\u0001:\u0003\u0004\u0005\u0006B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u0082\u0001\u0002\u0007\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lexpo/modules/manifests/core/PluginType;",
        "",
        "<init>",
        "()V",
        "WithProps",
        "WithoutProps",
        "Companion",
        "Lexpo/modules/manifests/core/PluginType$WithProps;",
        "Lexpo/modules/manifests/core/PluginType$WithoutProps;",
        "expo-manifests_release"
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
.field public static final Companion:Lexpo/modules/manifests/core/PluginType$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/manifests/core/PluginType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/manifests/core/PluginType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/manifests/core/PluginType;->Companion:Lexpo/modules/manifests/core/PluginType$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/manifests/core/PluginType;-><init>()V

    return-void
.end method

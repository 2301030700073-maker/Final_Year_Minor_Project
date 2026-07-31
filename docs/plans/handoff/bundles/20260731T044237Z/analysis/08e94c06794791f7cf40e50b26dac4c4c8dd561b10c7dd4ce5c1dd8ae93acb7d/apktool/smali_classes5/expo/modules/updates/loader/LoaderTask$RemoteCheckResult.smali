.class public abstract Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;
.super Ljava/lang/Object;
.source "LoaderTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/loader/LoaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RemoteCheckResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$NoUpdateAvailable;,
        Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$RollBackToEmbedded;,
        Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$Status;,
        Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$UpdateAvailable;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\u0006\u0007\u0008\tB\u0011\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0001\u0003\n\u000b\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;",
        "",
        "status",
        "Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$Status;",
        "<init>",
        "(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$Status;)V",
        "Status",
        "NoUpdateAvailable",
        "UpdateAvailable",
        "RollBackToEmbedded",
        "Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$NoUpdateAvailable;",
        "Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$RollBackToEmbedded;",
        "Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$UpdateAvailable;",
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


# instance fields
.field private final status:Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$Status;


# direct methods
.method private constructor <init>(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$Status;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;->status:Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$Status;

    return-void
.end method

.method public synthetic constructor <init>(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$Status;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;-><init>(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$Status;)V

    return-void
.end method

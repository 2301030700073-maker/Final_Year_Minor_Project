.class public abstract Lexpo/modules/updates/IUpdatesController$FetchUpdateResult;
.super Ljava/lang/Object;
.source "IUpdatesController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/IUpdatesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FetchUpdateResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$ErrorResult;,
        Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$Failure;,
        Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$RollBackToEmbedded;,
        Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$Status;,
        Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$Success;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0005\u0006\u0007\u0008\t\nB\u0011\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0001\u0004\u000b\u000c\r\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lexpo/modules/updates/IUpdatesController$FetchUpdateResult;",
        "",
        "status",
        "Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$Status;",
        "<init>",
        "(Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$Status;)V",
        "Status",
        "Success",
        "Failure",
        "RollBackToEmbedded",
        "ErrorResult",
        "Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$ErrorResult;",
        "Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$Failure;",
        "Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$RollBackToEmbedded;",
        "Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$Success;",
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
.field private final status:Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$Status;


# direct methods
.method private constructor <init>(Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$Status;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/updates/IUpdatesController$FetchUpdateResult;->status:Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$Status;

    return-void
.end method

.method public synthetic constructor <init>(Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$Status;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lexpo/modules/updates/IUpdatesController$FetchUpdateResult;-><init>(Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$Status;)V

    return-void
.end method

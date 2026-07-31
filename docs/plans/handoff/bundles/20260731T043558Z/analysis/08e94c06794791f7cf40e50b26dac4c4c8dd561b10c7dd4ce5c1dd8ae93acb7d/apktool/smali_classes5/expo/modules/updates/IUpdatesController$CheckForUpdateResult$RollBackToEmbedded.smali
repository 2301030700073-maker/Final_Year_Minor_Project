.class public final Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$RollBackToEmbedded;
.super Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult;
.source "IUpdatesController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RollBackToEmbedded"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$RollBackToEmbedded;",
        "Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult;",
        "commitTime",
        "Ljava/util/Date;",
        "<init>",
        "(Ljava/util/Date;)V",
        "getCommitTime",
        "()Ljava/util/Date;",
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
.field private final commitTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    const-string v0, "commitTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    sget-object v0, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$Status;->ROLL_BACK_TO_EMBEDDED:Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$Status;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult;-><init>(Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$Status;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$RollBackToEmbedded;->commitTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final getCommitTime()Ljava/util/Date;
    .locals 1

    .line 137
    iget-object v0, p0, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$RollBackToEmbedded;->commitTime:Ljava/util/Date;

    return-object v0
.end method

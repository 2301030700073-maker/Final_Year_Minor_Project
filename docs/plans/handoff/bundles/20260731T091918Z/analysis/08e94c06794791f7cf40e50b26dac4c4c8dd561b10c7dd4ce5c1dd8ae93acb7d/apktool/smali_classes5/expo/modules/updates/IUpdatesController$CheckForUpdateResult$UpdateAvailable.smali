.class public final Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$UpdateAvailable;
.super Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult;
.source "IUpdatesController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateAvailable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$UpdateAvailable;",
        "Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult;",
        "update",
        "Lexpo/modules/updates/manifest/Update;",
        "<init>",
        "(Lexpo/modules/updates/manifest/Update;)V",
        "getUpdate",
        "()Lexpo/modules/updates/manifest/Update;",
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
.field private final update:Lexpo/modules/updates/manifest/Update;


# direct methods
.method public constructor <init>(Lexpo/modules/updates/manifest/Update;)V
    .locals 2

    const-string v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$Status;->UPDATE_AVAILABLE:Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$Status;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult;-><init>(Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$Status;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$UpdateAvailable;->update:Lexpo/modules/updates/manifest/Update;

    return-void
.end method


# virtual methods
.method public final getUpdate()Lexpo/modules/updates/manifest/Update;
    .locals 1

    .line 136
    iget-object v0, p0, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$UpdateAvailable;->update:Lexpo/modules/updates/manifest/Update;

    return-object v0
.end method

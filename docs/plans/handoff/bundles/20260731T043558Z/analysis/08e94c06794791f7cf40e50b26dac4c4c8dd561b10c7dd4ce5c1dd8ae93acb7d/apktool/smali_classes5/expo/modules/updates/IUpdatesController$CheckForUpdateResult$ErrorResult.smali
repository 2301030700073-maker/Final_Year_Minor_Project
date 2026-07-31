.class public final Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$ErrorResult;
.super Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult;
.source "IUpdatesController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ErrorResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0015\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$ErrorResult;",
        "Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult;",
        "error",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "<init>",
        "(Ljava/lang/Exception;)V",
        "getError",
        "()Ljava/lang/Exception;",
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
.field private final error:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    sget-object v0, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$Status;->ERROR:Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$Status;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult;-><init>(Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$Status;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$ErrorResult;->error:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final getError()Ljava/lang/Exception;
    .locals 1

    .line 138
    iget-object v0, p0, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$ErrorResult;->error:Ljava/lang/Exception;

    return-object v0
.end method

.class public final Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadError;
.super Lexpo/modules/updates/statemachine/UpdatesStateEvent;
.source "UpdatesStateEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/statemachine/UpdatesStateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadError"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadError;",
        "Lexpo/modules/updates/statemachine/UpdatesStateEvent;",
        "errorMessage",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "error",
        "Lexpo/modules/updates/statemachine/UpdatesStateError;",
        "getError",
        "()Lexpo/modules/updates/statemachine/UpdatesStateError;",
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
.field private final errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->DownloadError:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lexpo/modules/updates/statemachine/UpdatesStateEvent;-><init>(Lexpo/modules/updates/statemachine/UpdatesStateEventType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadError;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getError()Lexpo/modules/updates/statemachine/UpdatesStateError;
    .locals 2

    .line 29
    new-instance v0, Lexpo/modules/updates/statemachine/UpdatesStateError;

    iget-object v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadError;->errorMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lexpo/modules/updates/statemachine/UpdatesStateError;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

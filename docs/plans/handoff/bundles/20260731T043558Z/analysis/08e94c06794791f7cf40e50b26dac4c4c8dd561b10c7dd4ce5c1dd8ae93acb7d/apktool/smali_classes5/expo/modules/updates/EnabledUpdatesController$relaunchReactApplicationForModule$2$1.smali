.class public final Lexpo/modules/updates/EnabledUpdatesController$relaunchReactApplicationForModule$2$1;
.super Lexpo/modules/kotlin/exception/CodedException;
.source "EnabledUpdatesController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/EnabledUpdatesController;->relaunchReactApplicationForModule(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "expo/modules/updates/EnabledUpdatesController$relaunchReactApplicationForModule$2$1",
        "Lexpo/modules/kotlin/exception/CodedException;",
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


# direct methods
.method constructor <init>()V
    .locals 3

    .line 203
    const-string v0, "Cannot relaunch without a launched update."

    const/4 v1, 0x0

    const-string v2, "ERR_UPDATES_RELOAD"

    invoke-direct {p0, v2, v0, v1}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

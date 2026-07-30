.class public final Lexpo/modules/updates/events/NoOpUpdatesEventManager;
.super Ljava/lang/Object;
.source "NoOpUpdatesEventManager.kt"

# interfaces
.implements Lexpo/modules/updates/events/IUpdatesEventManager;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lexpo/modules/updates/events/NoOpUpdatesEventManager;",
        "Lexpo/modules/updates/events/IUpdatesEventManager;",
        "<init>",
        "()V",
        "observer",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/updates/events/IUpdatesEventManagerObserver;",
        "getObserver",
        "()Ljava/lang/ref/WeakReference;",
        "setObserver",
        "(Ljava/lang/ref/WeakReference;)V",
        "sendStateMachineContextEvent",
        "",
        "context",
        "Lexpo/modules/updates/statemachine/UpdatesStateContext;",
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
.field private observer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/updates/events/IUpdatesEventManagerObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getObserver()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/updates/events/IUpdatesEventManagerObserver;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lexpo/modules/updates/events/NoOpUpdatesEventManager;->observer:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public sendStateMachineContextEvent(Lexpo/modules/updates/statemachine/UpdatesStateContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setObserver(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/updates/events/IUpdatesEventManagerObserver;",
            ">;)V"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lexpo/modules/updates/events/NoOpUpdatesEventManager;->observer:Ljava/lang/ref/WeakReference;

    return-void
.end method

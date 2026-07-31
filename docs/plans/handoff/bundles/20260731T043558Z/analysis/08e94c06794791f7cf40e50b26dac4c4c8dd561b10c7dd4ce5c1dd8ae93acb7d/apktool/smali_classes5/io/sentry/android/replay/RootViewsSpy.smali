.class public final Lio/sentry/android/replay/RootViewsSpy;
.super Ljava/lang/Object;
.source "Windows.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/RootViewsSpy$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/sentry/android/replay/RootViewsSpy;",
        "Ljava/io/Closeable;",
        "()V",
        "delegatingViewList",
        "Ljava/util/ArrayList;",
        "Landroid/view/View;",
        "Lkotlin/collections/ArrayList;",
        "isClosed",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "listeners",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Lio/sentry/android/replay/OnRootViewsChangedListener;",
        "getListeners",
        "()Ljava/util/concurrent/CopyOnWriteArrayList;",
        "viewListLock",
        "",
        "close",
        "",
        "Companion",
        "sentry-android-replay_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lio/sentry/android/replay/RootViewsSpy$Companion;


# instance fields
.field private final delegatingViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lio/sentry/android/replay/OnRootViewsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final viewListLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/android/replay/RootViewsSpy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/android/replay/RootViewsSpy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/android/replay/RootViewsSpy;->Companion:Lio/sentry/android/replay/RootViewsSpy$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/android/replay/RootViewsSpy;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/android/replay/RootViewsSpy;->viewListLock:Ljava/lang/Object;

    .line 128
    new-instance v0, Lio/sentry/android/replay/RootViewsSpy$listeners$1;

    invoke-direct {v0, p0}, Lio/sentry/android/replay/RootViewsSpy$listeners$1;-><init>(Lio/sentry/android/replay/RootViewsSpy;)V

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Lio/sentry/android/replay/RootViewsSpy;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 140
    new-instance v0, Lio/sentry/android/replay/RootViewsSpy$delegatingViewList$1;

    invoke-direct {v0, p0}, Lio/sentry/android/replay/RootViewsSpy$delegatingViewList$1;-><init>(Lio/sentry/android/replay/RootViewsSpy;)V

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lio/sentry/android/replay/RootViewsSpy;->delegatingViewList:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/sentry/android/replay/RootViewsSpy;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDelegatingViewList$p(Lio/sentry/android/replay/RootViewsSpy;)Ljava/util/ArrayList;
    .locals 0

    .line 123
    iget-object p0, p0, Lio/sentry/android/replay/RootViewsSpy;->delegatingViewList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getViewListLock$p(Lio/sentry/android/replay/RootViewsSpy;)Ljava/lang/Object;
    .locals 0

    .line 123
    iget-object p0, p0, Lio/sentry/android/replay/RootViewsSpy;->viewListLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$isClosed$p(Lio/sentry/android/replay/RootViewsSpy;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 123
    iget-object p0, p0, Lio/sentry/android/replay/RootViewsSpy;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 163
    iget-object v0, p0, Lio/sentry/android/replay/RootViewsSpy;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 164
    iget-object v0, p0, Lio/sentry/android/replay/RootViewsSpy;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public final getListeners()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lio/sentry/android/replay/OnRootViewsChangedListener;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lio/sentry/android/replay/RootViewsSpy;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.class public abstract Landroidx/camera/view/internal/compat/quirk/DeviceQuirks;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static volatile sQuirks:Landroidx/camera/core/impl/Quirks;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Landroidx/camera/core/impl/QuirkSettingsHolder;->sInstance:Landroidx/camera/core/impl/QuirkSettingsHolder;

    .line 2
    .line 3
    invoke-static {}, Lorg/slf4j/helpers/Util;->directExecutor()Lcom/bumptech/glide/util/Executors$1;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Landroidx/camera/core/SessionConfig$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/4 v3, 0x6

    .line 10
    invoke-direct {v2, v3}, Landroidx/camera/core/SessionConfig$$ExternalSyntheticLambda0;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Landroidx/camera/core/impl/QuirkSettingsHolder;->mObservable:Landroidx/compose/ui/node/NodeChain$Differ;

    .line 14
    .line 15
    new-instance v3, Landroidx/camera/core/impl/QuirkSettingsHolder$ObserverToConsumerAdapter;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-direct {v3, v4, v2}, Landroidx/camera/core/impl/QuirkSettingsHolder$ObserverToConsumerAdapter;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/node/NodeChain$Differ;->addObserver(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

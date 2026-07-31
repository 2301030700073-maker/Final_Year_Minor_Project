.class public final Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$lambda$1$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic $lifecycleOwner$inlined:Landroidx/lifecycle/LifecycleOwner;

.field public final synthetic $listener$inlined:Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$1$1$listener$1;

.field public final synthetic $observer$inlined:Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda17;

.field public final synthetic $sensorManager$inlined:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda17;Landroid/hardware/SensorManager;Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$1$1$listener$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$lambda$1$0$$inlined$onDispose$1;->$lifecycleOwner$inlined:Landroidx/lifecycle/LifecycleOwner;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$lambda$1$0$$inlined$onDispose$1;->$observer$inlined:Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda17;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$lambda$1$0$$inlined$onDispose$1;->$sensorManager$inlined:Landroid/hardware/SensorManager;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$lambda$1$0$$inlined$onDispose$1;->$listener$inlined:Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$1$1$listener$1;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$lambda$1$0$$inlined$onDispose$1;->$lifecycleOwner$inlined:Landroidx/lifecycle/LifecycleOwner;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$lambda$1$0$$inlined$onDispose$1;->$observer$inlined:Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda17;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$lambda$1$0$$inlined$onDispose$1;->$sensorManager$inlined:Landroid/hardware/SensorManager;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$lambda$1$0$$inlined$onDispose$1;->$listener$inlined:Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$1$1$listener$1;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

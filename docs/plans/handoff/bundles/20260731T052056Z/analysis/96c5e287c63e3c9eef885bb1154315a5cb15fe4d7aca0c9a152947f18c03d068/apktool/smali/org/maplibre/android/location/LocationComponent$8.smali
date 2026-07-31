.class public final Lorg/maplibre/android/location/LocationComponent$8;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic this$0:Lorg/maplibre/android/location/LocationComponent;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/LocationComponent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponent$8;->this$0:Lorg/maplibre/android/location/LocationComponent;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCameraTrackingChanged()V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent$8;->this$0:Lorg/maplibre/android/location/LocationComponent;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    .line 4
    .line 5
    const/4 v1, 0x7

    .line 6
    invoke-virtual {v0, v1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponent;->updateAnimatorListenerHolders()V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraTrackingChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lorg/maplibre/android/location/LocationComponent$8;

    .line 36
    .line 37
    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponent$8;->onCameraTrackingChanged()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public final onCameraTrackingDismissed()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent$8;->this$0:Lorg/maplibre/android/location/LocationComponent;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraTrackingChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lorg/maplibre/android/location/LocationComponent$8;

    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponent$8;->onCameraTrackingDismissed()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

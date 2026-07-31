.class public final Lorg/maplibre/android/maps/Transform$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/maps/MapView$OnCameraDidChangeListener;


# instance fields
.field public final synthetic this$0:Lorg/maplibre/android/maps/Transform;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/Transform;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/maplibre/android/maps/Transform$1;->this$0:Lorg/maplibre/android/maps/Transform;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCameraDidChange(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lorg/maplibre/android/maps/Transform$1;->this$0:Lorg/maplibre/android/maps/Transform;

    .line 4
    .line 5
    iget-object v0, p1, Lorg/maplibre/android/maps/Transform;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Lorg/maplibre/android/maps/Transform;->mapView:Lorg/maplibre/android/maps/MapView;

    .line 11
    .line 12
    iget-object p1, p1, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 13
    .line 14
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraDidChangeListenerList:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

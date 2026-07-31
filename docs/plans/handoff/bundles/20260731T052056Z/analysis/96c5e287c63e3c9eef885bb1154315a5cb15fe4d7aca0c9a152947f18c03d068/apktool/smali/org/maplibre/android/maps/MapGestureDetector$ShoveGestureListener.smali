.class public final Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic this$0:Lorg/maplibre/android/maps/MapGestureDetector;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapGestureDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onShove(F)V
    .locals 7

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ShoveGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->getTilt()D

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    const v3, 0x3dcccccd    # 0.1f

    .line 16
    .line 17
    .line 18
    mul-float/2addr p1, v3

    .line 19
    float-to-double v3, p1

    .line 20
    sub-double/2addr v1, v3

    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    .line 24
    .line 25
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(DD)D

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    iget-object p1, v0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 34
    .line 35
    check-cast p1, Lorg/maplibre/android/maps/NativeMapView;

    .line 36
    .line 37
    invoke-virtual {p1, v1, v2}, Lorg/maplibre/android/maps/NativeMapView;->setPitch(D)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onShoveListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    throw p0
.end method

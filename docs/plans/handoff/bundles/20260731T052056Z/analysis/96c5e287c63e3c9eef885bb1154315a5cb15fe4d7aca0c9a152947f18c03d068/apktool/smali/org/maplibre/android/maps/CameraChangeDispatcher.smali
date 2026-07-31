.class public final Lorg/maplibre/android/maps/CameraChangeDispatcher;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;
.implements Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;


# instance fields
.field public final handler:Landroidx/preference/PreferenceFragmentCompat$1;

.field public idle:Z

.field public moveStartedReason:I

.field public final onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final onCameraMoveCanceled:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final onCameraMoveStarted:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/preference/PreferenceFragmentCompat$1;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, Landroidx/preference/PreferenceFragmentCompat$1;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->handler:Landroidx/preference/PreferenceFragmentCompat$1;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->idle:Z

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 28
    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveCanceled:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final onCameraIdle()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->handler:Landroidx/preference/PreferenceFragmentCompat$1;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat$1;->scheduleMessage(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onCameraMove()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->handler:Landroidx/preference/PreferenceFragmentCompat$1;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat$1;->scheduleMessage(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onCameraMoveStarted(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->moveStartedReason:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->handler:Landroidx/preference/PreferenceFragmentCompat$1;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat$1;->scheduleMessage(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

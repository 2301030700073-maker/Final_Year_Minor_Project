.class public final Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/maps/FocalPointChangeListener;


# instance fields
.field public final focalPointChangeListeners:Ljava/util/ArrayList;

.field public final synthetic this$0:Lorg/maplibre/android/maps/MapView;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;->this$0:Lorg/maplibre/android/maps/MapView;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;->focalPointChangeListeners:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final onFocalPointChanged(Landroid/graphics/PointF;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;->this$0:Lorg/maplibre/android/maps/MapView;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 8
    .line 9
    iget-object v1, v1, Lorg/maplibre/android/maps/UiSettings;->userProvidedFocalPoint:Landroid/graphics/PointF;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v1, p1

    .line 15
    :goto_0
    iput-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector;->constantFocalPoint:Landroid/graphics/PointF;

    .line 16
    .line 17
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;->focalPointChangeListeners:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lorg/maplibre/android/maps/FocalPointChangeListener;

    .line 34
    .line 35
    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/FocalPointChangeListener;->onFocalPointChanged(Landroid/graphics/PointF;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    return-void
.end method

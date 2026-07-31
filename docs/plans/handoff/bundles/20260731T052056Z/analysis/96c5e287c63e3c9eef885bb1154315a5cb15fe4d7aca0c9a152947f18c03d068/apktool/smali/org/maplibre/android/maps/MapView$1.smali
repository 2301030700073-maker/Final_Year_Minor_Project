.class public final Lorg/maplibre/android/maps/MapView$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/maps/FocalPointChangeListener;


# instance fields
.field public final synthetic this$0:Lorg/maplibre/android/maps/MapView;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/maplibre/android/maps/MapView$1;->this$0:Lorg/maplibre/android/maps/MapView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFocalPointChanged(Landroid/graphics/PointF;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$1;->this$0:Lorg/maplibre/android/maps/MapView;

    .line 2
    .line 3
    iput-object p1, p0, Lorg/maplibre/android/maps/MapView;->focalPoint:Landroid/graphics/PointF;

    .line 4
    .line 5
    return-void
.end method

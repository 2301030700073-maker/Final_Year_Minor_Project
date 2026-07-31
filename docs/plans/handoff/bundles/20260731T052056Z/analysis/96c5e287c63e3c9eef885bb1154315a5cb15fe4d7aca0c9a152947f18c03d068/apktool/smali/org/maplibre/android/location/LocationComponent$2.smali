.class public final Lorg/maplibre/android/location/LocationComponent$2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;


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
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponent$2;->this$0:Lorg/maplibre/android/location/LocationComponent;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCameraIdle()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent$2;->this$0:Lorg/maplibre/android/location/LocationComponent;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lorg/maplibre/android/location/LocationComponent;->updateLayerOffsets(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.class public final Lorg/maplibre/android/plugins/annotation/AnnotationManager$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/maps/MapView$OnDidFinishLoadingStyleListener;


# instance fields
.field public final synthetic this$0:Lorg/maplibre/android/plugins/annotation/SymbolManager;

.field public final synthetic val$geoJsonOptions:Lorg/maplibre/android/style/sources/GeoJsonOptions;

.field public final synthetic val$maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/plugins/annotation/SymbolManager;Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/style/sources/GeoJsonOptions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/maplibre/android/plugins/annotation/AnnotationManager$1;->this$0:Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/maplibre/android/plugins/annotation/AnnotationManager$1;->val$maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/maplibre/android/plugins/annotation/AnnotationManager$1;->val$geoJsonOptions:Lorg/maplibre/android/style/sources/GeoJsonOptions;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onDidFinishLoadingStyle()V
    .locals 3

    .line 1
    new-instance v0, Lorg/maplibre/android/plugins/annotation/AnnotationManager$1$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/maplibre/android/plugins/annotation/AnnotationManager$1$1;-><init>(Lorg/maplibre/android/plugins/annotation/AnnotationManager$1;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/maplibre/android/plugins/annotation/AnnotationManager$1;->val$maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMap;->style:Lorg/maplibre/android/maps/Style;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-boolean v2, v1, Lorg/maplibre/android/maps/Style;->fullyLoaded:Z

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lorg/maplibre/android/plugins/annotation/AnnotationManager$1$1;->onStyleLoaded(Lorg/maplibre/android/maps/Style;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->awaitingStyleGetters:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

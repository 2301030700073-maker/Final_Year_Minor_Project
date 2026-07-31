.class public final Lorg/maplibre/android/plugins/annotation/AnnotationManager$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/maps/Style$OnStyleLoaded;


# instance fields
.field public final synthetic this$1:Lorg/maplibre/android/plugins/annotation/AnnotationManager$1;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/plugins/annotation/AnnotationManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/maplibre/android/plugins/annotation/AnnotationManager$1$1;->this$1:Lorg/maplibre/android/plugins/annotation/AnnotationManager$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStyleLoaded(Lorg/maplibre/android/maps/Style;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/plugins/annotation/AnnotationManager$1$1;->this$1:Lorg/maplibre/android/plugins/annotation/AnnotationManager$1;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/maplibre/android/plugins/annotation/AnnotationManager$1;->this$0:Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 4
    .line 5
    iput-object p1, v0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->style:Lorg/maplibre/android/maps/Style;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/maplibre/android/plugins/annotation/AnnotationManager$1;->val$geoJsonOptions:Lorg/maplibre/android/style/sources/GeoJsonOptions;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->initializeSourcesAndLayers(Lorg/maplibre/android/style/sources/GeoJsonOptions;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

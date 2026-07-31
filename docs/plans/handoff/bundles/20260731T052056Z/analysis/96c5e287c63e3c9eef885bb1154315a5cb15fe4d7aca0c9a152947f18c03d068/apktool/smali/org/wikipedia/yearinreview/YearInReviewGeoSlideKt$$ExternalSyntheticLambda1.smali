.class public final synthetic Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/maps/OnMapReadyCallback;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Bitmap;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lorg/maplibre/android/maps/MapView;

.field public final synthetic f$3:Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;

.field public final synthetic f$4:Landroid/graphics/Rect;

.field public final synthetic f$5:Landroid/graphics/Paint;

.field public final synthetic f$6:Landroid/graphics/Paint;

.field public final synthetic f$7:Landroid/graphics/Paint;

.field public final synthetic f$8:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;Landroid/content/Context;Lorg/maplibre/android/maps/MapView;Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;Landroid/graphics/Rect;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda1;->f$2:Lorg/maplibre/android/maps/MapView;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda1;->f$3:Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda1;->f$4:Landroid/graphics/Rect;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda1;->f$5:Landroid/graphics/Paint;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda1;->f$6:Landroid/graphics/Paint;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda1;->f$7:Landroid/graphics/Paint;

    .line 19
    .line 20
    iput-object p9, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda1;->f$8:Lkotlin/jvm/functions/Function2;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final onMapReady(Lorg/maplibre/android/maps/MapLibreMap;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/maplibre/android/maps/Style$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/maplibre/android/maps/Style$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 10
    .line 11
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 12
    .line 13
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v1, v1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const-string v1, "asset://mapstyle-dark.json"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v1, "asset://mapstyle.json"

    .line 29
    .line 30
    :goto_0
    iput-object v1, v0, Lorg/maplibre/android/maps/Style$Builder;->styleUri:Ljava/lang/Object;

    .line 31
    .line 32
    new-instance v2, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;

    .line 33
    .line 34
    iget-object v3, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/Bitmap;

    .line 35
    .line 36
    iget-object v5, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    .line 37
    .line 38
    iget-object v6, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda1;->f$2:Lorg/maplibre/android/maps/MapView;

    .line 39
    .line 40
    iget-object v7, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda1;->f$3:Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;

    .line 41
    .line 42
    iget-object v8, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda1;->f$4:Landroid/graphics/Rect;

    .line 43
    .line 44
    iget-object v9, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda1;->f$5:Landroid/graphics/Paint;

    .line 45
    .line 46
    iget-object v10, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda1;->f$6:Landroid/graphics/Paint;

    .line 47
    .line 48
    iget-object v11, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda1;->f$7:Landroid/graphics/Paint;

    .line 49
    .line 50
    iget-object v12, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda1;->f$8:Lkotlin/jvm/functions/Function2;

    .line 51
    .line 52
    move-object v4, p1

    .line 53
    invoke-direct/range {v2 .. v12}, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/Bitmap;Lorg/maplibre/android/maps/MapLibreMap;Landroid/content/Context;Lorg/maplibre/android/maps/MapView;Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;Landroid/graphics/Rect;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Lkotlin/jvm/functions/Function2;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v0, v2}, Lorg/maplibre/android/maps/MapLibreMap;->setStyle(Lorg/maplibre/android/maps/Style$Builder;Lorg/maplibre/android/maps/Style$OnStyleLoaded;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

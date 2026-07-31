.class public final synthetic Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lorg/maplibre/android/maps/MapView;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:Landroid/graphics/Paint;

.field public final synthetic f$3:Landroid/graphics/Paint;

.field public final synthetic f$4:Landroid/graphics/Paint;

.field public final synthetic f$5:Lorg/wikipedia/dataclient/page/NearbyPage;

.field public final synthetic f$6:Lorg/maplibre/android/maps/MapLibreMap;

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:Landroid/content/Context;

.field public final synthetic f$9:Lorg/maplibre/android/plugins/annotation/SymbolManager;


# direct methods
.method public synthetic constructor <init>(Lorg/maplibre/android/maps/MapView;Landroid/graphics/Rect;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Lorg/wikipedia/dataclient/page/NearbyPage;Lorg/maplibre/android/maps/MapLibreMap;Ljava/lang/String;Landroid/content/Context;Lorg/maplibre/android/plugins/annotation/SymbolManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;->f$0:Lorg/maplibre/android/maps/MapView;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;->f$1:Landroid/graphics/Rect;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;->f$2:Landroid/graphics/Paint;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;->f$3:Landroid/graphics/Paint;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;->f$4:Landroid/graphics/Paint;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;->f$5:Lorg/wikipedia/dataclient/page/NearbyPage;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;->f$6:Lorg/maplibre/android/maps/MapLibreMap;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;->f$7:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p9, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;->f$8:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p10, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;->f$9:Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;->f$0:Lorg/maplibre/android/maps/MapView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    sget-object v0, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 18
    .line 19
    iget-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;->f$1:Landroid/graphics/Rect;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;->f$2:Landroid/graphics/Paint;

    .line 22
    .line 23
    iget-object v3, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;->f$3:Landroid/graphics/Paint;

    .line 24
    .line 25
    iget-object v4, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;->f$4:Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-static {p1, v0, v2, v3, v4}, Lorg/jsoup/Jsoup;->getMarkerBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/Bitmap;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;->f$6:Lorg/maplibre/android/maps/MapLibreMap;

    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v2, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;->f$7:Ljava/lang/String;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v3, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;->f$8:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 51
    .line 52
    invoke-direct {v4, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v4}, Lokhttp3/HttpUrl$Companion;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0, v2, p1}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const-string p0, "Provided drawable couldn\'t be converted to a Bitmap."

    .line 66
    .line 67
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    return-object p0

    .line 72
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;->f$5:Lorg/wikipedia/dataclient/page/NearbyPage;

    .line 73
    .line 74
    iget-object p1, p1, Lorg/wikipedia/dataclient/page/NearbyPage;->annotation:Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    iget-object v0, p1, Lorg/maplibre/android/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    .line 79
    .line 80
    const-string v3, "icon-image"

    .line 81
    .line 82
    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;->f$9:Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->update(Lorg/maplibre/android/plugins/annotation/Symbol;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    :goto_1
    return-object v1
.end method

.class public final Lorg/wikipedia/places/PlacesFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$LoadPageCallback;
.implements Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$DismissCallback;
.implements Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0003\u0007\u0008\tB\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/wikipedia/places/PlacesFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$LoadPageCallback;",
        "Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$DismissCallback;",
        "Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;",
        "<init>",
        "()V",
        "AppIconAdapter",
        "RecyclerViewItemHolder",
        "org/jsoup/Jsoup",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CLUSTER_FONT_STACK:[Ljava/lang/String;

.field public static final MARKER_BORDER_SIZE:F

.field public static final MARKER_FONT_STACK:[Ljava/lang/String;

.field public static final MARKER_SIZE:I


# instance fields
.field public _binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

.field public final annotationCache:Lkotlin/collections/ArrayDeque;

.field public final filterLauncher:Landroidx/fragment/app/Fragment$10;

.field public lastCheckedId:I

.field public lastLocation:Landroid/location/Location;

.field public lastLocationQueried:Landroid/location/Location;

.field public lastZoom:D

.field public lastZoomQueried:D

.field public final locationPermissionRequest:Landroidx/fragment/app/Fragment$10;

.field public magnifiedMarker:Lorg/maplibre/android/plugins/annotation/Symbol;

.field public mapboxMap:Lorg/maplibre/android/maps/MapLibreMap;

.field public markerBitmapBase:Landroid/graphics/Bitmap;

.field public markerBorderPaint:Landroid/graphics/Paint;

.field public markerPaintSrc:Landroid/graphics/Paint;

.field public markerPaintSrcIn:Landroid/graphics/Paint;

.field public final markerRect:Landroid/graphics/Rect;

.field public navBarInsets:Landroidx/core/graphics/Insets;

.field public final placesSearchLauncher:Landroidx/fragment/app/Fragment$10;

.field public statusBarInsets:Landroidx/core/graphics/Insets;

.field public symbolManager:Lorg/maplibre/android/plugins/annotation/SymbolManager;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "Open Sans Semibold"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "Open Sans Regular"

    .line 10
    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/wikipedia/places/PlacesFragment;->MARKER_FONT_STACK:[Ljava/lang/String;

    .line 16
    .line 17
    const/high16 v0, 0x42200000    # 40.0f

    .line 18
    .line 19
    invoke-static {v0}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lorg/wikipedia/places/PlacesFragment;->MARKER_SIZE:I

    .line 24
    .line 25
    const/high16 v0, 0x40000000    # 2.0f

    .line 26
    .line 27
    invoke-static {v0}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sput v0, Lorg/wikipedia/places/PlacesFragment;->MARKER_BORDER_SIZE:F

    .line 32
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;

    .line 5
    .line 6
    const/16 v1, 0x16

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;

    .line 14
    .line 15
    const/16 v3, 0x17

    .line 16
    .line 17
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-class v1, Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 25
    .line 26
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 36
    .line 37
    .line 38
    new-instance v4, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 39
    .line 40
    const/4 v5, 0x3

    .line 41
    invoke-direct {v4, v0, v5}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 42
    .line 43
    .line 44
    new-instance v6, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;

    .line 45
    .line 46
    const/16 v7, 0xb

    .line 47
    .line 48
    invoke-direct {v6, p0, v0, v7}, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;I)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lokhttp3/Request$Builder;

    .line 52
    .line 53
    invoke-direct {v0, v1, v2, v6, v4}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lorg/wikipedia/places/PlacesFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 57
    .line 58
    new-instance v0, Lkotlin/collections/ArrayDeque;

    .line 59
    .line 60
    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lorg/wikipedia/places/PlacesFragment;->annotationCache:Lkotlin/collections/ArrayDeque;

    .line 64
    .line 65
    const v0, 0x7f090373

    .line 66
    .line 67
    .line 68
    iput v0, p0, Lorg/wikipedia/places/PlacesFragment;->lastCheckedId:I

    .line 69
    .line 70
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    .line 71
    .line 72
    iput-wide v0, p0, Lorg/wikipedia/places/PlacesFragment;->lastZoom:D

    .line 73
    .line 74
    new-instance v0, Landroid/graphics/Rect;

    .line 75
    .line 76
    sget v1, Lorg/wikipedia/places/PlacesFragment;->MARKER_SIZE:I

    .line 77
    .line 78
    invoke-direct {v0, v3, v3, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lorg/wikipedia/places/PlacesFragment;->markerRect:Landroid/graphics/Rect;

    .line 82
    .line 83
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 84
    .line 85
    const/4 v1, 0x1

    .line 86
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 87
    .line 88
    .line 89
    new-instance v1, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda1;

    .line 90
    .line 91
    invoke-direct {v1, p0, v3}, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/places/PlacesFragment;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 99
    .line 100
    iput-object v0, p0, Lorg/wikipedia/places/PlacesFragment;->locationPermissionRequest:Landroidx/fragment/app/Fragment$10;

    .line 101
    .line 102
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 103
    .line 104
    invoke-direct {v0, v5}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 105
    .line 106
    .line 107
    new-instance v1, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda1;

    .line 108
    .line 109
    const/4 v2, 0x2

    .line 110
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/places/PlacesFragment;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 118
    .line 119
    iput-object v0, p0, Lorg/wikipedia/places/PlacesFragment;->placesSearchLauncher:Landroidx/fragment/app/Fragment$10;

    .line 120
    .line 121
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 122
    .line 123
    invoke-direct {v0, v5}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 124
    .line 125
    .line 126
    new-instance v1, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda1;

    .line 127
    .line 128
    invoke-direct {v1, p0, v5}, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/places/PlacesFragment;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 136
    .line 137
    iput-object v0, p0, Lorg/wikipedia/places/PlacesFragment;->filterLauncher:Landroidx/fragment/app/Fragment$10;

    .line 138
    .line 139
    return-void
.end method

.method public static getDefaultLocation()Landroid/location/Location;
    .locals 4

    .line 1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    const v0, 0x7f1205df

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :cond_1
    if-eqz v0, :cond_3

    .line 21
    .line 22
    const-string v1, ","

    .line 23
    .line 24
    filled-new-array {v1}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    .line 33
    .line 34
    const/16 v2, 0xa

    .line 35
    .line 36
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    new-instance v0, Landroid/location/Location;

    .line 72
    .line 73
    const-string v2, ""

    .line 74
    .line 75
    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Ljava/lang/Number;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 90
    .line 91
    .line 92
    const/4 v2, 0x1

    .line 93
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Ljava/lang/Number;

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    .line 100
    .line 101
    .line 102
    move-result-wide v1

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 104
    .line 105
    .line 106
    return-object v0

    .line 107
    :cond_3
    return-object v1
.end method

.method public static synthetic goToLocation$default(Lorg/wikipedia/places/PlacesFragment;Landroid/location/Location;I)V
    .locals 2

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0, v1}, Lorg/wikipedia/places/PlacesFragment;->goToLocation(Landroid/location/Location;D)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static final locationPermissionRequest$lambda$0(Lorg/wikipedia/places/PlacesFragment;Ljava/util/Map;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 7
    .line 8
    invoke-static {p1, v1, v0}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const-string v5, ""

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 23
    .line 24
    invoke-static {p1, v1, v0}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 38
    .line 39
    new-instance v2, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 40
    .line 41
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 42
    .line 43
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 48
    .line 49
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    const-string v8, "app_places_interaction"

    .line 54
    .line 55
    const-string v3, "location_permission_denied"

    .line 56
    .line 57
    const-string v4, "map_view"

    .line 58
    .line 59
    invoke-direct/range {v2 .. v8}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const p1, 0x7f1205b0

    .line 70
    .line 71
    .line 72
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    :goto_0
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 77
    .line 78
    new-instance v2, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 79
    .line 80
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 81
    .line 82
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 87
    .line 88
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    const-string v8, "app_places_interaction"

    .line 93
    .line 94
    const-string v3, "location_permission_granted"

    .line 95
    .line 96
    const-string v4, "map_view"

    .line 97
    .line 98
    invoke-direct/range {v2 .. v8}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v2}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lorg/wikipedia/places/PlacesFragment;->startLocationTracking()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lorg/wikipedia/places/PlacesFragment;->getViewModel()Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object p1, p1, Lorg/wikipedia/places/PlacesFragmentViewModel;->location:Landroid/location/Location;

    .line 112
    .line 113
    if-nez p1, :cond_2

    .line 114
    .line 115
    invoke-static {}, Lorg/wikipedia/places/PlacesFragment;->getDefaultLocation()Landroid/location/Location;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    :cond_2
    const/4 v0, 0x2

    .line 120
    invoke-static {p0, p1, v0}, Lorg/wikipedia/places/PlacesFragment;->goToLocation$default(Lorg/wikipedia/places/PlacesFragment;Landroid/location/Location;I)V

    .line 121
    .line 122
    .line 123
    return-void
.end method


# virtual methods
.method public final getSearchRadius()I
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment;->mapboxMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapView$2;->getVisibleRegion()Lorg/maplibre/android/geometry/VisibleRegion;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-object p0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->latLngBounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/maplibre/android/geometry/LatLngBounds;->getLatitudeSpan()D

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 18
    .line 19
    div-double/2addr v0, v2

    .line 20
    const-wide v2, 0x40fb21c000000000L    # 111132.0

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    mul-double/2addr v0, v2

    .line 26
    double-to-int p0, v0

    .line 27
    const/16 v0, 0xa

    .line 28
    .line 29
    const/16 v1, 0x2710

    .line 30
    .line 31
    invoke-static {p0, v0, v1}, Lkotlin/text/RegexKt;->coerceIn(III)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_0
    const/16 p0, 0x32

    .line 37
    .line 38
    return p0
.end method

.method public final getViewModel()Lorg/wikipedia/places/PlacesFragmentViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final goToLocation(Landroid/location/Location;D)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v2, v2, Lorg/wikipedia/databinding/FragmentPlacesBinding;->viewButtonsGroup:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    check-cast v2, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 13
    .line 14
    const v3, 0x7f090373

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkInternal(IZ)V

    .line 19
    .line 20
    .line 21
    iget-object v2, v0, Lorg/wikipedia/places/PlacesFragment;->mapboxMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 22
    .line 23
    if-eqz v2, :cond_4

    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/wikipedia/places/PlacesFragment;->getViewModel()Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v5, v0, Lorg/wikipedia/places/PlacesFragment;->mapboxMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    iget-object v5, v5, Lorg/maplibre/android/maps/MapLibreMap;->locationComponent:Lorg/maplibre/android/location/LocationComponent;

    .line 35
    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    iget-boolean v7, v5, Lorg/maplibre/android/location/LocationComponent;->isComponentInitialized:Z

    .line 39
    .line 40
    if-ne v7, v4, :cond_0

    .line 41
    .line 42
    invoke-virtual {v5}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    .line 43
    .line 44
    .line 45
    iget-object v4, v5, Lorg/maplibre/android/location/LocationComponent;->lastLocation:Landroid/location/Location;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move-object v4, v6

    .line 49
    :goto_0
    iput-object v4, v3, Lorg/wikipedia/places/PlacesFragmentViewModel;->lastKnownLocation:Landroid/location/Location;

    .line 50
    .line 51
    invoke-virtual {v0}, Lorg/wikipedia/places/PlacesFragment;->getViewModel()Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-object v3, v3, Lorg/wikipedia/places/PlacesFragmentViewModel;->lastKnownLocation:Landroid/location/Location;

    .line 56
    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    new-instance v4, Lorg/maplibre/android/geometry/LatLng;

    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    .line 62
    .line 63
    .line 64
    move-result-wide v7

    .line 65
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    .line 66
    .line 67
    .line 68
    move-result-wide v9

    .line 69
    invoke-direct {v4, v7, v8, v9, v10}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move-object v4, v6

    .line 74
    :goto_1
    if-eqz v1, :cond_2

    .line 75
    .line 76
    new-instance v6, Lorg/maplibre/android/geometry/LatLng;

    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    .line 79
    .line 80
    .line 81
    move-result-wide v7

    .line 82
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    .line 83
    .line 84
    .line 85
    move-result-wide v9

    .line 86
    invoke-direct {v6, v7, v8, v9, v10}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    .line 87
    .line 88
    .line 89
    :cond_2
    if-nez v6, :cond_3

    .line 90
    .line 91
    move-object v8, v4

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    move-object v8, v6

    .line 94
    :goto_2
    if-eqz v8, :cond_4

    .line 95
    .line 96
    new-instance v7, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;

    .line 97
    .line 98
    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    .line 99
    .line 100
    const/16 v21, 0x0

    .line 101
    .line 102
    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    .line 103
    .line 104
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    .line 105
    .line 106
    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    .line 107
    .line 108
    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    .line 109
    .line 110
    move-wide/from16 v19, p2

    .line 111
    .line 112
    invoke-direct/range {v7 .. v21}, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;-><init>(Lorg/maplibre/android/geometry/LatLng;DDDDDD[D)V

    .line 113
    .line 114
    .line 115
    new-instance v3, Lretrofit2/OkHttpCall$1;

    .line 116
    .line 117
    const/16 v4, 0x13

    .line 118
    .line 119
    invoke-direct {v3, v4, v0, v1}, Lretrofit2/OkHttpCall$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Lorg/maplibre/android/maps/MapLibreMap;->notifyDeveloperAnimationListeners()V

    .line 123
    .line 124
    .line 125
    iget-object v0, v2, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 126
    .line 127
    invoke-virtual {v0, v2, v7, v3}, Lorg/maplibre/android/maps/Transform;->moveCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    return-void
.end method

.method public final haveLocationPermissions()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lorg/wikipedia/util/FileUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 18
    .line 19
    invoke-static {p0, v0}, Lorg/wikipedia/util/FileUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lorg/jsoup/Jsoup;->getMarkerPaintSrc(Landroid/content/Context;)Landroid/graphics/Paint;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->markerPaintSrc:Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-static {}, Lorg/jsoup/Jsoup;->getMarkerPaintSrcIn()Landroid/graphics/Paint;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->markerPaintSrcIn:Landroid/graphics/Paint;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lorg/jsoup/Jsoup;->getMarkerBorderPaint(Landroid/content/Context;)Landroid/graphics/Paint;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->markerBorderPaint:Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lorg/jsoup/Jsoup;->getMarkerBitmapBase(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->markerBitmapBase:Landroid/graphics/Bitmap;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lorg/maplibre/android/MapLibre;->getInstance(Landroid/content/Context;)Lorg/maplibre/android/MapLibre;

    .line 49
    .line 50
    .line 51
    sget-object p1, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->client:Lokhttp3/OkHttpClient;

    .line 52
    .line 53
    sget-object v0, Lorg/maplibre/android/module/http/HttpRequestImpl;->DEFAULT_CLIENT:Lokhttp3/OkHttpClient;

    .line 54
    .line 55
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lokhttp3/OkHttpClient;

    .line 60
    .line 61
    sput-object p1, Lorg/maplibre/android/module/http/HttpRequestImpl;->client:Lokhttp3/OkHttpClient;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string p1, "title"

    .line 68
    .line 69
    const-class v0, Lorg/wikipedia/page/PageTitle;

    .line 70
    .line 71
    invoke-static {p0, p1, v0}, Landroidx/room/Room;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Landroid/os/Parcelable;

    .line 76
    .line 77
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 78
    .line 79
    if-eqz p0, :cond_0

    .line 80
    .line 81
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 82
    .line 83
    iget-object p0, p0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 84
    .line 85
    iget-object p0, p0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {p0}, Lorg/wikipedia/settings/Prefs;->setPlacesWikiCode(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0c01a2

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move-object/from16 v3, p1

    .line 11
    .line 12
    move-object/from16 v4, p2

    .line 13
    .line 14
    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v3, 0x7f090090

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    move-object v7, v4

    .line 26
    check-cast v7, Landroid/widget/ImageView;

    .line 27
    .line 28
    if-eqz v7, :cond_0

    .line 29
    .line 30
    const v3, 0x7f090177

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    move-object v8, v4

    .line 38
    check-cast v8, Landroid/widget/LinearLayout;

    .line 39
    .line 40
    if-eqz v8, :cond_0

    .line 41
    .line 42
    const v3, 0x7f09031d

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    move-object v9, v4

    .line 50
    check-cast v9, Lorg/wikipedia/views/LangCodeView;

    .line 51
    .line 52
    if-eqz v9, :cond_0

    .line 53
    .line 54
    const v3, 0x7f090341

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    move-object v10, v4

    .line 62
    check-cast v10, Landroid/widget/ScrollView;

    .line 63
    .line 64
    if-eqz v10, :cond_0

    .line 65
    .line 66
    const v3, 0x7f090342

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    move-object v11, v4

    .line 74
    check-cast v11, Landroid/widget/TextView;

    .line 75
    .line 76
    if-eqz v11, :cond_0

    .line 77
    .line 78
    const v3, 0x7f09034b

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    move-object v12, v4

    .line 86
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    .line 87
    .line 88
    if-eqz v12, :cond_0

    .line 89
    .line 90
    const v3, 0x7f09034c

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    move-object v13, v4

    .line 98
    check-cast v13, Lcom/google/android/material/button/MaterialButton;

    .line 99
    .line 100
    if-eqz v13, :cond_0

    .line 101
    .line 102
    const v3, 0x7f090372

    .line 103
    .line 104
    .line 105
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    move-object v14, v4

    .line 110
    check-cast v14, Lorg/maplibre/android/maps/MapView;

    .line 111
    .line 112
    if-eqz v14, :cond_0

    .line 113
    .line 114
    const v3, 0x7f090373

    .line 115
    .line 116
    .line 117
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    move-object v15, v4

    .line 122
    check-cast v15, Lcom/google/android/material/button/MaterialButton;

    .line 123
    .line 124
    if-eqz v15, :cond_0

    .line 125
    .line 126
    const v3, 0x7f090438

    .line 127
    .line 128
    .line 129
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    move-object/from16 v16, v4

    .line 134
    .line 135
    check-cast v16, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 136
    .line 137
    if-eqz v16, :cond_0

    .line 138
    .line 139
    const v3, 0x7f0905b5

    .line 140
    .line 141
    .line 142
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    move-object/from16 v17, v4

    .line 147
    .line 148
    check-cast v17, Landroid/widget/ImageView;

    .line 149
    .line 150
    if-eqz v17, :cond_0

    .line 151
    .line 152
    const v3, 0x7f0905b6

    .line 153
    .line 154
    .line 155
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    move-object/from16 v18, v4

    .line 160
    .line 161
    check-cast v18, Lorg/wikipedia/views/WikiCardView;

    .line 162
    .line 163
    if-eqz v18, :cond_0

    .line 164
    .line 165
    const v3, 0x7f0905b9

    .line 166
    .line 167
    .line 168
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    move-object/from16 v19, v4

    .line 173
    .line 174
    check-cast v19, Landroid/widget/TextView;

    .line 175
    .line 176
    if-eqz v19, :cond_0

    .line 177
    .line 178
    const v3, 0x7f090655

    .line 179
    .line 180
    .line 181
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    move-object/from16 v20, v4

    .line 186
    .line 187
    check-cast v20, Lorg/wikipedia/views/TabCountsView;

    .line 188
    .line 189
    if-eqz v20, :cond_0

    .line 190
    .line 191
    const v3, 0x7f090716

    .line 192
    .line 193
    .line 194
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    move-object/from16 v21, v4

    .line 199
    .line 200
    check-cast v21, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 201
    .line 202
    if-eqz v21, :cond_0

    .line 203
    .line 204
    new-instance v5, Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 205
    .line 206
    move-object v6, v1

    .line 207
    check-cast v6, Landroid/widget/FrameLayout;

    .line 208
    .line 209
    invoke-direct/range {v5 .. v21}, Lorg/wikipedia/databinding/FragmentPlacesBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lorg/wikipedia/views/LangCodeView;Landroid/widget/ScrollView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/button/MaterialButton;Lorg/maplibre/android/maps/MapView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroid/widget/ImageView;Lorg/wikipedia/views/WikiCardView;Landroid/widget/TextView;Lorg/wikipedia/views/TabCountsView;Lcom/google/android/material/button/MaterialButtonToggleGroup;)V

    .line 210
    .line 211
    .line 212
    iput-object v5, v0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 213
    .line 214
    new-instance v1, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda0;

    .line 215
    .line 216
    const/4 v3, 0x4

    .line 217
    invoke-direct {v1, v3, v0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 221
    .line 222
    .line 223
    iget-object v1, v0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->tabsButton:Landroid/view/ViewGroup;

    .line 229
    .line 230
    check-cast v1, Lorg/wikipedia/views/TabCountsView;

    .line 231
    .line 232
    new-instance v4, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda8;

    .line 233
    .line 234
    invoke-direct {v4, v0, v2}, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda8;-><init>(Lorg/wikipedia/places/PlacesFragment;I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    iget-object v1, v0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchTextView:Landroid/widget/TextView;

    .line 246
    .line 247
    new-instance v4, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda8;

    .line 248
    .line 249
    const/4 v5, 0x5

    .line 250
    invoke-direct {v4, v0, v5}, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda8;-><init>(Lorg/wikipedia/places/PlacesFragment;I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    .line 255
    .line 256
    iget-object v1, v0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 257
    .line 258
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->backButton:Landroid/widget/ImageView;

    .line 262
    .line 263
    new-instance v4, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda8;

    .line 264
    .line 265
    const/4 v5, 0x1

    .line 266
    invoke-direct {v4, v0, v5}, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda8;-><init>(Lorg/wikipedia/places/PlacesFragment;I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    .line 271
    .line 272
    iget-object v1, v0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 273
    .line 274
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->langCodeButton:Landroid/widget/FrameLayout;

    .line 278
    .line 279
    check-cast v1, Lorg/wikipedia/views/LangCodeView;

    .line 280
    .line 281
    new-instance v4, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda8;

    .line 282
    .line 283
    const/4 v6, 0x2

    .line 284
    invoke-direct {v4, v0, v6}, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda8;-><init>(Lorg/wikipedia/places/PlacesFragment;I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    .line 289
    .line 290
    iget-object v1, v0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchCloseBtn:Landroid/view/View;

    .line 296
    .line 297
    check-cast v1, Landroid/widget/ImageView;

    .line 298
    .line 299
    new-instance v4, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda8;

    .line 300
    .line 301
    const/4 v6, 0x3

    .line 302
    invoke-direct {v4, v0, v6}, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda8;-><init>(Lorg/wikipedia/places/PlacesFragment;I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    .line 307
    .line 308
    iget-object v1, v0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 309
    .line 310
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->myLocationButton:Landroid/view/View;

    .line 314
    .line 315
    check-cast v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 316
    .line 317
    new-instance v4, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda8;

    .line 318
    .line 319
    invoke-direct {v4, v0, v3}, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda8;-><init>(Lorg/wikipedia/places/PlacesFragment;I)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    .line 324
    .line 325
    iget-object v1, v0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 326
    .line 327
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->viewButtonsGroup:Landroid/widget/LinearLayout;

    .line 331
    .line 332
    check-cast v1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 333
    .line 334
    new-instance v3, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda14;

    .line 335
    .line 336
    invoke-direct {v3, v0}, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda14;-><init>(Lorg/wikipedia/places/PlacesFragment;)V

    .line 337
    .line 338
    .line 339
    iget-object v1, v1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    .line 340
    .line 341
    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    iget-object v1, v0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 345
    .line 346
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 350
    .line 351
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 352
    .line 353
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 354
    .line 355
    .line 356
    invoke-direct {v3, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 360
    .line 361
    .line 362
    iget-object v1, v0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 363
    .line 364
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 368
    .line 369
    new-instance v3, Lorg/wikipedia/views/DrawableItemDecoration;

    .line 370
    .line 371
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    const/16 v6, 0x8

    .line 376
    .line 377
    invoke-direct {v3, v4, v5, v2, v6}, Lorg/wikipedia/views/DrawableItemDecoration;-><init>(Landroid/content/Context;ZZI)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 381
    .line 382
    .line 383
    iget-object v1, v0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 384
    .line 385
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    .line 387
    .line 388
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listEmptyMessage:Landroid/widget/TextView;

    .line 389
    .line 390
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 391
    .line 392
    const v2, 0x7f1205ad

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    .line 405
    .line 406
    iget-object v1, v0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 407
    .line 408
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    .line 410
    .line 411
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listEmptyMessage:Landroid/widget/TextView;

    .line 412
    .line 413
    new-instance v2, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 414
    .line 415
    new-instance v3, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda1;

    .line 416
    .line 417
    invoke-direct {v3, v0, v5}, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/places/PlacesFragment;I)V

    .line 418
    .line 419
    .line 420
    invoke-direct {v2, v3}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 424
    .line 425
    .line 426
    iget-object v0, v0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 427
    .line 428
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    .line 430
    .line 431
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->rootView:Landroid/widget/FrameLayout;

    .line 432
    .line 433
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    return-object v0

    .line 437
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    const-string v1, "Missing required view with ID: "

    .line 446
    .line 447
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    const/4 v0, 0x0

    .line 455
    return-object v0
.end method

.method public final onDestroyView()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/wikipedia/places/PlacesFragment;->lastLocation:Landroid/location/Location;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 6
    .line 7
    iget-wide v1, p0, Lorg/wikipedia/places/PlacesFragment;->lastZoom:D

    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string/jumbo v2, "|"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const v1, 0x7f120640

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapView:Landroid/view/View;

    .line 60
    .line 61
    check-cast v0, Lorg/maplibre/android/maps/MapView;

    .line 62
    .line 63
    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapView;->onDestroy()V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 68
    .line 69
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->annotationCache:Lkotlin/collections/ArrayDeque;

    .line 70
    .line 71
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->clear()V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->markerBitmapBase:Landroid/graphics/Bitmap;

    .line 75
    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 79
    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    const-string p0, "markerBitmapBase"

    .line 86
    .line 87
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0
.end method

.method public final onLinkPreviewDismiss()V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/wikipedia/places/PlacesFragment;->updateSearchText(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onLinkPreviewLoadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    if-eqz p3, :cond_1

    .line 8
    .line 9
    invoke-static {p2}, Lorg/wikipedia/util/TabUtil;->openInNewBackgroundTab(Lorg/wikipedia/history/HistoryEntry;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->tabsButton:Landroid/view/ViewGroup;

    .line 25
    .line 26
    check-cast p1, Lorg/wikipedia/views/TabCountsView;

    .line 27
    .line 28
    sget-object p2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 29
    .line 30
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-lez p2, :cond_0

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/16 p2, 0x8

    .line 43
    .line 44
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->tabsButton:Landroid/view/ViewGroup;

    .line 53
    .line 54
    check-cast p0, Lorg/wikipedia/views/TabCountsView;

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Lorg/wikipedia/views/TabCountsView;->updateTabCount(Z)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    sget p1, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-static {p1, p2, p3}, Lorg/wikipedia/login/LoginClient;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const/4 p2, 0x0

    .line 76
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapView:Landroid/view/View;

    .line 10
    .line 11
    check-cast p0, Lorg/maplibre/android/maps/MapView;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapView;->onLowMemory()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onMapClick(Lorg/maplibre/android/geometry/LatLng;)Z
    .locals 14

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/places/PlacesFragment;->mapboxMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lorg/maplibre/android/maps/MapView$2;->toScreenLocation(Lorg/maplibre/android/geometry/LatLng;)Landroid/graphics/PointF;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Landroid/graphics/RectF;

    .line 15
    .line 16
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 17
    .line 18
    const/high16 v4, 0x41200000    # 10.0f

    .line 19
    .line 20
    sub-float v5, v3, v4

    .line 21
    .line 22
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 23
    .line 24
    sub-float v6, v1, v4

    .line 25
    .line 26
    add-float/2addr v3, v4

    .line 27
    add-float/2addr v1, v4

    .line 28
    invoke-direct {v2, v5, v6, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 29
    .line 30
    .line 31
    const-string v1, ""

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lorg/wikipedia/places/PlacesFragment;->updateSearchText(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p0, "mapbox-android-cluster-circle0"

    .line 37
    .line 38
    filled-new-array {p0}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v0, v2, p0}, Lorg/maplibre/android/maps/MapLibreMap;->queryRenderedFeatures(Landroid/graphics/RectF;[Ljava/lang/String;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-nez p0, :cond_0

    .line 54
    .line 55
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 56
    .line 57
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 58
    .line 59
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 60
    .line 61
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 66
    .line 67
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    const-string v7, "app_places_interaction"

    .line 72
    .line 73
    const-string v2, "cluster_click"

    .line 74
    .line 75
    const-string v3, "map_view"

    .line 76
    .line 77
    const-string v4, ""

    .line 78
    .line 79
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 83
    .line 84
    .line 85
    iget-object p0, v0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 86
    .line 87
    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    iget-wide v1, p0, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    .line 92
    .line 93
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 94
    .line 95
    add-double v7, v1, v3

    .line 96
    .line 97
    new-instance v5, Lorg/maplibre/android/camera/CameraPosition;

    .line 98
    .line 99
    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    .line 100
    .line 101
    const/4 v13, 0x0

    .line 102
    move-wide v11, v9

    .line 103
    move-object v6, p1

    .line 104
    invoke-direct/range {v5 .. v13}, Lorg/maplibre/android/camera/CameraPosition;-><init>(Lorg/maplibre/android/geometry/LatLng;DDD[D)V

    .line 105
    .line 106
    .line 107
    invoke-static {v5}, Lorg/wikipedia/util/TabUtil;->newCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {v0, p0}, Lorg/maplibre/android/maps/MapLibreMap;->easeCamera(Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;)V

    .line 112
    .line 113
    .line 114
    const/4 p0, 0x1

    .line 115
    return p0

    .line 116
    :cond_0
    const/4 p0, 0x0

    .line 117
    return p0
.end method

.method public final onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapView:Landroid/view/View;

    .line 10
    .line 11
    check-cast p0, Lorg/maplibre/android/maps/MapView;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onPause()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapView:Landroid/view/View;

    .line 32
    .line 33
    check-cast v1, Lorg/maplibre/android/maps/MapView;

    .line 34
    .line 35
    iget-object v1, v1, Lorg/maplibre/android/maps/MapView;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onResume()V

    .line 40
    .line 41
    .line 42
    :cond_1
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 43
    .line 44
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iget-object v3, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object v3, v3, Lorg/wikipedia/databinding/FragmentPlacesBinding;->tabsButton:Landroid/view/ViewGroup;

    .line 58
    .line 59
    check-cast v3, Lorg/wikipedia/views/TabCountsView;

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    move v1, v2

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/16 v1, 0x8

    .line 66
    .line 67
    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->tabsButton:Landroid/view/ViewGroup;

    .line 76
    .line 77
    check-cast v1, Lorg/wikipedia/views/TabCountsView;

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Lorg/wikipedia/views/TabCountsView;->updateTabCount(Z)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 95
    .line 96
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v1, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_3

    .line 107
    .line 108
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setPlacesWikiCode(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->langCodeButton:Landroid/widget/FrameLayout;

    .line 125
    .line 126
    check-cast v1, Lorg/wikipedia/views/LangCodeView;

    .line 127
    .line 128
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v1, v3}, Lorg/wikipedia/views/LangCodeView;->setLangCode(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->tabsButton:Landroid/view/ViewGroup;

    .line 141
    .line 142
    check-cast v1, Lorg/wikipedia/views/TabCountsView;

    .line 143
    .line 144
    iget-object v3, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    iget-object v3, v3, Lorg/wikipedia/databinding/FragmentPlacesBinding;->langCodeButton:Landroid/widget/FrameLayout;

    .line 150
    .line 151
    check-cast v3, Lorg/wikipedia/views/LangCodeView;

    .line 152
    .line 153
    const/4 v4, 0x2

    .line 154
    new-array v5, v4, [Landroid/view/View;

    .line 155
    .line 156
    aput-object v1, v5, v2

    .line 157
    .line 158
    aput-object v3, v5, v0

    .line 159
    .line 160
    move v1, v2

    .line 161
    :goto_1
    if-ge v1, v4, :cond_4

    .line 162
    .line 163
    aget-object v3, v5, v1

    .line 164
    .line 165
    invoke-virtual {v3}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-static {v3, v6}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    add-int/lit8 v1, v1, 0x1

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_4
    iget v1, p0, Lorg/wikipedia/places/PlacesFragment;->lastCheckedId:I

    .line 176
    .line 177
    const v3, 0x7f090373

    .line 178
    .line 179
    .line 180
    if-ne v1, v3, :cond_5

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_5
    move v0, v2

    .line 184
    :goto_2
    invoke-virtual {p0, v0}, Lorg/wikipedia/places/PlacesFragment;->updateToggleViews(Z)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-nez v0, :cond_7

    .line 199
    .line 200
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    .line 201
    .line 202
    if-eqz v0, :cond_6

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_6
    const-string v0, "bottom_sheet_fragment"

    .line 206
    .line 207
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    check-cast p0, Landroidx/fragment/app/DialogFragment;

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_7
    :goto_3
    const/4 p0, 0x0

    .line 215
    :goto_4
    if-eqz p0, :cond_8

    .line 216
    .line 217
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 218
    .line 219
    .line 220
    :cond_8
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapView:Landroid/view/View;

    .line 7
    .line 8
    check-cast p0, Lorg/maplibre/android/maps/MapView;

    .line 9
    .line 10
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 11
    .line 12
    if-eqz v0, :cond_c

    .line 13
    .line 14
    const-string v0, "maplibre_savedState"

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 21
    .line 22
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v2, "maplibre_cameraPosition"

    .line 29
    .line 30
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "maplibre_debugActive"

    .line 34
    .line 35
    iget-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMap;->debugActive:Z

    .line 36
    .line 37
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 41
    .line 42
    const-string v0, "maplibre_horizontalScrollEnabled"

    .line 43
    .line 44
    iget-boolean v2, p0, Lorg/maplibre/android/maps/UiSettings;->horizontalScrollGesturesEnabled:Z

    .line 45
    .line 46
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string v0, "maplibre_zoomEnabled"

    .line 50
    .line 51
    iget-boolean v2, p0, Lorg/maplibre/android/maps/UiSettings;->zoomGesturesEnabled:Z

    .line 52
    .line 53
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    const-string v0, "maplibre_scrollEnabled"

    .line 57
    .line 58
    iget-boolean v2, p0, Lorg/maplibre/android/maps/UiSettings;->scrollGesturesEnabled:Z

    .line 59
    .line 60
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    const-string v0, "maplibre_rotateEnabled"

    .line 64
    .line 65
    iget-boolean v2, p0, Lorg/maplibre/android/maps/UiSettings;->rotateGesturesEnabled:Z

    .line 66
    .line 67
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    const-string v0, "maplibre_tiltEnabled"

    .line 71
    .line 72
    iget-boolean v2, p0, Lorg/maplibre/android/maps/UiSettings;->tiltGesturesEnabled:Z

    .line 73
    .line 74
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    const-string v0, "maplibre_doubleTapEnabled"

    .line 78
    .line 79
    iget-boolean v2, p0, Lorg/maplibre/android/maps/UiSettings;->doubleTapGesturesEnabled:Z

    .line 80
    .line 81
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    const-string v0, "maplibre_scaleAnimationEnabled"

    .line 85
    .line 86
    iget-boolean v2, p0, Lorg/maplibre/android/maps/UiSettings;->scaleVelocityAnimationEnabled:Z

    .line 87
    .line 88
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    .line 90
    .line 91
    const-string v0, "maplibre_rotateAnimationEnabled"

    .line 92
    .line 93
    iget-boolean v2, p0, Lorg/maplibre/android/maps/UiSettings;->rotateVelocityAnimationEnabled:Z

    .line 94
    .line 95
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    .line 97
    .line 98
    const-string v0, "maplibre_flingAnimationEnabled"

    .line 99
    .line 100
    iget-boolean v2, p0, Lorg/maplibre/android/maps/UiSettings;->flingVelocityAnimationEnabled:Z

    .line 101
    .line 102
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    const-string v0, "maplibre_increaseRotateThreshold"

    .line 106
    .line 107
    iget-boolean v2, p0, Lorg/maplibre/android/maps/UiSettings;->increaseRotateThresholdWhenScaling:Z

    .line 108
    .line 109
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    .line 111
    .line 112
    const-string v0, "maplibre_disableRotateWhenScaling"

    .line 113
    .line 114
    iget-boolean v2, p0, Lorg/maplibre/android/maps/UiSettings;->disableRotateWhenScaling:Z

    .line 115
    .line 116
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    .line 118
    .line 119
    const-string v0, "maplibre_increaseScaleThreshold"

    .line 120
    .line 121
    iget-boolean v2, p0, Lorg/maplibre/android/maps/UiSettings;->increaseScaleThresholdWhenRotating:Z

    .line 122
    .line 123
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    .line 125
    .line 126
    const-string v0, "maplibre_quickZoom"

    .line 127
    .line 128
    iget-boolean v2, p0, Lorg/maplibre/android/maps/UiSettings;->quickZoomGesturesEnabled:Z

    .line 129
    .line 130
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    const-string v0, "maplibre_zoomRate"

    .line 134
    .line 135
    iget v2, p0, Lorg/maplibre/android/maps/UiSettings;->zoomRate:F

    .line 136
    .line 137
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->compassMargins:[I

    .line 141
    .line 142
    iget-object v2, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 143
    .line 144
    const/4 v3, 0x0

    .line 145
    if-eqz v2, :cond_0

    .line 146
    .line 147
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    goto :goto_0

    .line 152
    :cond_0
    move v2, v3

    .line 153
    :goto_0
    const-string v4, "maplibre_compassEnabled"

    .line 154
    .line 155
    invoke-virtual {p1, v4, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    .line 157
    .line 158
    iget-object v2, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 159
    .line 160
    const/4 v4, -0x1

    .line 161
    if-eqz v2, :cond_1

    .line 162
    .line 163
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 168
    .line 169
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_1
    move v2, v4

    .line 173
    :goto_1
    const-string v5, "maplibre_compassGravity"

    .line 174
    .line 175
    invoke-virtual {p1, v5, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    const-string v2, "maplibre_compassMarginLeft"

    .line 179
    .line 180
    aget v5, v0, v3

    .line 181
    .line 182
    invoke-virtual {p1, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 183
    .line 184
    .line 185
    const-string v2, "maplibre_compassMarginTop"

    .line 186
    .line 187
    aget v5, v0, v1

    .line 188
    .line 189
    invoke-virtual {p1, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 190
    .line 191
    .line 192
    const-string v2, "maplibre_compassMarginBottom"

    .line 193
    .line 194
    const/4 v5, 0x3

    .line 195
    aget v6, v0, v5

    .line 196
    .line 197
    invoke-virtual {p1, v2, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 198
    .line 199
    .line 200
    const-string v2, "maplibre_compassMarginRight"

    .line 201
    .line 202
    const/4 v6, 0x2

    .line 203
    aget v0, v0, v6

    .line 204
    .line 205
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 209
    .line 210
    if-eqz v0, :cond_2

    .line 211
    .line 212
    iget-boolean v0, v0, Lorg/maplibre/android/maps/widgets/CompassView;->fadeCompassViewFacingNorth:Z

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_2
    move v0, v3

    .line 216
    :goto_2
    const-string v2, "maplibre_compassFade"

    .line 217
    .line 218
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 222
    .line 223
    const/4 v2, 0x0

    .line 224
    if-eqz v0, :cond_3

    .line 225
    .line 226
    invoke-virtual {v0}, Lorg/maplibre/android/maps/widgets/CompassView;->getCompassImage()Landroid/graphics/drawable/Drawable;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    goto :goto_3

    .line 231
    :cond_3
    move-object v0, v2

    .line 232
    :goto_3
    if-nez v0, :cond_4

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_4
    invoke-static {v0}, Lokhttp3/HttpUrl$Companion;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    if-nez v7, :cond_5

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_5
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 243
    .line 244
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 245
    .line 246
    .line 247
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 248
    .line 249
    const/16 v9, 0x64

    .line 250
    .line 251
    invoke-virtual {v7, v8, v9, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 255
    .line 256
    .line 257
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 259
    .line 260
    if-nez v0, :cond_6

    .line 261
    .line 262
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 263
    .line 264
    .line 265
    :cond_6
    :goto_4
    const-string v0, "maplibre_compassImage"

    .line 266
    .line 267
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 268
    .line 269
    .line 270
    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->logoMargins:[I

    .line 271
    .line 272
    iget-object v2, p0, Lorg/maplibre/android/maps/UiSettings;->logoView:Landroid/widget/ImageView;

    .line 273
    .line 274
    if-eqz v2, :cond_7

    .line 275
    .line 276
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 281
    .line 282
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_7
    move v2, v4

    .line 286
    :goto_5
    const-string v7, "maplibre_logoGravity"

    .line 287
    .line 288
    invoke-virtual {p1, v7, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 289
    .line 290
    .line 291
    const-string v2, "maplibre_logoMarginLeft"

    .line 292
    .line 293
    aget v7, v0, v3

    .line 294
    .line 295
    invoke-virtual {p1, v2, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 296
    .line 297
    .line 298
    const-string v2, "maplibre_logoMarginTop"

    .line 299
    .line 300
    aget v7, v0, v1

    .line 301
    .line 302
    invoke-virtual {p1, v2, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 303
    .line 304
    .line 305
    const-string v2, "maplibre_logoMarginRight"

    .line 306
    .line 307
    aget v7, v0, v6

    .line 308
    .line 309
    invoke-virtual {p1, v2, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 310
    .line 311
    .line 312
    const-string v2, "maplibre_logoMarginBottom"

    .line 313
    .line 314
    aget v0, v0, v5

    .line 315
    .line 316
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 317
    .line 318
    .line 319
    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->logoView:Landroid/widget/ImageView;

    .line 320
    .line 321
    if-eqz v0, :cond_8

    .line 322
    .line 323
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    if-nez v0, :cond_8

    .line 328
    .line 329
    move v0, v1

    .line 330
    goto :goto_6

    .line 331
    :cond_8
    move v0, v3

    .line 332
    :goto_6
    const-string v2, "maplibre_logoEnabled"

    .line 333
    .line 334
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 335
    .line 336
    .line 337
    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsMargins:[I

    .line 338
    .line 339
    iget-object v2, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    .line 340
    .line 341
    if-eqz v2, :cond_9

    .line 342
    .line 343
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 348
    .line 349
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 350
    .line 351
    :cond_9
    const-string v2, "maplibre_attrGravity"

    .line 352
    .line 353
    invoke-virtual {p1, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 354
    .line 355
    .line 356
    const-string v2, "maplibre_attrMarginLeft"

    .line 357
    .line 358
    aget v4, v0, v3

    .line 359
    .line 360
    invoke-virtual {p1, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 361
    .line 362
    .line 363
    const-string v2, "maplibre_attrMarginTop"

    .line 364
    .line 365
    aget v4, v0, v1

    .line 366
    .line 367
    invoke-virtual {p1, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 368
    .line 369
    .line 370
    const-string v2, "maplibre_attrMarginRight"

    .line 371
    .line 372
    aget v4, v0, v6

    .line 373
    .line 374
    invoke-virtual {p1, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 375
    .line 376
    .line 377
    const-string v2, "maplibre_atrrMarginBottom"

    .line 378
    .line 379
    aget v0, v0, v5

    .line 380
    .line 381
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 382
    .line 383
    .line 384
    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    .line 385
    .line 386
    if-eqz v0, :cond_a

    .line 387
    .line 388
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-nez v0, :cond_a

    .line 393
    .line 394
    goto :goto_7

    .line 395
    :cond_a
    move v1, v3

    .line 396
    :goto_7
    const-string v0, "maplibre_atrrEnabled"

    .line 397
    .line 398
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 399
    .line 400
    .line 401
    const-string v0, "maplibre_deselectMarkerOnTap"

    .line 402
    .line 403
    iget-boolean v1, p0, Lorg/maplibre/android/maps/UiSettings;->deselectMarkersOnTap:Z

    .line 404
    .line 405
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 406
    .line 407
    .line 408
    const-string v0, "maplibre_userFocalPoint"

    .line 409
    .line 410
    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->userProvidedFocalPoint:Landroid/graphics/PointF;

    .line 411
    .line 412
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 413
    .line 414
    .line 415
    return-void

    .line 416
    :catchall_0
    move-exception p0

    .line 417
    instance-of p1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 418
    .line 419
    if-nez p1, :cond_b

    .line 420
    .line 421
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 422
    .line 423
    .line 424
    :cond_b
    throw p0

    .line 425
    :cond_c
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapView:Landroid/view/View;

    .line 10
    .line 11
    check-cast p0, Lorg/maplibre/android/maps/MapView;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapView;->onStart()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapView:Landroid/view/View;

    .line 10
    .line 11
    check-cast p0, Lorg/maplibre/android/maps/MapView;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapView;->onStop()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapView:Landroid/view/View;

    .line 10
    .line 11
    check-cast p1, Lorg/maplibre/android/maps/MapView;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const-string v0, "maplibre_savedState"

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iput-object p2, p1, Lorg/maplibre/android/maps/MapView;->savedInstanceState:Landroid/os/Bundle;

    .line 24
    .line 25
    :cond_0
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 26
    .line 27
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 28
    .line 29
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 30
    .line 31
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 36
    .line 37
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const-string v6, "app_places_interaction"

    .line 42
    .line 43
    const-string v1, "impression"

    .line 44
    .line 45
    const-string v2, "map_view"

    .line 46
    .line 47
    const-string v3, ""

    .line 48
    .line 49
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapView:Landroid/view/View;

    .line 61
    .line 62
    check-cast p1, Lorg/maplibre/android/maps/MapView;

    .line 63
    .line 64
    new-instance p2, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda4;

    .line 65
    .line 66
    invoke-direct {p2, p0}, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/places/PlacesFragment;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p1, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 70
    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    iget-object p1, p1, Lorg/maplibre/android/maps/MapView;->mapCallback:Lorg/maplibre/android/maps/MapView$MapCallback;

    .line 74
    .line 75
    iget-object p1, p1, Lorg/maplibre/android/maps/MapView$MapCallback;->onMapReadyCallbackList:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p2, v0}, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda4;->onMapReady(Lorg/maplibre/android/maps/MapLibreMap;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    invoke-virtual {p0}, Lorg/wikipedia/places/PlacesFragment;->getViewModel()Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object p1, p1, Lorg/wikipedia/places/PlacesFragmentViewModel;->nearbyPagesLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    new-instance v0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 95
    .line 96
    const/16 v1, 0x15

    .line 97
    .line 98
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    new-instance p0, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;

    .line 102
    .line 103
    const/4 v1, 0x6

    .line 104
    invoke-direct {p0, v0, v1}, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2, p0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final setMagnifiedSymbol(Lorg/maplibre/android/plugins/annotation/Symbol;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/places/PlacesFragment;->magnifiedMarker:Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 2
    .line 3
    const-string v1, "symbol-sort-key"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v0, v0, Lorg/maplibre/android/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->magnifiedMarker:Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const/high16 v0, 0x3fe00000    # 1.75f

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object p1, p1, Lorg/maplibre/android/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    .line 28
    .line 29
    const-string v2, "icon-size"

    .line 30
    .line 31
    invoke-virtual {p1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment;->magnifiedMarker:Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    const/high16 p1, 0x3f800000    # 1.0f

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p0, p0, Lorg/maplibre/android/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    .line 45
    .line 46
    invoke-virtual {p0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public final showLinkPreview(Lorg/wikipedia/page/PageTitle;Landroid/location/Location;)V
    .locals 8

    .line 1
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 2
    .line 3
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 4
    .line 5
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 6
    .line 7
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 12
    .line 13
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    const-string v7, "app_places_interaction"

    .line 18
    .line 19
    const-string v2, "impression"

    .line 20
    .line 21
    const-string v3, "detail_view"

    .line 22
    .line 23
    const-string v4, ""

    .line 24
    .line 25
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    .line 32
    .line 33
    const/16 v1, 0x9

    .line 34
    .line 35
    invoke-direct {v0, v1, p1}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/places/PlacesFragment;->updateSearchText(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment;->mapboxMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    if-eqz p0, :cond_0

    .line 56
    .line 57
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->locationComponent:Lorg/maplibre/android/location/LocationComponent;

    .line 58
    .line 59
    if-eqz p0, :cond_0

    .line 60
    .line 61
    iget-boolean v2, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentInitialized:Z

    .line 62
    .line 63
    if-ne v2, v1, :cond_0

    .line 64
    .line 65
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->lastLocation:Landroid/location/Location;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const/4 p0, 0x0

    .line 72
    :goto_0
    new-instance v2, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 73
    .line 74
    invoke-direct {v2}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance v3, Lkotlin/Pair;

    .line 78
    .line 79
    const-string v4, "entry"

    .line 80
    .line 81
    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Lkotlin/Pair;

    .line 85
    .line 86
    const-string v4, "location"

    .line 87
    .line 88
    invoke-direct {v0, v4, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    new-instance p2, Lkotlin/Pair;

    .line 92
    .line 93
    const-string v4, "lastKnownLocation"

    .line 94
    .line 95
    invoke-direct {p2, v4, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    const/4 p0, 0x3

    .line 99
    new-array p0, p0, [Lkotlin/Pair;

    .line 100
    .line 101
    const/4 v4, 0x0

    .line 102
    aput-object v3, p0, v4

    .line 103
    .line 104
    aput-object v0, p0, v1

    .line 105
    .line 106
    const/4 v0, 0x2

    .line 107
    aput-object p2, p0, v0

    .line 108
    .line 109
    invoke-static {p0}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {v2, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1, v2}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final startLocationTracking()V
    .locals 55

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/places/PlacesFragment;->mapboxMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 4
    .line 5
    if-eqz v1, :cond_19

    .line 6
    .line 7
    iget-object v2, v1, Lorg/maplibre/android/maps/MapLibreMap;->locationComponent:Lorg/maplibre/android/location/LocationComponent;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-boolean v0, v7, Lorg/maplibre/android/maps/Style;->fullyLoaded:Z

    .line 21
    .line 22
    if-eqz v0, :cond_18

    .line 23
    .line 24
    iget-object v0, v2, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 25
    .line 26
    iget-object v13, v2, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 27
    .line 28
    sget-object v3, Lorg/maplibre/android/R$styleable;->maplibre_LocationComponent:[I

    .line 29
    .line 30
    const v5, 0x7f1306a3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 38
    .line 39
    const-wide/16 v8, 0x7530

    .line 40
    .line 41
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const/16 v14, 0xc

    .line 46
    .line 47
    const/4 v8, -0x1

    .line 48
    invoke-virtual {v3, v14, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    const/16 v10, 0xf

    .line 53
    .line 54
    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    if-eqz v11, :cond_0

    .line 59
    .line 60
    invoke-virtual {v3, v10, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 v10, 0x0

    .line 70
    :goto_0
    const/4 v11, 0x3

    .line 71
    invoke-virtual {v3, v11, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    const/4 v11, 0x6

    .line 76
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 77
    .line 78
    .line 79
    move-result v16

    .line 80
    if-eqz v16, :cond_1

    .line 81
    .line 82
    invoke-virtual {v3, v11, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    const/4 v11, 0x0

    .line 92
    :goto_1
    const/16 v14, 0xd

    .line 93
    .line 94
    invoke-virtual {v3, v14, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    const/16 v15, 0xe

    .line 99
    .line 100
    invoke-virtual {v3, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 101
    .line 102
    .line 103
    move-result v17

    .line 104
    if-eqz v17, :cond_2

    .line 105
    .line 106
    invoke-virtual {v3, v15, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 107
    .line 108
    .line 109
    move-result v15

    .line 110
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v15

    .line 114
    :goto_2
    move-object/from16 v17, v1

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_2
    const/4 v15, 0x0

    .line 118
    goto :goto_2

    .line 119
    :goto_3
    const/4 v1, 0x4

    .line 120
    move-object/from16 v18, v5

    .line 121
    .line 122
    invoke-virtual {v3, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    const/4 v1, 0x5

    .line 127
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 128
    .line 129
    .line 130
    move-result v19

    .line 131
    if-eqz v19, :cond_3

    .line 132
    .line 133
    invoke-virtual {v3, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    :goto_4
    move-object/from16 v19, v6

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_3
    const/4 v1, 0x0

    .line 145
    goto :goto_4

    .line 146
    :goto_5
    const/4 v6, 0x7

    .line 147
    invoke-virtual {v3, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    const/16 v8, 0x8

    .line 152
    .line 153
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 154
    .line 155
    .line 156
    move-result v21

    .line 157
    if-eqz v21, :cond_4

    .line 158
    .line 159
    move-object/from16 v21, v13

    .line 160
    .line 161
    const/4 v13, -0x1

    .line 162
    invoke-virtual {v3, v8, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 163
    .line 164
    .line 165
    move-result v22

    .line 166
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v13

    .line 170
    goto :goto_6

    .line 171
    :cond_4
    move-object/from16 v21, v13

    .line 172
    .line 173
    const/4 v13, 0x0

    .line 174
    :goto_6
    const/16 v8, 0xb

    .line 175
    .line 176
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 177
    .line 178
    .line 179
    move-result v23

    .line 180
    move-object/from16 v24, v4

    .line 181
    .line 182
    const/4 v4, 0x1

    .line 183
    if-eqz v23, :cond_5

    .line 184
    .line 185
    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 186
    .line 187
    .line 188
    move-result v18

    .line 189
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 190
    .line 191
    .line 192
    move-result-object v18

    .line 193
    :cond_5
    const/16 v8, 0x20

    .line 194
    .line 195
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 196
    .line 197
    .line 198
    move-result v25

    .line 199
    if-eqz v25, :cond_6

    .line 200
    .line 201
    const/16 v4, 0x7530

    .line 202
    .line 203
    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    move-object/from16 v26, v7

    .line 208
    .line 209
    int-to-long v7, v4

    .line 210
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    goto :goto_7

    .line 215
    :cond_6
    move-object/from16 v26, v7

    .line 216
    .line 217
    move-object/from16 v4, v19

    .line 218
    .line 219
    :goto_7
    const/16 v7, 0x10

    .line 220
    .line 221
    const/4 v8, -0x1

    .line 222
    invoke-virtual {v3, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    const/16 v8, 0xa

    .line 227
    .line 228
    move-object/from16 v19, v4

    .line 229
    .line 230
    const/4 v4, 0x0

    .line 231
    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    move/from16 v27, v4

    .line 236
    .line 237
    const/4 v4, 0x2

    .line 238
    move-object/from16 v28, v0

    .line 239
    .line 240
    move-object/from16 v29, v2

    .line 241
    .line 242
    const/4 v0, -0x1

    .line 243
    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    const v0, 0x3e19999a    # 0.15f

    .line 248
    .line 249
    .line 250
    const/4 v4, 0x0

    .line 251
    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    move/from16 v31, v8

    .line 256
    .line 257
    const/16 v8, 0x22

    .line 258
    .line 259
    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 260
    .line 261
    .line 262
    move-result v8

    .line 263
    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    move/from16 v33, v8

    .line 268
    .line 269
    const v8, 0x7f070383

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    const/16 v8, 0x23

    .line 277
    .line 278
    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    move/from16 v34, v4

    .line 287
    .line 288
    const v4, 0x7f070384

    .line 289
    .line 290
    .line 291
    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    const/16 v8, 0x24

    .line 296
    .line 297
    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    const/16 v8, 0x12

    .line 302
    .line 303
    move-object/from16 v36, v1

    .line 304
    .line 305
    move/from16 v35, v4

    .line 306
    .line 307
    const/4 v4, 0x0

    .line 308
    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    const/16 v8, 0x14

    .line 313
    .line 314
    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 315
    .line 316
    .line 317
    move-result v8

    .line 318
    move-object/from16 v38, v15

    .line 319
    .line 320
    const/16 v15, 0x13

    .line 321
    .line 322
    invoke-virtual {v3, v15, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 323
    .line 324
    .line 325
    move-result v15

    .line 326
    move-object/from16 v39, v11

    .line 327
    .line 328
    const/16 v11, 0x11

    .line 329
    .line 330
    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 331
    .line 332
    .line 333
    move-result v11

    .line 334
    filled-new-array {v1, v8, v15, v11}, [I

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    const/16 v4, 0x15

    .line 339
    .line 340
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    const/16 v8, 0x16

    .line 345
    .line 346
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v8

    .line 350
    const/16 v11, 0x18

    .line 351
    .line 352
    const v15, 0x3f19999a    # 0.6f

    .line 353
    .line 354
    .line 355
    invoke-virtual {v3, v11, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 356
    .line 357
    .line 358
    move-result v11

    .line 359
    const/16 v15, 0x17

    .line 360
    .line 361
    move-object/from16 v40, v8

    .line 362
    .line 363
    const/high16 v8, 0x3f800000    # 1.0f

    .line 364
    .line 365
    invoke-virtual {v3, v15, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 366
    .line 367
    .line 368
    move-result v15

    .line 369
    const/16 v8, 0x21

    .line 370
    .line 371
    move-object/from16 v42, v4

    .line 372
    .line 373
    const v4, 0x3f8ccccd    # 1.1f

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    const/16 v8, 0x9

    .line 381
    .line 382
    move/from16 v43, v4

    .line 383
    .line 384
    move/from16 v44, v11

    .line 385
    .line 386
    const/4 v4, 0x1

    .line 387
    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 388
    .line 389
    .line 390
    move-result v11

    .line 391
    invoke-virtual {v3, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 392
    .line 393
    .line 394
    move-result v8

    .line 395
    const/16 v4, 0x1c

    .line 396
    .line 397
    move/from16 v46, v8

    .line 398
    .line 399
    const/4 v8, 0x0

    .line 400
    invoke-virtual {v3, v4, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 401
    .line 402
    .line 403
    move-result v47

    .line 404
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    const/16 v8, 0x1d

    .line 409
    .line 410
    move-object/from16 v48, v4

    .line 411
    .line 412
    const/4 v4, 0x1

    .line 413
    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 414
    .line 415
    .line 416
    move-result v8

    .line 417
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    const/16 v8, 0x1a

    .line 422
    .line 423
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 424
    .line 425
    .line 426
    move-result v49

    .line 427
    if-eqz v49, :cond_7

    .line 428
    .line 429
    move-object/from16 v49, v4

    .line 430
    .line 431
    const/4 v4, -0x1

    .line 432
    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    goto :goto_8

    .line 437
    :cond_7
    move-object/from16 v49, v4

    .line 438
    .line 439
    const/4 v4, 0x0

    .line 440
    :goto_8
    const/16 v8, 0x1b

    .line 441
    .line 442
    move/from16 v20, v4

    .line 443
    .line 444
    const v4, 0x450fc000    # 2300.0f

    .line 445
    .line 446
    .line 447
    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 448
    .line 449
    .line 450
    move-result v4

    .line 451
    const/16 v8, 0x1f

    .line 452
    .line 453
    move/from16 v50, v4

    .line 454
    .line 455
    const/high16 v4, 0x420c0000    # 35.0f

    .line 456
    .line 457
    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    const/16 v8, 0x19

    .line 462
    .line 463
    move/from16 v51, v4

    .line 464
    .line 465
    const/high16 v4, 0x3f800000    # 1.0f

    .line 466
    .line 467
    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 468
    .line 469
    .line 470
    move-result v8

    .line 471
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 472
    .line 473
    .line 474
    new-instance v3, Lorg/maplibre/android/location/LocationComponentOptions;

    .line 475
    .line 476
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    .line 477
    .line 478
    .line 479
    move-result v4

    .line 480
    move-object/from16 v18, v10

    .line 481
    .line 482
    move/from16 v52, v11

    .line 483
    .line 484
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    .line 485
    .line 486
    .line 487
    move-result-wide v10

    .line 488
    move/from16 v19, v8

    .line 489
    .line 490
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 491
    .line 492
    .line 493
    move-result-object v8

    .line 494
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 495
    .line 496
    .line 497
    iput v0, v3, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAlpha:F

    .line 498
    .line 499
    iput v2, v3, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyColor:I

    .line 500
    .line 501
    iput v5, v3, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawableStale:I

    .line 502
    .line 503
    const/4 v2, 0x0

    .line 504
    iput-object v2, v3, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleName:Ljava/lang/String;

    .line 505
    .line 506
    iput v14, v3, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawableStale:I

    .line 507
    .line 508
    iput-object v2, v3, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleName:Ljava/lang/String;

    .line 509
    .line 510
    iput v7, v3, Lorg/maplibre/android/location/LocationComponentOptions;->gpsDrawable:I

    .line 511
    .line 512
    iput-object v2, v3, Lorg/maplibre/android/location/LocationComponentOptions;->gpsName:Ljava/lang/String;

    .line 513
    .line 514
    iput v9, v3, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawable:I

    .line 515
    .line 516
    iput-object v2, v3, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundName:Ljava/lang/String;

    .line 517
    .line 518
    iput v12, v3, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawable:I

    .line 519
    .line 520
    iput-object v2, v3, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundName:Ljava/lang/String;

    .line 521
    .line 522
    iput v6, v3, Lorg/maplibre/android/location/LocationComponentOptions;->bearingDrawable:I

    .line 523
    .line 524
    iput-object v2, v3, Lorg/maplibre/android/location/LocationComponentOptions;->bearingName:Ljava/lang/String;

    .line 525
    .line 526
    iput-object v13, v3, Lorg/maplibre/android/location/LocationComponentOptions;->bearingTintColor:Ljava/lang/Integer;

    .line 527
    .line 528
    move-object/from16 v2, v18

    .line 529
    .line 530
    iput-object v2, v3, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundTintColor:Ljava/lang/Integer;

    .line 531
    .line 532
    move-object/from16 v2, v39

    .line 533
    .line 534
    iput-object v2, v3, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundTintColor:Ljava/lang/Integer;

    .line 535
    .line 536
    move-object/from16 v2, v38

    .line 537
    .line 538
    iput-object v2, v3, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleTintColor:Ljava/lang/Integer;

    .line 539
    .line 540
    move-object/from16 v2, v36

    .line 541
    .line 542
    iput-object v2, v3, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleTintColor:Ljava/lang/Integer;

    .line 543
    .line 544
    move/from16 v2, v31

    .line 545
    .line 546
    iput v2, v3, Lorg/maplibre/android/location/LocationComponentOptions;->elevation:F

    .line 547
    .line 548
    iput-boolean v4, v3, Lorg/maplibre/android/location/LocationComponentOptions;->enableStaleState:Z

    .line 549
    .line 550
    iput-wide v10, v3, Lorg/maplibre/android/location/LocationComponentOptions;->staleStateTimeout:J

    .line 551
    .line 552
    iput-object v1, v3, Lorg/maplibre/android/location/LocationComponentOptions;->padding:[I

    .line 553
    .line 554
    iput v15, v3, Lorg/maplibre/android/location/LocationComponentOptions;->maxZoomIconScale:F

    .line 555
    .line 556
    move/from16 v5, v44

    .line 557
    .line 558
    iput v5, v3, Lorg/maplibre/android/location/LocationComponentOptions;->minZoomIconScale:F

    .line 559
    .line 560
    move/from16 v5, v33

    .line 561
    .line 562
    iput-boolean v5, v3, Lorg/maplibre/android/location/LocationComponentOptions;->trackingGesturesManagement:Z

    .line 563
    .line 564
    move/from16 v5, v34

    .line 565
    .line 566
    iput v5, v3, Lorg/maplibre/android/location/LocationComponentOptions;->trackingInitialMoveThreshold:F

    .line 567
    .line 568
    move/from16 v5, v35

    .line 569
    .line 570
    iput v5, v3, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerMoveThreshold:F

    .line 571
    .line 572
    const/4 v5, 0x0

    .line 573
    iput-object v5, v3, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerProtectedMoveArea:Landroid/graphics/RectF;

    .line 574
    .line 575
    move-object/from16 v5, v42

    .line 576
    .line 577
    iput-object v5, v3, Lorg/maplibre/android/location/LocationComponentOptions;->layerAbove:Ljava/lang/String;

    .line 578
    .line 579
    move-object/from16 v6, v40

    .line 580
    .line 581
    iput-object v6, v3, Lorg/maplibre/android/location/LocationComponentOptions;->layerBelow:Ljava/lang/String;

    .line 582
    .line 583
    move/from16 v13, v43

    .line 584
    .line 585
    iput v13, v3, Lorg/maplibre/android/location/LocationComponentOptions;->trackingAnimationDurationMultiplier:F

    .line 586
    .line 587
    move/from16 v7, v52

    .line 588
    .line 589
    iput-boolean v7, v3, Lorg/maplibre/android/location/LocationComponentOptions;->compassAnimationEnabled:Z

    .line 590
    .line 591
    move/from16 v9, v46

    .line 592
    .line 593
    iput-boolean v9, v3, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAnimationEnabled:Z

    .line 594
    .line 595
    move-object/from16 v12, v48

    .line 596
    .line 597
    iput-object v12, v3, Lorg/maplibre/android/location/LocationComponentOptions;->pulseEnabled:Ljava/lang/Boolean;

    .line 598
    .line 599
    move-object/from16 v12, v49

    .line 600
    .line 601
    iput-object v12, v3, Lorg/maplibre/android/location/LocationComponentOptions;->pulseFadeEnabled:Ljava/lang/Boolean;

    .line 602
    .line 603
    iput-object v8, v3, Lorg/maplibre/android/location/LocationComponentOptions;->pulseColor:Ljava/lang/Integer;

    .line 604
    .line 605
    move/from16 v8, v50

    .line 606
    .line 607
    iput v8, v3, Lorg/maplibre/android/location/LocationComponentOptions;->pulseSingleDuration:F

    .line 608
    .line 609
    move/from16 v8, v51

    .line 610
    .line 611
    iput v8, v3, Lorg/maplibre/android/location/LocationComponentOptions;->pulseMaxRadius:F

    .line 612
    .line 613
    move/from16 v8, v19

    .line 614
    .line 615
    iput v8, v3, Lorg/maplibre/android/location/LocationComponentOptions;->pulseAlpha:F

    .line 616
    .line 617
    cmpg-float v8, v0, v27

    .line 618
    .line 619
    if-ltz v8, :cond_17

    .line 620
    .line 621
    const/high16 v41, 0x3f800000    # 1.0f

    .line 622
    .line 623
    cmpl-float v0, v0, v41

    .line 624
    .line 625
    if-gtz v0, :cond_17

    .line 626
    .line 627
    cmpg-float v0, v2, v27

    .line 628
    .line 629
    if-ltz v0, :cond_16

    .line 630
    .line 631
    if-eqz v5, :cond_8

    .line 632
    .line 633
    if-nez v6, :cond_9

    .line 634
    .line 635
    :cond_8
    move-object/from16 v0, v29

    .line 636
    .line 637
    goto :goto_9

    .line 638
    :cond_9
    const-string v0, "You cannot set both layerAbove and layerBelow options. Choose one or the other."

    .line 639
    .line 640
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    return-void

    .line 644
    :goto_9
    iget-boolean v2, v0, Lorg/maplibre/android/location/LocationComponent;->isComponentInitialized:Z

    .line 645
    .line 646
    if-eqz v2, :cond_a

    .line 647
    .line 648
    move-object v8, v3

    .line 649
    move v2, v7

    .line 650
    move-wide/from16 v53, v10

    .line 651
    .line 652
    move-object/from16 v14, v28

    .line 653
    .line 654
    const/16 v18, 0x3

    .line 655
    .line 656
    const/16 v25, 0x1

    .line 657
    .line 658
    const/16 v30, 0x2

    .line 659
    .line 660
    const/16 v32, 0x0

    .line 661
    .line 662
    move v11, v4

    .line 663
    move v10, v9

    .line 664
    move-object/from16 v9, v21

    .line 665
    .line 666
    move-object/from16 v4, v24

    .line 667
    .line 668
    goto/16 :goto_a

    .line 669
    .line 670
    :cond_a
    const/4 v2, 0x1

    .line 671
    iput-boolean v2, v0, Lorg/maplibre/android/location/LocationComponent;->isComponentInitialized:Z

    .line 672
    .line 673
    move-object/from16 v5, v26

    .line 674
    .line 675
    iget-boolean v6, v5, Lorg/maplibre/android/maps/Style;->fullyLoaded:Z

    .line 676
    .line 677
    if-eqz v6, :cond_15

    .line 678
    .line 679
    iput-object v3, v0, Lorg/maplibre/android/location/LocationComponent;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 680
    .line 681
    iget-object v6, v0, Lorg/maplibre/android/location/LocationComponent;->onMapClickListener:Lorg/maplibre/android/location/LocationComponent$3;

    .line 682
    .line 683
    move-object/from16 v14, v28

    .line 684
    .line 685
    iget-object v8, v14, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/IconManager;

    .line 686
    .line 687
    iget-object v8, v8, Lorg/maplibre/android/maps/IconManager;->iconMap:Ljava/lang/Object;

    .line 688
    .line 689
    check-cast v8, Lorg/maplibre/android/maps/MapView;

    .line 690
    .line 691
    iget-object v8, v8, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 692
    .line 693
    iget-object v8, v8, Lorg/maplibre/android/maps/MapGestureDetector;->onMapClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 694
    .line 695
    invoke-virtual {v8, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    .line 697
    .line 698
    iget-object v6, v0, Lorg/maplibre/android/location/LocationComponent;->onMapLongClickListener:Lorg/maplibre/android/location/LocationComponent$4;

    .line 699
    .line 700
    iget-object v8, v14, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/IconManager;

    .line 701
    .line 702
    iget-object v8, v8, Lorg/maplibre/android/maps/IconManager;->iconMap:Ljava/lang/Object;

    .line 703
    .line 704
    check-cast v8, Lorg/maplibre/android/maps/MapView;

    .line 705
    .line 706
    iget-object v8, v8, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 707
    .line 708
    iget-object v8, v8, Lorg/maplibre/android/maps/MapGestureDetector;->onMapLongClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 709
    .line 710
    invoke-virtual {v8, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    new-instance v8, Lorg/wikipedia/login/LoginClient;

    .line 714
    .line 715
    const/16 v6, 0xc

    .line 716
    .line 717
    invoke-direct {v8, v6}, Lorg/wikipedia/login/LoginClient;-><init>(I)V

    .line 718
    .line 719
    .line 720
    move/from16 v46, v9

    .line 721
    .line 722
    new-instance v9, Lokio/Path$Companion;

    .line 723
    .line 724
    const/16 v6, 0xb

    .line 725
    .line 726
    invoke-direct {v9, v6}, Lokio/Path$Companion;-><init>(I)V

    .line 727
    .line 728
    .line 729
    move-wide v11, v10

    .line 730
    new-instance v10, Landroidx/navigation/internal/NavContext;

    .line 731
    .line 732
    move-object/from16 v15, v24

    .line 733
    .line 734
    const/4 v2, 0x0

    .line 735
    invoke-direct {v10, v15, v2}, Landroidx/navigation/internal/NavContext;-><init>(Landroid/content/Context;Z)V

    .line 736
    .line 737
    .line 738
    move-object/from16 v26, v5

    .line 739
    .line 740
    new-instance v5, Lorg/maplibre/android/location/LocationLayerController;

    .line 741
    .line 742
    move/from16 v23, v6

    .line 743
    .line 744
    iget-object v6, v0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 745
    .line 746
    move-wide/from16 v19, v11

    .line 747
    .line 748
    iget-object v12, v0, Lorg/maplibre/android/location/LocationComponent;->renderModeChangedListener:Lorg/maplibre/android/location/LocationComponent$9;

    .line 749
    .line 750
    move-object v11, v3

    .line 751
    move/from16 v52, v7

    .line 752
    .line 753
    move-wide/from16 v53, v19

    .line 754
    .line 755
    move-object/from16 v7, v26

    .line 756
    .line 757
    const/16 v18, 0x3

    .line 758
    .line 759
    const/16 v22, 0x8

    .line 760
    .line 761
    const/16 v37, 0x12

    .line 762
    .line 763
    const/16 v45, 0x9

    .line 764
    .line 765
    invoke-direct/range {v5 .. v12}, Lorg/maplibre/android/location/LocationLayerController;-><init>(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/Style;Lorg/wikipedia/login/LoginClient;Lokio/Path$Companion;Landroidx/navigation/internal/NavContext;Lorg/maplibre/android/location/LocationComponentOptions;Lorg/maplibre/android/location/LocationComponent$9;)V

    .line 766
    .line 767
    .line 768
    move-object v8, v11

    .line 769
    iput-object v5, v0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    .line 770
    .line 771
    new-instance v3, Lorg/maplibre/android/location/LocationCameraController;

    .line 772
    .line 773
    iget-object v5, v0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 774
    .line 775
    iget-object v6, v0, Lorg/maplibre/android/location/LocationComponent;->transform:Lorg/maplibre/android/maps/Transform;

    .line 776
    .line 777
    iget-object v7, v0, Lorg/maplibre/android/location/LocationComponent;->cameraTrackingChangedListener:Lorg/maplibre/android/location/LocationComponent$8;

    .line 778
    .line 779
    iget-object v9, v0, Lorg/maplibre/android/location/LocationComponent;->onCameraMoveInvalidateListener:Lorg/maplibre/android/location/LocationComponent$6;

    .line 780
    .line 781
    move/from16 v32, v2

    .line 782
    .line 783
    move v11, v4

    .line 784
    move-object v4, v15

    .line 785
    move/from16 v12, v23

    .line 786
    .line 787
    move/from16 v15, v37

    .line 788
    .line 789
    move/from16 v10, v46

    .line 790
    .line 791
    move/from16 v2, v52

    .line 792
    .line 793
    const/16 v25, 0x1

    .line 794
    .line 795
    const/16 v30, 0x2

    .line 796
    .line 797
    invoke-direct/range {v3 .. v9}, Lorg/maplibre/android/location/LocationCameraController;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/Transform;Lorg/maplibre/android/location/LocationComponent$8;Lorg/maplibre/android/location/LocationComponentOptions;Lorg/maplibre/android/location/LocationComponent$6;)V

    .line 798
    .line 799
    .line 800
    iput-object v3, v0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    .line 801
    .line 802
    new-instance v3, Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    .line 803
    .line 804
    iget-object v5, v14, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 805
    .line 806
    sget-object v6, Lokio/Path$Companion;->instance:Lokio/Path$Companion;

    .line 807
    .line 808
    if-nez v6, :cond_b

    .line 809
    .line 810
    new-instance v6, Lokio/Path$Companion;

    .line 811
    .line 812
    const/16 v7, 0xc

    .line 813
    .line 814
    invoke-direct {v6, v7}, Lokio/Path$Companion;-><init>(I)V

    .line 815
    .line 816
    .line 817
    sput-object v6, Lokio/Path$Companion;->instance:Lokio/Path$Companion;

    .line 818
    .line 819
    :cond_b
    sget-object v7, Lokio/ByteString$Companion;->INSTANCE:Lokio/ByteString$Companion;

    .line 820
    .line 821
    if-nez v7, :cond_c

    .line 822
    .line 823
    new-instance v7, Lokio/ByteString$Companion;

    .line 824
    .line 825
    invoke-direct {v7, v12}, Lokio/ByteString$Companion;-><init>(I)V

    .line 826
    .line 827
    .line 828
    sput-object v7, Lokio/ByteString$Companion;->INSTANCE:Lokio/ByteString$Companion;

    .line 829
    .line 830
    :cond_c
    invoke-direct {v3, v5, v6, v7}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;-><init>(Lorg/maplibre/android/maps/MapView$2;Lokio/Path$Companion;Lokio/ByteString$Companion;)V

    .line 831
    .line 832
    .line 833
    iput-object v3, v0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    .line 834
    .line 835
    iput v13, v3, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->durationMultiplier:F

    .line 836
    .line 837
    const-string/jumbo v3, "window"

    .line 838
    .line 839
    .line 840
    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v3

    .line 844
    check-cast v3, Landroid/view/WindowManager;

    .line 845
    .line 846
    const-string v5, "sensor"

    .line 847
    .line 848
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v5

    .line 852
    check-cast v5, Landroid/hardware/SensorManager;

    .line 853
    .line 854
    if-eqz v3, :cond_d

    .line 855
    .line 856
    if-eqz v5, :cond_d

    .line 857
    .line 858
    new-instance v6, Lorg/maplibre/android/location/LocationComponentCompassEngine;

    .line 859
    .line 860
    invoke-direct {v6, v3, v5}, Lorg/maplibre/android/location/LocationComponentCompassEngine;-><init>(Landroid/view/WindowManager;Landroid/hardware/SensorManager;)V

    .line 861
    .line 862
    .line 863
    iput-object v6, v0, Lorg/maplibre/android/location/LocationComponent;->compassEngine:Lorg/maplibre/android/location/LocationComponentCompassEngine;

    .line 864
    .line 865
    :cond_d
    new-instance v3, Lorg/maplibre/android/location/StaleStateManager;

    .line 866
    .line 867
    iget-object v5, v0, Lorg/maplibre/android/location/LocationComponent;->onLocationStaleListener:Lorg/maplibre/android/location/LocationComponent$5;

    .line 868
    .line 869
    invoke-direct {v3, v5, v8}, Lorg/maplibre/android/location/StaleStateManager;-><init>(Lorg/maplibre/android/location/LocationComponent$5;Lorg/maplibre/android/location/LocationComponentOptions;)V

    .line 870
    .line 871
    .line 872
    iput-object v3, v0, Lorg/maplibre/android/location/LocationComponent;->staleStateManager:Lorg/maplibre/android/location/StaleStateManager;

    .line 873
    .line 874
    aget v3, v1, v32

    .line 875
    .line 876
    aget v5, v1, v25

    .line 877
    .line 878
    aget v6, v1, v30

    .line 879
    .line 880
    aget v7, v1, v18

    .line 881
    .line 882
    move-object/from16 v9, v21

    .line 883
    .line 884
    invoke-virtual {v9, v3, v5, v6, v7}, Lorg/maplibre/android/maps/MapLibreMap;->setPadding(IIII)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v0, v15}, Lorg/maplibre/android/location/LocationComponent;->setRenderMode(I)V

    .line 888
    .line 889
    .line 890
    const/16 v3, 0x8

    .line 891
    .line 892
    invoke-virtual {v0, v3}, Lorg/maplibre/android/location/LocationComponent;->setCameraMode(I)V

    .line 893
    .line 894
    .line 895
    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponent;->onLocationLayerStart()V

    .line 896
    .line 897
    .line 898
    :goto_a
    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    .line 899
    .line 900
    .line 901
    iput-object v8, v0, Lorg/maplibre/android/location/LocationComponent;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 902
    .line 903
    invoke-virtual {v14}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    .line 904
    .line 905
    .line 906
    move-result-object v3

    .line 907
    if-eqz v3, :cond_12

    .line 908
    .line 909
    iget-object v3, v0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    .line 910
    .line 911
    invoke-virtual {v3, v8}, Lorg/maplibre/android/location/LocationLayerController;->applyStyle(Lorg/maplibre/android/location/LocationComponentOptions;)V

    .line 912
    .line 913
    .line 914
    iget-object v3, v0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    .line 915
    .line 916
    invoke-virtual {v3, v8}, Lorg/maplibre/android/location/LocationCameraController;->initializeOptions(Lorg/maplibre/android/location/LocationComponentOptions;)V

    .line 917
    .line 918
    .line 919
    iget-object v3, v0, Lorg/maplibre/android/location/LocationComponent;->staleStateManager:Lorg/maplibre/android/location/StaleStateManager;

    .line 920
    .line 921
    if-eqz v11, :cond_f

    .line 922
    .line 923
    iget-boolean v5, v3, Lorg/maplibre/android/location/StaleStateManager;->isStale:Z

    .line 924
    .line 925
    invoke-virtual {v3, v5}, Lorg/maplibre/android/location/StaleStateManager;->setState(Z)V

    .line 926
    .line 927
    .line 928
    :cond_e
    const/4 v6, 0x0

    .line 929
    goto :goto_b

    .line 930
    :cond_f
    iget-boolean v5, v3, Lorg/maplibre/android/location/StaleStateManager;->isEnabled:Z

    .line 931
    .line 932
    if-eqz v5, :cond_e

    .line 933
    .line 934
    iget-object v5, v3, Lorg/maplibre/android/location/StaleStateManager;->handler:Landroidx/preference/PreferenceFragmentCompat$1;

    .line 935
    .line 936
    const/4 v6, 0x0

    .line 937
    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 938
    .line 939
    .line 940
    iget-object v5, v3, Lorg/maplibre/android/location/StaleStateManager;->innerOnLocationStaleListeners:Lorg/maplibre/android/location/LocationComponent$5;

    .line 941
    .line 942
    move/from16 v8, v32

    .line 943
    .line 944
    invoke-virtual {v5, v8}, Lorg/maplibre/android/location/LocationComponent$5;->onStaleStateChange(Z)V

    .line 945
    .line 946
    .line 947
    :goto_b
    iput-boolean v11, v3, Lorg/maplibre/android/location/StaleStateManager;->isEnabled:Z

    .line 948
    .line 949
    iget-object v3, v0, Lorg/maplibre/android/location/LocationComponent;->staleStateManager:Lorg/maplibre/android/location/StaleStateManager;

    .line 950
    .line 951
    move-wide/from16 v11, v53

    .line 952
    .line 953
    iput-wide v11, v3, Lorg/maplibre/android/location/StaleStateManager;->delayTime:J

    .line 954
    .line 955
    iget-object v5, v3, Lorg/maplibre/android/location/StaleStateManager;->handler:Landroidx/preference/PreferenceFragmentCompat$1;

    .line 956
    .line 957
    move/from16 v7, v25

    .line 958
    .line 959
    invoke-virtual {v5, v7}, Landroid/os/Handler;->hasMessages(I)Z

    .line 960
    .line 961
    .line 962
    move-result v8

    .line 963
    if-eqz v8, :cond_10

    .line 964
    .line 965
    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 966
    .line 967
    .line 968
    iget-wide v11, v3, Lorg/maplibre/android/location/StaleStateManager;->delayTime:J

    .line 969
    .line 970
    invoke-virtual {v5, v7, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 971
    .line 972
    .line 973
    :cond_10
    iget-object v3, v0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    .line 974
    .line 975
    iput v13, v3, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->durationMultiplier:F

    .line 976
    .line 977
    iput-boolean v2, v3, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->compassAnimationEnabled:Z

    .line 978
    .line 979
    iput-boolean v10, v3, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->accuracyAnimationEnabled:Z

    .line 980
    .line 981
    if-eqz v47, :cond_11

    .line 982
    .line 983
    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponent;->startPulsingLocationCircle()V

    .line 984
    .line 985
    .line 986
    const/4 v8, 0x0

    .line 987
    goto :goto_c

    .line 988
    :cond_11
    const/16 v2, 0x9

    .line 989
    .line 990
    invoke-virtual {v3, v2}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    .line 991
    .line 992
    .line 993
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    .line 994
    .line 995
    iget-object v2, v2, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 996
    .line 997
    const/4 v8, 0x0

    .line 998
    invoke-virtual {v2, v8}, Lokio/internal/DefaultSocket;->adjustPulsingCircleLayerVisibility(Z)V

    .line 999
    .line 1000
    .line 1001
    :goto_c
    aget v2, v1, v8

    .line 1002
    .line 1003
    const/16 v25, 0x1

    .line 1004
    .line 1005
    aget v3, v1, v25

    .line 1006
    .line 1007
    aget v5, v1, v30

    .line 1008
    .line 1009
    aget v1, v1, v18

    .line 1010
    .line 1011
    invoke-virtual {v9, v2, v3, v5, v1}, Lorg/maplibre/android/maps/MapLibreMap;->setPadding(IIII)V

    .line 1012
    .line 1013
    .line 1014
    :cond_12
    new-instance v1, Lokhttp3/FormBody$Builder;

    .line 1015
    .line 1016
    new-instance v2, Lokhttp3/FormBody$Builder;

    .line 1017
    .line 1018
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v3

    .line 1022
    invoke-direct {v2, v3}, Lokhttp3/FormBody$Builder;-><init>(Landroid/content/Context;)V

    .line 1023
    .line 1024
    .line 1025
    invoke-direct {v1, v2}, Lokhttp3/FormBody$Builder;-><init>(Lokhttp3/FormBody$Builder;)V

    .line 1026
    .line 1027
    .line 1028
    iget-object v2, v0, Lorg/maplibre/android/location/LocationComponent;->currentLocationEngineListener:Landroidx/lifecycle/WeakReference;

    .line 1029
    .line 1030
    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    .line 1031
    .line 1032
    .line 1033
    iget-object v3, v0, Lorg/maplibre/android/location/LocationComponent;->locationEngine:Lokhttp3/FormBody$Builder;

    .line 1034
    .line 1035
    if-eqz v3, :cond_13

    .line 1036
    .line 1037
    invoke-virtual {v3, v2}, Lokhttp3/FormBody$Builder;->removeLocationUpdates(Landroidx/lifecycle/WeakReference;)V

    .line 1038
    .line 1039
    .line 1040
    const/4 v5, 0x0

    .line 1041
    iput-object v5, v0, Lorg/maplibre/android/location/LocationComponent;->locationEngine:Lokhttp3/FormBody$Builder;

    .line 1042
    .line 1043
    :cond_13
    iget-object v3, v0, Lorg/maplibre/android/location/LocationComponent;->locationEngineRequest:Lorg/maplibre/android/location/engine/LocationEngineRequest;

    .line 1044
    .line 1045
    iget-wide v3, v3, Lorg/maplibre/android/location/engine/LocationEngineRequest;->fastestInterval:J

    .line 1046
    .line 1047
    iput-wide v3, v0, Lorg/maplibre/android/location/LocationComponent;->fastestInterval:J

    .line 1048
    .line 1049
    iput-object v1, v0, Lorg/maplibre/android/location/LocationComponent;->locationEngine:Lokhttp3/FormBody$Builder;

    .line 1050
    .line 1051
    iget-boolean v3, v0, Lorg/maplibre/android/location/LocationComponent;->isLayerReady:Z

    .line 1052
    .line 1053
    if-eqz v3, :cond_14

    .line 1054
    .line 1055
    iget-boolean v3, v0, Lorg/maplibre/android/location/LocationComponent;->isEnabled:Z

    .line 1056
    .line 1057
    if-eqz v3, :cond_14

    .line 1058
    .line 1059
    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponent;->setLastLocation()V

    .line 1060
    .line 1061
    .line 1062
    iget-object v0, v0, Lorg/maplibre/android/location/LocationComponent;->locationEngineRequest:Lorg/maplibre/android/location/engine/LocationEngineRequest;

    .line 1063
    .line 1064
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v3

    .line 1068
    invoke-virtual {v1, v0, v2, v3}, Lokhttp3/FormBody$Builder;->requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Landroidx/lifecycle/WeakReference;Landroid/os/Looper;)V

    .line 1069
    .line 1070
    .line 1071
    :cond_14
    move-object/from16 v0, v17

    .line 1072
    .line 1073
    iget-object v1, v0, Lorg/maplibre/android/maps/MapLibreMap;->locationComponent:Lorg/maplibre/android/location/LocationComponent;

    .line 1074
    .line 1075
    invoke-virtual {v1}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    .line 1076
    .line 1077
    .line 1078
    const/4 v4, 0x1

    .line 1079
    iput-boolean v4, v1, Lorg/maplibre/android/location/LocationComponent;->isEnabled:Z

    .line 1080
    .line 1081
    invoke-virtual {v1}, Lorg/maplibre/android/location/LocationComponent;->onLocationLayerStart()V

    .line 1082
    .line 1083
    .line 1084
    iget-object v1, v1, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    .line 1085
    .line 1086
    iput-boolean v4, v1, Lorg/maplibre/android/location/LocationCameraController;->isEnabled:Z

    .line 1087
    .line 1088
    iget-object v1, v0, Lorg/maplibre/android/maps/MapLibreMap;->locationComponent:Lorg/maplibre/android/location/LocationComponent;

    .line 1089
    .line 1090
    const/16 v3, 0x8

    .line 1091
    .line 1092
    invoke-virtual {v1, v3}, Lorg/maplibre/android/location/LocationComponent;->setCameraMode(I)V

    .line 1093
    .line 1094
    .line 1095
    iget-object v0, v0, Lorg/maplibre/android/maps/MapLibreMap;->locationComponent:Lorg/maplibre/android/location/LocationComponent;

    .line 1096
    .line 1097
    const/4 v1, 0x4

    .line 1098
    invoke-virtual {v0, v1}, Lorg/maplibre/android/location/LocationComponent;->setRenderMode(I)V

    .line 1099
    .line 1100
    .line 1101
    return-void

    .line 1102
    :cond_15
    const-string v0, "Style is invalid, provide the most recently loaded one."

    .line 1103
    .line 1104
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    return-void

    .line 1108
    :cond_16
    const-string v0, "Invalid shadow size "

    .line 1109
    .line 1110
    const-string v1, ". Must be >= 0"

    .line 1111
    .line 1112
    invoke-static {v0, v2, v1}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;FLjava/lang/Object;)V

    .line 1113
    .line 1114
    .line 1115
    return-void

    .line 1116
    :cond_17
    const-string v0, "Accuracy alpha value must be between 0.0 and 1.0."

    .line 1117
    .line 1118
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1119
    .line 1120
    .line 1121
    return-void

    .line 1122
    :cond_18
    const-string v0, "Style in LocationComponentActivationOptions isn\'t fully loaded. Wait for the map to fully load before passing the Style object to LocationComponentActivationOptions."

    .line 1123
    .line 1124
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1125
    .line 1126
    .line 1127
    :cond_19
    return-void
.end method

.method public final updateSearchText(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchTextView:Landroid/widget/TextView;

    .line 13
    .line 14
    const v0, 0x7f1205b1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchCloseBtn:Landroid/view/View;

    .line 30
    .line 31
    check-cast p1, Landroid/widget/ImageView;

    .line 32
    .line 33
    const/16 v0, 0x8

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->magnifiedMarker:Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    .line 44
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p1, Lorg/maplibre/android/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    .line 49
    .line 50
    const-string v2, "icon-size"

    .line 51
    .line 52
    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lorg/wikipedia/places/PlacesFragment;->symbolManager:Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->update(Lorg/maplibre/android/plugins/annotation/Symbol;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/places/PlacesFragment;->getViewModel()Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lorg/wikipedia/places/PlacesFragmentViewModel;->highlightedPageTitle:Lorg/wikipedia/page/PageTitle;

    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget-object v0, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchCloseBtn:Landroid/view/View;

    .line 74
    .line 75
    check-cast v0, Landroid/widget/ImageView;

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchTextView:Landroid/widget/TextView;

    .line 87
    .line 88
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 89
    .line 90
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final updateToggleViews(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v4, ""

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listEmptyContainer:Landroid/view/View;

    .line 23
    .line 24
    check-cast v0, Landroid/widget/ScrollView;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    :goto_0
    if-eqz p1, :cond_1

    .line 33
    .line 34
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 35
    .line 36
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 37
    .line 38
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 39
    .line 40
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 45
    .line 46
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const-string v7, "app_places_interaction"

    .line 51
    .line 52
    const-string v2, "map_view_click"

    .line 53
    .line 54
    const-string v3, "map_view"

    .line 55
    .line 56
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapView:Landroid/view/View;

    .line 68
    .line 69
    check-cast v0, Lorg/maplibre/android/maps/MapView;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    if-nez p1, :cond_2

    .line 78
    .line 79
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 80
    .line 81
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 82
    .line 83
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 84
    .line 85
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 90
    .line 91
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    const-string v7, "app_places_interaction"

    .line 96
    .line 97
    const-string v2, "list_view_click"

    .line 98
    .line 99
    const-string v3, "list_view"

    .line 100
    .line 101
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eqz p1, :cond_3

    .line 112
    .line 113
    const v1, 0x7f0404e7

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    const v1, 0x7f040061

    .line 118
    .line 119
    .line 120
    :goto_1
    invoke-static {v0, v1}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapView:Landroid/view/View;

    .line 130
    .line 131
    check-cast v1, Lorg/maplibre/android/maps/MapView;

    .line 132
    .line 133
    const/16 v2, 0x8

    .line 134
    .line 135
    const/4 v3, 0x0

    .line 136
    if-eqz p1, :cond_4

    .line 137
    .line 138
    move v4, v3

    .line 139
    goto :goto_2

    .line 140
    :cond_4
    move v4, v2

    .line 141
    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 150
    .line 151
    if-nez p1, :cond_6

    .line 152
    .line 153
    iget-object v4, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 159
    .line 160
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    if-eqz v4, :cond_5

    .line 165
    .line 166
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    goto :goto_3

    .line 171
    :cond_5
    move v4, v3

    .line 172
    :goto_3
    if-lez v4, :cond_6

    .line 173
    .line 174
    move v4, v3

    .line 175
    goto :goto_4

    .line 176
    :cond_6
    move v4, v2

    .line 177
    :goto_4
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listEmptyContainer:Landroid/view/View;

    .line 186
    .line 187
    check-cast v1, Landroid/widget/ScrollView;

    .line 188
    .line 189
    if-nez p1, :cond_8

    .line 190
    .line 191
    iget-object v4, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 197
    .line 198
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    if-eqz v4, :cond_7

    .line 203
    .line 204
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    goto :goto_5

    .line 209
    :cond_7
    move v4, v3

    .line 210
    :goto_5
    if-nez v4, :cond_8

    .line 211
    .line 212
    move v4, v3

    .line 213
    goto :goto_6

    .line 214
    :cond_8
    move v4, v2

    .line 215
    :goto_6
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 216
    .line 217
    .line 218
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchContainer:Lorg/wikipedia/views/WikiCardView;

    .line 224
    .line 225
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 226
    .line 227
    .line 228
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 229
    .line 230
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->myLocationButton:Landroid/view/View;

    .line 234
    .line 235
    check-cast p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 236
    .line 237
    if-eqz p1, :cond_9

    .line 238
    .line 239
    move v2, v3

    .line 240
    :cond_9
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 241
    .line 242
    .line 243
    return-void
.end method

.class public Lorg/maplibre/android/maps/MapView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public attributionClickListener:Lorg/maplibre/android/maps/MapView$3;

.field public final cameraDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

.field public compassView:Lorg/maplibre/android/maps/widgets/CompassView;

.field public destroyed:Z

.field public final focalInvalidator:Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;

.field public focalPoint:Landroid/graphics/PointF;

.field public final initialRenderCallback:Lorg/maplibre/android/maps/MapView$InitialRenderCallback;

.field public isStarted:Z

.field public final mapCallback:Lorg/maplibre/android/maps/MapView$MapCallback;

.field public final mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

.field public mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

.field public mapKeyListener:Lorg/maplibre/android/maps/Style$Builder;

.field public mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

.field public maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

.field public maplibreMapOptions:Lorg/maplibre/android/maps/MapLibreMapOptions;

.field public nativeMapView:Lorg/maplibre/android/maps/NativeMap;

.field public final registerTouchListener:Lorg/maplibre/android/maps/IconManager;

.field public renderView:Landroid/view/View;

.field public savedInstanceState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/maplibre/android/maps/MapChangeReceiver;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 10
    .line 11
    new-instance v0, Lorg/maplibre/android/maps/MapView$MapCallback;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/MapView$MapCallback;-><init>(Lorg/maplibre/android/maps/MapView;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapCallback:Lorg/maplibre/android/maps/MapView$MapCallback;

    .line 17
    .line 18
    new-instance v0, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;-><init>(Lorg/maplibre/android/maps/MapView;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->initialRenderCallback:Lorg/maplibre/android/maps/MapView$InitialRenderCallback;

    .line 24
    .line 25
    new-instance v0, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;-><init>(Lorg/maplibre/android/maps/MapView;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->focalInvalidator:Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;

    .line 31
    .line 32
    new-instance v0, Lorg/maplibre/android/maps/IconManager;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/IconManager;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->registerTouchListener:Lorg/maplibre/android/maps/IconManager;

    .line 38
    .line 39
    new-instance v0, Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 40
    .line 41
    invoke-direct {v0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->cameraDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    .line 48
    .line 49
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Ltimber/log/Timber$Forest;->d([Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1, p2}, Lorg/maplibre/android/maps/MapLibreMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/MapView;->initialize(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V
    .locals 2

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-direct {v0}, Lorg/maplibre/android/maps/MapChangeReceiver;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 67
    new-instance v0, Lorg/maplibre/android/maps/MapView$MapCallback;

    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/MapView$MapCallback;-><init>(Lorg/maplibre/android/maps/MapView;)V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapCallback:Lorg/maplibre/android/maps/MapView$MapCallback;

    .line 68
    new-instance v0, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;

    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;-><init>(Lorg/maplibre/android/maps/MapView;)V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->initialRenderCallback:Lorg/maplibre/android/maps/MapView$InitialRenderCallback;

    .line 69
    new-instance v0, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;

    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;-><init>(Lorg/maplibre/android/maps/MapView;)V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->focalInvalidator:Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;

    .line 70
    new-instance v0, Lorg/maplibre/android/maps/IconManager;

    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/IconManager;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->registerTouchListener:Lorg/maplibre/android/maps/IconManager;

    .line 71
    new-instance v0, Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-direct {v0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->cameraDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    const/4 v0, 0x0

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ltimber/log/Timber$Forest;->d([Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/MapView;->initialize(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V

    return-void
.end method

.method public static setMapStrictModeEnabled(Z)V
    .locals 1

    .line 1
    const-class v0, Lkotlin/text/UStringsKt;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-boolean p0, Lkotlin/text/UStringsKt;->strictModeEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw p0
.end method


# virtual methods
.method public getMapLibreMap()Lorg/maplibre/android/maps/MapLibreMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPixelRatio()F
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMapOptions:Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 2
    .line 3
    iget v0, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->pixelRatio:F

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    cmpl-float v1, v0, v1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 19
    .line 20
    return p0

    .line 21
    :cond_0
    return v0
.end method

.method public getRenderView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->renderView:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRenderingRefreshMode()Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->getRenderingRefreshMode()Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string p0, "Calling MapView#getRenderingRefreshMode before mapRenderer is created."

    .line 11
    .line 12
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public getViewContent()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 3
    .line 4
    .line 5
    const/high16 v0, 0x80000

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public final initialiseAttributionView()Landroid/widget/ImageView;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "attrView"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, -0x2

    .line 23
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const v2, 0x7f1203b3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const v2, 0x7f080251

    .line 60
    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-static {v1, v2, v3}, Lokhttp3/HttpUrl$Companion;->getDrawableFromRes(Landroid/content/Context;ILjava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Lorg/maplibre/android/maps/MapView$3;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    iget-object v3, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 77
    .line 78
    invoke-direct {v1, v2, v3}, Lorg/maplibre/android/maps/MapView$3;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMap;)V

    .line 79
    .line 80
    .line 81
    iput-object v1, p0, Lorg/maplibre/android/maps/MapView;->attributionClickListener:Lorg/maplibre/android/maps/MapView$3;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    return-object v0
.end method

.method public final initialiseCompassView()Lorg/maplibre/android/maps/widgets/CompassView;
    .locals 4

    .line 1
    new-instance v0, Lorg/maplibre/android/maps/widgets/CompassView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput v2, v0, Lorg/maplibre/android/maps/widgets/CompassView;->rotation:F

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    iput-boolean v2, v0, Lorg/maplibre/android/maps/widgets/CompassView;->fadeCompassViewFacingNorth:Z

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-boolean v2, v0, Lorg/maplibre/android/maps/widgets/CompassView;->isAnimating:Z

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lorg/maplibre/android/maps/widgets/CompassView;->setEnabled(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 31
    .line 32
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    const/high16 v3, 0x42400000    # 48.0f

    .line 35
    .line 36
    mul-float/2addr v1, v3

    .line 37
    float-to-int v1, v1

    .line 38
    invoke-direct {v2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 50
    .line 51
    const-string v1, "compassView"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/4 v1, -0x2

    .line 63
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 64
    .line 65
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    .line 73
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const v2, 0x7f1203b4

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 90
    .line 91
    new-instance v1, Lorg/maplibre/android/maps/MapView$2;

    .line 92
    .line 93
    iget-object v2, p0, Lorg/maplibre/android/maps/MapView;->cameraDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 94
    .line 95
    invoke-direct {v1, p0, v2}, Lorg/maplibre/android/maps/MapView$2;-><init>(Lorg/maplibre/android/maps/MapView;Lorg/maplibre/android/maps/CameraChangeDispatcher;)V

    .line 96
    .line 97
    .line 98
    iput-object v1, v0, Lorg/maplibre/android/maps/widgets/CompassView;->compassAnimationListener:Lorg/maplibre/android/maps/MapView$2;

    .line 99
    .line 100
    new-instance v1, Lorg/maplibre/android/maps/MapView$3;

    .line 101
    .line 102
    invoke-direct {v1, p0, v2}, Lorg/maplibre/android/maps/MapView$3;-><init>(Lorg/maplibre/android/maps/MapView;Lorg/maplibre/android/maps/CameraChangeDispatcher;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 109
    .line 110
    return-object p0
.end method

.method public final initialiseLogoView()Landroid/widget/ImageView;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "logoView"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, -0x2

    .line 23
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const v1, 0x7f080255

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static {p0, v1, v2}, Lokhttp3/HttpUrl$Companion;->getDrawableFromRes(Landroid/content/Context;ILjava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method public final initialize(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lorg/maplibre/android/MapLibre;->hasInstance()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 15
    .line 16
    iget v1, p2, Lorg/maplibre/android/maps/MapLibreMapOptions;->foregroundLoadColor:I

    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lorg/maplibre/android/maps/MapView;->maplibreMapOptions:Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 25
    .line 26
    const v0, 0x7f1203b5

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    const/16 v2, 0x1b

    .line 47
    .line 48
    invoke-direct {v1, v2, p0}, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p2, v0, v1}, Lorg/maplibre/android/maps/renderer/MapRenderer;->create(Lorg/maplibre/android/maps/MapLibreMapOptions;Landroid/content/Context;Ljava/lang/Runnable;)Lorg/maplibre/android/maps/renderer/MapRenderer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

    .line 56
    .line 57
    invoke-virtual {v0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->getView()Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->renderView:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapView;->getPixelRatio()F

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput p1, p2, Lorg/maplibre/android/maps/MapLibreMapOptions;->pixelRatio:F

    .line 71
    .line 72
    new-instance v0, Lorg/maplibre/android/maps/NativeMapView;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-object v4, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 79
    .line 80
    iget-object v5, p0, Lorg/maplibre/android/maps/MapView;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

    .line 81
    .line 82
    move-object v3, p0

    .line 83
    move-object v2, p2

    .line 84
    invoke-direct/range {v0 .. v5}, Lorg/maplibre/android/maps/NativeMapView;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;Lorg/maplibre/android/maps/MapView;Lorg/maplibre/android/maps/MapChangeReceiver;Lorg/maplibre/android/maps/renderer/MapRenderer;)V

    .line 85
    .line 86
    .line 87
    iput-object v0, v3, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    .line 88
    .line 89
    return-void

    .line 90
    :cond_1
    new-instance p0, Lcoil3/network/HttpException;

    .line 91
    .line 92
    invoke-direct {p0}, Lcoil3/network/HttpException;-><init>()V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapView;->destroyed:Z

    .line 3
    .line 4
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 5
    .line 6
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraWillChangeListenerList:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraIsChangingListenerList:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraDidChangeListenerList:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartLoadingMapListenerList:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishLoadingMapListenerList:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFailLoadingMapListenerList:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartRenderingFrameList:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingFrameList:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartRenderingMapListenerList:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingMapListenerList:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidBecomeIdleListenerList:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishLoadingStyleListenerList:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onSourceChangedListenerList:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 95
    .line 96
    .line 97
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onStyleImageMissingListenerList:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onCanRemoveUnusedStyleImageListenerList:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 109
    .line 110
    .line 111
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onPreCompileShaderList:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 116
    .line 117
    .line 118
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onPostCompileShaderList:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 123
    .line 124
    .line 125
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onShaderCompileFailedList:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 130
    .line 131
    .line 132
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onGlyphsLoadedList:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onGlyphsErrorList:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 144
    .line 145
    .line 146
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onGlyphsRequestedList:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onTileActionList:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 158
    .line 159
    .line 160
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onSpriteLoadedList:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 165
    .line 166
    .line 167
    iget-object v1, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onSpriteErrorList:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 172
    .line 173
    .line 174
    iget-object v0, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onSpriteRequestedList:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapCallback:Lorg/maplibre/android/maps/MapView$MapCallback;

    .line 182
    .line 183
    iget-object v1, v0, Lorg/maplibre/android/maps/MapView$MapCallback;->onMapReadyCallbackList:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 186
    .line 187
    .line 188
    iget-object v1, v0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    .line 189
    .line 190
    iget-object v1, v1, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 191
    .line 192
    iget-object v2, v1, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishLoadingStyleListenerList:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 195
    .line 196
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    iget-object v2, v1, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingFrameWithStatsList:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 202
    .line 203
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    iget-object v2, v1, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishLoadingMapListenerList:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 209
    .line 210
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    iget-object v2, v1, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraIsChangingListenerList:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 216
    .line 217
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    iget-object v2, v1, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraDidChangeListenerList:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 223
    .line 224
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    iget-object v1, v1, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFailLoadingMapListenerList:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 230
    .line 231
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->initialRenderCallback:Lorg/maplibre/android/maps/MapView$InitialRenderCallback;

    .line 235
    .line 236
    iget-object v1, v0, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    .line 237
    .line 238
    iget-object v1, v1, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 239
    .line 240
    iget-object v1, v1, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingFrameWithStatsList:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 243
    .line 244
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 248
    .line 249
    if-eqz v0, :cond_0

    .line 250
    .line 251
    invoke-virtual {v0}, Lorg/maplibre/android/maps/widgets/CompassView;->resetAnimation()V

    .line 252
    .line 253
    .line 254
    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 255
    .line 256
    const/4 v1, 0x0

    .line 257
    if-eqz v0, :cond_2

    .line 258
    .line 259
    iget-object v2, v0, Lorg/maplibre/android/maps/MapLibreMap;->locationComponent:Lorg/maplibre/android/location/LocationComponent;

    .line 260
    .line 261
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    iget-object v2, v0, Lorg/maplibre/android/maps/MapLibreMap;->style:Lorg/maplibre/android/maps/Style;

    .line 265
    .line 266
    if-eqz v2, :cond_1

    .line 267
    .line 268
    invoke-virtual {v2}, Lorg/maplibre/android/maps/Style;->clear()V

    .line 269
    .line 270
    .line 271
    :cond_1
    iget-object v0, v0, Lorg/maplibre/android/maps/MapLibreMap;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 272
    .line 273
    iget-object v2, v0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->handler:Landroidx/preference/PreferenceFragmentCompat$1;

    .line 274
    .line 275
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    iget-object v2, v0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 281
    .line 282
    .line 283
    iget-object v2, v0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveCanceled:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 284
    .line 285
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 286
    .line 287
    .line 288
    iget-object v2, v0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 289
    .line 290
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 291
    .line 292
    .line 293
    iget-object v0, v0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 296
    .line 297
    .line 298
    :cond_2
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    .line 299
    .line 300
    if-eqz v0, :cond_3

    .line 301
    .line 302
    check-cast v0, Lorg/maplibre/android/maps/NativeMapView;

    .line 303
    .line 304
    invoke-virtual {v0}, Lorg/maplibre/android/maps/NativeMapView;->destroy()V

    .line 305
    .line 306
    .line 307
    iput-object v1, p0, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    .line 308
    .line 309
    :cond_3
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

    .line 310
    .line 311
    if-eqz p0, :cond_4

    .line 312
    .line 313
    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onDestroy()V

    .line 314
    .line 315
    .line 316
    :cond_4
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x2

    .line 12
    and-int/2addr v2, v3

    .line 13
    if-ne v2, v3, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    if-eq v2, v3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, v0, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 25
    .line 26
    iget-boolean v0, v0, Lorg/maplibre/android/maps/UiSettings;->zoomGesturesEnabled:Z

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v1}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    .line 32
    .line 33
    .line 34
    const/16 p0, 0x9

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    float-to-double v2, p0

    .line 41
    new-instance p0, Landroid/graphics/PointF;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2, v3, p0}, Lorg/maplibre/android/maps/Transform;->zoomBy(DLandroid/graphics/PointF;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    :goto_1
    const/4 p0, 0x1

    .line 65
    return p0

    .line 66
    :cond_3
    const/4 p0, 0x0

    .line 67
    return p0

    .line 68
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    return p0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapKeyListener:Lorg/maplibre/android/maps/Style$Builder;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v1, v0, Lorg/maplibre/android/maps/Style$Builder;->sources:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lorg/maplibre/android/maps/Transform;

    .line 8
    .line 9
    iget-object v2, v0, Lorg/maplibre/android/maps/Style$Builder;->sources:Ljava/lang/Object;

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lorg/maplibre/android/maps/Transform;

    .line 13
    .line 14
    iget-object v0, v0, Lorg/maplibre/android/maps/Style$Builder;->layers:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lorg/maplibre/android/maps/UiSettings;

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v4, 0x5

    .line 23
    if-lt v2, v4, :cond_0

    .line 24
    .line 25
    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 29
    .line 30
    :goto_0
    const/16 v2, 0x42

    .line 31
    .line 32
    if-eq p1, v2, :cond_6

    .line 33
    .line 34
    packed-switch p1, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :pswitch_0
    iget-boolean v0, v0, Lorg/maplibre/android/maps/UiSettings;->scrollGesturesEnabled:Z

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v1}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    .line 44
    .line 45
    .line 46
    neg-double v4, v4

    .line 47
    const-wide/16 v6, 0x0

    .line 48
    .line 49
    const-wide/16 v8, 0x0

    .line 50
    .line 51
    invoke-virtual/range {v3 .. v9}, Lorg/maplibre/android/maps/Transform;->moveBy(DDJ)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :pswitch_1
    iget-boolean v0, v0, Lorg/maplibre/android/maps/UiSettings;->scrollGesturesEnabled:Z

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {v1}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    .line 61
    .line 62
    .line 63
    const-wide/16 v6, 0x0

    .line 64
    .line 65
    const-wide/16 v8, 0x0

    .line 66
    .line 67
    invoke-virtual/range {v3 .. v9}, Lorg/maplibre/android/maps/Transform;->moveBy(DDJ)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :pswitch_2
    iget-boolean v0, v0, Lorg/maplibre/android/maps/UiSettings;->scrollGesturesEnabled:Z

    .line 72
    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {v1}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    .line 77
    .line 78
    .line 79
    neg-double v6, v4

    .line 80
    const-wide/16 v8, 0x0

    .line 81
    .line 82
    const-wide/16 v4, 0x0

    .line 83
    .line 84
    invoke-virtual/range {v3 .. v9}, Lorg/maplibre/android/maps/Transform;->moveBy(DDJ)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :pswitch_3
    iget-boolean v0, v0, Lorg/maplibre/android/maps/UiSettings;->scrollGesturesEnabled:Z

    .line 89
    .line 90
    if-nez v0, :cond_5

    .line 91
    .line 92
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-eqz p0, :cond_4

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    const/4 p0, 0x0

    .line 100
    return p0

    .line 101
    :cond_5
    invoke-virtual {v1}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    .line 102
    .line 103
    .line 104
    move-wide v6, v4

    .line 105
    const-wide/16 v4, 0x0

    .line 106
    .line 107
    const-wide/16 v8, 0x0

    .line 108
    .line 109
    invoke-virtual/range {v3 .. v9}, Lorg/maplibre/android/maps/Transform;->moveBy(DDJ)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    :pswitch_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 114
    .line 115
    .line 116
    :goto_2
    const/4 p0, 0x1

    .line 117
    return p0

    .line 118
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    return p0

    .line 123
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapKeyListener:Lorg/maplibre/android/maps/Style$Builder;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, v0, Lorg/maplibre/android/maps/Style$Builder;->layers:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lorg/maplibre/android/maps/UiSettings;

    .line 8
    .line 9
    const/16 v2, 0x17

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eq p1, v2, :cond_0

    .line 14
    .line 15
    const/16 v2, 0x42

    .line 16
    .line 17
    if-eq p1, v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean v2, v1, Lorg/maplibre/android/maps/UiSettings;->zoomGesturesEnabled:Z

    .line 21
    .line 22
    iget-object v1, v1, Lorg/maplibre/android/maps/UiSettings;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    return v4

    .line 33
    :cond_1
    return v3

    .line 34
    :cond_2
    new-instance p0, Landroid/graphics/PointF;

    .line 35
    .line 36
    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapView$2;->getWidth()F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/high16 p2, 0x40000000    # 2.0f

    .line 41
    .line 42
    div-float/2addr p1, p2

    .line 43
    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapView$2;->getHeight()F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    div-float/2addr v1, p2

    .line 48
    invoke-direct {p0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 49
    .line 50
    .line 51
    iget-object p1, v0, Lorg/maplibre/android/maps/Style$Builder;->images:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Lorg/maplibre/android/maps/MapGestureDetector;

    .line 54
    .line 55
    invoke-virtual {p1, v3, p0, v4}, Lorg/maplibre/android/maps/MapGestureDetector;->zoomAnimated(ZLandroid/graphics/PointF;Z)V

    .line 56
    .line 57
    .line 58
    return v4

    .line 59
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    return p0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapKeyListener:Lorg/maplibre/android/maps/Style$Builder;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v1, v0, Lorg/maplibre/android/maps/Style$Builder;->layers:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lorg/maplibre/android/maps/UiSettings;

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v2, 0x17

    .line 18
    .line 19
    if-eq p1, v2, :cond_1

    .line 20
    .line 21
    const/16 v2, 0x42

    .line 22
    .line 23
    if-eq p1, v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-boolean v2, v1, Lorg/maplibre/android/maps/UiSettings;->zoomGesturesEnabled:Z

    .line 27
    .line 28
    iget-object v1, v1, Lorg/maplibre/android/maps/UiSettings;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 29
    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    return v3

    .line 39
    :cond_2
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :cond_3
    new-instance p0, Landroid/graphics/PointF;

    .line 42
    .line 43
    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapView$2;->getWidth()F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/high16 p2, 0x40000000    # 2.0f

    .line 48
    .line 49
    div-float/2addr p1, p2

    .line 50
    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapView$2;->getHeight()F

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    div-float/2addr v1, p2

    .line 55
    invoke-direct {p0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 56
    .line 57
    .line 58
    iget-object p1, v0, Lorg/maplibre/android/maps/Style$Builder;->images:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Lorg/maplibre/android/maps/MapGestureDetector;

    .line 61
    .line 62
    invoke-virtual {p1, v3, p0, v3}, Lorg/maplibre/android/maps/MapGestureDetector;->zoomAnimated(ZLandroid/graphics/PointF;Z)V

    .line 63
    .line 64
    .line 65
    return v3

    .line 66
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    return p0
.end method

.method public final onLowMemory()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapView;->destroyed:Z

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    check-cast v0, Lorg/maplibre/android/maps/NativeMapView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/maplibre/android/maps/NativeMapView;->onLowMemory()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    check-cast p0, Lorg/maplibre/android/maps/NativeMapView;

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/NativeMapView;->resizeView(II)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapView;->isStarted:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lorg/maplibre/android/net/ConnectivityReceiver;->instance(Landroid/content/Context;)Lorg/maplibre/android/net/ConnectivityReceiver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v2, v0, Lorg/maplibre/android/net/ConnectivityReceiver;->activationCounter:I

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iget-object v2, v0, Lorg/maplibre/android/net/ConnectivityReceiver;->context:Landroid/content/Context;

    .line 19
    .line 20
    new-instance v3, Landroid/content/IntentFilter;

    .line 21
    .line 22
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 23
    .line 24
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    :cond_0
    iget v2, v0, Lorg/maplibre/android/net/ConnectivityReceiver;->activationCounter:I

    .line 31
    .line 32
    add-int/2addr v2, v1

    .line 33
    iput v2, v0, Lorg/maplibre/android/net/ConnectivityReceiver;->activationCounter:I

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lorg/maplibre/android/storage/FileSource;->getInstance(Landroid/content/Context;)Lorg/maplibre/android/storage/FileSource;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lorg/maplibre/android/storage/FileSource;->activate()V

    .line 44
    .line 45
    .line 46
    iput-boolean v1, p0, Lorg/maplibre/android/maps/MapView;->isStarted:Z

    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iput-boolean v1, v0, Lorg/maplibre/android/maps/MapLibreMap;->started:Z

    .line 53
    .line 54
    iget-object v0, v0, Lorg/maplibre/android/maps/MapLibreMap;->locationComponent:Lorg/maplibre/android/location/LocationComponent;

    .line 55
    .line 56
    iput-boolean v1, v0, Lorg/maplibre/android/location/LocationComponent;->isComponentStarted:Z

    .line 57
    .line 58
    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponent;->onLocationLayerStart()V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

    .line 62
    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onStart()V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->attributionClickListener:Lorg/maplibre/android/maps/MapView$3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lorg/maplibre/android/maps/MapView$3;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lorg/maplibre/android/maps/UiSettings;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lorg/maplibre/android/maps/MapView$3;->val$cameraChangeDispatcher:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lorg/maplibre/android/maps/AttributionDialogManager;

    .line 15
    .line 16
    iget-object v1, v0, Lorg/maplibre/android/maps/AttributionDialogManager;->dialog:Landroid/app/AlertDialog;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v0, v0, Lorg/maplibre/android/maps/AttributionDialogManager;->dialog:Landroid/app/AlertDialog;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 37
    .line 38
    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->cancelAnimators()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 42
    .line 43
    iput-boolean v1, v0, Lorg/maplibre/android/maps/MapLibreMap;->started:Z

    .line 44
    .line 45
    iget-object v0, v0, Lorg/maplibre/android/maps/MapLibreMap;->locationComponent:Lorg/maplibre/android/location/LocationComponent;

    .line 46
    .line 47
    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponent;->onLocationLayerStop()V

    .line 48
    .line 49
    .line 50
    iput-boolean v1, v0, Lorg/maplibre/android/location/LocationComponent;->isComponentStarted:Z

    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onStop()V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapView;->isStarted:Z

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Lorg/maplibre/android/net/ConnectivityReceiver;->instance(Landroid/content/Context;)Lorg/maplibre/android/net/ConnectivityReceiver;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget v2, v0, Lorg/maplibre/android/net/ConnectivityReceiver;->activationCounter:I

    .line 72
    .line 73
    add-int/lit8 v2, v2, -0x1

    .line 74
    .line 75
    iput v2, v0, Lorg/maplibre/android/net/ConnectivityReceiver;->activationCounter:I

    .line 76
    .line 77
    if-nez v2, :cond_3

    .line 78
    .line 79
    iget-object v0, v0, Lorg/maplibre/android/net/ConnectivityReceiver;->context:Landroid/content/Context;

    .line 80
    .line 81
    sget-object v2, Lorg/maplibre/android/net/ConnectivityReceiver;->INSTANCE:Lorg/maplibre/android/net/ConnectivityReceiver;

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Lorg/maplibre/android/storage/FileSource;->getInstance(Landroid/content/Context;)Lorg/maplibre/android/storage/FileSource;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lorg/maplibre/android/storage/FileSource;->deactivate()V

    .line 95
    .line 96
    .line 97
    iput-boolean v1, p0, Lorg/maplibre/android/maps/MapView;->isStarted:Z

    .line 98
    .line 99
    :cond_4
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 6
    .line 7
    iget-object v2, v0, Lorg/maplibre/android/maps/MapGestureDetector;->scheduledAnimators:Ljava/util/ArrayList;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    :goto_0
    move v5, v3

    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eq v5, v4, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->cancelAnimators()V

    .line 36
    .line 37
    .line 38
    iget-object v5, v1, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 39
    .line 40
    check-cast v5, Lorg/maplibre/android/maps/NativeMapView;

    .line 41
    .line 42
    invoke-virtual {v5, v4}, Lorg/maplibre/android/maps/NativeMapView;->setGestureInProgress(Z)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v5, v0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 46
    .line 47
    invoke-virtual {v5, p1}, Lorg/wikipedia/databinding/FragmentNewsBinding;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eq v6, v4, :cond_5

    .line 56
    .line 57
    const/4 v7, 0x3

    .line 58
    if-eq v6, v7, :cond_4

    .line 59
    .line 60
    const/4 v1, 0x5

    .line 61
    if-eq v6, v1, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    iget-boolean v1, v0, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapRegistered:Z

    .line 65
    .line 66
    if-eqz v1, :cond_8

    .line 67
    .line 68
    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 69
    .line 70
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v1, Lorg/maplibre/android/gestures/MoveGestureDetector;

    .line 73
    .line 74
    iput-boolean v4, v1, Lorg/maplibre/android/gestures/BaseGesture;->isEnabled:Z

    .line 75
    .line 76
    iput-boolean v3, v0, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapRegistered:Z

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 80
    .line 81
    .line 82
    iget-object v2, v1, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 83
    .line 84
    check-cast v2, Lorg/maplibre/android/maps/NativeMapView;

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Lorg/maplibre/android/maps/NativeMapView;->setGestureInProgress(Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lorg/maplibre/android/maps/Transform;->invalidateCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 90
    .line 91
    .line 92
    iget-boolean v1, v0, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapRegistered:Z

    .line 93
    .line 94
    if-eqz v1, :cond_8

    .line 95
    .line 96
    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 97
    .line 98
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v1, Lorg/maplibre/android/gestures/MoveGestureDetector;

    .line 101
    .line 102
    iput-boolean v4, v1, Lorg/maplibre/android/gestures/BaseGesture;->isEnabled:Z

    .line 103
    .line 104
    iput-boolean v3, v0, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapRegistered:Z

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    iget-boolean v6, v0, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapRegistered:Z

    .line 108
    .line 109
    if-eqz v6, :cond_6

    .line 110
    .line 111
    iget-object v6, v0, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 112
    .line 113
    iget-object v6, v6, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v6, Lorg/maplibre/android/gestures/MoveGestureDetector;

    .line 116
    .line 117
    iput-boolean v4, v6, Lorg/maplibre/android/gestures/BaseGesture;->isEnabled:Z

    .line 118
    .line 119
    iput-boolean v3, v0, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapRegistered:Z

    .line 120
    .line 121
    :cond_6
    iget-object v6, v1, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 122
    .line 123
    check-cast v6, Lorg/maplibre/android/maps/NativeMapView;

    .line 124
    .line 125
    invoke-virtual {v6, v3}, Lorg/maplibre/android/maps/NativeMapView;->setGestureInProgress(Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Lorg/maplibre/android/maps/Transform;->invalidateCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-nez v1, :cond_8

    .line 136
    .line 137
    iget-object v0, v0, Lorg/maplibre/android/maps/MapGestureDetector;->animationsTimeoutHandler:Landroid/os/Handler;

    .line 138
    .line 139
    const/4 v1, 0x0

    .line 140
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_7

    .line 152
    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    check-cast v1, Landroid/animation/Animator;

    .line 158
    .line 159
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 164
    .line 165
    .line 166
    :cond_8
    :goto_2
    if-nez v5, :cond_a

    .line 167
    .line 168
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    if-eqz p0, :cond_9

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_9
    return v3

    .line 176
    :cond_a
    :goto_3
    return v4

    .line 177
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    return p0
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapKeyListener:Lorg/maplibre/android/maps/Style$Builder;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    iget-object v1, v0, Lorg/maplibre/android/maps/Style$Builder;->layers:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lorg/maplibre/android/maps/UiSettings;

    .line 8
    .line 9
    iget-object v2, v0, Lorg/maplibre/android/maps/Style$Builder;->sources:Ljava/lang/Object;

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lorg/maplibre/android/maps/Transform;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v10, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v2, :cond_7

    .line 21
    .line 22
    if-eq v2, v10, :cond_3

    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    if-eq v2, v5, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    if-eq v2, v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p0, v0, Lorg/maplibre/android/maps/Style$Builder;->styleUri:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;

    .line 34
    .line 35
    if-eqz p0, :cond_6

    .line 36
    .line 37
    iput-boolean v10, p0, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;->cancelable:Z

    .line 38
    .line 39
    iput-object v4, v0, Lorg/maplibre/android/maps/Style$Builder;->styleUri:Ljava/lang/Object;

    .line 40
    .line 41
    return v10

    .line 42
    :cond_1
    iget-boolean v0, v1, Lorg/maplibre/android/maps/UiSettings;->scrollGesturesEnabled:Z

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v3}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    float-to-double v0, p0

    .line 55
    const-wide/high16 v4, -0x3fdc000000000000L    # -10.0

    .line 56
    .line 57
    mul-double/2addr v0, v4

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    float-to-double p0, p0

    .line 63
    mul-double v6, p0, v4

    .line 64
    .line 65
    const-wide/16 v8, 0x0

    .line 66
    .line 67
    move-wide v4, v0

    .line 68
    invoke-virtual/range {v3 .. v9}, Lorg/maplibre/android/maps/Transform;->moveBy(DDJ)V

    .line 69
    .line 70
    .line 71
    return v10

    .line 72
    :cond_3
    iget-boolean v2, v1, Lorg/maplibre/android/maps/UiSettings;->zoomGesturesEnabled:Z

    .line 73
    .line 74
    iget-object v1, v1, Lorg/maplibre/android/maps/UiSettings;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 75
    .line 76
    if-nez v2, :cond_5

    .line 77
    .line 78
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_4

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    const/4 p0, 0x0

    .line 86
    return p0

    .line 87
    :cond_5
    iget-object p0, v0, Lorg/maplibre/android/maps/Style$Builder;->styleUri:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p0, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;

    .line 90
    .line 91
    if-eqz p0, :cond_6

    .line 92
    .line 93
    new-instance p0, Landroid/graphics/PointF;

    .line 94
    .line 95
    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapView$2;->getWidth()F

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    const/high16 v2, 0x40000000    # 2.0f

    .line 100
    .line 101
    div-float/2addr p1, v2

    .line 102
    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapView$2;->getHeight()F

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    div-float/2addr v1, v2

    .line 107
    invoke-direct {p0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 108
    .line 109
    .line 110
    iget-object p1, v0, Lorg/maplibre/android/maps/Style$Builder;->images:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p1, Lorg/maplibre/android/maps/MapGestureDetector;

    .line 113
    .line 114
    invoke-virtual {p1, v10, p0, v10}, Lorg/maplibre/android/maps/MapGestureDetector;->zoomAnimated(ZLandroid/graphics/PointF;Z)V

    .line 115
    .line 116
    .line 117
    :cond_6
    :goto_1
    return v10

    .line 118
    :cond_7
    iget-object p0, v0, Lorg/maplibre/android/maps/Style$Builder;->styleUri:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p0, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;

    .line 121
    .line 122
    if-eqz p0, :cond_8

    .line 123
    .line 124
    iput-boolean v10, p0, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;->cancelable:Z

    .line 125
    .line 126
    iput-object v4, v0, Lorg/maplibre/android/maps/Style$Builder;->styleUri:Ljava/lang/Object;

    .line 127
    .line 128
    :cond_8
    new-instance p0, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;

    .line 129
    .line 130
    invoke-direct {p0, v0}, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;-><init>(Lorg/maplibre/android/maps/Style$Builder;)V

    .line 131
    .line 132
    .line 133
    iput-object p0, v0, Lorg/maplibre/android/maps/Style$Builder;->styleUri:Ljava/lang/Object;

    .line 134
    .line 135
    new-instance p0, Landroid/os/Handler;

    .line 136
    .line 137
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, v0, Lorg/maplibre/android/maps/Style$Builder;->styleUri:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p1, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;

    .line 147
    .line 148
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    int-to-long v0, v0

    .line 153
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    .line 155
    .line 156
    return v10

    .line 157
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    return p0
.end method

.method public setMapLibreMap(Lorg/maplibre/android/maps/MapLibreMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 2
    .line 3
    return-void
.end method

.method public setMaximumFps(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/renderer/MapRenderer;->setMaximumFps(I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "Calling MapView#setMaximumFps before mapRenderer is created."

    .line 10
    .line 11
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setRenderingRefreshMode(Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/renderer/MapRenderer;->setRenderingRefreshMode(Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "Calling MapView#setRenderingRefreshMode before mapRenderer is created."

    .line 10
    .line 11
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

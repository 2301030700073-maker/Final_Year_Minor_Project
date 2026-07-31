.class public final Lorg/maplibre/android/maps/UiSettings;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final attributionsMargins:[I

.field public attributionsView:Landroid/widget/ImageView;

.field public clockwiseBearing:D

.field public final compassMargins:[I

.field public compassView:Lorg/maplibre/android/maps/widgets/CompassView;

.field public deselectMarkersOnTap:Z

.field public disableRotateWhenScaling:Z

.field public doubleTapGesturesEnabled:Z

.field public flingVelocityAnimationEnabled:Z

.field public final focalPointChangeListener:Lorg/maplibre/android/maps/FocalPointChangeListener;

.field public horizontalScrollGesturesEnabled:Z

.field public increaseRotateThresholdWhenScaling:Z

.field public increaseScaleThresholdWhenRotating:Z

.field public isAttributionInitialized:Z

.field public isCompassInitialized:Z

.field public isLogoInitialized:Z

.field public final logoMargins:[I

.field public logoView:Landroid/widget/ImageView;

.field public final mapView:Lorg/maplibre/android/maps/MapView;

.field public final pixelRatio:F

.field public final projection:Lorg/maplibre/android/maps/MapView$2;

.field public quickZoomGesturesEnabled:Z

.field public rotateGesturesEnabled:Z

.field public rotateVelocityAnimationEnabled:Z

.field public scaleVelocityAnimationEnabled:Z

.field public scrollGesturesEnabled:Z

.field public tiltGesturesEnabled:Z

.field public userProvidedFocalPoint:Landroid/graphics/PointF;

.field public zoomGesturesEnabled:Z

.field public zoomRate:F


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapView$2;Lorg/maplibre/android/maps/FocalPointChangeListener;FLorg/maplibre/android/maps/MapView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    iput-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->compassMargins:[I

    .line 8
    .line 9
    new-array v1, v0, [I

    .line 10
    .line 11
    iput-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsMargins:[I

    .line 12
    .line 13
    new-array v0, v0, [I

    .line 14
    .line 15
    iput-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->logoMargins:[I

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->rotateGesturesEnabled:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->tiltGesturesEnabled:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->zoomGesturesEnabled:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->scrollGesturesEnabled:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->horizontalScrollGesturesEnabled:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->doubleTapGesturesEnabled:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->quickZoomGesturesEnabled:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->scaleVelocityAnimationEnabled:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->rotateVelocityAnimationEnabled:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->flingVelocityAnimationEnabled:Z

    .line 37
    .line 38
    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->increaseRotateThresholdWhenScaling:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->disableRotateWhenScaling:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->increaseScaleThresholdWhenRotating:Z

    .line 43
    .line 44
    const/high16 v1, 0x3f800000    # 1.0f

    .line 45
    .line 46
    iput v1, p0, Lorg/maplibre/android/maps/UiSettings;->zoomRate:F

    .line 47
    .line 48
    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->deselectMarkersOnTap:Z

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->isCompassInitialized:Z

    .line 52
    .line 53
    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->isAttributionInitialized:Z

    .line 54
    .line 55
    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->isLogoInitialized:Z

    .line 56
    .line 57
    iput-object p1, p0, Lorg/maplibre/android/maps/UiSettings;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 58
    .line 59
    iput-object p2, p0, Lorg/maplibre/android/maps/UiSettings;->focalPointChangeListener:Lorg/maplibre/android/maps/FocalPointChangeListener;

    .line 60
    .line 61
    iput p3, p0, Lorg/maplibre/android/maps/UiSettings;->pixelRatio:F

    .line 62
    .line 63
    iput-object p4, p0, Lorg/maplibre/android/maps/UiSettings;->mapView:Lorg/maplibre/android/maps/MapView;

    .line 64
    .line 65
    return-void
.end method

.method public static setWidgetMargins(IIIILandroid/view/View;[I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    aput p0, p5, v0

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    aput p1, p5, v0

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    aput p2, p5, v0

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    aput p3, p5, v0

    .line 12
    .line 13
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    check-cast p5, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    .line 19
    invoke-virtual {p5, p0, p1, p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p5, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p5, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p4, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final initialiseAttribution(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->isAttributionInitialized:Z

    .line 3
    .line 4
    iget-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->mapView:Lorg/maplibre/android/maps/MapView;

    .line 5
    .line 6
    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapView;->initialiseAttributionView()Landroid/widget/ImageView;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    .line 11
    .line 12
    iget-boolean v1, p2, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionEnabled:Z

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/UiSettings;->setAttributionEnabled(Z)V

    .line 15
    .line 16
    .line 17
    iget v1, p2, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionGravity:I

    .line 18
    .line 19
    iget-object v2, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 28
    .line 29
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v1, p2, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionMargins:[I

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    aget v2, v1, v2

    .line 40
    .line 41
    aget v3, v1, v0

    .line 42
    .line 43
    const/4 v4, 0x2

    .line 44
    aget v4, v1, v4

    .line 45
    .line 46
    const/4 v5, 0x3

    .line 47
    aget v1, v1, v5

    .line 48
    .line 49
    invoke-virtual {p0, v2, v3, v4, v1}, Lorg/maplibre/android/maps/UiSettings;->setAttributionMargins(IIII)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const v2, 0x7f070380

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    float-to-int v2, v2

    .line 65
    const v3, 0x7f07038c

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    float-to-int v1, v1

    .line 73
    invoke-virtual {p0, v1, v2, v2, v2}, Lorg/maplibre/android/maps/UiSettings;->setAttributionMargins(IIII)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iget p2, p2, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionTintColor:I

    .line 77
    .line 78
    const/4 v1, -0x1

    .line 79
    if-eq p2, v1, :cond_2

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    :try_start_0
    new-instance p2, Landroid/util/TypedValue;

    .line 83
    .line 84
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const-string v3, "colorPrimary"

    .line 96
    .line 97
    const-string v4, "attrs"

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    invoke-virtual {v1, v2, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 108
    .line 109
    .line 110
    iget p1, p2, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    :goto_1
    move p2, p1

    .line 113
    goto :goto_2

    .line 114
    :catch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const v0, 0x7f06031b

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v0, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    goto :goto_1

    .line 130
    :goto_2
    invoke-virtual {p0, p2}, Lorg/maplibre/android/maps/UiSettings;->setAttributionTintColor(I)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public final initialiseCompass(Lorg/maplibre/android/maps/MapLibreMapOptions;Landroid/content/res/Resources;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->isCompassInitialized:Z

    .line 3
    .line 4
    iget-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->mapView:Lorg/maplibre/android/maps/MapView;

    .line 5
    .line 6
    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapView;->initialiseCompassView()Lorg/maplibre/android/maps/widgets/CompassView;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 11
    .line 12
    iget-boolean v1, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassEnabled:Z

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/UiSettings;->setCompassEnabled(Z)V

    .line 15
    .line 16
    .line 17
    iget v1, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassGravity:I

    .line 18
    .line 19
    iget-object v2, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 28
    .line 29
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v1, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassMargins:[I

    .line 35
    .line 36
    iget-object v7, p0, Lorg/maplibre/android/maps/UiSettings;->compassMargins:[I

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    aget v2, v1, v2

    .line 42
    .line 43
    aget v3, v1, v0

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    aget v4, v1, v0

    .line 47
    .line 48
    const/4 v0, 0x3

    .line 49
    aget v5, v1, v0

    .line 50
    .line 51
    iget-object v6, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 52
    .line 53
    if-eqz v6, :cond_2

    .line 54
    .line 55
    invoke-static/range {v2 .. v7}, Lorg/maplibre/android/maps/UiSettings;->setWidgetMargins(IIIILandroid/view/View;[I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const v0, 0x7f070380

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    float-to-int v2, v0

    .line 67
    iget-object v6, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 68
    .line 69
    if-eqz v6, :cond_2

    .line 70
    .line 71
    move v3, v2

    .line 72
    move v4, v2

    .line 73
    move v5, v2

    .line 74
    invoke-static/range {v2 .. v7}, Lorg/maplibre/android/maps/UiSettings;->setWidgetMargins(IIIILandroid/view/View;[I)V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_0
    iget-boolean v0, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->fadeCompassFacingNorth:Z

    .line 78
    .line 79
    iget-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 80
    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    iput-boolean v0, v1, Lorg/maplibre/android/maps/widgets/CompassView;->fadeCompassViewFacingNorth:Z

    .line 84
    .line 85
    :cond_3
    iget-object v0, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassImage:Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    if-nez v0, :cond_4

    .line 88
    .line 89
    sget-object v0, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 90
    .line 91
    const v0, 0x7f080250

    .line 92
    .line 93
    .line 94
    const/4 v1, 0x0

    .line 95
    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassImage:Landroid/graphics/drawable/Drawable;

    .line 100
    .line 101
    :cond_4
    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 102
    .line 103
    if-eqz p0, :cond_5

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/widgets/CompassView;->setCompassImage(Landroid/graphics/drawable/Drawable;)V

    .line 106
    .line 107
    .line 108
    :cond_5
    return-void
.end method

.method public final initialiseLogo(Lorg/maplibre/android/maps/MapLibreMapOptions;Landroid/content/res/Resources;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->isLogoInitialized:Z

    .line 3
    .line 4
    iget-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->mapView:Lorg/maplibre/android/maps/MapView;

    .line 5
    .line 6
    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapView;->initialiseLogoView()Landroid/widget/ImageView;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lorg/maplibre/android/maps/UiSettings;->logoView:Landroid/widget/ImageView;

    .line 11
    .line 12
    iget-boolean v1, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoEnabled:Z

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/UiSettings;->setLogoEnabled(Z)V

    .line 15
    .line 16
    .line 17
    iget v1, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoGravity:I

    .line 18
    .line 19
    iget-object v2, p0, Lorg/maplibre/android/maps/UiSettings;->logoView:Landroid/widget/ImageView;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 28
    .line 29
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p1, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoMargins:[I

    .line 35
    .line 36
    iget-object v6, p0, Lorg/maplibre/android/maps/UiSettings;->logoMargins:[I

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    aget v1, p1, p2

    .line 42
    .line 43
    aget v2, p1, v0

    .line 44
    .line 45
    const/4 p2, 0x2

    .line 46
    aget v3, p1, p2

    .line 47
    .line 48
    const/4 p2, 0x3

    .line 49
    aget v4, p1, p2

    .line 50
    .line 51
    iget-object v5, p0, Lorg/maplibre/android/maps/UiSettings;->logoView:Landroid/widget/ImageView;

    .line 52
    .line 53
    if-eqz v5, :cond_2

    .line 54
    .line 55
    invoke-static/range {v1 .. v6}, Lorg/maplibre/android/maps/UiSettings;->setWidgetMargins(IIIILandroid/view/View;[I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    const p1, 0x7f070380

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    float-to-int v1, p1

    .line 67
    iget-object v5, p0, Lorg/maplibre/android/maps/UiSettings;->logoView:Landroid/widget/ImageView;

    .line 68
    .line 69
    if-eqz v5, :cond_2

    .line 70
    .line 71
    move v2, v1

    .line 72
    move v3, v1

    .line 73
    move v4, v1

    .line 74
    invoke-static/range {v1 .. v6}, Lorg/maplibre/android/maps/UiSettings;->setWidgetMargins(IIIILandroid/view/View;[I)V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void
.end method

.method public final setAttributionEnabled(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->isAttributionInitialized:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->mapView:Lorg/maplibre/android/maps/MapView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v0, v0, Lorg/maplibre/android/maps/MapView;->maplibreMapOptions:Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 14
    .line 15
    invoke-virtual {p0, v1, v0}, Lorg/maplibre/android/maps/UiSettings;->initialiseAttribution(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    .line 19
    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/16 p1, 0x8

    .line 27
    .line 28
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method public final setAttributionMargins(IIII)V
    .locals 6

    .line 1
    iget-object v4, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v4, :cond_0

    .line 4
    .line 5
    iget-object v5, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsMargins:[I

    .line 6
    .line 7
    move v0, p1

    .line 8
    move v1, p2

    .line 9
    move v2, p3

    .line 10
    move v3, p4

    .line 11
    invoke-static/range {v0 .. v5}, Lorg/maplibre/android/maps/UiSettings;->setWidgetMargins(IIIILandroid/view/View;[I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final setAttributionTintColor(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    const v2, 0x10100a7

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const v0, 0x7f06031b

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    new-instance v0, Landroid/content/res/ColorStateList;

    .line 32
    .line 33
    new-array v5, v4, [I

    .line 34
    .line 35
    new-array v3, v3, [[I

    .line 36
    .line 37
    filled-new-array {v2}, [I

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    aput-object v2, v3, v4

    .line 42
    .line 43
    aput-object v5, v3, v1

    .line 44
    .line 45
    filled-new-array {p1, p1}, [I

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, v3, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    new-instance v0, Landroid/content/res/ColorStateList;

    .line 57
    .line 58
    new-array v5, v4, [I

    .line 59
    .line 60
    new-array v3, v3, [[I

    .line 61
    .line 62
    filled-new-array {v2}, [I

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    aput-object v2, v3, v4

    .line 67
    .line 68
    aput-object v5, v3, v1

    .line 69
    .line 70
    filled-new-array {p1, p1}, [I

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {v0, v3, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final setCompassEnabled(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->isCompassInitialized:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->mapView:Lorg/maplibre/android/maps/MapView;

    .line 8
    .line 9
    iget-object v1, v0, Lorg/maplibre/android/maps/MapView;->maplibreMapOptions:Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v1, v0}, Lorg/maplibre/android/maps/UiSettings;->initialiseCompass(Lorg/maplibre/android/maps/MapLibreMapOptions;Landroid/content/res/Resources;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/widgets/CompassView;->setEnabled(Z)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 30
    .line 31
    iget-wide v0, p0, Lorg/maplibre/android/maps/UiSettings;->clockwiseBearing:D

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Lorg/maplibre/android/maps/widgets/CompassView;->update(D)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final setLogoEnabled(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean v0, p0, Lorg/maplibre/android/maps/UiSettings;->isLogoInitialized:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/maplibre/android/maps/UiSettings;->mapView:Lorg/maplibre/android/maps/MapView;

    .line 8
    .line 9
    iget-object v1, v0, Lorg/maplibre/android/maps/MapView;->maplibreMapOptions:Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v1, v0}, Lorg/maplibre/android/maps/UiSettings;->initialiseLogo(Lorg/maplibre/android/maps/MapLibreMapOptions;Landroid/content/res/Resources;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->logoView:Landroid/widget/ImageView;

    .line 23
    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/16 p1, 0x8

    .line 31
    .line 32
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.class public Lorg/maplibre/android/style/layers/CircleLayer;
.super Lorg/maplibre/android/style/layers/Layer;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/style/layers/Layer;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/maplibre/android/style/layers/Layer;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/style/layers/CircleLayer;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private native nativeGetCircleBlur()Ljava/lang/Object;
.end method

.method private native nativeGetCircleBlurTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
.end method

.method private native nativeGetCircleColor()Ljava/lang/Object;
.end method

.method private native nativeGetCircleColorTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
.end method

.method private native nativeGetCircleOpacity()Ljava/lang/Object;
.end method

.method private native nativeGetCircleOpacityTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
.end method

.method private native nativeGetCirclePitchAlignment()Ljava/lang/Object;
.end method

.method private native nativeGetCirclePitchScale()Ljava/lang/Object;
.end method

.method private native nativeGetCircleRadius()Ljava/lang/Object;
.end method

.method private native nativeGetCircleRadiusTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
.end method

.method private native nativeGetCircleSortKey()Ljava/lang/Object;
.end method

.method private native nativeGetCircleStrokeColor()Ljava/lang/Object;
.end method

.method private native nativeGetCircleStrokeColorTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
.end method

.method private native nativeGetCircleStrokeOpacity()Ljava/lang/Object;
.end method

.method private native nativeGetCircleStrokeOpacityTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
.end method

.method private native nativeGetCircleStrokeWidth()Ljava/lang/Object;
.end method

.method private native nativeGetCircleStrokeWidthTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
.end method

.method private native nativeGetCircleTranslate()Ljava/lang/Object;
.end method

.method private native nativeGetCircleTranslateAnchor()Ljava/lang/Object;
.end method

.method private native nativeGetCircleTranslateTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
.end method

.method private native nativeSetCircleBlurTransition(JJ)V
.end method

.method private native nativeSetCircleColorTransition(JJ)V
.end method

.method private native nativeSetCircleOpacityTransition(JJ)V
.end method

.method private native nativeSetCircleRadiusTransition(JJ)V
.end method

.method private native nativeSetCircleStrokeColorTransition(JJ)V
.end method

.method private native nativeSetCircleStrokeOpacityTransition(JJ)V
.end method

.method private native nativeSetCircleStrokeWidthTransition(JJ)V
.end method

.method private native nativeSetCircleTranslateTransition(JJ)V
.end method


# virtual methods
.method public native finalize()V
.end method

.method public native initialize(Ljava/lang/String;Ljava/lang/String;)V
.end method

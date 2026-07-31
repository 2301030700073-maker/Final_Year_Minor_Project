.class public Lorg/maplibre/android/style/light/Light;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field private nativePtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Mbgl-Light"

    .line 5
    .line 6
    invoke-static {v0}, Lokio/Okio__JvmOkioKt;->checkThread(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-wide p1, p0, Lorg/maplibre/android/style/light/Light;->nativePtr:J

    .line 10
    .line 11
    return-void
.end method

.method private native nativeGetAnchor()Ljava/lang/String;
.end method

.method private native nativeGetColor()Ljava/lang/String;
.end method

.method private native nativeGetColorTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
.end method

.method private native nativeGetIntensity()F
.end method

.method private native nativeGetIntensityTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
.end method

.method private native nativeGetPosition()Lorg/maplibre/android/style/light/Position;
.end method

.method private native nativeGetPositionTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
.end method

.method private native nativeSetAnchor(Ljava/lang/String;)V
.end method

.method private native nativeSetColor(Ljava/lang/String;)V
.end method

.method private native nativeSetColorTransition(JJ)V
.end method

.method private native nativeSetIntensity(F)V
.end method

.method private native nativeSetIntensityTransition(JJ)V
.end method

.method private native nativeSetPosition(Lorg/maplibre/android/style/light/Position;)V
.end method

.method private native nativeSetPositionTransition(JJ)V
.end method

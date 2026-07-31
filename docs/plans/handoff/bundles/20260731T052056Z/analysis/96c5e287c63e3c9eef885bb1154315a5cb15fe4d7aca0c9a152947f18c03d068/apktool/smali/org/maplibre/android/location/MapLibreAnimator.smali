.class public abstract Lorg/maplibre/android/location/MapLibreAnimator;
.super Landroid/animation/ValueAnimator;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public animatedValue:Ljava/lang/Object;

.field public invalid:Z

.field public final minUpdateInterval:D

.field public final target:Ljava/lang/Object;

.field public timeElapsed:J

.field public final updateListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;


# direct methods
.method public constructor <init>([Ljava/lang/Object;Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x3fddcd65003b9acaL    # 0.4656612875245797

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lorg/maplibre/android/location/MapLibreAnimator;->minUpdateInterval:D

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/maplibre/android/location/MapLibreAnimator;->provideEvaluator()Landroid/animation/TypeEvaluator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lorg/maplibre/android/location/MapLibreAnimator;->updateListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 22
    .line 23
    array-length p2, p1

    .line 24
    add-int/lit8 p2, p2, -0x1

    .line 25
    .line 26
    aget-object p1, p1, p2

    .line 27
    .line 28
    iput-object p1, p0, Lorg/maplibre/android/location/MapLibreAnimator;->target:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Landroidx/transition/Transition$3;

    .line 34
    .line 35
    const/16 p2, 0xe

    .line 36
    .line 37
    invoke-direct {p1, p2, p0}, Landroidx/transition/Transition$3;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/maplibre/android/location/MapLibreAnimator;->animatedValue:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-wide v2, p0, Lorg/maplibre/android/location/MapLibreAnimator;->timeElapsed:J

    .line 12
    .line 13
    sub-long v2, v0, v2

    .line 14
    .line 15
    long-to-double v2, v2

    .line 16
    iget-wide v4, p0, Lorg/maplibre/android/location/MapLibreAnimator;->minUpdateInterval:D

    .line 17
    .line 18
    cmpg-double p1, v2, v4

    .line 19
    .line 20
    if-gez p1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-boolean p1, p0, Lorg/maplibre/android/location/MapLibreAnimator;->invalid:Z

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lorg/maplibre/android/location/MapLibreAnimator;->updateListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 28
    .line 29
    iget-object v2, p0, Lorg/maplibre/android/location/MapLibreAnimator;->animatedValue:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-interface {p1, v2}, Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;->onNewAnimationValue(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iput-wide v0, p0, Lorg/maplibre/android/location/MapLibreAnimator;->timeElapsed:J

    .line 35
    .line 36
    return-void
.end method

.method public abstract provideEvaluator()Landroid/animation/TypeEvaluator;
.end method

.class public final Lorg/maplibre/android/location/AnimatorListenerHolder;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final animatorType:I

.field public final listener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;


# direct methods
.method public constructor <init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/maplibre/android/location/AnimatorListenerHolder;->animatorType:I

    .line 5
    .line 6
    iput-object p2, p0, Lorg/maplibre/android/location/AnimatorListenerHolder;->listener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    if-eqz p1, :cond_4

    .line 5
    .line 6
    const-class v0, Lorg/maplibre/android/location/AnimatorListenerHolder;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    check-cast p1, Lorg/maplibre/android/location/AnimatorListenerHolder;

    .line 16
    .line 17
    iget v0, p0, Lorg/maplibre/android/location/AnimatorListenerHolder;->animatorType:I

    .line 18
    .line 19
    iget v1, p1, Lorg/maplibre/android/location/AnimatorListenerHolder;->animatorType:I

    .line 20
    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    iget-object p1, p1, Lorg/maplibre/android/location/AnimatorListenerHolder;->listener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 25
    .line 26
    iget-object p0, p0, Lorg/maplibre/android/location/AnimatorListenerHolder;->listener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 27
    .line 28
    if-eqz p0, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0

    .line 35
    :cond_3
    if-nez p1, :cond_4

    .line 36
    .line 37
    :goto_0
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/maplibre/android/location/AnimatorListenerHolder;->animatorType:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object p0, p0, Lorg/maplibre/android/location/AnimatorListenerHolder;->listener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    add-int/2addr v0, p0

    .line 16
    return v0
.end method

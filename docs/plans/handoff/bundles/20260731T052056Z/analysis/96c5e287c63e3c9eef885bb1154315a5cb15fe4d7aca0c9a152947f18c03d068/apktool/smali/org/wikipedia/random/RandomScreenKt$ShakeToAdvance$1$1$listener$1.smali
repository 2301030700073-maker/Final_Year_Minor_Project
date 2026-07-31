.class public final Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$1$1$listener$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $currentOnShake$delegate:Landroidx/compose/runtime/MutableState;

.field public final synthetic $firstImpactTime:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic $lastShakeTime:Lkotlin/jvm/internal/Ref$LongRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/content/Context;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$1$1$listener$1;->$lastShakeTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$1$1$listener$1;->$firstImpactTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$1$1$listener$1;->$context:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$1$1$listener$1;->$currentOnShake$delegate:Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aget v0, p1, v0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    aget v1, p1, v1

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    aget p1, p1, v2

    .line 14
    .line 15
    mul-float/2addr v0, v0

    .line 16
    mul-float/2addr v1, v1

    .line 17
    add-float/2addr v1, v0

    .line 18
    mul-float/2addr p1, p1

    .line 19
    add-float/2addr p1, v1

    .line 20
    float-to-double v0, p1

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    double-to-float p1, v0

    .line 26
    const v0, 0x411ce80a

    .line 27
    .line 28
    .line 29
    sub-float/2addr p1, v0

    .line 30
    const/high16 v0, 0x41400000    # 12.0f

    .line 31
    .line 32
    cmpg-float p1, p1, v0

    .line 33
    .line 34
    if-gtz p1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iget-object p1, p0, Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$1$1$listener$1;->$lastShakeTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 42
    .line 43
    iget-wide v2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 44
    .line 45
    sub-long v2, v0, v2

    .line 46
    .line 47
    const-wide/16 v4, 0x3e8

    .line 48
    .line 49
    cmp-long v2, v2, v4

    .line 50
    .line 51
    if-gez v2, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v2, p0, Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$1$1$listener$1;->$firstImpactTime:Lkotlin/jvm/internal/Ref$LongRef;

    .line 55
    .line 56
    iget-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 57
    .line 58
    const-wide/16 v5, 0x0

    .line 59
    .line 60
    cmp-long v7, v3, v5

    .line 61
    .line 62
    if-nez v7, :cond_2

    .line 63
    .line 64
    iput-wide v0, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    sub-long v3, v0, v3

    .line 68
    .line 69
    const-wide/16 v7, 0x1f4

    .line 70
    .line 71
    cmp-long v3, v3, v7

    .line 72
    .line 73
    if-gtz v3, :cond_5

    .line 74
    .line 75
    iput-wide v5, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 76
    .line 77
    iput-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 78
    .line 79
    iget-object p1, p0, Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$1$1$listener$1;->$currentOnShake$delegate:Landroidx/compose/runtime/MutableState;

    .line 80
    .line 81
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 86
    .line 87
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$1$1$listener$1;->$context:Landroid/content/Context;

    .line 91
    .line 92
    const-class p1, Landroid/os/Vibrator;

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    check-cast p0, Landroid/os/Vibrator;

    .line 99
    .line 100
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 101
    .line 102
    const/16 v0, 0x1a

    .line 103
    .line 104
    const-wide/16 v1, 0x50

    .line 105
    .line 106
    if-lt p1, v0, :cond_3

    .line 107
    .line 108
    if-eqz p0, :cond_4

    .line 109
    .line 110
    const/4 p1, -0x1

    .line 111
    invoke-static {v1, v2, p1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_3
    if-eqz p0, :cond_4

    .line 120
    .line 121
    invoke-virtual {p0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 122
    .line 123
    .line 124
    :cond_4
    :goto_0
    return-void

    .line 125
    :cond_5
    iput-wide v0, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 126
    .line 127
    return-void
.end method

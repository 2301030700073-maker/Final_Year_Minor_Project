.class public final synthetic Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/skydoves/balloon/Balloon;


# direct methods
.method public synthetic constructor <init>(Lcom/skydoves/balloon/Balloon;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda9;->f$0:Lcom/skydoves/balloon/Balloon;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda9;->f$0:Lcom/skydoves/balloon/Balloon;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    .line 10
    .line 11
    iget-object v2, v0, Lcom/skydoves/balloon/Balloon$Builder;->balloonHighlightAnimation:Lcom/skydoves/balloon/BalloonHighlightAnimation;

    .line 12
    .line 13
    sget-object v3, Lcom/skydoves/balloon/Balloon$WhenMappings;->$EnumSwitchMapping$4:[I

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    aget v2, v3, v2

    .line 20
    .line 21
    const/4 v3, 0x4

    .line 22
    const/4 v4, 0x3

    .line 23
    const/4 v5, 0x2

    .line 24
    if-eq v2, v1, :cond_6

    .line 25
    .line 26
    if-eq v2, v5, :cond_1

    .line 27
    .line 28
    if-eq v2, v4, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const v0, 0x7f01000e

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, v0, Lcom/skydoves/balloon/Balloon$Builder;->arrowOrientation:Lcom/skydoves/balloon/ArrowOrientation;

    .line 37
    .line 38
    sget-object v2, Lcom/skydoves/balloon/Balloon$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    aget v0, v2, v0

    .line 45
    .line 46
    if-eq v0, v1, :cond_5

    .line 47
    .line 48
    if-eq v0, v5, :cond_4

    .line 49
    .line 50
    if-eq v0, v4, :cond_3

    .line 51
    .line 52
    if-ne v0, v3, :cond_2

    .line 53
    .line 54
    const v0, 0x7f01001a

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    const v0, 0x7f01001b

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    const v0, 0x7f010019

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    const v0, 0x7f01001c

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_6
    iget-object v0, v0, Lcom/skydoves/balloon/Balloon$Builder;->arrowOrientation:Lcom/skydoves/balloon/ArrowOrientation;

    .line 75
    .line 76
    sget-object v2, Lcom/skydoves/balloon/Balloon$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    aget v0, v2, v0

    .line 83
    .line 84
    if-eq v0, v1, :cond_a

    .line 85
    .line 86
    if-eq v0, v5, :cond_9

    .line 87
    .line 88
    if-eq v0, v4, :cond_8

    .line 89
    .line 90
    if-ne v0, v3, :cond_7

    .line 91
    .line 92
    const v0, 0x7f010013

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_7
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_8
    const v0, 0x7f010014

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_9
    const v0, 0x7f010011

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_a
    const v0, 0x7f010015

    .line 109
    .line 110
    .line 111
    :goto_0
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->context:Landroid/content/Context;

    .line 112
    .line 113
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :goto_1
    if-eqz v0, :cond_b

    .line 118
    .line 119
    iget-object p0, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/google/gson/GsonBuilder;

    .line 120
    .line 121
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p0, Landroid/widget/FrameLayout;

    .line 124
    .line 125
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    .line 127
    .line 128
    :cond_b
    :goto_2
    return-void

    .line 129
    :pswitch_0
    new-instance v0, Landroid/os/Handler;

    .line 130
    .line 131
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 136
    .line 137
    .line 138
    new-instance v2, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda9;

    .line 139
    .line 140
    invoke-direct {v2, p0, v1}, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda9;-><init>(Lcom/skydoves/balloon/Balloon;I)V

    .line 141
    .line 142
    .line 143
    const-wide/16 v3, 0x0

    .line 144
    .line 145
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

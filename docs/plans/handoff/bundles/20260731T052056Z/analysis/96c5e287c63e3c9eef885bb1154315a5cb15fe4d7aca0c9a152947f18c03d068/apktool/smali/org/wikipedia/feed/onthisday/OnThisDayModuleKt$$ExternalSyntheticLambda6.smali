.class public final synthetic Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$1:Landroidx/compose/ui/unit/Density;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/unit/Density;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda6;->f$0:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda6;->f$1:Landroidx/compose/ui/unit/Density;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 12
    iput p3, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda6;->f$1:Landroidx/compose/ui/unit/Density;

    iput-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda6;->f$0:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "Magnifier is only supported on API level 28 and higher."

    .line 5
    .line 6
    sget-object v3, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;->INSTANCE:Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;

    .line 7
    .line 8
    sget-object v4, Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl;->INSTANCE:Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl;

    .line 9
    .line 10
    const/16 v5, 0x1c

    .line 11
    .line 12
    const/4 v6, 0x2

    .line 13
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
    const-wide v8, 0xffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const/16 v10, 0x20

    .line 21
    .line 22
    iget-object v11, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda6;->f$0:Landroidx/compose/runtime/MutableState;

    .line 23
    .line 24
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda6;->f$1:Landroidx/compose/ui/unit/Density;

    .line 25
    .line 26
    packed-switch v0, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    check-cast p1, Landroidx/compose/ui/unit/DpSize;

    .line 30
    .line 31
    iget-wide v0, p1, Landroidx/compose/ui/unit/DpSize;->packedValue:J

    .line 32
    .line 33
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-wide v1, p1, Landroidx/compose/ui/unit/DpSize;->packedValue:J

    .line 42
    .line 43
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    int-to-long v0, v0

    .line 52
    shl-long/2addr v0, v10

    .line 53
    int-to-long p0, p0

    .line 54
    and-long/2addr p0, v8

    .line 55
    or-long/2addr p0, v0

    .line 56
    new-instance v0, Landroidx/compose/ui/unit/IntSize;

    .line 57
    .line 58
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v11, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-object v7

    .line 65
    :pswitch_0
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 66
    .line 67
    new-instance v0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda3;

    .line 68
    .line 69
    invoke-direct {v0, v6, p1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 70
    .line 71
    .line 72
    new-instance p1, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda6;

    .line 73
    .line 74
    const/4 v6, 0x4

    .line 75
    invoke-direct {p1, p0, v11, v6}, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;I)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Landroidx/compose/foundation/Magnifier_androidKt;->isPlatformMagnifierSupported$default()Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_1

    .line 83
    .line 84
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 85
    .line 86
    if-ne p0, v5, :cond_0

    .line 87
    .line 88
    move-object v3, v4

    .line 89
    :cond_0
    invoke-static {v0, p1, v3}, Landroidx/compose/foundation/Magnifier_androidKt;->magnifier-jPUL71Q$default(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/PlatformMagnifierFactory;)Landroidx/compose/ui/Modifier;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    goto :goto_0

    .line 94
    :cond_1
    invoke-static {v2}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-object v1

    .line 98
    :pswitch_1
    check-cast p1, Landroidx/compose/ui/unit/DpSize;

    .line 99
    .line 100
    iget-wide v0, p1, Landroidx/compose/ui/unit/DpSize;->packedValue:J

    .line 101
    .line 102
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    iget-wide v1, p1, Landroidx/compose/ui/unit/DpSize;->packedValue:J

    .line 111
    .line 112
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    int-to-long v0, v0

    .line 121
    shl-long/2addr v0, v10

    .line 122
    int-to-long p0, p0

    .line 123
    and-long/2addr p0, v8

    .line 124
    or-long/2addr p0, v0

    .line 125
    new-instance v0, Landroidx/compose/ui/unit/IntSize;

    .line 126
    .line 127
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v11, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    return-object v7

    .line 134
    :pswitch_2
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 135
    .line 136
    new-instance v0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda3;

    .line 137
    .line 138
    const/4 v7, 0x1

    .line 139
    invoke-direct {v0, v7, p1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 140
    .line 141
    .line 142
    new-instance p1, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda6;

    .line 143
    .line 144
    invoke-direct {p1, p0, v11, v6}, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;I)V

    .line 145
    .line 146
    .line 147
    invoke-static {}, Landroidx/compose/foundation/Magnifier_androidKt;->isPlatformMagnifierSupported$default()Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    if-eqz p0, :cond_3

    .line 152
    .line 153
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 154
    .line 155
    if-ne p0, v5, :cond_2

    .line 156
    .line 157
    move-object v3, v4

    .line 158
    :cond_2
    invoke-static {v0, p1, v3}, Landroidx/compose/foundation/Magnifier_androidKt;->magnifier-jPUL71Q$default(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/PlatformMagnifierFactory;)Landroidx/compose/ui/Modifier;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    goto :goto_1

    .line 163
    :cond_3
    invoke-static {v2}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :goto_1
    return-object v1

    .line 167
    :pswitch_3
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    .line 168
    .line 169
    iget-wide v0, p1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 170
    .line 171
    shr-long/2addr v0, v10

    .line 172
    long-to-int v0, v0

    .line 173
    int-to-float v0, v0

    .line 174
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    div-float/2addr v0, v1

    .line 179
    iget-wide v1, p1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 180
    .line 181
    and-long/2addr v1, v8

    .line 182
    long-to-int p1, v1

    .line 183
    int-to-float p1, p1

    .line 184
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    div-float/2addr p1, p0

    .line 189
    invoke-static {v0, p1}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    .line 190
    .line 191
    .line 192
    move-result-wide p0

    .line 193
    new-instance v0, Landroidx/compose/ui/unit/DpSize;

    .line 194
    .line 195
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/DpSize;-><init>(J)V

    .line 196
    .line 197
    .line 198
    invoke-interface {v11, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    return-object v7

    .line 202
    nop

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Landroidx/compose/material3/ChipElevation$animateElevation$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $animatable:Landroidx/compose/animation/core/Animatable;

.field public final synthetic $enabled:Z

.field public final synthetic $interaction:Landroidx/compose/foundation/interaction/Interaction;

.field public final synthetic $lastInteraction$delegate:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $target:F

.field public label:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/Animatable;FZLandroidx/compose/foundation/interaction/Interaction;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p7, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$animatable:Landroidx/compose/animation/core/Animatable;

    .line 4
    .line 5
    iput p2, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$target:F

    .line 6
    .line 7
    iput-boolean p3, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$enabled:Z

    .line 8
    .line 9
    iput-object p4, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    .line 10
    .line 11
    iput-object p5, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$lastInteraction$delegate:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/Animatable;FZLandroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$r8$classId:I

    .line 18
    iput-object p1, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$animatable:Landroidx/compose/animation/core/Animatable;

    iput p2, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$target:F

    iput-boolean p3, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$enabled:Z

    iput-object p4, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$lastInteraction$delegate:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    .line 1
    iget p1, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$lastInteraction$delegate:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;

    .line 9
    .line 10
    move-object v5, v0

    .line 11
    check-cast v5, Landroidx/compose/material3/ButtonElevation;

    .line 12
    .line 13
    iget-object v6, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$animatable:Landroidx/compose/animation/core/Animatable;

    .line 16
    .line 17
    iget v3, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$target:F

    .line 18
    .line 19
    iget-boolean v4, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$enabled:Z

    .line 20
    .line 21
    move-object v7, p2

    .line 22
    invoke-direct/range {v1 .. v7}, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;-><init>(Landroidx/compose/animation/core/Animatable;FZLandroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :pswitch_0
    move-object v8, p2

    .line 27
    new-instance v2, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;

    .line 28
    .line 29
    move-object v7, v0

    .line 30
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 31
    .line 32
    const/4 v9, 0x1

    .line 33
    iget-object v3, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$animatable:Landroidx/compose/animation/core/Animatable;

    .line 34
    .line 35
    iget v4, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$target:F

    .line 36
    .line 37
    iget-boolean v5, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$enabled:Z

    .line 38
    .line 39
    iget-object v6, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    .line 40
    .line 41
    invoke-direct/range {v2 .. v9}, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;-><init>(Landroidx/compose/animation/core/Animatable;FZLandroidx/compose/foundation/interaction/Interaction;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;I)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :pswitch_1
    move-object v8, p2

    .line 46
    new-instance v2, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;

    .line 47
    .line 48
    move-object v7, v0

    .line 49
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    iget-object v3, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$animatable:Landroidx/compose/animation/core/Animatable;

    .line 53
    .line 54
    iget v4, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$target:F

    .line 55
    .line 56
    iget-boolean v5, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$enabled:Z

    .line 57
    .line 58
    iget-object v6, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    .line 59
    .line 60
    invoke-direct/range {v2 .. v9}, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;-><init>(Landroidx/compose/animation/core/Animatable;FZLandroidx/compose/foundation/interaction/Interaction;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;I)V

    .line 61
    .line 62
    .line 63
    return-object v2

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    .line 6
    .line 7
    iget-boolean v3, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$enabled:Z

    .line 8
    .line 9
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    iget-object v5, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$animatable:Landroidx/compose/animation/core/Animatable;

    .line 12
    .line 13
    iget v6, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$target:F

    .line 14
    .line 15
    iget-object v7, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->$lastInteraction$delegate:Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    const/4 v9, 0x2

    .line 19
    const/4 v10, 0x0

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v7, Landroidx/compose/material3/ButtonElevation;

    .line 24
    .line 25
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 26
    .line 27
    iget v11, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->label:I

    .line 28
    .line 29
    if-eqz v11, :cond_2

    .line 30
    .line 31
    if-eq v11, v8, :cond_1

    .line 32
    .line 33
    if-ne v11, v9, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    move-object v1, v10

    .line 40
    goto :goto_3

    .line 41
    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, v5, Landroidx/compose/animation/core/Animatable;->targetValue$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroidx/compose/ui/unit/Dp;

    .line 55
    .line 56
    iget p1, p1, Landroidx/compose/ui/unit/Dp;->value:F

    .line 57
    .line 58
    invoke-static {p1, v6}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_7

    .line 63
    .line 64
    if-nez v3, :cond_3

    .line 65
    .line 66
    new-instance p1, Landroidx/compose/ui/unit/Dp;

    .line 67
    .line 68
    invoke-direct {p1, v6}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 69
    .line 70
    .line 71
    iput v8, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->label:I

    .line 72
    .line 73
    invoke-virtual {v5, p1, p0}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-ne p0, v0, :cond_7

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    iget-object p1, v5, Landroidx/compose/animation/core/Animatable;->targetValue$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Landroidx/compose/ui/unit/Dp;

    .line 87
    .line 88
    iget p1, p1, Landroidx/compose/ui/unit/Dp;->value:F

    .line 89
    .line 90
    iget v3, v7, Landroidx/compose/material3/ButtonElevation;->pressedElevation:F

    .line 91
    .line 92
    invoke-static {p1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_4

    .line 97
    .line 98
    new-instance v10, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 99
    .line 100
    const-wide/16 v3, 0x0

    .line 101
    .line 102
    invoke-direct {v10, v3, v4}, Landroidx/compose/foundation/interaction/PressInteraction$Press;-><init>(J)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    iget v3, v7, Landroidx/compose/material3/ButtonElevation;->hoveredElevation:F

    .line 107
    .line 108
    invoke-static {p1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_5

    .line 113
    .line 114
    new-instance v10, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 115
    .line 116
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_5
    iget v3, v7, Landroidx/compose/material3/ButtonElevation;->focusedElevation:F

    .line 121
    .line 122
    invoke-static {p1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    new-instance v10, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 129
    .line 130
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 131
    .line 132
    .line 133
    :cond_6
    :goto_1
    iput v9, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->label:I

    .line 134
    .line 135
    invoke-static {v5, v6, v10, v2, p0}, Landroidx/compose/material3/internal/ElevationKt;->animateElevation-rAjV9yQ(Landroidx/compose/animation/core/Animatable;FLandroidx/compose/foundation/interaction/Interaction;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    if-ne p0, v0, :cond_7

    .line 140
    .line 141
    :goto_2
    move-object v1, v0

    .line 142
    :cond_7
    :goto_3
    return-object v1

    .line 143
    :pswitch_0
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 144
    .line 145
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 146
    .line 147
    iget v11, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->label:I

    .line 148
    .line 149
    if-eqz v11, :cond_a

    .line 150
    .line 151
    if-eq v11, v8, :cond_9

    .line 152
    .line 153
    if-ne v11, v9, :cond_8

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_8
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    move-object v1, v10

    .line 160
    goto :goto_7

    .line 161
    :cond_9
    :goto_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    goto :goto_6

    .line 165
    :cond_a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    iget-object p1, v5, Landroidx/compose/animation/core/Animatable;->targetValue$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 169
    .line 170
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Landroidx/compose/ui/unit/Dp;

    .line 175
    .line 176
    iget p1, p1, Landroidx/compose/ui/unit/Dp;->value:F

    .line 177
    .line 178
    invoke-static {p1, v6}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-nez p1, :cond_d

    .line 183
    .line 184
    if-nez v3, :cond_b

    .line 185
    .line 186
    new-instance p1, Landroidx/compose/ui/unit/Dp;

    .line 187
    .line 188
    invoke-direct {p1, v6}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 189
    .line 190
    .line 191
    iput v8, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->label:I

    .line 192
    .line 193
    invoke-virtual {v5, p1, p0}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    if-ne p0, v0, :cond_c

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_b
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    .line 205
    .line 206
    iput v9, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->label:I

    .line 207
    .line 208
    invoke-static {v5, v6, p1, v2, p0}, Landroidx/compose/material3/internal/ElevationKt;->animateElevation-rAjV9yQ(Landroidx/compose/animation/core/Animatable;FLandroidx/compose/foundation/interaction/Interaction;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    if-ne p0, v0, :cond_c

    .line 213
    .line 214
    :goto_5
    move-object v1, v0

    .line 215
    goto :goto_7

    .line 216
    :cond_c
    :goto_6
    invoke-interface {v7, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    :cond_d
    :goto_7
    return-object v1

    .line 220
    :pswitch_1
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 221
    .line 222
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 223
    .line 224
    iget v11, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->label:I

    .line 225
    .line 226
    if-eqz v11, :cond_10

    .line 227
    .line 228
    if-eq v11, v8, :cond_f

    .line 229
    .line 230
    if-ne v11, v9, :cond_e

    .line 231
    .line 232
    goto :goto_8

    .line 233
    :cond_e
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    move-object v1, v10

    .line 237
    goto :goto_b

    .line 238
    :cond_f
    :goto_8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    goto :goto_a

    .line 242
    :cond_10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    iget-object p1, v5, Landroidx/compose/animation/core/Animatable;->targetValue$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 246
    .line 247
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    check-cast p1, Landroidx/compose/ui/unit/Dp;

    .line 252
    .line 253
    iget p1, p1, Landroidx/compose/ui/unit/Dp;->value:F

    .line 254
    .line 255
    invoke-static {p1, v6}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-nez p1, :cond_13

    .line 260
    .line 261
    if-nez v3, :cond_11

    .line 262
    .line 263
    new-instance p1, Landroidx/compose/ui/unit/Dp;

    .line 264
    .line 265
    invoke-direct {p1, v6}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 266
    .line 267
    .line 268
    iput v8, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->label:I

    .line 269
    .line 270
    invoke-virtual {v5, p1, p0}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    if-ne p0, v0, :cond_12

    .line 275
    .line 276
    goto :goto_9

    .line 277
    :cond_11
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    .line 282
    .line 283
    iput v9, p0, Landroidx/compose/material3/ChipElevation$animateElevation$2$1;->label:I

    .line 284
    .line 285
    invoke-static {v5, v6, p1, v2, p0}, Landroidx/compose/material3/internal/ElevationKt;->animateElevation-rAjV9yQ(Landroidx/compose/animation/core/Animatable;FLandroidx/compose/foundation/interaction/Interaction;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    if-ne p0, v0, :cond_12

    .line 290
    .line 291
    :goto_9
    move-object v1, v0

    .line 292
    goto :goto_b

    .line 293
    :cond_12
    :goto_a
    invoke-interface {v7, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    :cond_13
    :goto_b
    return-object v1

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

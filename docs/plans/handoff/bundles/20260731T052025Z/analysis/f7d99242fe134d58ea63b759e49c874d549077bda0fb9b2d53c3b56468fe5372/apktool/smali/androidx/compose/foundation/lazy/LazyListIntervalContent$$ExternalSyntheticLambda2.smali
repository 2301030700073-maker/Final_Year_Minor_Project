.class public final synthetic Landroidx/compose/foundation/lazy/LazyListIntervalContent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function3;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/foundation/lazy/LazyListIntervalContent$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListIntervalContent$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function3;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListIntervalContent$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/16 v2, 0x82

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x4

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x1

    .line 11
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListIntervalContent$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function3;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p1, Landroidx/compose/foundation/layout/BoxScope;

    .line 17
    .line 18
    check-cast p2, Lcom/skydoves/landscapist/coil3/CoilImageState$Failure;

    .line 19
    .line 20
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 21
    .line 22
    check-cast p4, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p4

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    and-int/lit8 p2, p4, 0x6

    .line 35
    .line 36
    if-nez p2, :cond_1

    .line 37
    .line 38
    move-object p2, p3

    .line 39
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    move v3, v4

    .line 48
    :cond_0
    or-int/2addr p4, v3

    .line 49
    :cond_1
    and-int/lit16 p2, p4, 0x83

    .line 50
    .line 51
    if-eq p2, v2, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v6, v5

    .line 55
    :goto_0
    and-int/lit8 p2, p4, 0x1

    .line 56
    .line 57
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 58
    .line 59
    invoke-virtual {p3, p2, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_4

    .line 64
    .line 65
    if-nez p0, :cond_3

    .line 66
    .line 67
    const p0, -0x69ec84f4

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-virtual {p3, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    const p2, 0x155b7795

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 81
    .line 82
    .line 83
    and-int/lit8 p2, p4, 0xe

    .line 84
    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-interface {p0, p1, p3, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 94
    .line 95
    .line 96
    :goto_2
    return-object v1

    .line 97
    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/layout/BoxScope;

    .line 98
    .line 99
    check-cast p2, Lcom/skydoves/landscapist/coil3/CoilImageState$Loading;

    .line 100
    .line 101
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 102
    .line 103
    check-cast p4, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result p4

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    and-int/lit8 p2, p4, 0x6

    .line 116
    .line 117
    if-nez p2, :cond_6

    .line 118
    .line 119
    move-object p2, p3

    .line 120
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 121
    .line 122
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-eqz p2, :cond_5

    .line 127
    .line 128
    move v3, v4

    .line 129
    :cond_5
    or-int/2addr p4, v3

    .line 130
    :cond_6
    and-int/lit16 p2, p4, 0x83

    .line 131
    .line 132
    if-eq p2, v2, :cond_7

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_7
    move v6, v5

    .line 136
    :goto_3
    and-int/lit8 p2, p4, 0x1

    .line 137
    .line 138
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 139
    .line 140
    invoke-virtual {p3, p2, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    if-eqz p2, :cond_9

    .line 145
    .line 146
    if-nez p0, :cond_8

    .line 147
    .line 148
    const p0, 0x3aca1a95

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 152
    .line 153
    .line 154
    :goto_4
    invoke-virtual {p3, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 155
    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_8
    const p2, 0x64fe42ec

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 162
    .line 163
    .line 164
    and-int/lit8 p2, p4, 0xe

    .line 165
    .line 166
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-interface {p0, p1, p3, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_9
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 175
    .line 176
    .line 177
    :goto_5
    return-object v1

    .line 178
    :pswitch_1
    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 179
    .line 180
    check-cast p2, Ljava/lang/Integer;

    .line 181
    .line 182
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 183
    .line 184
    .line 185
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 186
    .line 187
    check-cast p4, Ljava/lang/Integer;

    .line 188
    .line 189
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    and-int/lit8 p4, p2, 0x6

    .line 194
    .line 195
    if-nez p4, :cond_b

    .line 196
    .line 197
    move-object p4, p3

    .line 198
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 199
    .line 200
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result p4

    .line 204
    if-eqz p4, :cond_a

    .line 205
    .line 206
    move v3, v4

    .line 207
    :cond_a
    or-int/2addr p2, v3

    .line 208
    :cond_b
    and-int/lit16 p4, p2, 0x83

    .line 209
    .line 210
    if-eq p4, v2, :cond_c

    .line 211
    .line 212
    move v5, v6

    .line 213
    :cond_c
    and-int/lit8 p4, p2, 0x1

    .line 214
    .line 215
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 216
    .line 217
    invoke-virtual {p3, p4, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 218
    .line 219
    .line 220
    move-result p4

    .line 221
    if-eqz p4, :cond_d

    .line 222
    .line 223
    and-int/lit8 p2, p2, 0xe

    .line 224
    .line 225
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-interface {p0, p1, p3, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_d
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 234
    .line 235
    .line 236
    :goto_6
    return-object v1

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

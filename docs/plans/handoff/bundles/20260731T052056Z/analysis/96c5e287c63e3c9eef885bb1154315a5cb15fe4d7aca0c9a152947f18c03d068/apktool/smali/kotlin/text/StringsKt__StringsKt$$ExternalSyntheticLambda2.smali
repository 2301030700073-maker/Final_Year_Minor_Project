.class public final synthetic Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    .line 1
    iput p2, p0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    and-int/lit8 v0, p2, 0x3

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    if-eq v0, v3, :cond_0

    .line 22
    .line 23
    move v2, v1

    .line 24
    :cond_0
    and-int/2addr p2, v1

    .line 25
    invoke-virtual {p1, p2, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    const/16 v9, 0xd

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const/high16 v6, 0x41a00000    # 20.0f

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const/high16 v0, 0x41800000    # 16.0f

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-static {p2, v0, v1, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const/4 v0, 0x6

    .line 52
    invoke-static {v0, p1, p2, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->AboutScreenBody(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 57
    .line 58
    .line 59
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 60
    .line 61
    return-object p0

    .line 62
    :pswitch_0
    check-cast p1, Ljava/lang/CharSequence;

    .line 63
    .line 64
    check-cast p2, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/4 v6, 0x0

    .line 78
    if-ne v0, v1, :cond_4

    .line 79
    .line 80
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->single(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    check-cast p0, Ljava/lang/String;

    .line 85
    .line 86
    const/4 v0, 0x4

    .line 87
    invoke-static {p1, p0, p2, v2, v0}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-gez p1, :cond_3

    .line 92
    .line 93
    :cond_2
    move-object p2, v6

    .line 94
    goto/16 :goto_6

    .line 95
    .line 96
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    new-instance p2, Lkotlin/Pair;

    .line 101
    .line 102
    invoke-direct {p2, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_6

    .line 106
    .line 107
    :cond_4
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 108
    .line 109
    if-gez p2, :cond_5

    .line 110
    .line 111
    move p2, v2

    .line 112
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    invoke-direct {v0, p2, v3, v1}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 117
    .line 118
    .line 119
    instance-of v1, p1, Ljava/lang/String;

    .line 120
    .line 121
    iget v7, v0, Lkotlin/ranges/IntProgression;->step:I

    .line 122
    .line 123
    iget v8, v0, Lkotlin/ranges/IntProgression;->last:I

    .line 124
    .line 125
    if-eqz v1, :cond_b

    .line 126
    .line 127
    if-lez v7, :cond_6

    .line 128
    .line 129
    if-le p2, v8, :cond_7

    .line 130
    .line 131
    :cond_6
    if-gez v7, :cond_2

    .line 132
    .line 133
    if-gt v8, p2, :cond_2

    .line 134
    .line 135
    :cond_7
    :goto_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_9

    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    move-object v3, v1

    .line 150
    check-cast v3, Ljava/lang/String;

    .line 151
    .line 152
    move-object v4, p1

    .line 153
    check-cast v4, Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    invoke-virtual {v3, v2, v4, p2, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_8

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_9
    move-object v1, v6

    .line 167
    :goto_2
    check-cast v1, Ljava/lang/String;

    .line 168
    .line 169
    if-eqz v1, :cond_a

    .line 170
    .line 171
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    new-instance p2, Lkotlin/Pair;

    .line 176
    .line 177
    invoke-direct {p2, p0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_a
    if-eq p2, v8, :cond_2

    .line 182
    .line 183
    add-int/2addr p2, v7

    .line 184
    goto :goto_1

    .line 185
    :cond_b
    if-lez v7, :cond_c

    .line 186
    .line 187
    if-le p2, v8, :cond_d

    .line 188
    .line 189
    :cond_c
    if-gez v7, :cond_2

    .line 190
    .line 191
    if-gt v8, p2, :cond_2

    .line 192
    .line 193
    :cond_d
    move v3, p2

    .line 194
    :goto_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_f

    .line 203
    .line 204
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    move-object v0, v9

    .line 209
    check-cast v0, Ljava/lang/String;

    .line 210
    .line 211
    const/4 v1, 0x0

    .line 212
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    const/4 v5, 0x0

    .line 217
    move-object v2, p1

    .line 218
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->regionMatchesImpl(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_e

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_e
    move-object p1, v2

    .line 226
    goto :goto_4

    .line 227
    :cond_f
    move-object v2, p1

    .line 228
    move-object v9, v6

    .line 229
    :goto_5
    check-cast v9, Ljava/lang/String;

    .line 230
    .line 231
    if-eqz v9, :cond_10

    .line 232
    .line 233
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    new-instance p2, Lkotlin/Pair;

    .line 238
    .line 239
    invoke-direct {p2, p0, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_10
    if-eq v3, v8, :cond_2

    .line 244
    .line 245
    add-int/2addr v3, v7

    .line 246
    move-object p1, v2

    .line 247
    goto :goto_3

    .line 248
    :goto_6
    if-eqz p2, :cond_11

    .line 249
    .line 250
    iget-object p0, p2, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 251
    .line 252
    iget-object p1, p2, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast p1, Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    new-instance v6, Lkotlin/Pair;

    .line 265
    .line 266
    invoke-direct {v6, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    :cond_11
    return-object v6

    .line 270
    nop

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

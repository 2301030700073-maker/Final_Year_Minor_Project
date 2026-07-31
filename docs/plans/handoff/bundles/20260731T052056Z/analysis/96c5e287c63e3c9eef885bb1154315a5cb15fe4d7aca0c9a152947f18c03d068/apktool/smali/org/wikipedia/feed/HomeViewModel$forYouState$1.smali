.class public final Lorg/wikipedia/feed/HomeViewModel$forYouState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public synthetic L$1:Ljava/lang/Object;

.field public synthetic L$2:Ljava/lang/Object;

.field public synthetic L$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget p0, p0, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lorg/wikipedia/util/UiState;

    .line 10
    .line 11
    check-cast p2, Lorg/wikipedia/util/UiState;

    .line 12
    .line 13
    check-cast p3, Lorg/wikipedia/util/UiState;

    .line 14
    .line 15
    check-cast p4, Lorg/wikipedia/util/UiState;

    .line 16
    .line 17
    check-cast p5, Lkotlin/coroutines/Continuation;

    .line 18
    .line 19
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-direct {p0, v1, v2, p5}, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;->L$0:Ljava/lang/Object;

    .line 26
    .line 27
    iput-object p2, p0, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;->L$1:Ljava/lang/Object;

    .line 28
    .line 29
    iput-object p3, p0, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;->L$2:Ljava/lang/Object;

    .line 30
    .line 31
    iput-object p4, p0, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;->L$3:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_0
    check-cast p1, Lorg/wikipedia/feed/ForYouContentState;

    .line 39
    .line 40
    check-cast p2, Ljava/util/Set;

    .line 41
    .line 42
    check-cast p3, Ljava/util/Set;

    .line 43
    .line 44
    check-cast p4, Ljava/util/List;

    .line 45
    .line 46
    check-cast p5, Lkotlin/coroutines/Continuation;

    .line 47
    .line 48
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, v1, v2, p5}, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p2, Ljava/util/Set;

    .line 57
    .line 58
    iput-object p2, p0, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p3, Ljava/util/Set;

    .line 61
    .line 62
    iput-object p3, p0, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;->L$2:Ljava/lang/Object;

    .line 63
    .line 64
    iput-object p4, p0, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;->L$3:Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lorg/wikipedia/util/UiState;

    .line 11
    .line 12
    iget-object v3, p0, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;->L$1:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v3, Lorg/wikipedia/util/UiState;

    .line 15
    .line 16
    iget-object v4, p0, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;->L$2:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v4, Lorg/wikipedia/util/UiState;

    .line 19
    .line 20
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;->L$3:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lorg/wikipedia/util/UiState;

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    instance-of p1, v0, Lorg/wikipedia/util/UiState$Loading;

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    instance-of p1, v3, Lorg/wikipedia/util/UiState$Loading;

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    instance-of p1, v4, Lorg/wikipedia/util/UiState$Loading;

    .line 36
    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    instance-of p0, p0, Lorg/wikipedia/util/UiState$Loading;

    .line 40
    .line 41
    if-nez p0, :cond_0

    .line 42
    .line 43
    move v1, v2

    .line 44
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :pswitch_0
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    move-object v3, v0

    .line 52
    check-cast v3, Lorg/wikipedia/feed/ForYouContentState;

    .line 53
    .line 54
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;->L$1:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Ljava/util/Set;

    .line 57
    .line 58
    check-cast v0, Ljava/util/Set;

    .line 59
    .line 60
    iget-object v4, p0, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;->L$2:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v4, Ljava/util/Set;

    .line 63
    .line 64
    check-cast v4, Ljava/util/Set;

    .line 65
    .line 66
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;->L$3:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Ljava/util/List;

    .line 69
    .line 70
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, v3, Lorg/wikipedia/feed/ForYouContentState;->modules:Ljava/util/List;

    .line 74
    .line 75
    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    new-instance p1, Landroidx/recyclerview/widget/DiffUtil$1;

    .line 80
    .line 81
    const/16 v5, 0x1a

    .line 82
    .line 83
    invoke-direct {p1, v5}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_2

    .line 104
    .line 105
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    move-object v6, v5

    .line 110
    check-cast v6, Lorg/wikipedia/feed/ForYouModule;

    .line 111
    .line 112
    invoke-virtual {v6}, Lorg/wikipedia/feed/ForYouModule;->moduleKey()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-nez v6, :cond_1

    .line 121
    .line 122
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    const/4 v6, 0x0

    .line 140
    if-eqz v5, :cond_7

    .line 141
    .line 142
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    check-cast v5, Lorg/wikipedia/feed/ForYouModule;

    .line 147
    .line 148
    invoke-virtual {v5}, Lorg/wikipedia/feed/ForYouModule;->getCards()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    new-instance v8, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    if-eqz v9, :cond_5

    .line 166
    .line 167
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    move-object v10, v9

    .line 172
    check-cast v10, Lorg/wikipedia/feed/model/ForYouCard;

    .line 173
    .line 174
    invoke-virtual {v10}, Lorg/wikipedia/feed/model/Card;->getHideKey()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    if-nez v10, :cond_4

    .line 183
    .line 184
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_5
    invoke-virtual {v5}, Lorg/wikipedia/feed/ForYouModule;->getCards()Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    if-nez v7, :cond_6

    .line 197
    .line 198
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    if-eqz v7, :cond_6

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_6
    invoke-virtual {v5, v8}, Lorg/wikipedia/feed/ForYouModule;->withCards(Ljava/util/ArrayList;)Lorg/wikipedia/feed/ForYouModule;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    :goto_3
    if-eqz v6, :cond_3

    .line 210
    .line 211
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_7
    invoke-static {}, Lorg/wikipedia/settings/homefeed/ForYouModuleType;->getEntries()Lkotlin/enums/EnumEntries;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    if-eqz p1, :cond_9

    .line 220
    .line 221
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-eqz v4, :cond_9

    .line 226
    .line 227
    :cond_8
    move v1, v2

    .line 228
    goto :goto_4

    .line 229
    :cond_9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-eqz v4, :cond_8

    .line 238
    .line 239
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    check-cast v4, Lorg/wikipedia/settings/homefeed/ForYouModuleType;

    .line 244
    .line 245
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-nez v4, :cond_a

    .line 254
    .line 255
    :goto_4
    const-string p1, "BASED_ON_INTEREST"

    .line 256
    .line 257
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v9

    .line 261
    if-eqz v1, :cond_c

    .line 262
    .line 263
    sget-object v6, Lorg/wikipedia/feed/FeedEmptyState;->ALL_MODULES_HIDDEN:Lorg/wikipedia/feed/FeedEmptyState;

    .line 264
    .line 265
    :cond_b
    :goto_5
    move-object v10, v6

    .line 266
    goto :goto_6

    .line 267
    :cond_c
    iget-boolean p1, v3, Lorg/wikipedia/feed/ForYouContentState;->isInitialLoading:Z

    .line 268
    .line 269
    if-nez p1, :cond_b

    .line 270
    .line 271
    iget-object p1, v3, Lorg/wikipedia/feed/ForYouContentState;->error:Ljava/lang/Throwable;

    .line 272
    .line 273
    if-nez p1, :cond_b

    .line 274
    .line 275
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    if-eqz p1, :cond_b

    .line 280
    .line 281
    sget-object v6, Lorg/wikipedia/feed/FeedEmptyState;->NO_DATA:Lorg/wikipedia/feed/FeedEmptyState;

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :goto_6
    const/4 v8, 0x0

    .line 285
    const/16 v11, 0x3e

    .line 286
    .line 287
    const/4 v5, 0x0

    .line 288
    const/4 v6, 0x0

    .line 289
    const/4 v7, 0x0

    .line 290
    move-object v4, p0

    .line 291
    invoke-static/range {v3 .. v11}, Lorg/wikipedia/feed/ForYouContentState;->copy$default(Lorg/wikipedia/feed/ForYouContentState;Ljava/util/ArrayList;Lorg/wikipedia/dataclient/WikiSite;ZZLjava/lang/Throwable;ZLorg/wikipedia/feed/FeedEmptyState;I)Lorg/wikipedia/feed/ForYouContentState;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    return-object p0

    .line 296
    nop

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

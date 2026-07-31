.class public final synthetic Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda4;->f$1:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;Ljava/lang/String;)V
    .locals 1

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda4;->f$1:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;

    iput-object p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/16 v3, 0xa

    .line 8
    .line 9
    iget-object v4, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda4;->f$1:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;->saveSourceSelection()Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v5, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v5, Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 33
    .line 34
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    iget-object v6, v6, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;->availableSources:Ljava/util/ArrayList;

    .line 39
    .line 40
    new-instance v7, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-static {v6, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_0

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 64
    .line 65
    invoke-virtual {v6}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->getEventString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->getEventString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v14

    .line 81
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 82
    .line 83
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListSource()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->getEventString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    const/4 v15, 0x0

    .line 92
    const/16 v16, 0x198

    .line 93
    .line 94
    const-string v8, "submit_click"

    .line 95
    .line 96
    iget-object v9, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    .line 97
    .line 98
    const/4 v11, 0x0

    .line 99
    const/4 v12, 0x0

    .line 100
    invoke-static/range {v8 .. v16}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    const/4 v0, 0x1

    .line 104
    const/4 v1, 0x0

    .line 105
    if-eqz v5, :cond_1

    .line 106
    .line 107
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    new-instance v4, Landroidx/fragment/app/BackStackRecord;

    .line 116
    .line 117
    invoke-direct {v4, v3}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    .line 118
    .line 119
    .line 120
    new-instance v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;

    .line 121
    .line 122
    invoke-direct {v3}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;-><init>()V

    .line 123
    .line 124
    .line 125
    new-instance v5, Landroid/os/Bundle;

    .line 126
    .line 127
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v6, "fromSettings"

    .line 131
    .line 132
    const/4 v7, 0x0

    .line 133
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 137
    .line 138
    .line 139
    const v5, 0x1020002

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v5, v3, v1, v0}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Landroidx/fragment/app/BackStackRecord;->addToBackStack()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_1
    const v3, 0x7f120668

    .line 153
    .line 154
    .line 155
    invoke-static {v3, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 156
    .line 157
    .line 158
    sget v0, Lorg/wikipedia/readinglist/ReadingListActivity;->$r8$clinit:I

    .line 159
    .line 160
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    sget-object v3, Lorg/wikipedia/readinglist/ReadingListMode;->RECOMMENDED:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 165
    .line 166
    invoke-static {v0, v3, v1}, Lorg/jsoup/nodes/NodeUtils;->newIntent(Landroid/content/Context;Lorg/wikipedia/readinglist/ReadingListMode;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v4, v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 178
    .line 179
    .line 180
    :goto_1
    return-object v2

    .line 181
    :pswitch_0
    const/4 v12, 0x0

    .line 182
    const/16 v13, 0x1fc

    .line 183
    .line 184
    const-string v5, "close_click"

    .line 185
    .line 186
    iget-object v15, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    .line 187
    .line 188
    const/4 v7, 0x0

    .line 189
    const/4 v8, 0x0

    .line 190
    const/4 v9, 0x0

    .line 191
    const/4 v10, 0x0

    .line 192
    const/4 v11, 0x0

    .line 193
    move-object v6, v15

    .line 194
    invoke-static/range {v5 .. v13}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    iget-boolean v0, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;->fromSettings:Z

    .line 202
    .line 203
    if-eqz v0, :cond_3

    .line 204
    .line 205
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;->saveSourceSelection()Lkotlin/Pair;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 216
    .line 217
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    iget-object v1, v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;->availableSources:Ljava/util/ArrayList;

    .line 222
    .line 223
    new-instance v5, Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    if-eqz v3, :cond_2

    .line 241
    .line 242
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    check-cast v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 247
    .line 248
    invoke-virtual {v3}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->getEventString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v16

    .line 260
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->getEventString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v20

    .line 264
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 265
    .line 266
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListSource()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->getEventString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v19

    .line 274
    const/16 v21, 0x0

    .line 275
    .line 276
    const/16 v22, 0x198

    .line 277
    .line 278
    const-string v14, "submit_click"

    .line 279
    .line 280
    const/16 v17, 0x0

    .line 281
    .line 282
    const/16 v18, 0x0

    .line 283
    .line 284
    invoke-static/range {v14 .. v22}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    const/4 v1, -0x1

    .line 292
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 293
    .line 294
    .line 295
    :cond_3
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 300
    .line 301
    .line 302
    return-object v2

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

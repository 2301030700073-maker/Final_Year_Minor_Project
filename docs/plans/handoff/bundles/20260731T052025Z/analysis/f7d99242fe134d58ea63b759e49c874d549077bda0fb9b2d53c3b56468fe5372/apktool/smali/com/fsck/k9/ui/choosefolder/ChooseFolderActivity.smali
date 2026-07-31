.class public final Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;
.super Lcom/fsck/k9/ui/base/BaseActivity;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public action:Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;

.field public currentFolderId:Ljava/lang/Long;

.field public final folderIconProvider$delegate:Lkotlin/Lazy;

.field public final folderNameFormatter$delegate:Lkotlin/Lazy;

.field public itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

.field public messageReference:Ljava/lang/String;

.field public final messagingController$delegate:Lkotlin/Lazy;

.field public final preferences$delegate:Lkotlin/Lazy;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public scrollToFolderId:Ljava/lang/Long;

.field public final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/fsck/k9/ui/base/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;I)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    new-instance v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$special$$inlined$inject$default$1;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;I)V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 25
    .line 26
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->preferences$delegate:Lkotlin/Lazy;

    .line 31
    .line 32
    new-instance v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$special$$inlined$inject$default$1;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;I)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->messagingController$delegate:Lkotlin/Lazy;

    .line 43
    .line 44
    new-instance v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$special$$inlined$inject$default$1;

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->folderNameFormatter$delegate:Lkotlin/Lazy;

    .line 55
    .line 56
    new-instance v0, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    const/16 v2, 0xe

    .line 59
    .line 60
    invoke-direct {v0, v2, p0}, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    new-instance v2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 64
    .line 65
    const/4 v3, 0x6

    .line 66
    invoke-direct {v2, v3, p0, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v2}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->folderIconProvider$delegate:Lkotlin/Lazy;

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Lcom/fsck/k9/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0c0171

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/base/BaseActivity;->setLayout(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_12

    .line 19
    .line 20
    invoke-static {v0}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_12

    .line 25
    .line 26
    iput-object v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->action:Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "accountUuid"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->preferences$delegate:Lkotlin/Lazy;

    .line 42
    .line 43
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/fsck/k9/Preferences;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    iput-object v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "messageReference"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->messageReference:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const-string v1, "currentFolderId"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const-wide/16 v3, -0x1

    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    if-nez v2, :cond_2

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 93
    .line 94
    .line 95
    move-result-wide v0

    .line 96
    cmp-long v2, v0, v3

    .line 97
    .line 98
    if-eqz v2, :cond_3

    .line 99
    .line 100
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    :goto_1
    move-object v0, v5

    .line 106
    :goto_2
    iput-object v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->currentFolderId:Ljava/lang/Long;

    .line 107
    .line 108
    const-string v0, "scrollToFolderId"

    .line 109
    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 119
    .line 120
    .line 121
    move-result-wide v0

    .line 122
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    goto :goto_4

    .line 127
    :cond_4
    :goto_3
    move-object v0, v5

    .line 128
    goto :goto_4

    .line 129
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-nez v2, :cond_6

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_6
    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 144
    .line 145
    .line 146
    move-result-wide v0

    .line 147
    cmp-long v2, v0, v3

    .line 148
    .line 149
    if-eqz v2, :cond_4

    .line 150
    .line 151
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    :goto_4
    iput-object v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->scrollToFolderId:Ljava/lang/Long;

    .line 156
    .line 157
    iget-object v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->action:Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;

    .line 158
    .line 159
    if-eqz v0, :cond_11

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    const/4 v1, 0x1

    .line 166
    if-eqz v0, :cond_8

    .line 167
    .line 168
    if-eq v0, v1, :cond_7

    .line 169
    .line 170
    const v0, 0x7f12020c

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 174
    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_7
    const v0, 0x7f12020a

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 181
    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_8
    const v0, 0x7f12020b

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 188
    .line 189
    .line 190
    :goto_5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    if-eqz v0, :cond_10

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 197
    .line 198
    .line 199
    const v2, 0x7f0800d3

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 203
    .line 204
    .line 205
    new-instance v0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 206
    .line 207
    invoke-direct {v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;-><init>()V

    .line 208
    .line 209
    .line 210
    iput-object v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 211
    .line 212
    new-instance v6, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;

    .line 213
    .line 214
    const/4 v12, 0x0

    .line 215
    const/4 v13, 0x5

    .line 216
    const/4 v7, 0x2

    .line 217
    const-class v9, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;

    .line 218
    .line 219
    const-string v10, "folderListFilter"

    .line 220
    .line 221
    const-string v11, "folderListFilter(Lcom/fsck/k9/ui/choosefolder/FolderListItem;Ljava/lang/CharSequence;)Z"

    .line 222
    .line 223
    move-object v8, p0

    .line 224
    invoke-direct/range {v6 .. v13}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 225
    .line 226
    .line 227
    iget-object p0, v0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    .line 228
    .line 229
    iput-object v6, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->filterPredicate:Lkotlin/jvm/functions/Function2;

    .line 230
    .line 231
    iget-object p0, v8, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 232
    .line 233
    if-eqz p0, :cond_f

    .line 234
    .line 235
    new-instance v0, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 236
    .line 237
    invoke-direct {v0}, Lcom/mikepenz/fastadapter/FastAdapter;-><init>()V

    .line 238
    .line 239
    .line 240
    iget-object v2, v0, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    .line 241
    .line 242
    const/4 v3, 0x0

    .line 243
    invoke-virtual {v2, v3, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemList:Lcom/google/zxing/BinaryBitmap;

    .line 247
    .line 248
    invoke-static {v4}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    if-eqz v6, :cond_9

    .line 253
    .line 254
    iput-object v0, v4, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 255
    .line 256
    :cond_9
    iput-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    move v2, v3

    .line 263
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    if-eqz v4, :cond_b

    .line 268
    .line 269
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    add-int/lit8 v6, v2, 0x1

    .line 274
    .line 275
    if-ltz v2, :cond_a

    .line 276
    .line 277
    check-cast v4, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 278
    .line 279
    iput v2, v4, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->order:I

    .line 280
    .line 281
    move v2, v6

    .line 282
    goto :goto_6

    .line 283
    :cond_a
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 284
    .line 285
    .line 286
    throw v5

    .line 287
    :cond_b
    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 291
    .line 292
    .line 293
    new-instance p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda11;

    .line 294
    .line 295
    const/4 v1, 0x7

    .line 296
    invoke-direct {p0, v1, v8}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    iput-object p0, v0, Lcom/mikepenz/fastadapter/FastAdapter;->onClickListener:Lkotlin/jvm/functions/Function4;

    .line 300
    .line 301
    const p0, 0x7f0901f9

    .line 302
    .line 303
    .line 304
    invoke-virtual {v8, p0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 312
    .line 313
    iput-object p0, v8, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 314
    .line 315
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 316
    .line 317
    .line 318
    iget-object p0, v8, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 319
    .line 320
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    check-cast v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;

    .line 325
    .line 326
    iget-object v0, v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;->foldersFlow:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 327
    .line 328
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;)Landroidx/lifecycle/CoroutineLiveData;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    new-instance v1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$$ExternalSyntheticLambda1;

    .line 333
    .line 334
    invoke-direct {v1, v8, v3}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;I)V

    .line 335
    .line 336
    .line 337
    new-instance v2, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;

    .line 338
    .line 339
    const/4 v4, 0x3

    .line 340
    invoke-direct {v2, v4, v1}, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v8, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 344
    .line 345
    .line 346
    if-eqz p1, :cond_c

    .line 347
    .line 348
    const-string v0, "showHiddenFolders"

    .line 349
    .line 350
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 351
    .line 352
    .line 353
    move-result p1

    .line 354
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    goto :goto_7

    .line 359
    :cond_c
    move-object p1, v5

    .line 360
    :goto_7
    if-eqz p1, :cond_d

    .line 361
    .line 362
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    :cond_d
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object p0

    .line 370
    check-cast p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;

    .line 371
    .line 372
    iget-object p1, v8, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 373
    .line 374
    if-eqz p1, :cond_e

    .line 375
    .line 376
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    iput-boolean v3, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;->isShowHiddenFolders:Z

    .line 380
    .line 381
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    new-instance v1, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;

    .line 386
    .line 387
    invoke-direct {v1, p0, p1, v3, v5}, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;-><init>(Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;Lnet/thunderbird/core/android/account/LegacyAccountDto;ZLkotlin/coroutines/Continuation;)V

    .line 388
    .line 389
    .line 390
    invoke-static {v0, v5, v5, v1, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 391
    .line 392
    .line 393
    return-void

    .line 394
    :cond_e
    const-string p0, "account"

    .line 395
    .line 396
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    throw v5

    .line 400
    :cond_f
    const-string p0, "itemAdapter"

    .line 401
    .line 402
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw v5

    .line 406
    :cond_10
    const-string p0, "Action bar missing"

    .line 407
    .line 408
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    return-void

    .line 412
    :cond_11
    const-string p0, "action"

    .line 413
    .line 414
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    throw v5

    .line 418
    :cond_12
    const-string p0, "Missing Intent action"

    .line 419
    .line 420
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f0e0001

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0901e6

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    check-cast p1, Landroidx/appcompat/widget/SearchView;

    .line 32
    .line 33
    const v0, 0x7fffffff

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 37
    .line 38
    .line 39
    const v0, 0x7f1202e6

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 50
    .line 51
    const/4 v1, 0x6

    .line 52
    invoke-direct {v0, v1, p0}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x1

    .line 59
    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x102002c

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 15
    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    const v1, 0x7f090440

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const-string v4, "account"

    .line 23
    .line 24
    if-ne v0, v1, :cond_2

    .line 25
    .line 26
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    xor-int/2addr p1, v2

    .line 31
    iget-object v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 32
    .line 33
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 40
    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iput-boolean p1, v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;->isShowHiddenFolders:Z

    .line 47
    .line 48
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v4, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;

    .line 53
    .line 54
    invoke-direct {v4, v0, p0, p1, v3}, Landroidx/compose/material3/SnackbarHostKt$animatedScale$1$1;-><init>(Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;Lnet/thunderbird/core/android/account/LegacyAccountDto;ZLkotlin/coroutines/Continuation;)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x3

    .line 58
    invoke-static {v1, v3, v3, v4, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 59
    .line 60
    .line 61
    return v2

    .line 62
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v3

    .line 66
    :cond_2
    const v1, 0x7f09025e

    .line 67
    .line 68
    .line 69
    if-ne v0, v1, :cond_4

    .line 70
    .line 71
    iget-object p1, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->messagingController$delegate:Lkotlin/Lazy;

    .line 72
    .line 73
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lcom/fsck/k9/controller/MessagingController;

    .line 78
    .line 79
    iget-object p0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 80
    .line 81
    if-eqz p0, :cond_3

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda8;

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-direct {v0, p1, p0, v1}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda8;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 90
    .line 91
    .line 92
    const-string p0, "refreshFolderList"

    .line 93
    .line 94
    invoke-virtual {p1, p0, v0}, Lcom/fsck/k9/controller/MessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 95
    .line 96
    .line 97
    return v2

    .line 98
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v3

    .line 102
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    return p0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const v0, 0x7f090440

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 13
    .line 14
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;

    .line 19
    .line 20
    iget-boolean v1, v1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;->isShowHiddenFolders:Z

    .line 21
    .line 22
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->scrollToFolderId:Ljava/lang/Long;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-string v2, "scrollToFolderId"

    .line 16
    .line 17
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 21
    .line 22
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;

    .line 27
    .line 28
    iget-boolean p0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;->isShowHiddenFolders:Z

    .line 29
    .line 30
    const-string v0, "showHiddenFolders"

    .line 31
    .line 32
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

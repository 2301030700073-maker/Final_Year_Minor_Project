.class public final synthetic Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/feed/HomeFragment;

.field public final synthetic f$1:Lorg/wikipedia/feed/model/Card;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/HomeFragment;Lorg/wikipedia/feed/model/Card;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda11;->f$0:Lorg/wikipedia/feed/HomeFragment;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda11;->f$1:Lorg/wikipedia/feed/model/Card;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda11;->f$1:Lorg/wikipedia/feed/model/Card;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda11;->f$0:Lorg/wikipedia/feed/HomeFragment;

    .line 9
    .line 10
    check-cast p1, Lorg/wikipedia/history/HistoryEntry;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v4, p0, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    sget-object v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 29
    .line 30
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->getPageData$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikimedia/testkitchen/context/PageData;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    const/4 v10, 0x0

    .line 39
    const/16 v11, 0xd0

    .line 40
    .line 41
    const-string v5, "click"

    .line 42
    .line 43
    const-string v7, "feed_item_overflow"

    .line 44
    .line 45
    const-string v8, "article_copy_link"

    .line 46
    .line 47
    invoke-static/range {v4 .. v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 51
    .line 52
    instance-of v0, p0, Lorg/wikipedia/main/MainFragment;

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    check-cast p0, Lorg/wikipedia/main/MainFragment;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move-object p0, v2

    .line 60
    :goto_0
    if-eqz p0, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-class v3, Landroid/content/ClipboardManager;

    .line 75
    .line 76
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/content/ClipboardManager;

    .line 81
    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    const p1, 0x7f12007a

    .line 96
    .line 97
    .line 98
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 99
    .line 100
    .line 101
    :cond_2
    return-object v1

    .line 102
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    iget-object v4, p0, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    sget-object v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 116
    .line 117
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->getPageData$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikimedia/testkitchen/context/PageData;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    const/4 v10, 0x0

    .line 126
    const/16 v11, 0xd0

    .line 127
    .line 128
    const-string v5, "click"

    .line 129
    .line 130
    const-string v7, "feed_item_overflow"

    .line 131
    .line 132
    const-string v8, "article_share"

    .line 133
    .line 134
    invoke-static/range {v4 .. v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 135
    .line 136
    .line 137
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 138
    .line 139
    instance-of v0, p0, Lorg/wikipedia/main/MainFragment;

    .line 140
    .line 141
    if-eqz v0, :cond_3

    .line 142
    .line 143
    move-object v2, p0

    .line 144
    check-cast v2, Lorg/wikipedia/main/MainFragment;

    .line 145
    .line 146
    :cond_3
    if-eqz v2, :cond_4

    .line 147
    .line 148
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {p0, v0, p1}, Lorg/wikipedia/util/ShareUtil;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :cond_4
    return-object v1

    .line 172
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    iget-object v4, p0, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    sget-object v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 186
    .line 187
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-static {v0}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->getPageData$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikimedia/testkitchen/context/PageData;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    const/4 v10, 0x0

    .line 196
    const/16 v11, 0xd0

    .line 197
    .line 198
    const-string v5, "click"

    .line 199
    .line 200
    const-string v7, "feed_item_overflow"

    .line 201
    .line 202
    const-string v8, "article_open_new_tab"

    .line 203
    .line 204
    invoke-static/range {v4 .. v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 208
    .line 209
    instance-of v3, v0, Lorg/wikipedia/main/MainFragment;

    .line 210
    .line 211
    if-eqz v3, :cond_5

    .line 212
    .line 213
    move-object v2, v0

    .line 214
    check-cast v2, Lorg/wikipedia/main/MainFragment;

    .line 215
    .line 216
    :cond_5
    const/4 v0, 0x1

    .line 217
    if-eqz v2, :cond_6

    .line 218
    .line 219
    invoke-virtual {v2, p1, v0}, Lorg/wikipedia/main/MainFragment;->onFeedSelectPage(Lorg/wikipedia/history/HistoryEntry;Z)V

    .line 220
    .line 221
    .line 222
    :cond_6
    invoke-virtual {p0}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/HomeViewModel;->updateTabCount(Z)V

    .line 227
    .line 228
    .line 229
    return-object v1

    .line 230
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    iget-object v4, p0, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 234
    .line 235
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    sget-object v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 244
    .line 245
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-static {v0}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->getPageData$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikimedia/testkitchen/context/PageData;

    .line 250
    .line 251
    .line 252
    move-result-object v9

    .line 253
    const/4 v10, 0x0

    .line 254
    const/16 v11, 0xd0

    .line 255
    .line 256
    const-string v5, "click"

    .line 257
    .line 258
    const-string v7, "feed_item_overflow"

    .line 259
    .line 260
    const-string v8, "article_open"

    .line 261
    .line 262
    invoke-static/range {v4 .. v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 263
    .line 264
    .line 265
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 266
    .line 267
    instance-of v0, p0, Lorg/wikipedia/main/MainFragment;

    .line 268
    .line 269
    if-eqz v0, :cond_7

    .line 270
    .line 271
    move-object v2, p0

    .line 272
    check-cast v2, Lorg/wikipedia/main/MainFragment;

    .line 273
    .line 274
    :cond_7
    if-eqz v2, :cond_8

    .line 275
    .line 276
    const/4 p0, 0x0

    .line 277
    invoke-virtual {v2, p1, p0}, Lorg/wikipedia/main/MainFragment;->onFeedSelectPage(Lorg/wikipedia/history/HistoryEntry;Z)V

    .line 278
    .line 279
    .line 280
    :cond_8
    return-object v1

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

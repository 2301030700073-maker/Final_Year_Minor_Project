.class public final synthetic Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/feed/HomeFragment;

.field public final synthetic f$1:Lorg/wikipedia/feed/model/Card;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/HomeFragment;Lorg/wikipedia/feed/model/Card;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda13;->f$0:Lorg/wikipedia/feed/HomeFragment;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda13;->f$1:Lorg/wikipedia/feed/model/Card;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v4, v0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda13;->f$1:Lorg/wikipedia/feed/model/Card;

    .line 9
    .line 10
    iget-object v0, v0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda13;->f$0:Lorg/wikipedia/feed/HomeFragment;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Lorg/wikipedia/history/HistoryEntry;

    .line 18
    .line 19
    move-object/from16 v5, p2

    .line 20
    .line 21
    check-cast v5, Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v6, v0, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    sget-object v4, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 40
    .line 41
    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v4}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->getPageData$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikimedia/testkitchen/context/PageData;

    .line 46
    .line 47
    .line 48
    move-result-object v11

    .line 49
    const/4 v12, 0x0

    .line 50
    const/16 v13, 0xd0

    .line 51
    .line 52
    const-string v7, "click"

    .line 53
    .line 54
    const-string v9, "feed_item_overflow"

    .line 55
    .line 56
    const-string v10, "article_remove"

    .line 57
    .line 58
    invoke-static/range {v6 .. v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 62
    .line 63
    instance-of v4, v0, Lorg/wikipedia/main/MainFragment;

    .line 64
    .line 65
    if-eqz v4, :cond_0

    .line 66
    .line 67
    move-object v3, v0

    .line 68
    check-cast v3, Lorg/wikipedia/main/MainFragment;

    .line 69
    .line 70
    :cond_0
    if-eqz v3, :cond_1

    .line 71
    .line 72
    new-instance v0, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 73
    .line 74
    invoke-direct {v0, v5}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;-><init>(Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    new-instance v5, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;

    .line 82
    .line 83
    const/4 v6, 0x7

    .line 84
    invoke-direct {v5, v6, v3, v1}, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v4, v5}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->deleteOrShowDialog(Landroid/app/Activity;Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    return-object v2

    .line 91
    :pswitch_0
    move-object/from16 v1, p1

    .line 92
    .line 93
    check-cast v1, Ljava/lang/Long;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v6

    .line 99
    move-object/from16 v1, p2

    .line 100
    .line 101
    check-cast v1, Lorg/wikipedia/history/HistoryEntry;

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    iget-object v8, v0, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    sget-object v4, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 117
    .line 118
    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-static {v4}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->getPageData$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikimedia/testkitchen/context/PageData;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    const/4 v14, 0x0

    .line 127
    const/16 v15, 0xd0

    .line 128
    .line 129
    const-string v9, "click"

    .line 130
    .line 131
    const-string v11, "feed_item_overflow"

    .line 132
    .line 133
    const-string v12, "article_move"

    .line 134
    .line 135
    invoke-static/range {v8 .. v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 136
    .line 137
    .line 138
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 139
    .line 140
    instance-of v4, v0, Lorg/wikipedia/main/MainFragment;

    .line 141
    .line 142
    if-eqz v4, :cond_2

    .line 143
    .line 144
    move-object v3, v0

    .line 145
    check-cast v3, Lorg/wikipedia/main/MainFragment;

    .line 146
    .line 147
    :cond_2
    if-eqz v3, :cond_3

    .line 148
    .line 149
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 150
    .line 151
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    sget-object v9, Lorg/wikipedia/Constants$InvokeSource;->FEED:Lorg/wikipedia/Constants$InvokeSource;

    .line 160
    .line 161
    const/4 v11, 0x0

    .line 162
    const/4 v10, 0x1

    .line 163
    invoke-static/range {v5 .. v11}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->moveToList(Landroid/app/Activity;JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;ZLandroid/content/DialogInterface$OnDismissListener;)V

    .line 164
    .line 165
    .line 166
    :cond_3
    return-object v2

    .line 167
    :pswitch_1
    move-object/from16 v1, p1

    .line 168
    .line 169
    check-cast v1, Lorg/wikipedia/history/HistoryEntry;

    .line 170
    .line 171
    move-object/from16 v5, p2

    .line 172
    .line 173
    check-cast v5, Ljava/lang/Boolean;

    .line 174
    .line 175
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    iget-object v6, v0, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 183
    .line 184
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    sget-object v4, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 193
    .line 194
    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-static {v4}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->getPageData$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikimedia/testkitchen/context/PageData;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    const/4 v12, 0x0

    .line 203
    const/16 v13, 0xd0

    .line 204
    .line 205
    const-string v7, "click"

    .line 206
    .line 207
    const-string v9, "feed_item_overflow"

    .line 208
    .line 209
    const-string v10, "article_save"

    .line 210
    .line 211
    invoke-static/range {v6 .. v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 212
    .line 213
    .line 214
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 215
    .line 216
    instance-of v4, v0, Lorg/wikipedia/main/MainFragment;

    .line 217
    .line 218
    if-eqz v4, :cond_4

    .line 219
    .line 220
    check-cast v0, Lorg/wikipedia/main/MainFragment;

    .line 221
    .line 222
    goto :goto_0

    .line 223
    :cond_4
    move-object v0, v3

    .line 224
    :goto_0
    if-eqz v0, :cond_5

    .line 225
    .line 226
    sget-object v4, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 227
    .line 228
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    sget-object v4, Lorg/wikipedia/Constants$InvokeSource;->FEED:Lorg/wikipedia/Constants$InvokeSource;

    .line 237
    .line 238
    invoke-static {v0, v1, v5, v4, v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;)V

    .line 239
    .line 240
    .line 241
    :cond_5
    return-object v2

    .line 242
    nop

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

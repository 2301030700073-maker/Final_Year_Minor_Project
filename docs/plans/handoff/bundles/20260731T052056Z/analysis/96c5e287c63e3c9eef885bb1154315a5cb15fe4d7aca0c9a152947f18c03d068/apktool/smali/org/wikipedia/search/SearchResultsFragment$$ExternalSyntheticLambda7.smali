.class public final synthetic Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/search/SearchResultsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/search/SearchResultsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda7;->f$0:Lorg/wikipedia/search/SearchResultsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda7;->f$0:Lorg/wikipedia/search/SearchResultsFragment;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Lorg/wikipedia/search/SearchResult;

    .line 12
    .line 13
    check-cast p2, Ljava/lang/String;

    .line 14
    .line 15
    check-cast p3, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    if-eqz p3, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/wikipedia/search/SearchResultsFragment;->getViewModel()Lorg/wikipedia/search/SearchResultsViewModel;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 p3, 0x0

    .line 41
    invoke-virtual {p1, p3}, Lorg/wikipedia/search/SearchResultsViewModel;->getStandardEventActionContext(Lorg/wikipedia/search/SearchResult;)Lkotlin/collections/builders/MapBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    const/16 v10, 0x76

    .line 46
    .line 47
    const-string v4, "click"

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v6, 0x0

    .line 51
    const-string v7, "semantic_search_explicit"

    .line 52
    .line 53
    const/4 v8, 0x0

    .line 54
    invoke-static/range {v3 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-static {p3}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0}, Lorg/wikipedia/search/SearchResultsFragment;->getViewModel()Lorg/wikipedia/search/SearchResultsViewModel;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-virtual {p3, p1}, Lorg/wikipedia/search/SearchResultsViewModel;->getStandardEventActionContext(Lorg/wikipedia/search/SearchResult;)Lkotlin/collections/builders/MapBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    const/16 v10, 0x7e

    .line 77
    .line 78
    const-string v4, "search_result_click"

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    const/4 v6, 0x0

    .line 82
    const/4 v7, 0x0

    .line 83
    const/4 v8, 0x0

    .line 84
    invoke-static/range {v3 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/wikipedia/search/SearchResultsFragment;->callback()Lorg/wikipedia/search/SearchFragment;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    sget-object p3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 94
    .line 95
    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Lorg/wikipedia/search/SearchFragment;->switchToSearch(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    invoke-virtual {p0, v2}, Lorg/wikipedia/search/SearchResultsFragment;->setShowHybridSearch(Z)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    new-instance p2, Landroidx/paging/HintHandler;

    .line 128
    .line 129
    invoke-direct {p2, p1}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 130
    .line 131
    .line 132
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 133
    .line 134
    const/16 p3, 0x23

    .line 135
    .line 136
    if-lt p1, p3, :cond_3

    .line 137
    .line 138
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 139
    .line 140
    invoke-direct {p1, p0, p2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    const/16 p3, 0x1e

    .line 145
    .line 146
    if-lt p1, p3, :cond_4

    .line 147
    .line 148
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 149
    .line 150
    invoke-direct {p1, p0, p2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_4
    const/16 p3, 0x1a

    .line 155
    .line 156
    if-lt p1, p3, :cond_5

    .line 157
    .line 158
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 159
    .line 160
    invoke-direct {p1, p0, p2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_5
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 165
    .line 166
    invoke-direct {p1, p0, p2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 167
    .line 168
    .line 169
    :goto_1
    invoke-virtual {p1}, Lcoil3/util/UtilsKt;->hide()V

    .line 170
    .line 171
    .line 172
    return-object v1

    .line 173
    :pswitch_0
    move-object v3, p1

    .line 174
    check-cast v3, Landroid/view/View;

    .line 175
    .line 176
    check-cast p2, Lorg/wikipedia/search/SearchResult;

    .line 177
    .line 178
    check-cast p3, Ljava/lang/Integer;

    .line 179
    .line 180
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    new-instance p3, Lorg/wikipedia/history/HistoryEntry;

    .line 191
    .line 192
    iget-object p2, p2, Lorg/wikipedia/search/SearchResult;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 193
    .line 194
    invoke-direct {p3, v2, p2}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 195
    .line 196
    .line 197
    new-instance v2, Lorg/wikipedia/readinglist/LongPressMenu;

    .line 198
    .line 199
    new-instance v6, Lorg/wikipedia/search/SearchResultLongPressHandler;

    .line 200
    .line 201
    invoke-virtual {p0}, Lorg/wikipedia/search/SearchResultsFragment;->callback()Lorg/wikipedia/search/SearchFragment;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-direct {v6, p0, p1}, Lorg/wikipedia/search/SearchResultLongPressHandler;-><init>(Lorg/wikipedia/search/SearchFragment;I)V

    .line 206
    .line 207
    .line 208
    const/16 v7, 0x1e

    .line 209
    .line 210
    const/4 v4, 0x0

    .line 211
    const/4 v5, 0x0

    .line 212
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/readinglist/LongPressMenu;-><init>(Landroid/view/View;ILandroid/location/Location;Lorg/wikipedia/readinglist/LongPressMenu$Callback;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, p3}, Lorg/wikipedia/readinglist/LongPressMenu;->show(Lorg/wikipedia/history/HistoryEntry;)V

    .line 216
    .line 217
    .line 218
    return-object v1

    .line 219
    :pswitch_1
    move-object v4, p1

    .line 220
    check-cast v4, Landroid/view/View;

    .line 221
    .line 222
    check-cast p2, Lorg/wikipedia/search/SearchResult;

    .line 223
    .line 224
    check-cast p3, Ljava/lang/Integer;

    .line 225
    .line 226
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    new-instance p3, Lorg/wikipedia/history/HistoryEntry;

    .line 237
    .line 238
    iget-object p2, p2, Lorg/wikipedia/search/SearchResult;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 239
    .line 240
    invoke-direct {p3, v2, p2}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 241
    .line 242
    .line 243
    new-instance v3, Lorg/wikipedia/readinglist/LongPressMenu;

    .line 244
    .line 245
    new-instance v7, Lorg/wikipedia/search/SearchResultLongPressHandler;

    .line 246
    .line 247
    invoke-virtual {p0}, Lorg/wikipedia/search/SearchResultsFragment;->callback()Lorg/wikipedia/search/SearchFragment;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-direct {v7, p0, p1}, Lorg/wikipedia/search/SearchResultLongPressHandler;-><init>(Lorg/wikipedia/search/SearchFragment;I)V

    .line 252
    .line 253
    .line 254
    const/16 v8, 0x1e

    .line 255
    .line 256
    const/4 v5, 0x0

    .line 257
    const/4 v6, 0x0

    .line 258
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/readinglist/LongPressMenu;-><init>(Landroid/view/View;ILandroid/location/Location;Lorg/wikipedia/readinglist/LongPressMenu$Callback;I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3, p3}, Lorg/wikipedia/readinglist/LongPressMenu;->show(Lorg/wikipedia/history/HistoryEntry;)V

    .line 262
    .line 263
    .line 264
    return-object v1

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

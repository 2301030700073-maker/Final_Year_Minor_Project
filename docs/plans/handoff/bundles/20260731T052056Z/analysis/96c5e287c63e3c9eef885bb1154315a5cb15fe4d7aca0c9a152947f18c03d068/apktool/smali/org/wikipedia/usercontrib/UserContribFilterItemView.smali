.class public final Lorg/wikipedia/usercontrib/UserContribFilterItemView;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;

.field public callback:Lorg/wikipedia/usercontrib/UserContribFilterItemView$Callback;

.field public item:Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const v2, 0x7f0c0320

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const v1, 0x7f090302

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v5, v2

    .line 23
    check-cast v5, Landroid/widget/ImageView;

    .line 24
    .line 25
    if-eqz v5, :cond_2

    .line 26
    .line 27
    const v1, 0x7f090308

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    move-object v6, v2

    .line 35
    check-cast v6, Landroid/widget/ImageView;

    .line 36
    .line 37
    if-eqz v6, :cond_2

    .line 38
    .line 39
    const v1, 0x7f090313

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    move-object v7, v2

    .line 47
    check-cast v7, Landroid/widget/TextView;

    .line 48
    .line 49
    if-eqz v7, :cond_2

    .line 50
    .line 51
    const v1, 0x7f090320

    .line 52
    .line 53
    .line 54
    invoke-static {p0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    move-object v8, v2

    .line 59
    check-cast v8, Lorg/wikipedia/views/LangCodeView;

    .line 60
    .line 61
    if-eqz v8, :cond_2

    .line 62
    .line 63
    new-instance v3, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;

    .line 64
    .line 65
    move-object v4, p0

    .line 66
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;-><init>(Lorg/wikipedia/usercontrib/UserContribFilterItemView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/wikipedia/views/LangCodeView;)V

    .line 67
    .line 68
    .line 69
    iput-object v3, v4, Lorg/wikipedia/usercontrib/UserContribFilterItemView;->binding:Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;

    .line 70
    .line 71
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    .line 72
    .line 73
    const/high16 v1, 0x42400000    # 48.0f

    .line 74
    .line 75
    invoke-static {v1}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const/4 v2, -0x1

    .line 80
    invoke-direct {p0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .line 85
    .line 86
    new-instance p0, Landroid/util/TypedValue;

    .line 87
    .line 88
    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const/4 v1, 0x1

    .line 96
    const v2, 0x7f040554

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v2, p0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_0

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    move-object p0, v0

    .line 107
    :goto_0
    if-eqz p0, :cond_1

    .line 108
    .line 109
    iget p0, p0, Landroid/util/TypedValue;->resourceId:I

    .line 110
    .line 111
    invoke-virtual {v4, p0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 112
    .line 113
    .line 114
    new-instance p0, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;

    .line 115
    .line 116
    const/16 p1, 0x1b

    .line 117
    .line 118
    invoke-direct {p0, p1, v4}, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_1
    const-string p0, "Attribute not found; ID=2130969940"

    .line 126
    .line 127
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v0

    .line 131
    :cond_2
    move-object v4, p0

    .line 132
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    const-string p1, "Missing required view with ID: "

    .line 141
    .line 142
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v0
.end method


# virtual methods
.method public final getCallback()Lorg/wikipedia/usercontrib/UserContribFilterItemView$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribFilterItemView;->callback:Lorg/wikipedia/usercontrib/UserContribFilterItemView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setCallback(Lorg/wikipedia/usercontrib/UserContribFilterItemView$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/usercontrib/UserContribFilterItemView;->callback:Lorg/wikipedia/usercontrib/UserContribFilterItemView$Callback;

    .line 2
    .line 3
    return-void
.end method

.method public final setContents(Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;->type:I

    .line 5
    .line 6
    iput-object p1, p0, Lorg/wikipedia/usercontrib/UserContribFilterItemView;->item:Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribFilterItemView;->binding:Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterTitle:Landroid/widget/TextView;

    .line 11
    .line 12
    iget-object v2, p0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterWikiLogo:Landroid/widget/ImageView;

    .line 13
    .line 14
    iget-object v3, p0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterLanguageCode:Lorg/wikipedia/views/LangCodeView;

    .line 15
    .line 16
    iget-object p0, p0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterCheck:Landroid/widget/ImageView;

    .line 17
    .line 18
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 19
    .line 20
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget-object v5, p1, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;->filterCode:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const-string v6, "commons"

    .line 37
    .line 38
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    const-string/jumbo v8, "wikidata"

    .line 43
    .line 44
    .line 45
    if-eqz v7, :cond_1

    .line 46
    .line 47
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iget-object v4, v4, Lorg/wikipedia/WikipediaApp;->activityLifecycleHandler:Lorg/wikipedia/ActivityLifecycleHandler;

    .line 52
    .line 53
    iget-object v4, v4, Lorg/wikipedia/ActivityLifecycleHandler;->currentActivity:Landroid/app/Activity;

    .line 54
    .line 55
    if-nez v4, :cond_0

    .line 56
    .line 57
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    :cond_0
    const v7, 0x7f120a73

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_3

    .line 77
    .line 78
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    iget-object v4, v4, Lorg/wikipedia/WikipediaApp;->activityLifecycleHandler:Lorg/wikipedia/ActivityLifecycleHandler;

    .line 83
    .line 84
    iget-object v4, v4, Lorg/wikipedia/ActivityLifecycleHandler;->currentActivity:Landroid/app/Activity;

    .line 85
    .line 86
    if-nez v4, :cond_2

    .line 87
    .line 88
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    :cond_2
    const v7, 0x7f120a49

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {v4, v5}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    if-nez v4, :cond_4

    .line 108
    .line 109
    const-string v4, ""

    .line 110
    .line 111
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    if-nez v7, :cond_5

    .line 116
    .line 117
    move-object v4, v5

    .line 118
    :cond_5
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p1, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;->this$0:Lorg/wikipedia/usercontrib/UserContribFilterActivity;

    .line 122
    .line 123
    const/4 v4, 0x0

    .line 124
    const/4 v7, 0x0

    .line 125
    if-nez v0, :cond_6

    .line 126
    .line 127
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 128
    .line 129
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getUserContribFilterLangCode()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    goto :goto_2

    .line 138
    :cond_6
    sget-object v9, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 139
    .line 140
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getUserContribFilterExcludedNs()Ljava/util/Set;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    const v10, 0x7f1209d7

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    invoke-virtual {v5, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    const/4 v11, 0x1

    .line 156
    if-eqz v10, :cond_a

    .line 157
    .line 158
    sget-object v1, Lorg/wikipedia/usercontrib/UserContribFilterActivity;->NAMESPACE_LIST:Ljava/util/List;

    .line 159
    .line 160
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    if-eqz v10, :cond_8

    .line 169
    .line 170
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    move-object v12, v10

    .line 175
    check-cast v12, Ljava/lang/Number;

    .line 176
    .line 177
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result v12

    .line 181
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v12

    .line 185
    invoke-interface {v9, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v12

    .line 189
    if-eqz v12, :cond_7

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_8
    move-object v10, v4

    .line 193
    :goto_1
    if-nez v10, :cond_9

    .line 194
    .line 195
    move v1, v11

    .line 196
    goto :goto_2

    .line 197
    :cond_9
    move v1, v7

    .line 198
    goto :goto_2

    .line 199
    :cond_a
    invoke-virtual {v1, v5}, Lorg/wikipedia/usercontrib/UserContribFilterActivity;->getNamespaceCode(Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-interface {v9, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    xor-int/2addr v1, v11

    .line 212
    :goto_2
    const/16 v9, 0x8

    .line 213
    .line 214
    if-eqz v1, :cond_b

    .line 215
    .line 216
    move v1, v7

    .line 217
    goto :goto_3

    .line 218
    :cond_b
    move v1, v9

    .line 219
    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    .line 221
    .line 222
    if-nez v0, :cond_f

    .line 223
    .line 224
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-nez v0, :cond_c

    .line 229
    .line 230
    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_d

    .line 235
    .line 236
    :cond_c
    move-object v5, v4

    .line 237
    :cond_d
    if-eqz v5, :cond_e

    .line 238
    .line 239
    invoke-virtual {v3, v5}, Lorg/wikipedia/views/LangCodeView;->setLangCode(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_e
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 244
    .line 245
    .line 246
    :goto_4
    const v0, 0x7f080125

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_f
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 254
    .line 255
    .line 256
    const v0, 0x7f08013a

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    .line 261
    .line 262
    :goto_5
    iget-object p0, p1, Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;->imageRes:Ljava/lang/Integer;

    .line 263
    .line 264
    if-eqz p0, :cond_10

    .line 265
    .line 266
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 267
    .line 268
    .line 269
    move-result p0

    .line 270
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :cond_10
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 278
    .line 279
    .line 280
    move-result p0

    .line 281
    if-nez p0, :cond_11

    .line 282
    .line 283
    goto :goto_6

    .line 284
    :cond_11
    const/4 v9, 0x4

    .line 285
    :goto_6
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    .line 287
    .line 288
    return-void
.end method

.method public final setSingleLabel(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/usercontrib/UserContribFilterItemView;->binding:Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;

    .line 5
    .line 6
    iget-object v1, v0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterLanguageCode:Lorg/wikipedia/views/LangCodeView;

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterWikiLogo:Landroid/widget/ImageView;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    const v4, 0x7f0801a4

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    .line 24
    .line 25
    iget-object v4, v0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterCheck:Landroid/widget/ImageView;

    .line 26
    .line 27
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterTitle:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const v4, 0x7f040520

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v4}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    const-string p1, "sans-serif-medium"

    .line 53
    .line 54
    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-static {p0, v4}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

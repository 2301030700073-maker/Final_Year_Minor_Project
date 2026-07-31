.class public final Lorg/wikipedia/watchlist/WatchlistFilterItemView;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;

.field public callback:Lorg/wikipedia/watchlist/WatchlistFilterItemView$Callback;

.field public filter:Lorg/wikipedia/watchlist/WatchlistFilterActivity$Filter;


# direct methods
.method public constructor <init>(Lorg/wikipedia/watchlist/WatchlistFilterActivity;)V
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
    const v2, 0x7f0c0323

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const v1, 0x7f090763

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
    if-eqz v5, :cond_0

    .line 26
    .line 27
    const v1, 0x7f090764

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
    check-cast v6, Lorg/wikipedia/views/LangCodeView;

    .line 36
    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    const v1, 0x7f090765

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
    if-eqz v7, :cond_0

    .line 50
    .line 51
    const v1, 0x7f090766

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
    check-cast v8, Landroid/widget/ImageView;

    .line 60
    .line 61
    if-eqz v8, :cond_0

    .line 62
    .line 63
    new-instance v3, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;

    .line 64
    .line 65
    move-object v4, p0

    .line 66
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lorg/wikipedia/views/LangCodeView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 67
    .line 68
    .line 69
    iput-object v3, v4, Lorg/wikipedia/watchlist/WatchlistFilterItemView;->binding:Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;

    .line 70
    .line 71
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    .line 72
    .line 73
    const/high16 v0, 0x42400000    # 48.0f

    .line 74
    .line 75
    invoke-static {v0}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const/4 v1, -0x1

    .line 80
    invoke-direct {p0, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .line 85
    .line 86
    const p0, 0x7f0404e7

    .line 87
    .line 88
    .line 89
    invoke-static {p1, p0}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    invoke-virtual {v4, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 94
    .line 95
    .line 96
    const p0, 0x7f040554

    .line 97
    .line 98
    .line 99
    invoke-static {p1, p0}, Lokhttp3/Cache$Companion;->getThemedAttributeId(Landroid/content/Context;I)I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    invoke-static {p1, p0}, Lkotlin/TuplesKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {v4, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    .line 109
    .line 110
    new-instance p0, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    const/16 p1, 0x8

    .line 113
    .line 114
    invoke-direct {p0, p1, v4}, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_0
    move-object v4, p0

    .line 122
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const-string p1, "Missing required view with ID: "

    .line 131
    .line 132
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0
.end method


# virtual methods
.method public final getCallback()Lorg/wikipedia/watchlist/WatchlistFilterItemView$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistFilterItemView;->callback:Lorg/wikipedia/watchlist/WatchlistFilterItemView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setCallback(Lorg/wikipedia/watchlist/WatchlistFilterItemView$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/watchlist/WatchlistFilterItemView;->callback:Lorg/wikipedia/watchlist/WatchlistFilterItemView$Callback;

    .line 2
    .line 3
    return-void
.end method

.method public final setContents(Lorg/wikipedia/watchlist/WatchlistFilterActivity$Filter;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/watchlist/WatchlistFilterItemView;->filter:Lorg/wikipedia/watchlist/WatchlistFilterActivity$Filter;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/wikipedia/watchlist/WatchlistFilterItemView;->binding:Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;

    .line 7
    .line 8
    iget-object v1, v0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterTitle:Landroid/widget/TextView;

    .line 9
    .line 10
    iget-object v2, v0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterLanguageCode:Lorg/wikipedia/views/LangCodeView;

    .line 11
    .line 12
    iget-object v3, v0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterCheck:Landroid/widget/ImageView;

    .line 13
    .line 14
    iget v4, p1, Lorg/wikipedia/watchlist/WatchlistFilterActivity$Filter;->type:I

    .line 15
    .line 16
    iget-object v5, p1, Lorg/wikipedia/watchlist/WatchlistFilterActivity$Filter;->filterCode:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    if-ne v4, v6, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    sget-object v8, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->Companion:Lorg/wikipedia/watchlist/WatchlistFilterTypes$Companion;

    .line 26
    .line 27
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {v5}, Lorg/wikipedia/watchlist/WatchlistFilterTypes$Companion;->find(Ljava/lang/String;)Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    invoke-virtual {v8}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getTitle()I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    const v8, 0x7f120482

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_1

    .line 62
    .line 63
    move-object v7, v5

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    sget-object v7, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 66
    .line 67
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v7}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v7, v5}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    if-nez v7, :cond_2

    .line 80
    .line 81
    const-string v7, ""

    .line 82
    .line 83
    :cond_2
    :goto_0
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 87
    .line 88
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getWatchlistExcludedWikiCodes()Ljava/util/Set;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-object v7, p1, Lorg/wikipedia/watchlist/WatchlistFilterActivity$Filter;->this$0:Lorg/wikipedia/watchlist/WatchlistFilterActivity;

    .line 93
    .line 94
    const v8, 0x7f120a09

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    const/4 v9, 0x0

    .line 106
    const/4 v10, 0x0

    .line 107
    if-eqz v7, :cond_6

    .line 108
    .line 109
    if-nez v4, :cond_6

    .line 110
    .line 111
    sget-object v7, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 112
    .line 113
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    check-cast v7, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    if-eqz v11, :cond_4

    .line 128
    .line 129
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    move-object v12, v11

    .line 134
    check-cast v12, Ljava/lang/String;

    .line 135
    .line 136
    invoke-interface {v1, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    if-eqz v12, :cond_3

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_4
    move-object v11, v9

    .line 144
    :goto_1
    if-nez v11, :cond_5

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_5
    move v6, v10

    .line 148
    goto :goto_2

    .line 149
    :cond_6
    if-nez v4, :cond_7

    .line 150
    .line 151
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-nez v1, :cond_5

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_7
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getWatchlistIncludedTypeCodes()Ljava/util/Collection;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-interface {v1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    :goto_2
    const/16 v1, 0x8

    .line 167
    .line 168
    if-eqz v6, :cond_8

    .line 169
    .line 170
    move v6, v10

    .line 171
    goto :goto_3

    .line 172
    :cond_8
    move v6, v1

    .line 173
    :goto_3
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    iget-boolean p1, p1, Lorg/wikipedia/watchlist/WatchlistFilterActivity$Filter;->isCheckBox:Z

    .line 177
    .line 178
    if-eqz p1, :cond_9

    .line 179
    .line 180
    const p1, 0x7f08013a

    .line 181
    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_9
    const p1, 0x7f080125

    .line 185
    .line 186
    .line 187
    :goto_4
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    if-nez p0, :cond_a

    .line 203
    .line 204
    if-nez v4, :cond_a

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_a
    move-object v5, v9

    .line 208
    :goto_5
    if-eqz v5, :cond_b

    .line 209
    .line 210
    invoke-virtual {v2, v5}, Lorg/wikipedia/views/LangCodeView;->setLangCode(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_b
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    :goto_6
    iget-object p0, v0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterWikiLogo:Landroid/widget/ImageView;

    .line 221
    .line 222
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    .line 224
    .line 225
    return-void
.end method

.method public final setSingleLabel(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const v1, 0x7f040520

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistFilterItemView;->binding:Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;

    .line 19
    .line 20
    iget-object v1, p0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterLanguageCode:Lorg/wikipedia/views/LangCodeView;

    .line 21
    .line 22
    const/16 v2, 0x8

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterWikiLogo:Landroid/widget/ImageView;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 34
    .line 35
    .line 36
    const v4, 0x7f0801a4

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterCheck:Landroid/widget/ImageView;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterTitle:Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    const-string p1, "sans-serif-medium"

    .line 56
    .line 57
    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x2

    .line 65
    const/high16 v0, 0x41800000    # 16.0f

    .line 66
    .line 67
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

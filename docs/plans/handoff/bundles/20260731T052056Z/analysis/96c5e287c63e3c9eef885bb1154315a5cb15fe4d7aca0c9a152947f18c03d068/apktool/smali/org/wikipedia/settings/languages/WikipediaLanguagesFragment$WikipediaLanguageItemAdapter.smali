.class public final Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public checkboxEnabled:Z

.field public final synthetic this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->wikipediaLanguages:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    add-int/lit8 p0, p0, 0x2

    .line 10
    .line 11
    return p0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->getItemCount()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x1

    .line 10
    sub-int/2addr p0, v0

    .line 11
    if-ne p1, p0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x2

    .line 14
    return p0

    .line 15
    :cond_1
    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 1
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    .line 2
    .line 3
    instance-of v0, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    check-cast p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;

    .line 8
    .line 9
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10
    .line 11
    iget-object v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    .line 12
    .line 13
    iget-object v2, v1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->wikipediaLanguages:Ljava/util/ArrayList;

    .line 14
    .line 15
    add-int/lit8 v3, p2, -0x1

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    check-cast v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

    .line 30
    .line 31
    iget-object p1, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    .line 32
    .line 33
    iget-object p1, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 34
    .line 35
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1, v4}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput v3, v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->position:I

    .line 44
    .line 45
    iget-object v5, v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->binding:Lretrofit2/Retrofit;

    .line 46
    .line 47
    iget-object v6, v5, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v6, Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    iget-object v6, v5, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v6, Landroid/widget/TextView;

    .line 61
    .line 62
    sget-object v7, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 63
    .line 64
    if-nez p1, :cond_0

    .line 65
    .line 66
    const-string p1, ""

    .line 67
    .line 68
    :cond_0
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 76
    .line 77
    .line 78
    iget-object p1, v5, Lretrofit2/Retrofit;->callFactory:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Lorg/wikipedia/views/LangCodeView;

    .line 81
    .line 82
    invoke-virtual {p1, v4}, Lorg/wikipedia/views/LangCodeView;->setLangCode(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-boolean p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->checkboxEnabled:Z

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->setCheckBoxEnabled(Z)V

    .line 88
    .line 89
    .line 90
    iget-object p1, v1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->selectedCodes:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-virtual {v0, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->setCheckBoxChecked(Z)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    const/4 v2, 0x1

    .line 108
    if-le p1, v2, :cond_1

    .line 109
    .line 110
    iget-boolean p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->checkboxEnabled:Z

    .line 111
    .line 112
    if-nez p0, :cond_1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_1
    const/4 v2, 0x0

    .line 116
    :goto_0
    invoke-virtual {v0, v2}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->setDragHandleEnabled(Z)V

    .line 117
    .line 118
    .line 119
    new-instance p0, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda0;

    .line 120
    .line 121
    const/4 p1, 0x2

    .line 122
    invoke-direct {p0, p2, p1, v1}, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    :cond_2
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p2, v1, :cond_1

    .line 6
    .line 7
    new-instance p2, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;

    .line 8
    .line 9
    new-instance v2, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const v1, 0x7f0c0325

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    const p1, 0x7f090775

    .line 33
    .line 34
    .line 35
    invoke-static {v2, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    move-object v3, v1

    .line 40
    check-cast v3, Landroid/widget/CheckBox;

    .line 41
    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    const p1, 0x7f090776

    .line 45
    .line 46
    .line 47
    invoke-static {v2, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    move-object v4, v1

    .line 52
    check-cast v4, Lorg/wikipedia/views/LangCodeView;

    .line 53
    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    const p1, 0x7f090777

    .line 57
    .line 58
    .line 59
    invoke-static {v2, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    move-object v5, v1

    .line 64
    check-cast v5, Landroid/widget/ImageView;

    .line 65
    .line 66
    if-eqz v5, :cond_0

    .line 67
    .line 68
    const p1, 0x7f090778

    .line 69
    .line 70
    .line 71
    invoke-static {v2, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    move-object v6, v1

    .line 76
    check-cast v6, Landroid/widget/TextView;

    .line 77
    .line 78
    if-eqz v6, :cond_0

    .line 79
    .line 80
    const p1, 0x7f090779

    .line 81
    .line 82
    .line 83
    invoke-static {v2, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    move-object v7, v1

    .line 88
    check-cast v7, Landroid/widget/TextView;

    .line 89
    .line 90
    if-eqz v7, :cond_0

    .line 91
    .line 92
    new-instance v1, Lretrofit2/Retrofit;

    .line 93
    .line 94
    invoke-direct/range {v1 .. v7}, Lretrofit2/Retrofit;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    iput-object v1, v2, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->binding:Lretrofit2/Retrofit;

    .line 98
    .line 99
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 100
    .line 101
    const/4 v1, -0x1

    .line 102
    const/4 v4, -0x2

    .line 103
    invoke-direct {p1, v1, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    const p1, 0x7f0700b4

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Lokio/Okio__OkioKt;->getDimension(I)F

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    invoke-static {p1}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-virtual {v2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    const v1, 0x7f0404e7

    .line 131
    .line 132
    .line 133
    invoke-static {p1, v1}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    const v4, 0x7f040554

    .line 152
    .line 153
    .line 154
    invoke-static {v1, v4}, Lokhttp3/Cache$Companion;->getThemedAttributeId(Landroid/content/Context;I)I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    invoke-static {p1, v1}, Lkotlin/TuplesKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {v2, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    .line 164
    .line 165
    new-instance p1, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;

    .line 166
    .line 167
    const/4 v1, 0x4

    .line 168
    invoke-direct {p1, v1, v2}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 172
    .line 173
    .line 174
    new-instance p1, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;

    .line 175
    .line 176
    const/4 v1, 0x6

    .line 177
    invoke-direct {p1, v1, v2}, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 181
    .line 182
    .line 183
    const/4 p1, 0x1

    .line 184
    new-array p1, p1, [Landroid/view/View;

    .line 185
    .line 186
    aput-object v2, p1, v0

    .line 187
    .line 188
    aget-object p1, p1, v0

    .line 189
    .line 190
    new-instance v0, Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda0;

    .line 191
    .line 192
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 196
    .line 197
    .line 198
    iget-object p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    .line 199
    .line 200
    invoke-direct {p2, p0, v2}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;-><init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;)V

    .line 201
    .line 202
    .line 203
    return-object p2

    .line 204
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    const-string p1, "Missing required view with ID: "

    .line 213
    .line 214
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const/4 p0, 0x0

    .line 222
    return-object p0

    .line 223
    :cond_1
    new-instance p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$FooterViewHolder;

    .line 224
    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    const v1, 0x7f0c05ff

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 244
    .line 245
    .line 246
    return-object p0

    .line 247
    :cond_2
    new-instance p0, Lorg/wikipedia/page/customize/CustomizeToolbarFragment$DescriptionViewHolder;

    .line 248
    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    const v1, 0x7f0c05f2

    .line 258
    .line 259
    .line 260
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 268
    .line 269
    .line 270
    const p2, 0x7f0905df

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    check-cast p1, Landroid/widget/TextView;

    .line 278
    .line 279
    const p2, 0x7f120a7f

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 283
    .line 284
    .line 285
    return-object p0
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 1
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    .line 2
    .line 3
    instance-of v0, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object p0, p1

    .line 10
    check-cast p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    check-cast p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

    .line 18
    .line 19
    new-instance v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-direct {v0, v1, p1, v2}, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/Fragment;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->setDragHandleTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->setCallback(Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView$Callback;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$FooterViewHolder;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    check-cast p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$FooterViewHolder;

    .line 37
    .line 38
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-boolean p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->checkboxEnabled:Z

    .line 44
    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    const/16 p0, 0x8

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p0, 0x0

    .line 51
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    new-instance p0, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;

    .line 55
    .line 56
    const/16 v0, 0x14

    .line 57
    .line 58
    invoke-direct {p0, v0, v1}, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    .line 2
    .line 3
    instance-of p0, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;

    .line 8
    .line 9
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    check-cast p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->setCallback(Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView$Callback;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->setDragHandleTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

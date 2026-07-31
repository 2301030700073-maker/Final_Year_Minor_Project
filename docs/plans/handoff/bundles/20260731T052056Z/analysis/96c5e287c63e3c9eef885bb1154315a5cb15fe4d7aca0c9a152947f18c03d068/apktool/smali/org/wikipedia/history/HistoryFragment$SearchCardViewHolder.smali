.class public final Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final clearHistoryButton:Landroid/widget/ImageView;

.field public final historyFilterButton:Landroid/widget/ImageView;

.field public final synthetic this$0:Lorg/wikipedia/history/HistoryFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/history/HistoryFragment;Landroid/view/View;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->this$0:Lorg/wikipedia/history/HistoryFragment;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0905be

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lorg/wikipedia/views/WikiCardView;

    .line 14
    .line 15
    const v1, 0x7f090752

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const v2, 0x7f0902a6

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    check-cast v2, Landroid/widget/ImageView;

    .line 33
    .line 34
    iput-object v2, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->historyFilterButton:Landroid/widget/ImageView;

    .line 35
    .line 36
    const v3, 0x7f0902a1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    check-cast p2, Landroid/widget/ImageView;

    .line 47
    .line 48
    iput-object p2, p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->clearHistoryButton:Landroid/widget/ImageView;

    .line 49
    .line 50
    new-instance p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-direct {p0, p1, v3}, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/history/HistoryFragment;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 63
    .line 64
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    iget-object p0, p0, Lorg/wikipedia/WikipediaApp;->voiceRecognitionAvailable$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 69
    .line 70
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_0

    .line 81
    .line 82
    move p0, v3

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    const/16 p0, 0x8

    .line 85
    .line 86
    :goto_0
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    new-instance p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder$$ExternalSyntheticLambda0;

    .line 90
    .line 91
    const/4 v4, 0x1

    .line 92
    invoke-direct {p0, p1, v4}, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/history/HistoryFragment;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    new-instance p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    const/4 v1, 0x2

    .line 101
    invoke-direct {p0, p1, v1}, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/history/HistoryFragment;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    new-instance p0, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder$$ExternalSyntheticLambda0;

    .line 108
    .line 109
    const/4 v5, 0x3

    .line 110
    invoke-direct {p0, p1, v5}, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/history/HistoryFragment;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    new-array p0, v1, [Landroid/view/View;

    .line 117
    .line 118
    aput-object v2, p0, v3

    .line 119
    .line 120
    aput-object p2, p0, v4

    .line 121
    .line 122
    move p2, v3

    .line 123
    :goto_1
    if-ge p2, v1, :cond_1

    .line 124
    .line 125
    aget-object v2, p0, p2

    .line 126
    .line 127
    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-static {v2, v5}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    add-int/lit8 p2, p2, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_1
    new-instance p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 138
    .line 139
    const/16 p2, 0x17

    .line 140
    .line 141
    invoke-direct {p0, p2, p1, v0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    new-instance p2, Landroid/util/TypedValue;

    .line 152
    .line 153
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    const v1, 0x7f040061

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v1, p2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    const/4 v1, 0x0

    .line 168
    if-eqz p0, :cond_2

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_2
    move-object p2, v1

    .line 172
    :goto_2
    if-eqz p2, :cond_6

    .line 173
    .line 174
    iget p0, p2, Landroid/util/TypedValue;->data:I

    .line 175
    .line 176
    invoke-virtual {v0, p0}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 177
    .line 178
    .line 179
    const p0, 0x7f0905c8

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    check-cast p0, Landroid/widget/ImageView;

    .line 190
    .line 191
    const p2, 0x7f0905d3

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    check-cast p2, Landroid/widget/TextView;

    .line 202
    .line 203
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 204
    .line 205
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isHybridSearchOnboardingShown()Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_3

    .line 210
    .line 211
    new-instance v0, Lorg/wikipedia/search/HybridSearchAbCTest;

    .line 212
    .line 213
    invoke-direct {v0}, Lorg/wikipedia/search/HybridSearchAbCTest;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Lorg/wikipedia/search/HybridSearchAbCTest;->isHybridSearchEnabled(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_3

    .line 229
    .line 230
    move v3, v4

    .line 231
    :cond_3
    const v0, 0x7f120844

    .line 232
    .line 233
    .line 234
    const v1, 0x7f1202e7

    .line 235
    .line 236
    .line 237
    if-eqz v3, :cond_4

    .line 238
    .line 239
    move v2, v1

    .line 240
    goto :goto_3

    .line 241
    :cond_4
    move v2, v0

    .line 242
    :goto_3
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 247
    .line 248
    .line 249
    if-eqz v3, :cond_5

    .line 250
    .line 251
    move v0, v1

    .line 252
    :cond_5
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :cond_6
    const-string p0, "Attribute not found; ID=2130968673"

    .line 261
    .line 262
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw v1
.end method

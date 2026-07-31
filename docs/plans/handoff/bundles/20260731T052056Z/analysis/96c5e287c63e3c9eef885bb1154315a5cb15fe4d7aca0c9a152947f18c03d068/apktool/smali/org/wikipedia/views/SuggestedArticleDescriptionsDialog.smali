.class public final Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;
.super Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final availableLanguages:Ljava/util/List;


# instance fields
.field public final analyticsHelper:Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;

.field public final binding:Lretrofit2/OkHttpCall$1;

.field public dialog:Landroidx/appcompat/app/AlertDialog;

.field public final pageTitle:Lorg/wikipedia/page/PageTitle;

.field public suggestionChosen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    const-string v23, "gu"

    .line 2
    .line 3
    const-string v24, "my"

    .line 4
    .line 5
    const-string v1, "ru"

    .line 6
    .line 7
    const-string/jumbo v2, "vi"

    .line 8
    .line 9
    .line 10
    const-string v3, "ja"

    .line 11
    .line 12
    const-string v4, "de"

    .line 13
    .line 14
    const-string v5, "ro"

    .line 15
    .line 16
    const-string v6, "fr"

    .line 17
    .line 18
    const-string v7, "fi"

    .line 19
    .line 20
    const-string v8, "ko"

    .line 21
    .line 22
    const-string v9, "es"

    .line 23
    .line 24
    const-string/jumbo v10, "zh"

    .line 25
    .line 26
    .line 27
    const-string v11, "it"

    .line 28
    .line 29
    const-string v12, "nl"

    .line 30
    .line 31
    const-string v13, "ar"

    .line 32
    .line 33
    const-string/jumbo v14, "tr"

    .line 34
    .line 35
    .line 36
    const-string v15, "hi"

    .line 37
    .line 38
    const-string v16, "cs"

    .line 39
    .line 40
    const-string v17, "lt"

    .line 41
    .line 42
    const-string v18, "lv"

    .line 43
    .line 44
    const-string v19, "kk"

    .line 45
    .line 46
    const-string v20, "et"

    .line 47
    .line 48
    const-string v21, "ni"

    .line 49
    .line 50
    const-string v22, "si"

    .line 51
    .line 52
    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sput-object v0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->availableLanguages:Ljava/util/List;

    .line 61
    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p6

    .line 8
    .line 9
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct {v0, v1, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    move-object/from16 v5, p4

    .line 20
    .line 21
    iput-object v5, v0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 22
    .line 23
    move-object/from16 v5, p5

    .line 24
    .line 25
    iput-object v5, v0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->analyticsHelper:Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const v6, 0x7f0c0175

    .line 32
    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    invoke-virtual {v5, v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const v6, 0x7f090155

    .line 40
    .line 41
    .line 42
    invoke-static {v5, v6}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    move-object v11, v8

    .line 47
    check-cast v11, Landroidx/appcompat/widget/AppCompatImageView;

    .line 48
    .line 49
    if-eqz v11, :cond_2

    .line 50
    .line 51
    const v6, 0x7f0901a6

    .line 52
    .line 53
    .line 54
    invoke-static {v5, v6}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    check-cast v8, Landroid/widget/LinearLayout;

    .line 59
    .line 60
    if-eqz v8, :cond_2

    .line 61
    .line 62
    const v6, 0x7f090254

    .line 63
    .line 64
    .line 65
    invoke-static {v5, v6}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    move-object v12, v8

    .line 70
    check-cast v12, Landroid/widget/TextView;

    .line 71
    .line 72
    if-eqz v12, :cond_2

    .line 73
    .line 74
    const v6, 0x7f090255

    .line 75
    .line 76
    .line 77
    invoke-static {v5, v6}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    move-object v13, v8

    .line 82
    check-cast v13, Landroidx/appcompat/widget/AppCompatImageView;

    .line 83
    .line 84
    if-eqz v13, :cond_2

    .line 85
    .line 86
    const v6, 0x7f0905d6

    .line 87
    .line 88
    .line 89
    invoke-static {v5, v6}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    move-object v14, v8

    .line 94
    check-cast v14, Landroid/widget/TextView;

    .line 95
    .line 96
    if-eqz v14, :cond_2

    .line 97
    .line 98
    const v6, 0x7f0905d7

    .line 99
    .line 100
    .line 101
    invoke-static {v5, v6}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    move-object v15, v8

    .line 106
    check-cast v15, Landroidx/appcompat/widget/AppCompatImageView;

    .line 107
    .line 108
    if-eqz v15, :cond_2

    .line 109
    .line 110
    const v6, 0x7f0905d8

    .line 111
    .line 112
    .line 113
    invoke-static {v5, v6}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    move-object/from16 v16, v8

    .line 118
    .line 119
    check-cast v16, Landroid/widget/LinearLayout;

    .line 120
    .line 121
    if-eqz v16, :cond_2

    .line 122
    .line 123
    new-instance v9, Lretrofit2/OkHttpCall$1;

    .line 124
    .line 125
    move-object v10, v5

    .line 126
    check-cast v10, Landroid/widget/ScrollView;

    .line 127
    .line 128
    invoke-direct/range {v9 .. v16}, Lretrofit2/OkHttpCall$1;-><init>(Landroid/widget/ScrollView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;)V

    .line 129
    .line 130
    .line 131
    move-object/from16 v8, v16

    .line 132
    .line 133
    iput-object v9, v0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->binding:Lretrofit2/OkHttpCall$1;

    .line 134
    .line 135
    iget-object v5, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v5, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 138
    .line 139
    iput-object v10, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 140
    .line 141
    move-object/from16 v5, p2

    .line 142
    .line 143
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    if-eqz v2, :cond_0

    .line 147
    .line 148
    move v5, v4

    .line 149
    goto :goto_0

    .line 150
    :cond_0
    const/16 v5, 0x8

    .line 151
    .line 152
    :goto_0
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    if-eqz v2, :cond_1

    .line 156
    .line 157
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    :cond_1
    new-instance v2, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;

    .line 161
    .line 162
    const/4 v5, 0x5

    .line 163
    invoke-direct {v2, v5, v0}, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    .line 168
    .line 169
    new-instance v2, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda1;

    .line 170
    .line 171
    invoke-direct {v2, v3, v0, v4}, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda1;-><init>(Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v12, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    .line 176
    .line 177
    new-instance v2, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda1;

    .line 178
    .line 179
    const/4 v5, 0x1

    .line 180
    invoke-direct {v2, v3, v0, v5}, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda1;-><init>(Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v14, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    new-instance v2, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda3;

    .line 187
    .line 188
    invoke-direct {v2, v1, v0, v4}, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v13, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    .line 193
    .line 194
    new-instance v2, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda3;

    .line 195
    .line 196
    invoke-direct {v2, v1, v0, v5}, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v15, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    .line 201
    .line 202
    new-instance v1, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5;

    .line 203
    .line 204
    invoke-direct {v1, v4, v0}, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    iget-object v0, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v0, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 210
    .line 211
    iput-object v1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 212
    .line 213
    return-void

    .line 214
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    const-string v1, "Missing required view with ID: "

    .line 223
    .line 224
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v7
.end method


# virtual methods
.method public final show()Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 1
    invoke-super {p0}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 6
    .line 7
    return-object v0
.end method

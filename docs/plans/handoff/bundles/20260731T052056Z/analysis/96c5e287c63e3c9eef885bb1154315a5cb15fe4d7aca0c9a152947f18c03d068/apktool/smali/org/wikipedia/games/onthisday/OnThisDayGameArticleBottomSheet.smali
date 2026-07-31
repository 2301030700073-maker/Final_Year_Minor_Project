.class public final Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;",
        "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;",
        "<init>",
        "()V",
        "Callback",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public _binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

.field public pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    const-class v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 6
    .line 7
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$special$$inlined$activityViewModels$default$1;

    .line 14
    .line 15
    invoke-direct {v2, p0, v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$special$$inlined$activityViewModels$default$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;I)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$special$$inlined$activityViewModels$default$1;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-direct {v0, p0, v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$special$$inlined$activityViewModels$default$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;I)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$special$$inlined$activityViewModels$default$1;

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$special$$inlined$activityViewModels$default$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;I)V

    .line 28
    .line 29
    .line 30
    new-instance v4, Lokhttp3/Request$Builder;

    .line 31
    .line 32
    invoke-direct {v4, v1, v2, v3, v0}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    iput-object v4, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final callback()Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$Callback;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-class v2, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$Callback;

    .line 7
    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const/4 p0, 0x0

    .line 67
    :goto_0
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$Callback;

    .line 68
    .line 69
    return-object p0
.end method

.method public final getViewModel$1()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "title"

    .line 9
    .line 10
    const-class v1, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 11
    .line 12
    invoke-static {p1, v0, v1}, Landroidx/room/Room;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/os/Parcelable;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    check-cast p1, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 22
    .line 23
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 24
    .line 25
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0c0184

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move-object/from16 v3, p1

    .line 11
    .line 12
    move-object/from16 v4, p2

    .line 13
    .line 14
    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v3, 0x7f090065

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    move-object v7, v4

    .line 26
    check-cast v7, Landroid/widget/TextView;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v7, :cond_1f

    .line 30
    .line 31
    const v3, 0x7f090073

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    move-object v8, v5

    .line 39
    check-cast v8, Landroid/widget/TextView;

    .line 40
    .line 41
    if-eqz v8, :cond_1f

    .line 42
    .line 43
    const v3, 0x7f09007d

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    move-object v9, v5

    .line 51
    check-cast v9, Landroid/widget/TextView;

    .line 52
    .line 53
    if-eqz v9, :cond_1f

    .line 54
    .line 55
    const v3, 0x7f09007e

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    move-object v10, v5

    .line 63
    check-cast v10, Lorg/wikipedia/views/WikiCardView;

    .line 64
    .line 65
    if-eqz v10, :cond_1f

    .line 66
    .line 67
    const v3, 0x7f09007f

    .line 68
    .line 69
    .line 70
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    move-object v11, v5

    .line 75
    check-cast v11, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 76
    .line 77
    if-eqz v11, :cond_1f

    .line 78
    .line 79
    const v3, 0x7f090080

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    move-object v12, v5

    .line 87
    check-cast v12, Landroid/widget/TextView;

    .line 88
    .line 89
    if-eqz v12, :cond_1f

    .line 90
    .line 91
    const v3, 0x7f0901b0

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 99
    .line 100
    if-eqz v5, :cond_1f

    .line 101
    .line 102
    move-object v6, v1

    .line 103
    check-cast v6, Landroid/widget/ScrollView;

    .line 104
    .line 105
    const v3, 0x7f090536

    .line 106
    .line 107
    .line 108
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    move-object v13, v5

    .line 113
    check-cast v13, Lcom/google/android/material/button/MaterialButton;

    .line 114
    .line 115
    if-eqz v13, :cond_1f

    .line 116
    .line 117
    const v3, 0x7f090576

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    check-cast v5, Lorg/wikipedia/views/WikiCardView;

    .line 125
    .line 126
    if-eqz v5, :cond_1f

    .line 127
    .line 128
    const v3, 0x7f090577

    .line 129
    .line 130
    .line 131
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    move-object v14, v5

    .line 136
    check-cast v14, Landroid/widget/TextView;

    .line 137
    .line 138
    if-eqz v14, :cond_1f

    .line 139
    .line 140
    const v3, 0x7f090578

    .line 141
    .line 142
    .line 143
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    check-cast v5, Landroid/widget/TextView;

    .line 148
    .line 149
    if-eqz v5, :cond_1f

    .line 150
    .line 151
    const v3, 0x7f0905a1

    .line 152
    .line 153
    .line 154
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    move-object v15, v5

    .line 159
    check-cast v15, Landroid/widget/ImageView;

    .line 160
    .line 161
    if-eqz v15, :cond_1f

    .line 162
    .line 163
    const v3, 0x7f0905a2

    .line 164
    .line 165
    .line 166
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    check-cast v5, Lorg/wikipedia/views/WikiCardView;

    .line 171
    .line 172
    if-eqz v5, :cond_1f

    .line 173
    .line 174
    const v3, 0x7f0905ea

    .line 175
    .line 176
    .line 177
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    move-object/from16 v16, v5

    .line 182
    .line 183
    check-cast v16, Landroid/widget/ImageView;

    .line 184
    .line 185
    if-eqz v16, :cond_1f

    .line 186
    .line 187
    const v3, 0x7f0905eb

    .line 188
    .line 189
    .line 190
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    check-cast v5, Lorg/wikipedia/views/WikiCardView;

    .line 195
    .line 196
    if-eqz v5, :cond_1f

    .line 197
    .line 198
    new-instance v5, Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 199
    .line 200
    invoke-direct/range {v5 .. v16}, Lorg/wikipedia/databinding/ActivityLoginBinding;-><init>(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 201
    .line 202
    .line 203
    iput-object v5, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 204
    .line 205
    invoke-virtual {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->getViewModel$1()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    iget-boolean v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->isArchiveGame:Z

    .line 210
    .line 211
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    const/4 v7, 0x0

    .line 216
    const/16 v5, 0x3d8

    .line 217
    .line 218
    const-string v8, "impression"

    .line 219
    .line 220
    const-string v9, "game_play"

    .line 221
    .line 222
    const-string v10, "game_end_article"

    .line 223
    .line 224
    const/4 v11, 0x0

    .line 225
    const/4 v12, 0x0

    .line 226
    invoke-static/range {v5 .. v12}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v1, Landroid/widget/TextView;

    .line 237
    .line 238
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 239
    .line 240
    iget-object v3, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 241
    .line 242
    const-string v5, "pageSummary"

    .line 243
    .line 244
    if-eqz v3, :cond_1e

    .line 245
    .line 246
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    .line 256
    .line 257
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v1, Landroid/widget/TextView;

    .line 265
    .line 266
    iget-object v3, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 267
    .line 268
    if-eqz v3, :cond_1d

    .line 269
    .line 270
    iget-object v3, v3, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 271
    .line 272
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    .line 278
    .line 279
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 280
    .line 281
    if-eqz v1, :cond_1c

    .line 282
    .line 283
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    const/4 v3, 0x4

    .line 288
    if-eqz v1, :cond_2

    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-nez v1, :cond_0

    .line 295
    .line 296
    goto :goto_0

    .line 297
    :cond_0
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 305
    .line 306
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 307
    .line 308
    .line 309
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v1, Lorg/wikipedia/views/WikiCardView;

    .line 317
    .line 318
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 319
    .line 320
    .line 321
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 329
    .line 330
    iget-object v3, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 331
    .line 332
    if-eqz v3, :cond_1

    .line 333
    .line 334
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    const/16 v6, 0x14

    .line 339
    .line 340
    invoke-static {v1, v3, v4, v6}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 341
    .line 342
    .line 343
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 344
    .line 345
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 351
    .line 352
    new-instance v3, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$$ExternalSyntheticLambda0;

    .line 353
    .line 354
    invoke-direct {v3, v0, v2}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;I)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    .line 359
    .line 360
    goto :goto_2

    .line 361
    :cond_1
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    throw v4

    .line 365
    :cond_2
    :goto_0
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 366
    .line 367
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    .line 369
    .line 370
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 371
    .line 372
    check-cast v1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 373
    .line 374
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 375
    .line 376
    .line 377
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 378
    .line 379
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 383
    .line 384
    check-cast v1, Lorg/wikipedia/views/WikiCardView;

    .line 385
    .line 386
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 387
    .line 388
    .line 389
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 390
    .line 391
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast v1, Landroid/widget/TextView;

    .line 397
    .line 398
    iget-object v3, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 399
    .line 400
    if-eqz v3, :cond_1b

    .line 401
    .line 402
    iget-object v3, v3, Lorg/wikipedia/dataclient/page/PageSummary;->extractHtml:Ljava/lang/String;

    .line 403
    .line 404
    if-nez v3, :cond_3

    .line 405
    .line 406
    const-string v3, ""

    .line 407
    .line 408
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 409
    .line 410
    .line 411
    move-result v6

    .line 412
    if-nez v6, :cond_5

    .line 413
    .line 414
    iget-object v3, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 415
    .line 416
    if-eqz v3, :cond_4

    .line 417
    .line 418
    iget-object v3, v3, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 419
    .line 420
    goto :goto_1

    .line 421
    :cond_4
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    throw v4

    .line 425
    :cond_5
    :goto_1
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    .line 431
    .line 432
    :goto_2
    invoke-virtual {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->getViewModel$1()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    iget-object v3, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 437
    .line 438
    if-eqz v3, :cond_1a

    .line 439
    .line 440
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    iget-object v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->events:Ljava/util/ArrayList;

    .line 445
    .line 446
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 447
    .line 448
    .line 449
    move-result-object v6

    .line 450
    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 451
    .line 452
    .line 453
    move-result v7

    .line 454
    if-eqz v7, :cond_9

    .line 455
    .line 456
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v7

    .line 460
    move-object v8, v7

    .line 461
    check-cast v8, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 462
    .line 463
    iget-object v8, v8, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->pages:Ljava/util/List;

    .line 464
    .line 465
    if-eqz v8, :cond_7

    .line 466
    .line 467
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 468
    .line 469
    .line 470
    move-result v9

    .line 471
    if-eqz v9, :cond_7

    .line 472
    .line 473
    goto :goto_3

    .line 474
    :cond_7
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 475
    .line 476
    .line 477
    move-result-object v8

    .line 478
    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 479
    .line 480
    .line 481
    move-result v9

    .line 482
    if-eqz v9, :cond_6

    .line 483
    .line 484
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v9

    .line 488
    check-cast v9, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 489
    .line 490
    invoke-virtual {v9}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v10

    .line 494
    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v10

    .line 498
    if-nez v10, :cond_a

    .line 499
    .line 500
    invoke-virtual {v9}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v9

    .line 504
    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v9

    .line 508
    if-eqz v9, :cond_8

    .line 509
    .line 510
    goto :goto_4

    .line 511
    :cond_9
    move-object v7, v4

    .line 512
    :cond_a
    :goto_4
    check-cast v7, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 513
    .line 514
    if-nez v7, :cond_b

    .line 515
    .line 516
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    move-object v7, v1

    .line 521
    check-cast v7, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 522
    .line 523
    :cond_b
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 524
    .line 525
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    .line 527
    .line 528
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->toolbar:Ljava/lang/Object;

    .line 529
    .line 530
    check-cast v1, Landroid/widget/TextView;

    .line 531
    .line 532
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 533
    .line 534
    iget-object v3, v7, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->text:Ljava/lang/String;

    .line 535
    .line 536
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->getViewModel$1()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    iget-object v3, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 548
    .line 549
    if-eqz v3, :cond_19

    .line 550
    .line 551
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    iget-object v6, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->events:Ljava/util/ArrayList;

    .line 556
    .line 557
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 558
    .line 559
    .line 560
    move-result-object v6

    .line 561
    move v7, v2

    .line 562
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 563
    .line 564
    .line 565
    move-result v8

    .line 566
    if-eqz v8, :cond_f

    .line 567
    .line 568
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v8

    .line 572
    check-cast v8, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 573
    .line 574
    iget-object v8, v8, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->pages:Ljava/util/List;

    .line 575
    .line 576
    if-eqz v8, :cond_c

    .line 577
    .line 578
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 579
    .line 580
    .line 581
    move-result v9

    .line 582
    if-eqz v9, :cond_c

    .line 583
    .line 584
    goto :goto_6

    .line 585
    :cond_c
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 586
    .line 587
    .line 588
    move-result-object v8

    .line 589
    :cond_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 590
    .line 591
    .line 592
    move-result v9

    .line 593
    if-eqz v9, :cond_e

    .line 594
    .line 595
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v9

    .line 599
    check-cast v9, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 600
    .line 601
    invoke-virtual {v9}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v10

    .line 605
    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    move-result v10

    .line 609
    if-nez v10, :cond_10

    .line 610
    .line 611
    invoke-virtual {v9}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v9

    .line 615
    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    move-result v9

    .line 619
    if-eqz v9, :cond_d

    .line 620
    .line 621
    goto :goto_7

    .line 622
    :cond_e
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 623
    .line 624
    goto :goto_5

    .line 625
    :cond_f
    const/4 v7, -0x1

    .line 626
    :cond_10
    :goto_7
    iget-object v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 627
    .line 628
    if-eqz v1, :cond_18

    .line 629
    .line 630
    iget-object v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->answerState:Ljava/util/List;

    .line 631
    .line 632
    const/4 v3, 0x2

    .line 633
    if-ltz v7, :cond_11

    .line 634
    .line 635
    div-int/2addr v7, v3

    .line 636
    goto :goto_8

    .line 637
    :cond_11
    move v7, v2

    .line 638
    :goto_8
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    check-cast v1, Ljava/lang/Boolean;

    .line 643
    .line 644
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 645
    .line 646
    .line 647
    move-result v1

    .line 648
    if-eqz v1, :cond_12

    .line 649
    .line 650
    const v6, 0x7f0800d0

    .line 651
    .line 652
    .line 653
    goto :goto_9

    .line 654
    :cond_12
    const v6, 0x7f080135

    .line 655
    .line 656
    .line 657
    :goto_9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 658
    .line 659
    .line 660
    move-result-object v7

    .line 661
    if-eqz v1, :cond_13

    .line 662
    .line 663
    const v8, 0x7f0405d1

    .line 664
    .line 665
    .line 666
    goto :goto_a

    .line 667
    :cond_13
    const v8, 0x7f0401c3

    .line 668
    .line 669
    .line 670
    :goto_a
    invoke-static {v7, v8}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 671
    .line 672
    .line 673
    move-result-object v7

    .line 674
    if-eqz v1, :cond_14

    .line 675
    .line 676
    const v1, 0x7f1204b8

    .line 677
    .line 678
    .line 679
    goto :goto_b

    .line 680
    :cond_14
    const v1, 0x7f1204b9

    .line 681
    .line 682
    .line 683
    :goto_b
    iget-object v8, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 684
    .line 685
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 686
    .line 687
    .line 688
    iget-object v8, v8, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 689
    .line 690
    check-cast v8, Landroid/widget/TextView;

    .line 691
    .line 692
    invoke-virtual {v8, v6, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 693
    .line 694
    .line 695
    iget-object v6, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 696
    .line 697
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 698
    .line 699
    .line 700
    iget-object v6, v6, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 701
    .line 702
    check-cast v6, Landroid/widget/TextView;

    .line 703
    .line 704
    invoke-static {v6, v7}, Lkotlin/uuid/UuidKt;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 705
    .line 706
    .line 707
    iget-object v6, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 708
    .line 709
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 710
    .line 711
    .line 712
    iget-object v6, v6, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 713
    .line 714
    check-cast v6, Landroid/widget/TextView;

    .line 715
    .line 716
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->getViewModel$1()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    iget-object v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->savedPages:Ljava/util/ArrayList;

    .line 728
    .line 729
    iget-object v6, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 730
    .line 731
    if-eqz v6, :cond_17

    .line 732
    .line 733
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    move-result v1

    .line 737
    if-eqz v1, :cond_15

    .line 738
    .line 739
    const v1, 0x7f08012c

    .line 740
    .line 741
    .line 742
    goto :goto_c

    .line 743
    :cond_15
    const v1, 0x7f08012a

    .line 744
    .line 745
    .line 746
    :goto_c
    iget-object v4, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 747
    .line 748
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 749
    .line 750
    .line 751
    iget-object v4, v4, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 752
    .line 753
    check-cast v4, Landroid/widget/ImageView;

    .line 754
    .line 755
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 756
    .line 757
    .line 758
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 759
    .line 760
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 761
    .line 762
    .line 763
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 764
    .line 765
    check-cast v1, Landroid/widget/ImageView;

    .line 766
    .line 767
    new-instance v4, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$$ExternalSyntheticLambda0;

    .line 768
    .line 769
    const/4 v5, 0x1

    .line 770
    invoke-direct {v4, v0, v5}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;I)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 774
    .line 775
    .line 776
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 777
    .line 778
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 779
    .line 780
    .line 781
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 782
    .line 783
    check-cast v1, Landroid/widget/ImageView;

    .line 784
    .line 785
    new-instance v4, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$$ExternalSyntheticLambda0;

    .line 786
    .line 787
    invoke-direct {v4, v0, v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;I)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    .line 792
    .line 793
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 794
    .line 795
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 796
    .line 797
    .line 798
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 799
    .line 800
    check-cast v1, Landroid/widget/ImageView;

    .line 801
    .line 802
    iget-object v4, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 803
    .line 804
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 805
    .line 806
    .line 807
    iget-object v4, v4, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 808
    .line 809
    check-cast v4, Landroid/widget/ImageView;

    .line 810
    .line 811
    new-array v6, v3, [Landroid/view/View;

    .line 812
    .line 813
    aput-object v1, v6, v2

    .line 814
    .line 815
    aput-object v4, v6, v5

    .line 816
    .line 817
    :goto_d
    if-ge v2, v3, :cond_16

    .line 818
    .line 819
    aget-object v1, v6, v2

    .line 820
    .line 821
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 822
    .line 823
    .line 824
    move-result-object v4

    .line 825
    invoke-static {v1, v4}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 826
    .line 827
    .line 828
    add-int/lit8 v2, v2, 0x1

    .line 829
    .line 830
    goto :goto_d

    .line 831
    :cond_16
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 832
    .line 833
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 834
    .line 835
    .line 836
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 837
    .line 838
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 839
    .line 840
    new-instance v2, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$$ExternalSyntheticLambda0;

    .line 841
    .line 842
    const/4 v3, 0x3

    .line 843
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;I)V

    .line 844
    .line 845
    .line 846
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 847
    .line 848
    .line 849
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 850
    .line 851
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 852
    .line 853
    .line 854
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->captchaContainer:Ljava/lang/Object;

    .line 855
    .line 856
    check-cast v0, Landroid/widget/ScrollView;

    .line 857
    .line 858
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 859
    .line 860
    .line 861
    return-object v0

    .line 862
    :cond_17
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    throw v4

    .line 866
    :cond_18
    const-string v0, "currentState"

    .line 867
    .line 868
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    throw v4

    .line 872
    :cond_19
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    throw v4

    .line 876
    :cond_1a
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    throw v4

    .line 880
    :cond_1b
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    throw v4

    .line 884
    :cond_1c
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    throw v4

    .line 888
    :cond_1d
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    throw v4

    .line 892
    :cond_1e
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    throw v4

    .line 896
    :cond_1f
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 897
    .line 898
    .line 899
    move-result-object v0

    .line 900
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v0

    .line 904
    const-string v1, "Missing required view with ID: "

    .line 905
    .line 906
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v0

    .line 910
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    return-object v4
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 6
    .line 7
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->captchaContainer:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroid/widget/ScrollView;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    check-cast p0, Landroid/view/View;

    .line 21
    .line 22
    invoke-static {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 27
    .line 28
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

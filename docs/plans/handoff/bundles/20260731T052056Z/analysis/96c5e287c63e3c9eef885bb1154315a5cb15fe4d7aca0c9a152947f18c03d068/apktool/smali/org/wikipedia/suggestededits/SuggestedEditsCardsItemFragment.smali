.class public final Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;
.super Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;",
        "Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;",
        "<init>",
        "()V",
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
.field public _binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

.field public addedContribution:Ljava/lang/String;

.field public sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

.field public targetSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    new-instance v2, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;

    .line 13
    .line 14
    const/4 v3, 0x6

    .line 15
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemViewModel;

    .line 23
    .line 24
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 31
    .line 32
    const/16 v3, 0xe

    .line 33
    .line 34
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 38
    .line 39
    const/16 v4, 0xf

    .line 40
    .line 41
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 42
    .line 43
    .line 44
    new-instance v4, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;

    .line 45
    .line 46
    const/16 v5, 0x11

    .line 47
    .line 48
    invoke-direct {v4, p0, v0, v5}, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;I)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lokhttp3/Request$Builder;

    .line 52
    .line 53
    invoke-direct {v0, v1, v2, v4, v3}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 57
    .line 58
    const-string v0, ""

    .line 59
    .line 60
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->addedContribution:Ljava/lang/String;

    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 21

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0c01ac

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    move-object/from16 v3, p2

    .line 11
    .line 12
    invoke-virtual {v2, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f090010

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    const v1, 0x7f0900cd

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/widget/LinearLayout;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    const v1, 0x7f0900ce

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    move-object v5, v2

    .line 44
    check-cast v5, Landroid/widget/ScrollView;

    .line 45
    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    const v1, 0x7f0900cf

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    move-object v6, v2

    .line 56
    check-cast v6, Lorg/wikipedia/views/WikiErrorView;

    .line 57
    .line 58
    if-eqz v6, :cond_0

    .line 59
    .line 60
    const v1, 0x7f0900d0

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    move-object v7, v2

    .line 68
    check-cast v7, Landroid/widget/ProgressBar;

    .line 69
    .line 70
    if-eqz v7, :cond_0

    .line 71
    .line 72
    move-object v3, v0

    .line 73
    check-cast v3, Landroid/widget/FrameLayout;

    .line 74
    .line 75
    const v1, 0x7f09070f

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    move-object v8, v2

    .line 83
    check-cast v8, Landroid/widget/LinearLayout;

    .line 84
    .line 85
    if-eqz v8, :cond_0

    .line 86
    .line 87
    const v1, 0x7f090710

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    move-object v9, v2

    .line 95
    check-cast v9, Landroid/widget/TextView;

    .line 96
    .line 97
    if-eqz v9, :cond_0

    .line 98
    .line 99
    const v1, 0x7f090711

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    move-object v10, v2

    .line 107
    check-cast v10, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 108
    .line 109
    if-eqz v10, :cond_0

    .line 110
    .line 111
    const v1, 0x7f090712

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    move-object v11, v2

    .line 119
    check-cast v11, Landroid/widget/LinearLayout;

    .line 120
    .line 121
    if-eqz v11, :cond_0

    .line 122
    .line 123
    const v1, 0x7f090713

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    move-object v12, v2

    .line 131
    check-cast v12, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 132
    .line 133
    if-eqz v12, :cond_0

    .line 134
    .line 135
    const v1, 0x7f090714

    .line 136
    .line 137
    .line 138
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    move-object v13, v2

    .line 143
    check-cast v13, Landroid/widget/LinearLayout;

    .line 144
    .line 145
    if-eqz v13, :cond_0

    .line 146
    .line 147
    const v1, 0x7f090715

    .line 148
    .line 149
    .line 150
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    move-object v14, v2

    .line 155
    check-cast v14, Landroid/widget/TextView;

    .line 156
    .line 157
    if-eqz v14, :cond_0

    .line 158
    .line 159
    const v1, 0x7f090719

    .line 160
    .line 161
    .line 162
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    move-object v15, v2

    .line 167
    check-cast v15, Lorg/wikipedia/views/ImageDetailHorizontalView;

    .line 168
    .line 169
    if-eqz v15, :cond_0

    .line 170
    .line 171
    const v1, 0x7f09071a

    .line 172
    .line 173
    .line 174
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    move-object/from16 v16, v2

    .line 179
    .line 180
    check-cast v16, Lorg/wikipedia/views/ImageDetailHorizontalView;

    .line 181
    .line 182
    if-eqz v16, :cond_0

    .line 183
    .line 184
    const v1, 0x7f09071b

    .line 185
    .line 186
    .line 187
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    move-object/from16 v17, v2

    .line 192
    .line 193
    check-cast v17, Lorg/wikipedia/views/ImageDetailHorizontalView;

    .line 194
    .line 195
    if-eqz v17, :cond_0

    .line 196
    .line 197
    const v1, 0x7f09071c

    .line 198
    .line 199
    .line 200
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    move-object/from16 v18, v2

    .line 205
    .line 206
    check-cast v18, Lorg/wikipedia/views/ImageDetailHorizontalView;

    .line 207
    .line 208
    if-eqz v18, :cond_0

    .line 209
    .line 210
    const v1, 0x7f09071d

    .line 211
    .line 212
    .line 213
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    move-object/from16 v19, v2

    .line 218
    .line 219
    check-cast v19, Lorg/wikipedia/views/ImageDetailHorizontalView;

    .line 220
    .line 221
    if-eqz v19, :cond_0

    .line 222
    .line 223
    const v1, 0x7f09071e

    .line 224
    .line 225
    .line 226
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    move-object/from16 v20, v2

    .line 231
    .line 232
    check-cast v20, Landroid/widget/LinearLayout;

    .line 233
    .line 234
    if-eqz v20, :cond_0

    .line 235
    .line 236
    new-instance v2, Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 237
    .line 238
    invoke-direct/range {v2 .. v20}, Lorg/wikipedia/databinding/ViewMainDrawerBinding;-><init>(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/ScrollView;Lorg/wikipedia/views/WikiErrorView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lorg/wikipedia/views/FaceAndColorDetectImageView;Landroid/widget/LinearLayout;Lorg/wikipedia/views/GoneIfEmptyTextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lorg/wikipedia/views/ImageDetailHorizontalView;Lorg/wikipedia/views/ImageDetailHorizontalView;Lorg/wikipedia/views/ImageDetailHorizontalView;Lorg/wikipedia/views/ImageDetailHorizontalView;Lorg/wikipedia/views/ImageDetailHorizontalView;Landroid/widget/LinearLayout;)V

    .line 239
    .line 240
    .line 241
    move-object/from16 v0, p0

    .line 242
    .line 243
    iput-object v2, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 244
    .line 245
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    return-object v3

    .line 249
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    const-string v1, "Missing required view with ID: "

    .line 258
    .line 259
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const/4 v0, 0x0

    .line 267
    return-object v0
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 6
    .line 7
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountContainer:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iget-object p2, p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->langFromCode:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1, p2}, Lcoil3/util/BitmapsKt;->setLayoutDirectionByLang(Landroid/view/View;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerPlacesContainer:Landroid/view/View;

    .line 30
    .line 31
    check-cast p1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 32
    .line 33
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-direct {p2, p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountAvatar:Landroid/view/View;

    .line 48
    .line 49
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 50
    .line 51
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    invoke-direct {p2, p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountAvatar:Landroid/view/View;

    .line 66
    .line 67
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 68
    .line 69
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    const/4 v1, 0x2

    .line 72
    invoke-direct {p2, p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 79
    .line 80
    if-nez p1, :cond_0

    .line 81
    .line 82
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 83
    .line 84
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemViewModel;

    .line 89
    .line 90
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    iget-object p2, p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 99
    .line 100
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget-object v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->langFromCode:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    iget-object v2, v2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->langToCode:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p1, p2, v1, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemViewModel;->findNextSuggestedEditsItem(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountContainer:Landroid/widget/LinearLayout;

    .line 129
    .line 130
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$$ExternalSyntheticLambda0;

    .line 131
    .line 132
    const/4 v1, 0x3

    .line 133
    invoke-direct {p2, p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->addedContribution:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->showAddedContributionView(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$5;

    .line 153
    .line 154
    const/4 v2, 0x0

    .line 155
    invoke-direct {p2, p0, v2, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$5;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;Lkotlin/coroutines/Continuation;I)V

    .line 156
    .line 157
    .line 158
    invoke-static {p1, v2, v2, p2, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public final showAddedContributionView(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerDonateContainer:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerSettingsContainer:Landroid/view/View;

    .line 27
    .line 28
    check-cast v0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->addedContribution:Ljava/lang/String;

    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

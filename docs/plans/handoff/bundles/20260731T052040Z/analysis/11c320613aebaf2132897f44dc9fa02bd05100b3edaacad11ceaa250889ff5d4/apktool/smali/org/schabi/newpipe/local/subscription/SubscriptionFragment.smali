.class public final Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;
.super Lorg/schabi/newpipe/fragments/BaseStateFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/BaseStateFragment<",
        "Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$Companion;

.field public static final JSON_MIME_TYPE:Ljava/lang/String;


# instance fields
.field public _binding:Lorg/jsoup/parser/TokenData;

.field public carouselAdapter:Lcom/xwray/groupie/GroupAdapter;

.field public final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field public feedGroupsCarousel:Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;

.field public feedGroupsCarouselState:Landroid/os/Parcelable;

.field public feedGroupsSortMenuItem:Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;

.field public final groupAdapter:Lcom/xwray/groupie/GroupAdapter;

.field public importExportHelper:Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;

.field public itemsListState:Landroid/os/Parcelable;

.field public final listenerChannelItem:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

.field public subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

.field public final subscriptionsSection:Lcom/xwray/groupie/Section;

.field public viewModel:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$Companion;

    .line 7
    .line 8
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "json"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "application/octet-stream"

    .line 21
    .line 22
    :cond_0
    sput-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->JSON_MIME_TYPE:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 10
    .line 11
    new-instance v0, Lcom/xwray/groupie/GroupAdapter;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/xwray/groupie/GroupAdapter;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->groupAdapter:Lcom/xwray/groupie/GroupAdapter;

    .line 17
    .line 18
    new-instance v0, Lcom/xwray/groupie/Section;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/xwray/groupie/Section;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->subscriptionsSection:Lcom/xwray/groupie/Section;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 30
    .line 31
    const/4 v1, 0x5

    .line 32
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;-><init>(Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->listenerChannelItem:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final doInitialLoadLogic()V
    .locals 0

    .line 1
    return-void
.end method

.method public final hideLoading()V
    .locals 9

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->hideLoading()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->_binding:Lorg/jsoup/parser/TokenData;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 10
    .line 11
    move-object v0, p0

    .line 12
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/16 v8, 0x1c

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    const-wide/16 v2, 0xc8

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    invoke-static/range {v0 .. v8}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-super/range {p0 .. p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    const v1, 0x7f0a0144

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_b

    .line 19
    .line 20
    invoke-static {v3}, Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;

    .line 21
    .line 22
    .line 23
    const v1, 0x7f0a015b

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_b

    .line 31
    .line 32
    invoke-static {v3}, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ErrorPanelBinding;

    .line 33
    .line 34
    .line 35
    const v1, 0x7f0a0206

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    if-eqz v3, :cond_b

    .line 45
    .line 46
    new-instance v1, Lorg/jsoup/parser/TokenData;

    .line 47
    .line 48
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 49
    .line 50
    const/4 v4, 0x6

    .line 51
    invoke-direct {v1, v0, v3, v4}, Lorg/jsoup/parser/TokenData;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 52
    .line 53
    .line 54
    iput-object v1, v2, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->_binding:Lorg/jsoup/parser/TokenData;

    .line 55
    .line 56
    sget-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;->shouldUseGridForSubscription(Landroid/content/Context;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/4 v8, 0x1

    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const v3, 0x7f07005e

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 99
    .line 100
    div-int/2addr v0, v1

    .line 101
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    goto :goto_0

    .line 106
    :cond_0
    move v0, v8

    .line 107
    :goto_0
    iget-object v9, v2, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->groupAdapter:Lcom/xwray/groupie/GroupAdapter;

    .line 108
    .line 109
    iput v0, v9, Lcom/xwray/groupie/GroupAdapter;->spanCount:I

    .line 110
    .line 111
    iget-object v0, v2, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->_binding:Lorg/jsoup/parser/TokenData;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    .line 120
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 121
    .line 122
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    iget v4, v9, Lcom/xwray/groupie/GroupAdapter;->spanCount:I

    .line 127
    .line 128
    invoke-direct {v1, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 129
    .line 130
    .line 131
    iget-object v3, v9, Lcom/xwray/groupie/GroupAdapter;->spanSizeLookup:Lcom/xwray/groupie/GroupAdapter$2;

    .line 132
    .line 133
    iput-object v3, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/core/app/NotificationCompat$Style;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, v2, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->_binding:Lorg/jsoup/parser/TokenData;

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 146
    .line 147
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, v2, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->_binding:Lorg/jsoup/parser/TokenData;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 158
    .line 159
    const/4 v10, 0x0

    .line 160
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 161
    .line 162
    .line 163
    invoke-interface {v2}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelProviderFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelCreationExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    new-instance v4, Lokhttp3/Dispatcher;

    .line 185
    .line 186
    invoke-direct {v4, v0, v1, v3}, Lokhttp3/Dispatcher;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    .line 187
    .line 188
    .line 189
    const-class v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;

    .line 190
    .line 191
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    if-eqz v1, :cond_a

    .line 200
    .line 201
    const-string v3, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 202
    .line 203
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v4, v1, v0}, Lokhttp3/Dispatcher;->getViewModel$lifecycle_viewmodel(Ljava/lang/String;Lkotlin/jvm/internal/ClassReference;)Landroidx/lifecycle/ViewModel;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;

    .line 212
    .line 213
    iput-object v0, v2, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->viewModel:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;

    .line 214
    .line 215
    iget-object v0, v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->stateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 216
    .line 217
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    new-instance v3, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda3;

    .line 222
    .line 223
    const/4 v11, 0x0

    .line 224
    invoke-direct {v3, v2, v11}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;I)V

    .line 225
    .line 226
    .line 227
    new-instance v4, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$sam$androidx_lifecycle_Observer$0;

    .line 228
    .line 229
    invoke-direct {v4, v3, v11}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 233
    .line 234
    .line 235
    iget-object v0, v2, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->viewModel:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;

    .line 236
    .line 237
    const-string/jumbo v12, "viewModel"

    .line 238
    .line 239
    .line 240
    if-eqz v0, :cond_9

    .line 241
    .line 242
    iget-object v0, v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->feedGroupsLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 243
    .line 244
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    new-instance v3, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda3;

    .line 249
    .line 250
    invoke-direct {v3, v2, v8}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;I)V

    .line 251
    .line 252
    .line 253
    new-instance v4, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$sam$androidx_lifecycle_Observer$0;

    .line 254
    .line 255
    invoke-direct {v4, v3, v11}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 259
    .line 260
    .line 261
    new-instance v13, Lcom/xwray/groupie/Section;

    .line 262
    .line 263
    invoke-direct {v13}, Lcom/xwray/groupie/Section;-><init>()V

    .line 264
    .line 265
    .line 266
    new-instance v0, Lcom/xwray/groupie/GroupAdapter;

    .line 267
    .line 268
    invoke-direct {v0}, Lcom/xwray/groupie/GroupAdapter;-><init>()V

    .line 269
    .line 270
    .line 271
    iput-object v0, v2, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->carouselAdapter:Lcom/xwray/groupie/GroupAdapter;

    .line 272
    .line 273
    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda7;

    .line 274
    .line 275
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V

    .line 276
    .line 277
    .line 278
    iput-object v1, v0, Lcom/xwray/groupie/GroupAdapter;->onItemClickListener:Lcom/xwray/groupie/OnItemClickListener;

    .line 279
    .line 280
    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda7;

    .line 281
    .line 282
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V

    .line 283
    .line 284
    .line 285
    iput-object v1, v0, Lcom/xwray/groupie/GroupAdapter;->onItemLongClickListener:Lcom/xwray/groupie/OnItemLongClickListener;

    .line 286
    .line 287
    new-instance v0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;

    .line 288
    .line 289
    iget-object v1, v2, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->carouselAdapter:Lcom/xwray/groupie/GroupAdapter;

    .line 290
    .line 291
    if-eqz v1, :cond_8

    .line 292
    .line 293
    iget-object v3, v2, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->viewModel:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;

    .line 294
    .line 295
    if-eqz v3, :cond_7

    .line 296
    .line 297
    invoke-virtual {v3}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->getListViewMode()Z

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    invoke-direct {v0, v1, v3}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;-><init>(Lcom/xwray/groupie/GroupAdapter;Z)V

    .line 302
    .line 303
    .line 304
    iput-object v0, v2, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsCarousel:Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;

    .line 305
    .line 306
    new-instance v14, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;

    .line 307
    .line 308
    const v0, 0x7f1301cc

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v15

    .line 315
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    new-instance v0, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 319
    .line 320
    const/4 v6, 0x0

    .line 321
    const/4 v7, 0x5

    .line 322
    const/4 v1, 0x0

    .line 323
    const-class v3, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    .line 324
    .line 325
    const-string v4, "openReorderDialog"

    .line 326
    .line 327
    const-string v5, "openReorderDialog()V"

    .line 328
    .line 329
    invoke-direct/range {v0 .. v7}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 330
    .line 331
    .line 332
    new-instance v1, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 333
    .line 334
    const/4 v7, 0x6

    .line 335
    move-object v2, v0

    .line 336
    move-object v0, v1

    .line 337
    const/4 v1, 0x0

    .line 338
    const-class v3, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    .line 339
    .line 340
    const-string/jumbo v4, "toggleListViewMode"

    .line 341
    .line 342
    .line 343
    const-string/jumbo v5, "toggleListViewMode()V"

    .line 344
    .line 345
    .line 346
    move-object v10, v2

    .line 347
    move-object/from16 v2, p0

    .line 348
    .line 349
    invoke-direct/range {v0 .. v7}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 350
    .line 351
    .line 352
    iget-object v1, v2, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->viewModel:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;

    .line 353
    .line 354
    if-eqz v1, :cond_6

    .line 355
    .line 356
    invoke-virtual {v1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->getListViewMode()Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    invoke-direct {v14, v15, v10, v0, v1}, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;-><init>(Ljava/lang/String;Landroidx/room/RoomDatabase$closeBarrier$1;Landroidx/room/RoomDatabase$closeBarrier$1;Z)V

    .line 361
    .line 362
    .line 363
    iput-object v14, v2, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsSortMenuItem:Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;

    .line 364
    .line 365
    new-instance v0, Lcom/xwray/groupie/Section;

    .line 366
    .line 367
    iget-object v1, v2, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsCarousel:Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;

    .line 368
    .line 369
    if-eqz v1, :cond_5

    .line 370
    .line 371
    invoke-static {v1}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-direct {v0, v14, v1}, Lcom/xwray/groupie/Section;-><init>(Lcom/xwray/groupie/viewbinding/BindableItem;Ljava/util/List;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0, v13}, Lcom/xwray/groupie/Section;->registerGroupDataObserver(Lcom/xwray/groupie/GroupDataObserver;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v13}, Lcom/xwray/groupie/Section;->getItemCountWithoutFooter()I

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    iget-object v3, v13, Lcom/xwray/groupie/Section;->children:Ljava/util/ArrayList;

    .line 386
    .line 387
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0}, Lcom/xwray/groupie/Section;->getItemCount()I

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    invoke-virtual {v13, v1, v0}, Lcom/xwray/groupie/Section;->notifyItemRangeInserted(II)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v13}, Lcom/xwray/groupie/Section;->refreshEmptyState()V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v9}, Lcom/xwray/groupie/GroupAdapter;->clear()V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v9, v13}, Lcom/xwray/groupie/GroupAdapter;->add(Lcom/xwray/groupie/Group;)V

    .line 404
    .line 405
    .line 406
    new-instance v0, Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;

    .line 407
    .line 408
    invoke-direct {v0}, Lcom/xwray/groupie/Item;-><init>()V

    .line 409
    .line 410
    .line 411
    iget-object v1, v2, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->subscriptionsSection:Lcom/xwray/groupie/Section;

    .line 412
    .line 413
    iget-object v3, v1, Lcom/xwray/groupie/Section;->placeholder:Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;

    .line 414
    .line 415
    if-eqz v3, :cond_3

    .line 416
    .line 417
    iget-boolean v4, v1, Lcom/xwray/groupie/Section;->isPlaceholderVisible:Z

    .line 418
    .line 419
    if-eqz v4, :cond_2

    .line 420
    .line 421
    if-nez v3, :cond_1

    .line 422
    .line 423
    goto :goto_1

    .line 424
    :cond_1
    iput-boolean v11, v1, Lcom/xwray/groupie/Section;->isPlaceholderVisible:Z

    .line 425
    .line 426
    invoke-virtual {v1}, Lcom/xwray/groupie/Section;->getHeaderItemCount()I

    .line 427
    .line 428
    .line 429
    move-result v3

    .line 430
    iget-object v4, v1, Lcom/xwray/groupie/Section;->placeholder:Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;

    .line 431
    .line 432
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    iget-object v4, v1, Lcom/xwray/groupie/Section;->observable:Lokhttp3/Headers$Builder;

    .line 436
    .line 437
    invoke-virtual {v4, v1, v3, v8}, Lokhttp3/Headers$Builder;->onItemRangeRemoved(Lcom/xwray/groupie/Section;II)V

    .line 438
    .line 439
    .line 440
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .line 441
    iput-object v3, v1, Lcom/xwray/groupie/Section;->placeholder:Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;

    .line 442
    .line 443
    :cond_3
    iput-object v0, v1, Lcom/xwray/groupie/Section;->placeholder:Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;

    .line 444
    .line 445
    invoke-virtual {v1}, Lcom/xwray/groupie/Section;->refreshEmptyState()V

    .line 446
    .line 447
    .line 448
    iget-boolean v0, v1, Lcom/xwray/groupie/Section;->hideWhenEmpty:Z

    .line 449
    .line 450
    if-ne v0, v8, :cond_4

    .line 451
    .line 452
    goto :goto_2

    .line 453
    :cond_4
    iput-boolean v8, v1, Lcom/xwray/groupie/Section;->hideWhenEmpty:Z

    .line 454
    .line 455
    invoke-virtual {v1}, Lcom/xwray/groupie/Section;->refreshEmptyState()V

    .line 456
    .line 457
    .line 458
    :goto_2
    new-instance v0, Lcom/xwray/groupie/Section;

    .line 459
    .line 460
    new-instance v3, Lorg/schabi/newpipe/local/subscription/item/Header;

    .line 461
    .line 462
    const v4, 0x7f1304ed

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    .line 471
    .line 472
    invoke-direct {v3, v2}, Lorg/schabi/newpipe/local/subscription/item/Header;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-static {v1}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-direct {v0, v3, v1}, Lcom/xwray/groupie/Section;-><init>(Lcom/xwray/groupie/viewbinding/BindableItem;Ljava/util/List;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v9, v0}, Lcom/xwray/groupie/GroupAdapter;->add(Lcom/xwray/groupie/Group;)V

    .line 483
    .line 484
    .line 485
    return-void

    .line 486
    :cond_5
    const-string v0, "feedGroupsCarousel"

    .line 487
    .line 488
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    const/4 v3, 0x0

    .line 492
    throw v3

    .line 493
    :cond_6
    const/4 v3, 0x0

    .line 494
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    throw v3

    .line 498
    :cond_7
    move-object v3, v10

    .line 499
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    throw v3

    .line 503
    :cond_8
    move-object v3, v10

    .line 504
    const-string v0, "carouselAdapter"

    .line 505
    .line 506
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    throw v3

    .line 510
    :cond_9
    move-object v3, v10

    .line 511
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    throw v3

    .line 515
    :cond_a
    const-string v0, "Local and anonymous classes can not be ViewModels"

    .line 516
    .line 517
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    return-void

    .line 521
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    const-string v1, "Missing required view with ID: "

    .line 530
    .line 531
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 20
    .line 21
    new-instance p1, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->importExportHelper:Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;

    .line 27
    .line 28
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/4 v0, 0x1

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Lokio/Options$Companion;->setDisplayShowTitleEnabled(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 20
    .line 21
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    const v1, 0x7f1304ed

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v1}, Lokio/Options$Companion;->setTitle(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    const p2, 0x7f130217

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, p2}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;I)V

    .line 47
    .line 48
    .line 49
    const v2, 0x7f1303f9

    .line 50
    .line 51
    .line 52
    invoke-interface {p2, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    new-instance v3, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda6;

    .line 60
    .line 61
    invoke-direct {v3, v1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 65
    .line 66
    .line 67
    const v1, 0x7f0800e9

    .line 68
    .line 69
    .line 70
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 71
    .line 72
    .line 73
    sget-object v1, Lorg/schabi/newpipe/extractor/ServiceList;->SERVICES:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lorg/schabi/newpipe/extractor/StreamingService;

    .line 90
    .line 91
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/StreamingService;->getSubscriptionExtractor()Landroidx/core/app/NotificationCompat$Style;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-nez v3, :cond_3

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v3, Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_2

    .line 107
    .line 108
    iget-object v3, v2, Lorg/schabi/newpipe/extractor/StreamingService;->serviceInfo:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    .line 109
    .line 110
    iget-object v3, v3, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->name:Ljava/lang/String;

    .line 111
    .line 112
    new-instance v4, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda1;

    .line 113
    .line 114
    invoke-direct {v4, p0, v2}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lorg/schabi/newpipe/extractor/StreamingService;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p2, v3}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    new-instance v5, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda6;

    .line 125
    .line 126
    invoke-direct {v5, v4}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 130
    .line 131
    .line 132
    iget v2, v2, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 133
    .line 134
    invoke-static {v2}, Lorg/schabi/newpipe/util/ServiceHelper;->getIcon(I)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_4
    const p2, 0x7f1301b4

    .line 143
    .line 144
    .line 145
    invoke-interface {p1, p2}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    new-instance p2, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda0;

    .line 153
    .line 154
    invoke-direct {p2, p0, v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;I)V

    .line 155
    .line 156
    .line 157
    const p0, 0x7f1301ee

    .line 158
    .line 159
    .line 160
    invoke-interface {p1, p0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    new-instance p1, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda6;

    .line 168
    .line 169
    invoke-direct {p1, p2}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;)V

    .line 170
    .line 171
    .line 172
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 173
    .line 174
    .line 175
    const p1, 0x7f08014a

    .line 176
    .line 177
    .line 178
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p0, 0x7f0d0064

    .line 5
    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 5
    .line 6
    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->_binding:Lorg/jsoup/parser/TokenData;

    .line 6
    .line 7
    return-void
.end method

.method public final onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->_binding:Lorg/jsoup/parser/TokenData;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, v1

    .line 26
    :goto_0
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->itemsListState:Landroid/os/Parcelable;

    .line 27
    .line 28
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsCarousel:Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v2, v0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->carouselLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :cond_1
    iput-object v1, v0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->listState:Landroid/os/Parcelable;

    .line 41
    .line 42
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->feedGroupsCarouselState:Landroid/os/Parcelable;

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    const-string p0, "feedGroupsCarousel"

    .line 46
    .line 47
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v1
.end method

.method public final showLoading()V
    .locals 9

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showLoading()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->_binding:Lorg/jsoup/parser/TokenData;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 10
    .line 11
    move-object v0, p0

    .line 12
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/16 v8, 0x1c

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const-wide/16 v2, 0x64

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    invoke-static/range {v0 .. v8}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final startLoading(Z)V
    .locals 0

    .line 1
    return-void
.end method

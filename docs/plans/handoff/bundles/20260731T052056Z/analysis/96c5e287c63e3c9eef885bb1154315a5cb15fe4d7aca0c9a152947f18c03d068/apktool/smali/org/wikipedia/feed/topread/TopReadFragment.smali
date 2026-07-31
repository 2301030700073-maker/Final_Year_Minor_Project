.class public final Lorg/wikipedia/feed/topread/TopReadFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lorg/wikipedia/feed/topread/TopReadFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "RecyclerAdapter",
        "org/wikipedia/media/AvPlayer",
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
.field public _binding:Lorg/wikipedia/databinding/FragmentMostReadBinding;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;

    .line 5
    .line 6
    const/16 v1, 0xb

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;

    .line 14
    .line 15
    const/16 v3, 0xc

    .line 16
    .line 17
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-class v1, Lorg/wikipedia/feed/topread/TopReadViewModel;

    .line 25
    .line 26
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 33
    .line 34
    const/16 v3, 0x14

    .line 35
    .line 36
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 40
    .line 41
    const/16 v4, 0x15

    .line 42
    .line 43
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 44
    .line 45
    .line 46
    new-instance v4, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;

    .line 47
    .line 48
    const/4 v5, 0x5

    .line 49
    invoke-direct {v4, p0, v0, v5}, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;I)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lokhttp3/Request$Builder;

    .line 53
    .line 54
    invoke-direct {v0, v1, v2, v4, v3}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lorg/wikipedia/feed/topread/TopReadFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p3, 0x7f0c019a

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const p2, 0x7f09041b

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    if-eqz p3, :cond_3

    .line 22
    .line 23
    new-instance p2, Lorg/wikipedia/databinding/FragmentMostReadBinding;

    .line 24
    .line 25
    check-cast p1, Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-direct {p2, p1, p3}, Lorg/wikipedia/databinding/FragmentMostReadBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lorg/wikipedia/feed/topread/TopReadFragment;->_binding:Lorg/wikipedia/databinding/FragmentMostReadBinding;

    .line 31
    .line 32
    iget-object p1, p0, Lorg/wikipedia/feed/topread/TopReadFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 33
    .line 34
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lorg/wikipedia/feed/topread/TopReadViewModel;

    .line 39
    .line 40
    iget-object p1, p1, Lorg/wikipedia/feed/topread/TopReadViewModel;->card:Lorg/wikipedia/feed/topread/TopReadCard;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    const/4 v1, 0x1

    .line 51
    if-eqz p3, :cond_0

    .line 52
    .line 53
    invoke-virtual {p3, v1}, Lcoil3/util/ContextsKt;->setDisplayHomeAsUpEnabled(Z)V

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    if-eqz p3, :cond_1

    .line 61
    .line 62
    sget-object v2, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 63
    .line 64
    iget-object v2, p1, Lorg/wikipedia/feed/topread/TopReadCard;->articles:Lorg/wikipedia/feed/topread/TopRead;

    .line 65
    .line 66
    iget-object v2, v2, Lorg/wikipedia/feed/topread/TopRead;->localDate$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 67
    .line 68
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    check-cast v2, Lj$/time/LocalDate;

    .line 76
    .line 77
    invoke-static {v2}, Lorg/wikipedia/util/DateUtil;->getShortDateString(Lj$/time/LocalDate;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    new-array v3, v1, [Ljava/lang/Object;

    .line 82
    .line 83
    aput-object v2, v3, v0

    .line 84
    .line 85
    const v2, 0x7f1209c7

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p3, p2}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    iget-object p2, p0, Lorg/wikipedia/feed/topread/TopReadFragment;->_binding:Lorg/wikipedia/databinding/FragmentMostReadBinding;

    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    iget-object p2, p2, Lorg/wikipedia/databinding/FragmentMostReadBinding;->rootView:Landroid/widget/LinearLayout;

    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    iget-object p3, p1, Lorg/wikipedia/feed/topread/TopReadCard;->site:Lorg/wikipedia/dataclient/WikiSite;

    .line 106
    .line 107
    iget-object p3, p3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {p2, p3}, Lcoil3/util/BitmapsKt;->setLayoutDirectionByLang(Landroid/view/View;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object p2, p0, Lorg/wikipedia/feed/topread/TopReadFragment;->_binding:Lorg/wikipedia/databinding/FragmentMostReadBinding;

    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    iget-object p2, p2, Lorg/wikipedia/databinding/FragmentMostReadBinding;->mostReadRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 118
    .line 119
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 120
    .line 121
    invoke-direct {p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 125
    .line 126
    .line 127
    iget-object p2, p0, Lorg/wikipedia/feed/topread/TopReadFragment;->_binding:Lorg/wikipedia/databinding/FragmentMostReadBinding;

    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    iget-object p2, p2, Lorg/wikipedia/databinding/FragmentMostReadBinding;->mostReadRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 133
    .line 134
    new-instance p3, Lorg/wikipedia/views/DrawableItemDecoration;

    .line 135
    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    const/16 v3, 0x1c

    .line 141
    .line 142
    invoke-direct {p3, v2, v0, v0, v3}, Lorg/wikipedia/views/DrawableItemDecoration;-><init>(Landroid/content/Context;ZZI)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 146
    .line 147
    .line 148
    iget-object p2, p0, Lorg/wikipedia/feed/topread/TopReadFragment;->_binding:Lorg/wikipedia/databinding/FragmentMostReadBinding;

    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    iget-object p2, p2, Lorg/wikipedia/databinding/FragmentMostReadBinding;->mostReadRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 154
    .line 155
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 156
    .line 157
    .line 158
    iget-object p2, p0, Lorg/wikipedia/feed/topread/TopReadFragment;->_binding:Lorg/wikipedia/databinding/FragmentMostReadBinding;

    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    iget-object p2, p2, Lorg/wikipedia/databinding/FragmentMostReadBinding;->mostReadRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 164
    .line 165
    iget-object p3, p1, Lorg/wikipedia/feed/topread/TopReadCard;->articles:Lorg/wikipedia/feed/topread/TopRead;

    .line 166
    .line 167
    iget-object p3, p3, Lorg/wikipedia/feed/topread/TopRead;->articles:Ljava/util/List;

    .line 168
    .line 169
    new-instance v0, Ljava/util/ArrayList;

    .line 170
    .line 171
    const/16 v2, 0xa

    .line 172
    .line 173
    invoke-static {p3, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    .line 179
    .line 180
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object p3

    .line 184
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_2

    .line 189
    .line 190
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    check-cast v2, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 195
    .line 196
    iget-object v3, p1, Lorg/wikipedia/feed/topread/TopReadCard;->site:Lorg/wikipedia/dataclient/WikiSite;

    .line 197
    .line 198
    invoke-virtual {v2, v3}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_2
    new-instance p1, Lorg/wikipedia/media/AvPlayer;

    .line 207
    .line 208
    const/4 p3, 0x7

    .line 209
    invoke-direct {p1, p3, p0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    new-instance p3, Lorg/wikipedia/feed/news/NewsFragment$RecyclerAdapter;

    .line 213
    .line 214
    invoke-direct {p3, v0, p1, v1}, Lorg/wikipedia/feed/news/NewsFragment$RecyclerAdapter;-><init>(Ljava/util/ArrayList;Lorg/wikipedia/feed/view/ListItemView$Callback;I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 218
    .line 219
    .line 220
    iget-object p0, p0, Lorg/wikipedia/feed/topread/TopReadFragment;->_binding:Lorg/wikipedia/databinding/FragmentMostReadBinding;

    .line 221
    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentMostReadBinding;->rootView:Landroid/widget/LinearLayout;

    .line 226
    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    return-object p0

    .line 231
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    const-string p1, "Missing required view with ID: "

    .line 240
    .line 241
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    const/4 p0, 0x0

    .line 249
    return-object p0
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/wikipedia/feed/topread/TopReadFragment;->_binding:Lorg/wikipedia/databinding/FragmentMostReadBinding;

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 6
    .line 7
    return-void
.end method

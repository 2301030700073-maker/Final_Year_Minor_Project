.class public final Lorg/wikipedia/categories/CategoryActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0007\u0018\u00002\u00020\u0001:\t\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/wikipedia/categories/CategoryActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "<init>",
        "()V",
        "LoadingItemAdapter",
        "EmptyItemAdapter",
        "CategoryMemberDiffCallback",
        "CategoryMembersAdapter",
        "LoadingViewHolder",
        "EmptyViewHolder",
        "CategoryItemHolder",
        "okhttp3/ConnectionPool",
        "MultiSelectCallback",
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


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public binding:Lokio/internal/DefaultSocket;

.field public final categoryMembersAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

.field public final categoryMembersConcatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

.field public final categoryMembersLoadFooter:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

.field public final categoryMembersLoadHeader:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

.field public final itemCallback:Lokhttp3/ConnectionPool;

.field public final subcategoriesAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

.field public final subcategoriesConcatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

.field public final subcategoriesLoadFooter:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

.field public final subcategoriesLoadHeader:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;-><init>(Lorg/wikipedia/categories/CategoryActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/wikipedia/categories/CategoryActivity;->categoryMembersAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 10
    .line 11
    new-instance v1, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 12
    .line 13
    new-instance v2, Lorg/wikipedia/categories/CategoryActivity$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/categories/CategoryActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/categories/CategoryActivity;I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0, v2, v3}, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;I)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lorg/wikipedia/categories/CategoryActivity;->categoryMembersLoadHeader:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 23
    .line 24
    new-instance v2, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 25
    .line 26
    new-instance v4, Lorg/wikipedia/categories/CategoryActivity$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/categories/CategoryActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/categories/CategoryActivity;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, p0, v4, v3}, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;I)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lorg/wikipedia/categories/CategoryActivity;->categoryMembersLoadFooter:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->withLoadStateHeaderAndFooter(Landroidx/paging/LoadStateAdapter;Landroidx/paging/LoadStateAdapter;)Landroidx/recyclerview/widget/ConcatAdapter;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lorg/wikipedia/categories/CategoryActivity;->categoryMembersConcatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

    .line 42
    .line 43
    new-instance v0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;-><init>(Lorg/wikipedia/categories/CategoryActivity;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lorg/wikipedia/categories/CategoryActivity;->subcategoriesAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 49
    .line 50
    new-instance v1, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 51
    .line 52
    new-instance v2, Lorg/wikipedia/categories/CategoryActivity$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    const/4 v4, 0x2

    .line 55
    invoke-direct {v2, p0, v4}, Lorg/wikipedia/categories/CategoryActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/categories/CategoryActivity;I)V

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, p0, v2, v3}, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;I)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lorg/wikipedia/categories/CategoryActivity;->subcategoriesLoadHeader:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 62
    .line 63
    new-instance v2, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 64
    .line 65
    new-instance v6, Lorg/wikipedia/categories/CategoryActivity$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    const/4 v7, 0x3

    .line 68
    invoke-direct {v6, p0, v7}, Lorg/wikipedia/categories/CategoryActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/categories/CategoryActivity;I)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v2, p0, v6, v3}, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;I)V

    .line 72
    .line 73
    .line 74
    iput-object v2, p0, Lorg/wikipedia/categories/CategoryActivity;->subcategoriesLoadFooter:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->withLoadStateHeaderAndFooter(Landroidx/paging/LoadStateAdapter;Landroidx/paging/LoadStateAdapter;)Landroidx/recyclerview/widget/ConcatAdapter;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lorg/wikipedia/categories/CategoryActivity;->subcategoriesConcatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

    .line 81
    .line 82
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 83
    .line 84
    const/16 v1, 0x16

    .line 85
    .line 86
    invoke-direct {v0, v1, p0}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lorg/wikipedia/categories/CategoryActivity;->itemCallback:Lokhttp3/ConnectionPool;

    .line 90
    .line 91
    new-instance v0, Lorg/wikipedia/categories/CategoryActivity$special$$inlined$viewModels$default$1;

    .line 92
    .line 93
    invoke-direct {v0, p0, v3}, Lorg/wikipedia/categories/CategoryActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;I)V

    .line 94
    .line 95
    .line 96
    new-instance v1, Lokhttp3/Request$Builder;

    .line 97
    .line 98
    const-class v2, Lorg/wikipedia/categories/CategoryActivityViewModel;

    .line 99
    .line 100
    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 101
    .line 102
    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    new-instance v3, Lorg/wikipedia/categories/CategoryActivity$special$$inlined$viewModels$default$1;

    .line 107
    .line 108
    invoke-direct {v3, p0, v5}, Lorg/wikipedia/categories/CategoryActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;I)V

    .line 109
    .line 110
    .line 111
    new-instance v5, Lorg/wikipedia/categories/CategoryActivity$special$$inlined$viewModels$default$1;

    .line 112
    .line 113
    invoke-direct {v5, p0, v4}, Lorg/wikipedia/categories/CategoryActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;I)V

    .line 114
    .line 115
    .line 116
    invoke-direct {v1, v2, v3, v0, v5}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 117
    .line 118
    .line 119
    iput-object v1, p0, Lorg/wikipedia/categories/CategoryActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 120
    .line 121
    return-void
.end method


# virtual methods
.method public final getViewModel()Lorg/wikipedia/categories/CategoryActivityViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/categories/CategoryActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/categories/CategoryActivityViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f0c001e

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const v0, 0x7f0900da

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    move-object v6, v3

    .line 25
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    .line 27
    if-eqz v6, :cond_b

    .line 28
    .line 29
    const v0, 0x7f0900db

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    move-object v7, v3

    .line 37
    check-cast v7, Lcom/google/android/material/tabs/TabLayout;

    .line 38
    .line 39
    if-eqz v7, :cond_b

    .line 40
    .line 41
    const v0, 0x7f0906cb

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    move-object v8, v3

    .line 49
    check-cast v8, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 50
    .line 51
    if-eqz v8, :cond_b

    .line 52
    .line 53
    const v0, 0x7f0906d2

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    move-object v9, v3

    .line 61
    check-cast v9, Landroid/widget/TextView;

    .line 62
    .line 63
    if-eqz v9, :cond_b

    .line 64
    .line 65
    new-instance v4, Lokio/internal/DefaultSocket;

    .line 66
    .line 67
    move-object v5, p1

    .line 68
    check-cast v5, Landroid/widget/FrameLayout;

    .line 69
    .line 70
    const/16 v10, 0x9

    .line 71
    .line 72
    invoke-direct/range {v4 .. v10}, Lokio/internal/DefaultSocket;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 73
    .line 74
    .line 75
    iput-object v4, p0, Lorg/wikipedia/categories/CategoryActivity;->binding:Lokio/internal/DefaultSocket;

    .line 76
    .line 77
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    new-instance p1, Landroid/util/TypedValue;

    .line 81
    .line 82
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const v3, 0x1010054

    .line 90
    .line 91
    .line 92
    const/4 v4, 0x1

    .line 93
    invoke-virtual {v0, v3, p1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    move-object p1, v1

    .line 101
    :goto_0
    if-eqz p1, :cond_a

    .line 102
    .line 103
    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->setStatusBarColor(I)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lorg/wikipedia/categories/CategoryActivity;->binding:Lokio/internal/DefaultSocket;

    .line 109
    .line 110
    const-string v0, "binding"

    .line 111
    .line 112
    if-eqz p1, :cond_9

    .line 113
    .line 114
    iget-object p1, p1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-eqz p1, :cond_1

    .line 126
    .line 127
    invoke-virtual {p1, v4}, Lcoil3/util/ContextsKt;->setDisplayHomeAsUpEnabled(Z)V

    .line 128
    .line 129
    .line 130
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_2

    .line 135
    .line 136
    invoke-virtual {p1, v2}, Lcoil3/util/ContextsKt;->setDisplayShowTitleEnabled(Z)V

    .line 137
    .line 138
    .line 139
    :cond_2
    iget-object p1, p0, Lorg/wikipedia/categories/CategoryActivity;->binding:Lokio/internal/DefaultSocket;

    .line 140
    .line 141
    if-eqz p1, :cond_8

    .line 142
    .line 143
    iget-object p1, p1, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast p1, Landroid/widget/TextView;

    .line 146
    .line 147
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 148
    .line 149
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity;->getViewModel()Lorg/wikipedia/categories/CategoryActivityViewModel;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    iget-object v3, v3, Lorg/wikipedia/categories/CategoryActivityViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 154
    .line 155
    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lorg/wikipedia/categories/CategoryActivity;->binding:Lokio/internal/DefaultSocket;

    .line 167
    .line 168
    if-eqz p1, :cond_7

    .line 169
    .line 170
    iget-object p1, p1, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 173
    .line 174
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 175
    .line 176
    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lorg/wikipedia/categories/CategoryActivity;->binding:Lokio/internal/DefaultSocket;

    .line 183
    .line 184
    if-eqz p1, :cond_6

    .line 185
    .line 186
    iget-object p1, p1, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 189
    .line 190
    new-instance v3, Lorg/wikipedia/views/DrawableItemDecoration;

    .line 191
    .line 192
    const/16 v5, 0x10

    .line 193
    .line 194
    invoke-direct {v3, p0, v2, v2, v5}, Lorg/wikipedia/views/DrawableItemDecoration;-><init>(Landroid/content/Context;ZZI)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lorg/wikipedia/categories/CategoryActivity;->binding:Lokio/internal/DefaultSocket;

    .line 201
    .line 202
    if-eqz p1, :cond_5

    .line 203
    .line 204
    iget-object p1, p1, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 207
    .line 208
    iget-object v3, p0, Lorg/wikipedia/categories/CategoryActivity;->categoryMembersConcatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

    .line 209
    .line 210
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 211
    .line 212
    .line 213
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    new-instance v3, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;

    .line 218
    .line 219
    invoke-direct {v3, p0, v1, v2}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 220
    .line 221
    .line 222
    const/4 v2, 0x3

    .line 223
    invoke-static {p1, v1, v1, v3, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 224
    .line 225
    .line 226
    iget-object p1, p0, Lorg/wikipedia/categories/CategoryActivity;->binding:Lokio/internal/DefaultSocket;

    .line 227
    .line 228
    if-eqz p1, :cond_4

    .line 229
    .line 230
    iget-object p1, p1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    .line 233
    .line 234
    new-instance v2, Lorg/wikipedia/views/LanguageScrollView$1;

    .line 235
    .line 236
    const/4 v3, 0x2

    .line 237
    invoke-direct {v2, v3, p0}, Lorg/wikipedia/views/LanguageScrollView$1;-><init>(ILjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 241
    .line 242
    .line 243
    iget-object p1, p0, Lorg/wikipedia/categories/CategoryActivity;->binding:Lokio/internal/DefaultSocket;

    .line 244
    .line 245
    if-eqz p1, :cond_3

    .line 246
    .line 247
    iget-object p1, p1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    .line 250
    .line 251
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity;->getViewModel()Lorg/wikipedia/categories/CategoryActivityViewModel;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    iget-boolean p0, p0, Lorg/wikipedia/categories/CategoryActivityViewModel;->showSubcategories:Z

    .line 256
    .line 257
    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    invoke-virtual {p1, p0, v4}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v1

    .line 269
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw v1

    .line 273
    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw v1

    .line 277
    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw v1

    .line 281
    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw v1

    .line 285
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw v1

    .line 289
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    throw v1

    .line 293
    :cond_a
    const-string p0, "Attribute not found; ID=16842836"

    .line 294
    .line 295
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    const-string p1, "Missing required view with ID: "

    .line 308
    .line 309
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p0

    .line 313
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0e0006

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x7f090397

    .line 9
    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity;->getViewModel()Lorg/wikipedia/categories/CategoryActivityViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget-object p0, p0, Lorg/wikipedia/categories/CategoryActivityViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v0, Lorg/wikipedia/categories/CategoryDialog;

    .line 27
    .line 28
    invoke-direct {v0}, Lorg/wikipedia/categories/CategoryDialog;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lkotlin/Pair;

    .line 32
    .line 33
    const-string v2, "title"

    .line 34
    .line 35
    invoke-direct {v1, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    new-array v2, p0, [Lkotlin/Pair;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    aput-object v1, v2, v3

    .line 43
    .line 44
    invoke-static {v2}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v0}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 52
    .line 53
    .line 54
    return p0

    .line 55
    :cond_0
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0
.end method

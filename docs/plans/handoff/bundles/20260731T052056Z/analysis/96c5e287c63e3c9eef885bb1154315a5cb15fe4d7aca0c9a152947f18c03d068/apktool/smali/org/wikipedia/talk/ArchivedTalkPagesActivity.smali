.class public final Lorg/wikipedia/talk/ArchivedTalkPagesActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001:\u0008\u0004\u0005\u0006\u0007\u0008\t\n\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/wikipedia/talk/ArchivedTalkPagesActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "<init>",
        "()V",
        "LoadingItemAdapter",
        "DiffLinesAdapter",
        "CategoryMemberDiffCallback",
        "CategoryMembersAdapter",
        "LoadingViewHolder",
        "EmptyViewHolder",
        "ArchivedTalkPageItemHolder",
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


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final archivedTalkPagesAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

.field public final archivedTalkPagesConcatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

.field public final archivedTalkPagesLoadFooter:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

.field public final archivedTalkPagesLoadHeader:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

.field public binding:Lretrofit2/OkHttpCall$1;

.field public final itemCallback:Lorg/wikipedia/media/AvPlayer;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;-><init>(Lorg/wikipedia/talk/ArchivedTalkPagesActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->archivedTalkPagesAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 10
    .line 11
    new-instance v1, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 12
    .line 13
    new-instance v2, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/talk/ArchivedTalkPagesActivity;I)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x3

    .line 20
    invoke-direct {v1, p0, v2, v4}, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;I)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->archivedTalkPagesLoadHeader:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 24
    .line 25
    new-instance v2, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 26
    .line 27
    new-instance v5, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    invoke-direct {v5, p0, v6}, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/talk/ArchivedTalkPagesActivity;I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, p0, v5, v4}, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;I)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->archivedTalkPagesLoadFooter:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->withLoadStateHeaderAndFooter(Landroidx/paging/LoadStateAdapter;Landroidx/paging/LoadStateAdapter;)Landroidx/recyclerview/widget/ConcatAdapter;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->archivedTalkPagesConcatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

    .line 43
    .line 44
    new-instance v0, Lorg/wikipedia/media/AvPlayer;

    .line 45
    .line 46
    const/16 v1, 0x18

    .line 47
    .line 48
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->itemCallback:Lorg/wikipedia/media/AvPlayer;

    .line 52
    .line 53
    new-instance v0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$special$$inlined$viewModels$default$1;

    .line 54
    .line 55
    invoke-direct {v0, p0, v3}, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/talk/ArchivedTalkPagesActivity;I)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lokhttp3/Request$Builder;

    .line 59
    .line 60
    const-class v2, Lorg/wikipedia/talk/ArchivedTalkPagesViewModel;

    .line 61
    .line 62
    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 63
    .line 64
    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    new-instance v3, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$special$$inlined$viewModels$default$1;

    .line 69
    .line 70
    invoke-direct {v3, p0, v6}, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/talk/ArchivedTalkPagesActivity;I)V

    .line 71
    .line 72
    .line 73
    new-instance v4, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$special$$inlined$viewModels$default$1;

    .line 74
    .line 75
    const/4 v5, 0x2

    .line 76
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/talk/ArchivedTalkPagesActivity;I)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, v2, v3, v0, v4}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

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
    const v0, 0x7f0c001c

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
    const v0, 0x7f090569

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    if-eqz v3, :cond_b

    .line 27
    .line 28
    const v0, 0x7f0906cb

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 36
    .line 37
    if-eqz v4, :cond_b

    .line 38
    .line 39
    new-instance v0, Lretrofit2/OkHttpCall$1;

    .line 40
    .line 41
    check-cast p1, Landroid/widget/FrameLayout;

    .line 42
    .line 43
    const/4 v5, 0x1

    .line 44
    invoke-direct {v0, p1, v3, v4, v5}, Lretrofit2/OkHttpCall$1;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;I)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->binding:Lretrofit2/OkHttpCall$1;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->binding:Lretrofit2/OkHttpCall$1;

    .line 53
    .line 54
    const-string v0, "binding"

    .line 55
    .line 56
    if-eqz p1, :cond_a

    .line 57
    .line 58
    iget-object p1, p1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 66
    .line 67
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lorg/wikipedia/talk/ArchivedTalkPagesViewModel;

    .line 72
    .line 73
    iget-object p1, p1, Lorg/wikipedia/talk/ArchivedTalkPagesViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 74
    .line 75
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 76
    .line 77
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const/16 v3, 0x3a

    .line 82
    .line 83
    invoke-static {p1, v3}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string v3, "<a href=\'#\'>"

    .line 88
    .line 89
    const-string v4, "</a>"

    .line 90
    .line 91
    invoke-static {v3, p1, v4}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    new-array v3, v5, [Ljava/lang/Object;

    .line 96
    .line 97
    aput-object p1, v3, v2

    .line 98
    .line 99
    const p1, 0x7f120936

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object v3, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->binding:Lretrofit2/OkHttpCall$1;

    .line 111
    .line 112
    if-eqz v3, :cond_9

    .line 113
    .line 114
    iget-object v3, v3, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v3, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 117
    .line 118
    move v4, v2

    .line 119
    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-ge v4, v6, :cond_2

    .line 124
    .line 125
    add-int/lit8 v6, v4, 0x1

    .line 126
    .line 127
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    if-eqz v4, :cond_1

    .line 132
    .line 133
    instance-of v7, v4, Landroid/widget/TextView;

    .line 134
    .line 135
    if-eqz v7, :cond_0

    .line 136
    .line 137
    check-cast v4, Landroid/widget/TextView;

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_0
    move v4, v6

    .line 141
    goto :goto_0

    .line 142
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 143
    .line 144
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 145
    .line 146
    .line 147
    throw p0

    .line 148
    :cond_2
    move-object v4, v1

    .line 149
    :goto_1
    if-eqz v4, :cond_3

    .line 150
    .line 151
    invoke-virtual {v4, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    new-instance v3, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 155
    .line 156
    new-instance v6, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;

    .line 157
    .line 158
    const/16 v7, 0x9

    .line 159
    .line 160
    invoke-direct {v6, v7, p0}, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-direct {v3, v6}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 167
    .line 168
    .line 169
    new-array v3, v5, [Landroid/view/View;

    .line 170
    .line 171
    aput-object v4, v3, v2

    .line 172
    .line 173
    aget-object v3, v3, v2

    .line 174
    .line 175
    invoke-virtual {v3}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-static {v3, v4}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    if-eqz v3, :cond_4

    .line 187
    .line 188
    invoke-virtual {v3, p1}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    if-eqz p1, :cond_5

    .line 196
    .line 197
    invoke-virtual {p1, v5}, Lcoil3/util/ContextsKt;->setDisplayHomeAsUpEnabled(Z)V

    .line 198
    .line 199
    .line 200
    :cond_5
    iget-object p1, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->binding:Lretrofit2/OkHttpCall$1;

    .line 201
    .line 202
    if-eqz p1, :cond_8

    .line 203
    .line 204
    iget-object p1, p1, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 207
    .line 208
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 209
    .line 210
    invoke-direct {v3, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->binding:Lretrofit2/OkHttpCall$1;

    .line 217
    .line 218
    if-eqz p1, :cond_7

    .line 219
    .line 220
    iget-object p1, p1, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 223
    .line 224
    new-instance v3, Lorg/wikipedia/views/DrawableItemDecoration;

    .line 225
    .line 226
    const/16 v4, 0x10

    .line 227
    .line 228
    invoke-direct {v3, p0, v2, v2, v4}, Lorg/wikipedia/views/DrawableItemDecoration;-><init>(Landroid/content/Context;ZZI)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->binding:Lretrofit2/OkHttpCall$1;

    .line 235
    .line 236
    if-eqz p1, :cond_6

    .line 237
    .line 238
    iget-object p1, p1, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 241
    .line 242
    iget-object v0, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->archivedTalkPagesConcatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

    .line 243
    .line 244
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 245
    .line 246
    .line 247
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    new-instance v0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1;

    .line 252
    .line 253
    invoke-direct {v0, p0, v1, v2}, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1;-><init>(Lorg/wikipedia/talk/ArchivedTalkPagesActivity;Lkotlin/coroutines/Continuation;I)V

    .line 254
    .line 255
    .line 256
    const/4 p0, 0x3

    .line 257
    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw v1

    .line 265
    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v1

    .line 269
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw v1

    .line 273
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw v1

    .line 277
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw v1

    .line 281
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    const-string p1, "Missing required view with ID: "

    .line 290
    .line 291
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    return-void
.end method

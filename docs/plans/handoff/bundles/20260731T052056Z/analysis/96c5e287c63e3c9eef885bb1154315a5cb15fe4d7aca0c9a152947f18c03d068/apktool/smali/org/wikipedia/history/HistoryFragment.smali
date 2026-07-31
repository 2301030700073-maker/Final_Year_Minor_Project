.class public final Lorg/wikipedia/history/HistoryFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/BackPressedHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0008\u0005\u0006\u0007\u0008\t\n\u000b\u000cB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/wikipedia/history/HistoryFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lorg/wikipedia/BackPressedHandler;",
        "<init>",
        "()V",
        "Callback",
        "HeaderViewHolder",
        "SearchCardViewHolder",
        "HistoryEntryItemHolder",
        "HistoryEntryItemAdapter",
        "org/wikipedia/media/AvPlayer",
        "HistorySearchCallback",
        "SearchBar",
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
.field public _binding:Lokio/internal/DefaultSocket;

.field public actionMode:Landroidx/appcompat/view/ActionMode;

.field public final adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

.field public final itemCallback:Lorg/wikipedia/media/AvPlayer;

.field public final searchActionModeCallback:Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;

.field public final selectedEntries:Ljava/util/LinkedHashSet;

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
    const/16 v1, 0x10

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
    const/16 v3, 0x11

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
    const-class v1, Lorg/wikipedia/history/HistoryViewModel;

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
    const/16 v3, 0x1a

    .line 35
    .line 36
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 40
    .line 41
    const/16 v4, 0x1b

    .line 42
    .line 43
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 44
    .line 45
    .line 46
    new-instance v4, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;

    .line 47
    .line 48
    const/16 v5, 0x8

    .line 49
    .line 50
    invoke-direct {v4, p0, v0, v5}, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;I)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lokhttp3/Request$Builder;

    .line 54
    .line 55
    invoke-direct {v0, v1, v2, v4, v3}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 59
    .line 60
    new-instance v0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;-><init>(Lorg/wikipedia/history/HistoryFragment;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    .line 66
    .line 67
    new-instance v0, Lorg/wikipedia/media/AvPlayer;

    .line 68
    .line 69
    const/16 v1, 0xb

    .line 70
    .line 71
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->itemCallback:Lorg/wikipedia/media/AvPlayer;

    .line 75
    .line 76
    new-instance v0, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->searchActionModeCallback:Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;

    .line 83
    .line 84
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->selectedEntries:Ljava/util/LinkedHashSet;

    .line 90
    .line 91
    return-void
.end method


# virtual methods
.method public final deleteSelectedPages$1()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryFragment;->getViewModel()Lorg/wikipedia/history/HistoryViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment;->selectedEntries:Ljava/util/LinkedHashSet;

    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, v0, Lorg/wikipedia/history/HistoryViewModel;->handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 16
    .line 17
    new-instance v3, Lorg/wikipedia/WikipediaApp$logOut$2;

    .line 18
    .line 19
    const/4 v4, 0x6

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-direct {v3, p0, v0, v5, v4}, Lorg/wikipedia/WikipediaApp$logOut$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x2

    .line 25
    invoke-static {v1, v2, v5, v3, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final getViewModel()Lorg/wikipedia/history/HistoryViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/history/HistoryViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onBackPressed()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 7
    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->selectedEntries:Ljava/util/LinkedHashSet;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-lez v2, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment;->adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    .line 23
    .line 24
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p0, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 31
    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    return v3
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p3, 0x7f0c0195

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
    const p2, 0x7f0902a2

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    move-object v2, p3

    .line 20
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const p2, 0x7f0902a3

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    check-cast p3, Landroid/widget/ImageView;

    .line 32
    .line 33
    if-eqz p3, :cond_0

    .line 34
    .line 35
    const p2, 0x7f0902a4

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    check-cast p3, Landroid/widget/TextView;

    .line 43
    .line 44
    if-eqz p3, :cond_0

    .line 45
    .line 46
    const p2, 0x7f0902a5

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    check-cast p3, Landroid/widget/TextView;

    .line 54
    .line 55
    if-eqz p3, :cond_0

    .line 56
    .line 57
    const p2, 0x7f0902a7

    .line 58
    .line 59
    .line 60
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    move-object v3, p3

    .line 65
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    if-eqz v3, :cond_0

    .line 68
    .line 69
    const p2, 0x7f0905c6

    .line 70
    .line 71
    .line 72
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    move-object v4, p3

    .line 77
    check-cast v4, Lorg/wikipedia/views/SearchEmptyView;

    .line 78
    .line 79
    if-eqz v4, :cond_0

    .line 80
    .line 81
    new-instance v0, Lokio/internal/DefaultSocket;

    .line 82
    .line 83
    move-object v1, p1

    .line 84
    check-cast v1, Landroid/widget/FrameLayout;

    .line 85
    .line 86
    const/16 v5, 0xf

    .line 87
    .line 88
    invoke-direct/range {v0 .. v5}, Lokio/internal/DefaultSocket;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 92
    .line 93
    const p1, 0x7f120847

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, p1}, Lorg/wikipedia/views/SearchEmptyView;->setEmptyText(I)V

    .line 97
    .line 98
    .line 99
    new-instance p1, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;

    .line 100
    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-direct {p1, p2}, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;-><init>(Landroid/content/Context;)V

    .line 106
    .line 107
    .line 108
    const/4 p2, 0x1

    .line 109
    iput-boolean p2, p1, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeableEnabled:Z

    .line 110
    .line 111
    new-instance p3, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 112
    .line 113
    invoke-direct {p3, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    iget-object p1, p1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 124
    .line 125
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    iget-object p1, p1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 136
    .line 137
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 138
    .line 139
    invoke-direct {p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    iget-object p1, p1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 153
    .line 154
    iget-object p3, p0, Lorg/wikipedia/history/HistoryFragment;->adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    .line 155
    .line 156
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    iget-object p1, p1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 167
    .line 168
    const/16 p3, 0x8

    .line 169
    .line 170
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    iget-object p1, p1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 181
    .line 182
    new-instance p3, Landroidx/recyclerview/widget/FastScroller$2;

    .line 183
    .line 184
    invoke-direct {p3, p2, p0}, Landroidx/recyclerview/widget/FastScroller$2;-><init>(ILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 188
    .line 189
    .line 190
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 191
    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    iget-object p0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast p0, Landroid/widget/FrameLayout;

    .line 198
    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    return-object p0

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    const-string p1, "Missing required view with ID: "

    .line 212
    .line 213
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const/4 p0, 0x0

    .line 221
    return-object p0
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    .line 31
    .line 32
    iget-object v0, v0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lorg/wikipedia/history/HistoryFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 41
    .line 42
    return-void
.end method

.method public final onLoadItemsFinished(Ljava/util/List;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/wikipedia/history/HistoryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, v1, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    const-string v2, "searchActionMode"

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    new-instance v1, Lorg/wikipedia/history/HistoryFragment$SearchBar;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment;->adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iput-object v0, p1, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/ArrayList;

    .line 39
    .line 40
    iget-object v0, p1, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->this$0:Lorg/wikipedia/history/HistoryFragment;

    .line 41
    .line 42
    iget-object v0, v0, Lorg/wikipedia/history/HistoryFragment;->adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryFragment;->getViewModel()Lorg/wikipedia/history/HistoryViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v0, v0, Lorg/wikipedia/history/HistoryViewModel;->searchQuery:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    const/16 v2, 0x8

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    iget-object v0, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Lorg/wikipedia/views/SearchEmptyView;

    .line 73
    .line 74
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    move v1, v2

    .line 82
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    iget-object p1, p1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 93
    .line 94
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    iget-object v0, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Lorg/wikipedia/views/SearchEmptyView;

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    iget-object v0, v0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 118
    .line 119
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_5

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_5
    move v1, v2

    .line 127
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 135
    .line 136
    .line 137
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
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryFragment;->getViewModel()Lorg/wikipedia/history/HistoryViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryViewModel;->reloadHistoryItems()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryFragment;->getViewModel()Lorg/wikipedia/history/HistoryViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lorg/wikipedia/history/HistoryViewModel;->historyItems:Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance v0, Lorg/wikipedia/history/HistoryFragment$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/history/HistoryFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/history/HistoryFragment;I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryFragment;->getViewModel()Lorg/wikipedia/history/HistoryViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p1, p1, Lorg/wikipedia/history/HistoryViewModel;->deleteHistoryItemsAction:Lorg/wikipedia/util/SingleLiveData;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    new-instance v0, Lorg/wikipedia/history/HistoryFragment$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/history/HistoryFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/history/HistoryFragment;I)V

    .line 43
    .line 44
    .line 45
    new-instance p0, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;

    .line 46
    .line 47
    invoke-direct {p0, v0, v2}, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2, p0}, Lorg/wikipedia/util/SingleLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final refresh()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 14
    .line 15
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 26
    .line 27
    new-array v0, v2, [Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const v3, 0x7f120608

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v2, v1, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v4, 0x1

    .line 49
    invoke-static {v1, v2, v0, v4}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const v0, 0x7f12026e

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void
.end method

.method public final toggleSelectPage(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment;->selectedEntries:Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lorg/wikipedia/history/HistoryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x1

    .line 44
    new-array v4, v4, [Ljava/lang/Object;

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    aput-object v3, v4, v5

    .line 48
    .line 49
    const v3, 0x7f100010

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v1, v0}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_1
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment;->adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

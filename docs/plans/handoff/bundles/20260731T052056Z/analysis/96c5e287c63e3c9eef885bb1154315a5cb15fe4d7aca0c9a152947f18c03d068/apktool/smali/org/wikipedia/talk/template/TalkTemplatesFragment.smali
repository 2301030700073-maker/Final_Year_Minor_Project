.class public final Lorg/wikipedia/talk/template/TalkTemplatesFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001:\u0004\u0004\u0005\u0006\u0007B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0008"
    }
    d2 = {
        "Lorg/wikipedia/talk/template/TalkTemplatesFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "TalkTemplatesItemViewHolder",
        "RecyclerAdapter",
        "MultiSelectCallback",
        "RearrangeableItemTouchHelperCallback",
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

.field public actionMode:Landroidx/appcompat/view/ActionMode;

.field public adapter:Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;

.field public final deletedItems:Ljava/util/ArrayList;

.field public itemSwipeTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public final multiSelectCallback:Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

.field public final requestEditTemplate:Landroidx/fragment/app/Fragment$10;

.field public final requestNewTemplate:Landroidx/fragment/app/Fragment$10;

.field public final selectedItems:Ljava/util/ArrayList;

.field public touchCallback:Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    const/16 v1, 0xf

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;

    .line 14
    .line 15
    const/16 v3, 0x10

    .line 16
    .line 17
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-class v1, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

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
    new-instance v2, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 33
    .line 34
    const/16 v3, 0x18

    .line 35
    .line 36
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 40
    .line 41
    const/16 v4, 0x19

    .line 42
    .line 43
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 44
    .line 45
    .line 46
    new-instance v4, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;

    .line 47
    .line 48
    const/16 v5, 0x16

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
    iput-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 59
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->selectedItems:Ljava/util/ArrayList;

    .line 66
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->deletedItems:Ljava/util/ArrayList;

    .line 73
    .line 74
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

    .line 75
    .line 76
    const/4 v1, 0x4

    .line 77
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;-><init>(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->multiSelectCallback:Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

    .line 81
    .line 82
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 83
    .line 84
    const/4 v1, 0x3

    .line 85
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 86
    .line 87
    .line 88
    new-instance v2, Lorg/wikipedia/talk/template/TalkTemplatesFragment$$ExternalSyntheticLambda0;

    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/talk/template/TalkTemplatesFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/talk/template/TalkTemplatesFragment;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 99
    .line 100
    iput-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->requestNewTemplate:Landroidx/fragment/app/Fragment$10;

    .line 101
    .line 102
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 103
    .line 104
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 105
    .line 106
    .line 107
    new-instance v1, Lorg/wikipedia/talk/template/TalkTemplatesFragment$$ExternalSyntheticLambda0;

    .line 108
    .line 109
    const/4 v2, 0x1

    .line 110
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/talk/template/TalkTemplatesFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/talk/template/TalkTemplatesFragment;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 118
    .line 119
    iput-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->requestEditTemplate:Landroidx/fragment/app/Fragment$10;

    .line 120
    .line 121
    return-void
.end method


# virtual methods
.method public final deleteSelectedTalkTemplates()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->deletedItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->selectedItems:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v2, p0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->actionExceptionHandler:Lorg/wikipedia/talk/template/TalkTemplatesViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 23
    .line 24
    new-instance v3, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 25
    .line 26
    const/16 v4, 0x8

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-direct {v3, p0, v1, v5, v4}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x2

    .line 33
    invoke-static {v0, v2, v5, v3, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 8
    .line 9
    return-object p0
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
    const v1, 0x7f0c01b3

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
    const v3, 0x7f090052

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
    check-cast v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v7, :cond_a

    .line 30
    .line 31
    const v3, 0x7f090179

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
    check-cast v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 40
    .line 41
    if-eqz v8, :cond_a

    .line 42
    .line 43
    const v3, 0x7f09067b

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
    check-cast v9, Landroid/widget/LinearLayout;

    .line 52
    .line 53
    if-eqz v9, :cond_a

    .line 54
    .line 55
    const v3, 0x7f09067c

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
    check-cast v10, Landroid/widget/TextView;

    .line 64
    .line 65
    if-eqz v10, :cond_a

    .line 66
    .line 67
    const v3, 0x7f09067d

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
    check-cast v11, Lorg/wikipedia/views/WikiErrorView;

    .line 76
    .line 77
    if-eqz v11, :cond_a

    .line 78
    .line 79
    const v3, 0x7f09067e

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
    check-cast v12, Landroid/widget/ProgressBar;

    .line 88
    .line 89
    if-eqz v12, :cond_a

    .line 90
    .line 91
    const v3, 0x7f09067f

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    move-object v13, v5

    .line 99
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    .line 101
    if-eqz v13, :cond_a

    .line 102
    .line 103
    const v3, 0x7f090680

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    move-object v14, v5

    .line 111
    check-cast v14, Lcom/google/android/material/tabs/TabLayout;

    .line 112
    .line 113
    if-eqz v14, :cond_a

    .line 114
    .line 115
    const v3, 0x7f090681

    .line 116
    .line 117
    .line 118
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout;

    .line 123
    .line 124
    if-eqz v5, :cond_a

    .line 125
    .line 126
    const v3, 0x7f0906ca

    .line 127
    .line 128
    .line 129
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    move-object v15, v5

    .line 134
    check-cast v15, Landroid/widget/TextView;

    .line 135
    .line 136
    if-eqz v15, :cond_a

    .line 137
    .line 138
    const v3, 0x7f0906cb

    .line 139
    .line 140
    .line 141
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    move-object/from16 v16, v5

    .line 146
    .line 147
    check-cast v16, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 148
    .line 149
    if-eqz v16, :cond_a

    .line 150
    .line 151
    new-instance v5, Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 152
    .line 153
    move-object v6, v1

    .line 154
    check-cast v6, Landroid/widget/LinearLayout;

    .line 155
    .line 156
    invoke-direct/range {v5 .. v16}, Lorg/wikipedia/databinding/ActivityLoginBinding;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lorg/wikipedia/views/WikiErrorView;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;Lcom/google/android/material/appbar/MaterialToolbar;)V

    .line 157
    .line 158
    .line 159
    iput-object v5, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 160
    .line 161
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iget-object v3, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    iget-object v3, v3, Lorg/wikipedia/databinding/ActivityLoginBinding;->toolbar:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v3, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 173
    .line 174
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    const/4 v3, 0x1

    .line 186
    if-eqz v1, :cond_0

    .line 187
    .line 188
    invoke-virtual {v1, v3}, Lcoil3/util/ContextsKt;->setDisplayHomeAsUpEnabled(Z)V

    .line 189
    .line 190
    .line 191
    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    iget-boolean v1, v1, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->templateManagementMode:Z

    .line 196
    .line 197
    if-eqz v1, :cond_1

    .line 198
    .line 199
    const v1, 0x7f12098a

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    goto :goto_0

    .line 210
    :cond_1
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 211
    .line 212
    invoke-virtual {v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    iget-object v1, v1, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 217
    .line 218
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getNamespace()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    if-nez v5, :cond_2

    .line 227
    .line 228
    invoke-virtual {v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    iget-object v1, v1, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 233
    .line 234
    iget-object v1, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 235
    .line 236
    iget-object v1, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 237
    .line 238
    invoke-static {v1}, Lorg/wikipedia/staticdata/TalkAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    :cond_2
    invoke-virtual {v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    iget-object v5, v5, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 247
    .line 248
    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    const/16 v6, 0x3a

    .line 253
    .line 254
    invoke-static {v5, v6}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    new-instance v6, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v1, ": <a href=\'#\'>"

    .line 267
    .line 268
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v1, "</a>"

    .line 275
    .line 276
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    if-nez v5, :cond_3

    .line 296
    .line 297
    const v1, 0x7f12094e

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    :cond_3
    :goto_0
    iget-object v5, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 308
    .line 309
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    iget-object v5, v5, Lorg/wikipedia/databinding/ActivityLoginBinding;->toolbar:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast v5, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 315
    .line 316
    move v6, v2

    .line 317
    :goto_1
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 318
    .line 319
    .line 320
    move-result v7

    .line 321
    if-ge v6, v7, :cond_6

    .line 322
    .line 323
    add-int/lit8 v7, v6, 0x1

    .line 324
    .line 325
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    if-eqz v6, :cond_5

    .line 330
    .line 331
    instance-of v8, v6, Landroid/widget/TextView;

    .line 332
    .line 333
    if-eqz v8, :cond_4

    .line 334
    .line 335
    check-cast v6, Landroid/widget/TextView;

    .line 336
    .line 337
    goto :goto_2

    .line 338
    :cond_4
    move v6, v7

    .line 339
    goto :goto_1

    .line 340
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 341
    .line 342
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 343
    .line 344
    .line 345
    throw v0

    .line 346
    :cond_6
    move-object v6, v4

    .line 347
    :goto_2
    if-eqz v6, :cond_7

    .line 348
    .line 349
    new-instance v5, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 350
    .line 351
    new-instance v7, Lorg/wikipedia/talk/template/TalkTemplatesFragment$$ExternalSyntheticLambda0;

    .line 352
    .line 353
    const/4 v8, 0x3

    .line 354
    invoke-direct {v7, v0, v8}, Lorg/wikipedia/talk/template/TalkTemplatesFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/talk/template/TalkTemplatesFragment;I)V

    .line 355
    .line 356
    .line 357
    invoke-direct {v5, v7}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 361
    .line 362
    .line 363
    :cond_7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    if-eqz v5, :cond_8

    .line 372
    .line 373
    invoke-virtual {v5, v1}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 374
    .line 375
    .line 376
    :cond_8
    iget-object v1, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 377
    .line 378
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 382
    .line 383
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 384
    .line 385
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 386
    .line 387
    .line 388
    new-instance v1, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;

    .line 389
    .line 390
    invoke-direct {v1, v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;-><init>(Lorg/wikipedia/talk/template/TalkTemplatesFragment;)V

    .line 391
    .line 392
    .line 393
    iput-object v1, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->adapter:Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;

    .line 394
    .line 395
    iget-object v1, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 396
    .line 397
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 403
    .line 404
    iget-object v5, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->adapter:Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;

    .line 405
    .line 406
    if-eqz v5, :cond_9

    .line 407
    .line 408
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 409
    .line 410
    .line 411
    iget-object v1, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 412
    .line 413
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 417
    .line 418
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 419
    .line 420
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 421
    .line 422
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 423
    .line 424
    .line 425
    invoke-direct {v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 429
    .line 430
    .line 431
    iget-object v1, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 432
    .line 433
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 437
    .line 438
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 439
    .line 440
    new-instance v4, Lorg/wikipedia/views/DrawableItemDecoration;

    .line 441
    .line 442
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    const/16 v6, 0x10

    .line 447
    .line 448
    invoke-direct {v4, v5, v3, v2, v6}, Lorg/wikipedia/views/DrawableItemDecoration;-><init>(Landroid/content/Context;ZZI)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 452
    .line 453
    .line 454
    iget-object v0, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 460
    .line 461
    check-cast v0, Landroid/widget/LinearLayout;

    .line 462
    .line 463
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 464
    .line 465
    .line 466
    return-object v0

    .line 467
    :cond_9
    const-string v0, "adapter"

    .line 468
    .line 469
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    throw v4

    .line 473
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    const-string v1, "Missing required view with ID: "

    .line 482
    .line 483
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    return-object v4
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 6
    .line 7
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 12
    .line 13
    new-instance p2, Lorg/wikipedia/talk/template/TalkTemplatesFragment$$ExternalSyntheticLambda2;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p2, p0, v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/talk/template/TalkTemplatesFragment;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance p2, Lorg/wikipedia/talk/template/TalkTemplatesFragment$onViewCreated$2;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {p2, p0, v1, v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment$onViewCreated$2;-><init>(Lorg/wikipedia/talk/template/TalkTemplatesFragment;Lkotlin/coroutines/Continuation;I)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x3

    .line 37
    invoke-static {p1, v1, v1, p2, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->captchaContainer:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 48
    .line 49
    new-instance p2, Lorg/wikipedia/talk/template/TalkTemplatesFragment$$ExternalSyntheticLambda2;

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    invoke-direct {p2, p0, v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/talk/template/TalkTemplatesFragment;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Landroid/widget/TextView;

    .line 66
    .line 67
    new-instance p2, Lorg/wikipedia/talk/template/TalkTemplatesFragment$$ExternalSyntheticLambda2;

    .line 68
    .line 69
    const/4 v2, 0x2

    .line 70
    invoke-direct {p2, p0, v2}, Lorg/wikipedia/talk/template/TalkTemplatesFragment$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/talk/template/TalkTemplatesFragment;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    .line 84
    .line 85
    new-instance p2, Lorg/wikipedia/views/LanguageScrollView$1;

    .line 86
    .line 87
    const/4 v3, 0x4

    .line 88
    invoke-direct {p2, v3, p0}, Lorg/wikipedia/views/LanguageScrollView$1;-><init>(ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 92
    .line 93
    .line 94
    new-instance p1, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;

    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-direct {p1, p2}, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;-><init>(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    iput-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->touchCallback:Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;

    .line 104
    .line 105
    iput-boolean v0, p1, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeableEnabled:Z

    .line 106
    .line 107
    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 108
    .line 109
    new-instance p2, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;

    .line 110
    .line 111
    iget-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->adapter:Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;

    .line 112
    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    invoke-direct {p2, p0, v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;-><init>(Lorg/wikipedia/talk/template/TalkTemplatesFragment;Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 119
    .line 120
    .line 121
    iput-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 122
    .line 123
    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 124
    .line 125
    iget-object p2, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->touchCallback:Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;

    .line 126
    .line 127
    if-eqz p2, :cond_2

    .line 128
    .line 129
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 130
    .line 131
    .line 132
    iput-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->itemSwipeTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 133
    .line 134
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 135
    .line 136
    if-eqz p1, :cond_1

    .line 137
    .line 138
    iget-object p2, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 139
    .line 140
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    iget-object p2, p2, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 146
    .line 147
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->itemSwipeTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 151
    .line 152
    if-eqz p1, :cond_0

    .line 153
    .line 154
    iget-object p2, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 155
    .line 156
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    iget-object p2, p2, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 162
    .line 163
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast p1, Landroid/widget/TextView;

    .line 174
    .line 175
    sget-object p2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 176
    .line 177
    const p2, 0x7f120969

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast p1, Landroid/widget/TextView;

    .line 199
    .line 200
    new-instance p2, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 201
    .line 202
    new-instance v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$$ExternalSyntheticLambda0;

    .line 203
    .line 204
    invoke-direct {v0, p0, v2}, Lorg/wikipedia/talk/template/TalkTemplatesFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/talk/template/TalkTemplatesFragment;I)V

    .line 205
    .line 206
    .line 207
    invoke-direct {p2, v0}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :cond_0
    const-string p0, "itemSwipeTouchHelper"

    .line 215
    .line 216
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v1

    .line 220
    :cond_1
    const-string p0, "itemTouchHelper"

    .line 221
    .line 222
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw v1

    .line 226
    :cond_2
    const-string/jumbo p0, "touchCallback"

    .line 227
    .line 228
    .line 229
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw v1

    .line 233
    :cond_3
    const-string p0, "adapter"

    .line 234
    .line 235
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw v1
.end method

.method public final setMultiSelectEnabled$1(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->adapter:Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;->checkboxEnabled:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p1, p1, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->talkTemplatesList:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string p0, "adapter"

    .line 30
    .line 31
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    throw p0
.end method

.method public final toggleSelectedItem(Lorg/wikipedia/talk/db/TalkTemplate;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->selectedItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x1

    .line 29
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    aput-object v0, v1, v2

    .line 33
    .line 34
    const v0, 0x7f120459

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public final unselectAllTalkTemplates()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->selectedItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x1

    .line 19
    new-array v2, v2, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object v0, v2, v3

    .line 23
    .line 24
    const v0, 0x7f120459

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v1, v0}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->updateAndNotifyAdapter()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final updateAndNotifyAdapter()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->adapter:Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "adapter"

    .line 5
    .line 6
    if-eqz v0, :cond_7

    .line 7
    .line 8
    iget-object v0, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;->templatesList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->adapter:Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;

    .line 14
    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    iget-object v0, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;->templatesList:Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v3, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v3, v3, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Lcom/google/android/material/tabs/TabLayout;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object v3, v3, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->talkTemplatesList:Ljava/util/ArrayList;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object v3, v3, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->savedTemplatesList:Ljava/util/ArrayList;

    .line 46
    .line 47
    :goto_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Landroid/widget/LinearLayout;

    .line 58
    .line 59
    iget-object v3, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->adapter:Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;

    .line 60
    .line 61
    if-eqz v3, :cond_5

    .line 62
    .line 63
    iget-object v3, v3, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;->templatesList:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const/16 v4, 0x8

    .line 70
    .line 71
    const/4 v5, 0x0

    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    move v3, v5

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    move v3, v4

    .line 77
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    .line 89
    iget-object v3, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->adapter:Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;

    .line 90
    .line 91
    if-eqz v3, :cond_4

    .line 92
    .line 93
    iget-object v3, v3, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;->templatesList:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-nez v3, :cond_2

    .line 100
    .line 101
    move v4, v5

    .line 102
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->updateToolbarEditButton()V

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->adapter:Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;

    .line 109
    .line 110
    if-eqz p0, :cond_3

    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v1

    .line 120
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v1

    .line 124
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v1

    .line 128
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw v1

    .line 132
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v1
.end method

.method public final updateToolbarEditButton()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget-object p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->talkTemplatesList:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_0

    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/16 p0, 0x8

    .line 40
    .line 41
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

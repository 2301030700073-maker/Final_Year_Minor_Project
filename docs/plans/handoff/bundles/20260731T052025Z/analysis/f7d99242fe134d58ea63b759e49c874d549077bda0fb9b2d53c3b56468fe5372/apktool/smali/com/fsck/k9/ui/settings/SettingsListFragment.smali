.class public final Lcom/fsck/k9/ui/settings/SettingsListFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final fundingManager$delegate:Lkotlin/Lazy;

.field public itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

.field public final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/ui/settings/SettingsListFragment$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/settings/SettingsListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/settings/SettingsListFragment;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 11
    .line 12
    const/16 v2, 0x16

    .line 13
    .line 14
    invoke-direct {v1, v2, p0, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/SettingsListFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 24
    .line 25
    new-instance v0, Lcom/fsck/k9/ui/settings/SettingsListFragment$special$$inlined$inject$default$1;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/settings/SettingsListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/settings/SettingsListFragment;I)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 32
    .line 33
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/SettingsListFragment;->fundingManager$delegate:Lkotlin/Lazy;

    .line 38
    .line 39
    new-instance v0, Lcom/fsck/k9/ui/settings/SettingsListFragment$special$$inlined$inject$default$1;

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/ui/settings/SettingsListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/settings/SettingsListFragment;I)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p0, 0x7f0c0177

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p2, 0x7f0903bf

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    new-instance p2, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 17
    .line 18
    invoke-direct {p2}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/fsck/k9/ui/settings/SettingsListFragment;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 22
    .line 23
    new-instance p2, Lcom/mikepenz/fastadapter/drag/SimpleDragCallback;

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    .line 28
    .line 29
    .line 30
    const/4 v0, -0x1

    .line 31
    iput v0, p2, Lcom/mikepenz/fastadapter/drag/SimpleDragCallback;->from:I

    .line 32
    .line 33
    iput v0, p2, Lcom/mikepenz/fastadapter/drag/SimpleDragCallback;->to:I

    .line 34
    .line 35
    iput-object p0, p2, Lcom/mikepenz/fastadapter/drag/SimpleDragCallback;->callbackItemTouch:Lcom/fsck/k9/ui/settings/SettingsListFragment;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p2, Lcom/mikepenz/fastadapter/drag/SimpleDragCallback;->isDragEnabled:Z

    .line 39
    .line 40
    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 41
    .line 42
    invoke-direct {v2, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lcom/fsck/k9/ui/settings/SettingsListFragment;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz p2, :cond_3

    .line 49
    .line 50
    new-instance v4, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 51
    .line 52
    invoke-direct {v4}, Lcom/mikepenz/fastadapter/FastAdapter;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v5, v4, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v5, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v6, p2, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemList:Lcom/google/zxing/BinaryBitmap;

    .line 61
    .line 62
    invoke-static {v6}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eqz v7, :cond_0

    .line 67
    .line 68
    iput-object v4, v6, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 69
    .line 70
    :cond_0
    iput-object v4, p2, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    move v5, v1

    .line 77
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_2

    .line 82
    .line 83
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    add-int/lit8 v7, v5, 0x1

    .line 88
    .line 89
    if-ltz v5, :cond_1

    .line 90
    .line 91
    check-cast v6, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 92
    .line 93
    iput v5, v6, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->order:I

    .line 94
    .line 95
    move v5, v7

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 98
    .line 99
    .line 100
    throw v3

    .line 101
    :cond_2
    invoke-virtual {v4}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 105
    .line 106
    .line 107
    new-instance p2, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda11;

    .line 108
    .line 109
    const/16 v0, 0x9

    .line 110
    .line 111
    invoke-direct {p2, v0, p0}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    iput-object p2, v4, Lcom/mikepenz/fastadapter/FastAdapter;->onClickListener:Lkotlin/jvm/functions/Function4;

    .line 115
    .line 116
    new-instance p2, Lcom/fsck/k9/ui/settings/DragHandleTouchEvent;

    .line 117
    .line 118
    new-instance v0, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 119
    .line 120
    const/16 v3, 0x17

    .line 121
    .line 122
    invoke-direct {v0, v3, p1, v2}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p2, v0}, Lcom/fsck/k9/ui/settings/DragHandleTouchEvent;-><init>(Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->addEventHook(Lcom/mikepenz/fastadapter/listeners/EventHook;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 132
    .line 133
    .line 134
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 135
    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/SettingsListFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 150
    .line 151
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Lcom/fsck/k9/ui/settings/SettingsViewModel;

    .line 156
    .line 157
    iget-object p1, p1, Lcom/fsck/k9/ui/settings/SettingsViewModel;->accounts:Landroidx/lifecycle/CoroutineLiveData;

    .line 158
    .line 159
    new-instance p2, Lcom/fsck/k9/ui/settings/SettingsListFragment$$ExternalSyntheticLambda0;

    .line 160
    .line 161
    invoke-direct {p2, p0, v1}, Lcom/fsck/k9/ui/settings/SettingsListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/settings/SettingsListFragment;I)V

    .line 162
    .line 163
    .line 164
    invoke-static {p1, p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->observeNotNull(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_3
    const-string p0, "itemAdapter"

    .line 169
    .line 170
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v3
.end method

.class public final Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final folderIconProvider$delegate:Lkotlin/Lazy;

.field public final folderNameFormatter$delegate:Lkotlin/Lazy;

.field public itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

.field public final messagingController$delegate:Lkotlin/Lazy;

.field public final preferences$delegate:Lkotlin/Lazy;

.field public final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 11
    .line 12
    const/16 v2, 0xa

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
    iput-object v0, p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 24
    .line 25
    new-instance v0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment$special$$inlined$inject$default$1;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;I)V

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
    iput-object v0, p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;->folderNameFormatter$delegate:Lkotlin/Lazy;

    .line 38
    .line 39
    new-instance v0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment$special$$inlined$inject$default$1;

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;I)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;->messagingController$delegate:Lkotlin/Lazy;

    .line 50
    .line 51
    new-instance v0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment$special$$inlined$inject$default$1;

    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;->preferences$delegate:Lkotlin/Lazy;

    .line 62
    .line 63
    new-instance v0, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    const/16 v2, 0x10

    .line 66
    .line 67
    invoke-direct {v0, v2, p0}, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    new-instance v2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 71
    .line 72
    const/16 v3, 0x9

    .line 73
    .line 74
    invoke-direct {v2, v3, p0, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v2}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;->folderIconProvider$delegate:Lkotlin/Lazy;

    .line 82
    .line 83
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const-string v0, "account"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;->preferences$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iput-object v0, p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const-string p0, "Missing account: "

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    const-string p0, "Missing argument \'account\'"

    .line 44
    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    const-string p0, "Missing arguments"

    .line 50
    .line 51
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p0, 0x7f0c0173

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance p2, Landroidx/fragment/app/FragmentManager$2;

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    invoke-direct {p2, v0, p0}, Landroidx/fragment/app/FragmentManager$2;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, p2, v0}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/fragment/app/FragmentManager$2;Landroidx/lifecycle/LifecycleOwner;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 27
    .line 28
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x6

    .line 32
    const/4 v1, 0x2

    .line 33
    const-class v3, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;

    .line 34
    .line 35
    const-string v4, "folderListFilter"

    .line 36
    .line 37
    const-string v5, "folderListFilter(Lcom/fsck/k9/ui/managefolders/FolderListItem;Ljava/lang/CharSequence;)Z"

    .line 38
    .line 39
    move-object v2, p0

    .line 40
    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->filterPredicate:Lkotlin/jvm/functions/Function2;

    .line 46
    .line 47
    iget-object p0, v2, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    if-eqz p0, :cond_4

    .line 51
    .line 52
    new-instance p2, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 53
    .line 54
    invoke-direct {p2}, Lcom/mikepenz/fastadapter/FastAdapter;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p2, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemList:Lcom/google/zxing/BinaryBitmap;

    .line 64
    .line 65
    invoke-static {v3}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_0

    .line 70
    .line 71
    iput-object p2, v3, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 72
    .line 73
    :cond_0
    iput-object p2, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    add-int/lit8 v3, v1, 0x1

    .line 90
    .line 91
    if-ltz v1, :cond_1

    .line 92
    .line 93
    check-cast v0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 94
    .line 95
    iput v1, v0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->order:I

    .line 96
    .line 97
    move v1, v3

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_2
    invoke-virtual {p2}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 104
    .line 105
    .line 106
    const/4 p0, 0x1

    .line 107
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 108
    .line 109
    .line 110
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda11;

    .line 111
    .line 112
    const/16 v1, 0x8

    .line 113
    .line 114
    invoke-direct {v0, v1, v2}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iput-object v0, p2, Lcom/mikepenz/fastadapter/FastAdapter;->onClickListener:Lkotlin/jvm/functions/Function4;

    .line 118
    .line 119
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const v1, 0x7f0901f9

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 131
    .line 132
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 133
    .line 134
    .line 135
    iget-object p2, v2, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 136
    .line 137
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    check-cast p2, Lcom/fsck/k9/ui/managefolders/ManageFoldersViewModel;

    .line 142
    .line 143
    iget-object v0, v2, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 144
    .line 145
    if-eqz v0, :cond_3

    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    iget-object p1, p2, Lcom/fsck/k9/ui/managefolders/ManageFoldersViewModel;->folderRepository:Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

    .line 151
    .line 152
    invoke-virtual {p1, v0, p0}, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;->getDisplayFoldersFlow(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)Lkotlinx/coroutines/flow/Flow;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;)Landroidx/lifecycle/CoroutineLiveData;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    new-instance p1, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 161
    .line 162
    const/16 p2, 0xb

    .line 163
    .line 164
    invoke-direct {p1, p2, v2}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-static {p0, v2, p1}, Landroidx/compose/ui/unit/IntOffsetKt;->observeNotNull(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_3
    const-string p0, "account"

    .line 172
    .line 173
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p1

    .line 177
    :cond_4
    const-string p0, "itemAdapter"

    .line 178
    .line 179
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p1
.end method

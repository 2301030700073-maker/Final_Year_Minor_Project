.class public Lcom/fsck/k9/activity/MessageHomeActivity;
.super Lcom/fsck/k9/ui/base/BaseActivity;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;
.implements Lcom/fsck/k9/view/ViewSwitcher$OnSwitchCompleteListener;


# static fields
.field public static final coreResourceProvider$delegate:Lkotlin/Lazy;


# instance fields
.field public account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final accountManager$delegate:Lkotlin/Lazy;

.field public actionBar:Landroidx/appcompat/app/ActionBar;

.field public final contactRepository$delegate:Lkotlin/Lazy;

.field public final coreResourceProvider$delegate$1:Lkotlin/Lazy;

.field public final databaseUpgradeInterceptor$delegate:Lkotlin/Lazy;

.field public final defaultFolderProvider$delegate$1:Lkotlin/Lazy;

.field public displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

.field public final foldableStateObserver$delegate:Lkotlin/Lazy;

.field public final fundingManager$delegate:Lkotlin/Lazy;

.field public final generalSettingsManager$delegate:Lkotlin/Lazy;

.field public final isDrawerEnabled:Z

.field public final legacyAccountDataMapper$delegate:Lkotlin/Lazy;

.field public final logger$delegate:Lkotlin/Lazy;

.field public messageListActivityConfig:Lcom/fsck/k9/activity/MessageListActivityConfig;

.field public messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

.field public final messageListFragmentFactory$delegate:Lkotlin/Lazy;

.field public messageListWasDisplayed:Z

.field public messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

.field public messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

.field public messageViewOnly:Z

.field public messageViewPlaceHolder:Lcom/fsck/k9/ui/messageview/PlaceholderFragment;

.field public final messagingController$delegate:Lkotlin/Lazy;

.field public navigationDrawer:Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;

.field public noThreading:Z

.field public openFolderTransaction:Landroidx/fragment/app/BackStackRecord;

.field public final preferences$delegate:Lkotlin/Lazy;

.field public progressBar:Landroid/widget/ProgressBar;

.field public search:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

.field public singleFolderMode:Z

.field public viewSwitcher:Lcom/fsck/k9/view/ViewSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/fsck/k9/activity/MessageHomeActivity$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;

    .line 7
    .line 8
    const/16 v2, 0xf

    .line 9
    .line 10
    invoke-direct {v1, v0, v2}, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;I)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 14
    .line 15
    invoke-static {v2, v1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;

    .line 19
    .line 20
    const/16 v3, 0x10

    .line 21
    .line 22
    invoke-direct {v1, v0, v3}, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;I)V

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/fsck/k9/ui/base/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/activity/MessageHomeActivity;I)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->preferences$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    new-instance v0, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/activity/MessageHomeActivity;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->accountManager$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    new-instance v0, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/activity/MessageHomeActivity;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->defaultFolderProvider$delegate$1:Lkotlin/Lazy;

    .line 41
    .line 42
    new-instance v0, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;

    .line 43
    .line 44
    const/4 v2, 0x6

    .line 45
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/activity/MessageHomeActivity;I)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 53
    .line 54
    new-instance v0, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;

    .line 55
    .line 56
    const/4 v2, 0x7

    .line 57
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/activity/MessageHomeActivity;I)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messagingController$delegate:Lkotlin/Lazy;

    .line 65
    .line 66
    new-instance v0, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;

    .line 67
    .line 68
    const/16 v2, 0x8

    .line 69
    .line 70
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/activity/MessageHomeActivity;I)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->contactRepository$delegate:Lkotlin/Lazy;

    .line 78
    .line 79
    new-instance v0, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;

    .line 80
    .line 81
    const/16 v2, 0x9

    .line 82
    .line 83
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/activity/MessageHomeActivity;I)V

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate$1:Lkotlin/Lazy;

    .line 91
    .line 92
    new-instance v0, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;

    .line 93
    .line 94
    const/16 v2, 0xa

    .line 95
    .line 96
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/activity/MessageHomeActivity;I)V

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->fundingManager$delegate:Lkotlin/Lazy;

    .line 104
    .line 105
    new-instance v0, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;

    .line 106
    .line 107
    const/16 v2, 0xb

    .line 108
    .line 109
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/activity/MessageHomeActivity;I)V

    .line 110
    .line 111
    .line 112
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->logger$delegate:Lkotlin/Lazy;

    .line 117
    .line 118
    new-instance v0, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;

    .line 119
    .line 120
    const/4 v2, 0x1

    .line 121
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/activity/MessageHomeActivity;I)V

    .line 122
    .line 123
    .line 124
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->legacyAccountDataMapper$delegate:Lkotlin/Lazy;

    .line 129
    .line 130
    new-instance v0, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;

    .line 131
    .line 132
    const/4 v3, 0x2

    .line 133
    invoke-direct {v0, p0, v3}, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/activity/MessageHomeActivity;I)V

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->databaseUpgradeInterceptor$delegate:Lkotlin/Lazy;

    .line 141
    .line 142
    new-instance v0, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 143
    .line 144
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;-><init>(Lcom/fsck/k9/activity/MessageHomeActivity;I)V

    .line 145
    .line 146
    .line 147
    new-instance v3, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 148
    .line 149
    const/4 v4, 0x3

    .line 150
    invoke-direct {v3, v4, p0, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v1, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->foldableStateObserver$delegate:Lkotlin/Lazy;

    .line 158
    .line 159
    new-instance v0, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;

    .line 160
    .line 161
    invoke-direct {v0, p0, v4}, Lcom/fsck/k9/activity/MessageHomeActivity$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/activity/MessageHomeActivity;I)V

    .line 162
    .line 163
    .line 164
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragmentFactory$delegate:Lkotlin/Lazy;

    .line 169
    .line 170
    sget-object v0, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->MESSAGE_LIST:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 171
    .line 172
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 173
    .line 174
    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->isDrawerEnabled:Z

    .line 175
    .line 176
    return-void
.end method

.method public static createDefaultLocalSearch$default(Lcom/fsck/k9/activity/MessageHomeActivity;)Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->preferences$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v1, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 22
    .line 23
    invoke-direct {v1}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v2, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->defaultFolderProvider$delegate$1:Lkotlin/Lazy;

    .line 32
    .line 33
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;->getDefaultFolder(Lnet/thunderbird/core/android/account/LegacyAccountDto;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    invoke-virtual {v1, v2, v3}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAllowedFolder(J)V

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :cond_0
    const-string p0, "No default account available"

    .line 48
    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method


# virtual methods
.method public final configureDrawer()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->navigationDrawer:Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object v1, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->drawerState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v2, :cond_9

    .line 14
    .line 15
    iget-object v2, v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_1
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v5, v0

    .line 26
    check-cast v5, Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;

    .line 27
    .line 28
    iget-object v6, v5, Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;->selectedFolderId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v5, Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;

    .line 34
    .line 35
    invoke-direct {v5, v2, v6}, Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0, v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->search:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 45
    .line 46
    if-eqz v0, :cond_8

    .line 47
    .line 48
    iget-boolean v2, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->singleFolderMode:Z

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getFolderIds()Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-static {v2, p0}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Ljava/lang/Long;

    .line 62
    .line 63
    if-eqz p0, :cond_7

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    invoke-virtual {v0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getAccountUuids()Ljava/util/Set;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Ljava/lang/Iterable;

    .line 74
    .line 75
    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    move-object v2, v0

    .line 89
    check-cast v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;

    .line 90
    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v6, "_"

    .line 100
    .line 101
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    new-instance v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;

    .line 115
    .line 116
    invoke-direct {v2, p0, v5}, Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_2

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    iget-object v2, v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 127
    .line 128
    const-string v3, "unified_folders"

    .line 129
    .line 130
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_5

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getGeneralSettingsManager$1()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    iget-object p0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 147
    .line 148
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 149
    .line 150
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isShowUnifiedInbox:Z

    .line 151
    .line 152
    if-nez p0, :cond_5

    .line 153
    .line 154
    :cond_4
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    move-object v0, p0

    .line 159
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;

    .line 160
    .line 161
    iget-object v2, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;->selectedAccountUuid:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;

    .line 167
    .line 168
    invoke-direct {v0, v2, v4}, Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    if-eqz p0, :cond_4

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_5
    iget-object p0, v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 179
    .line 180
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result p0

    .line 184
    if-eqz p0, :cond_7

    .line 185
    .line 186
    :cond_6
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    move-object v0, p0

    .line 191
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;

    .line 197
    .line 198
    const-string v2, "unified_account"

    .line 199
    .line 200
    const-string v3, "unified_inbox"

    .line 201
    .line 202
    invoke-direct {v0, v2, v3}, Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result p0

    .line 209
    if-eqz p0, :cond_6

    .line 210
    .line 211
    :cond_7
    :goto_0
    return-void

    .line 212
    :cond_8
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getLogger$1()Lnet/thunderbird/core/logging/Logger;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    new-instance v0, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;

    .line 217
    .line 218
    const/16 v1, 0xa

    .line 219
    .line 220
    invoke-direct {v0, v2, v1}, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 221
    .line 222
    .line 223
    invoke-static {p0, v4, v0, v3}, Lkotlinx/io/Sink$-CC;->warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getLogger$1()Lnet/thunderbird/core/logging/Logger;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    new-instance v2, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 232
    .line 233
    const/4 v5, 0x7

    .line 234
    invoke-direct {v2, v5}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 235
    .line 236
    .line 237
    invoke-static {v1, v4, v2, v3}, Lkotlinx/io/Sink$-CC;->warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getLogger$1()Lnet/thunderbird/core/logging/Logger;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    new-instance v2, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 245
    .line 246
    const/16 v5, 0x15

    .line 247
    .line 248
    invoke-direct {v2, v5, v0, p0}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    const-string p0, "MainActivity"

    .line 252
    .line 253
    invoke-static {v1, p0, v4, v2, v3}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 254
    .line 255
    .line 256
    return-void
.end method

.method public final createSearchAccount()Lnet/thunderbird/feature/search/legacy/SearchAccount;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate$1:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/fsck/k9/resources/K9CoreResourceProvider;->searchUnifiedFoldersTitle()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/fsck/k9/resources/K9CoreResourceProvider;->searchUnifiedFoldersDetail()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance v1, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 24
    .line 25
    invoke-direct {v1}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "unified_folders"

    .line 29
    .line 30
    iput-object v2, v1, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 31
    .line 32
    sget-object v2, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->INTEGRATE:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 33
    .line 34
    const-string v3, "1"

    .line 35
    .line 36
    sget-object v4, Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;->EQUALS:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 37
    .line 38
    invoke-virtual {v1, v2, v3, v4}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->and(Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;Ljava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lnet/thunderbird/feature/search/legacy/SearchAccount;

    .line 42
    .line 43
    invoke-direct {v2, v1, v0, p0}, Lnet/thunderbird/feature/search/legacy/SearchAccount;-><init>(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v2
.end method

.method public final decodeExtras(Landroid/content/Intent;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const-string v5, "android.intent.action.SEARCH"

    .line 12
    .line 13
    if-ne v2, v5, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v2, v4

    .line 27
    :goto_0
    const-class v6, Lcom/fsck/k9/activity/MessageSearchActivity;

    .line 28
    .line 29
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-static {v2, v6, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v6, "query"

    .line 47
    .line 48
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    const-string v7, "shortcut"

    .line 53
    .line 54
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    const-string v8, "unified_folders"

    .line 59
    .line 60
    const/4 v9, 0x1

    .line 61
    const-string v10, "account_uuid"

    .line 62
    .line 63
    if-eqz v7, :cond_4

    .line 64
    .line 65
    const-string v2, "special_folder"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    new-instance v11, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->createSearchAccount()Lnet/thunderbird/feature/search/legacy/SearchAccount;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget-object v12, v1, Lnet/thunderbird/feature/search/legacy/SearchAccount;->relatedSearch:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 84
    .line 85
    const/16 v16, 0x0

    .line 86
    .line 87
    const/16 v17, 0x1e

    .line 88
    .line 89
    const/4 v13, 0x0

    .line 90
    const/4 v14, 0x0

    .line 91
    const/4 v15, 0x0

    .line 92
    invoke-direct/range {v11 .. v17}, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;-><init>(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/MessageReference;ZZI)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_9

    .line 96
    .line 97
    :cond_2
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-eqz v1, :cond_e

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getAccountManager$1()Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Lcom/fsck/k9/Preferences;

    .line 108
    .line 109
    invoke-virtual {v2, v1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    if-nez v2, :cond_3

    .line 114
    .line 115
    new-array v2, v9, [Ljava/lang/Object;

    .line 116
    .line 117
    aput-object v1, v2, v3

    .line 118
    .line 119
    const-string v1, "Account %s not found."

    .line 120
    .line 121
    invoke-static {v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    new-instance v10, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;

    .line 125
    .line 126
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->createDefaultLocalSearch$default(Lcom/fsck/k9/activity/MessageHomeActivity;)Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    const/4 v15, 0x0

    .line 131
    const/16 v16, 0x1e

    .line 132
    .line 133
    const/4 v12, 0x0

    .line 134
    const/4 v13, 0x0

    .line 135
    const/4 v14, 0x0

    .line 136
    invoke-direct/range {v10 .. v16}, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;-><init>(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/MessageReference;ZZI)V

    .line 137
    .line 138
    .line 139
    :goto_1
    move-object v11, v10

    .line 140
    goto/16 :goto_9

    .line 141
    .line 142
    :cond_3
    iget-object v5, v0, Lcom/fsck/k9/activity/MessageHomeActivity;->defaultFolderProvider$delegate$1:Lkotlin/Lazy;

    .line 143
    .line 144
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    check-cast v5, Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;

    .line 149
    .line 150
    invoke-virtual {v5, v2}, Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;->getDefaultFolder(Lnet/thunderbird/core/android/account/LegacyAccountDto;)J

    .line 151
    .line 152
    .line 153
    move-result-wide v5

    .line 154
    new-instance v11, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 155
    .line 156
    invoke-direct {v11}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 157
    .line 158
    .line 159
    iget-object v2, v11, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->accountUuidSet:Ljava/util/Set;

    .line 160
    .line 161
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    invoke-virtual {v11, v5, v6}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAllowedFolder(J)V

    .line 165
    .line 166
    .line 167
    new-instance v10, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;

    .line 168
    .line 169
    const/4 v15, 0x0

    .line 170
    const/16 v16, 0x1e

    .line 171
    .line 172
    const/4 v12, 0x0

    .line 173
    const/4 v13, 0x0

    .line 174
    const/4 v14, 0x0

    .line 175
    invoke-direct/range {v10 .. v16}, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;-><init>(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/MessageReference;ZZI)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_4
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_6

    .line 184
    .line 185
    if-eqz v6, :cond_6

    .line 186
    .line 187
    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    new-instance v11, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 196
    .line 197
    invoke-direct {v11}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 198
    .line 199
    .line 200
    iput-boolean v9, v11, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->isManualSearch:Z

    .line 201
    .line 202
    new-instance v5, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

    .line 203
    .line 204
    sget-object v6, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->SENDER:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 205
    .line 206
    sget-object v7, Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;->CONTAINS:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 207
    .line 208
    invoke-direct {v5, v6, v7, v2}, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;-><init>(Lnet/thunderbird/feature/search/legacy/api/SearchField;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v11, v5}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->or(Lnet/thunderbird/feature/search/legacy/api/SearchCondition;)V

    .line 212
    .line 213
    .line 214
    new-instance v5, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

    .line 215
    .line 216
    sget-object v6, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->TO:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 217
    .line 218
    invoke-direct {v5, v6, v7, v2}, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;-><init>(Lnet/thunderbird/feature/search/legacy/api/SearchField;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v11, v5}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->or(Lnet/thunderbird/feature/search/legacy/api/SearchCondition;)V

    .line 222
    .line 223
    .line 224
    new-instance v5, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

    .line 225
    .line 226
    sget-object v6, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->CC:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 227
    .line 228
    invoke-direct {v5, v6, v7, v2}, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;-><init>(Lnet/thunderbird/feature/search/legacy/api/SearchField;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v11, v5}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->or(Lnet/thunderbird/feature/search/legacy/api/SearchCondition;)V

    .line 232
    .line 233
    .line 234
    new-instance v5, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

    .line 235
    .line 236
    sget-object v6, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->BCC:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 237
    .line 238
    invoke-direct {v5, v6, v7, v2}, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;-><init>(Lnet/thunderbird/feature/search/legacy/api/SearchField;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v11, v5}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->or(Lnet/thunderbird/feature/search/legacy/api/SearchCondition;)V

    .line 242
    .line 243
    .line 244
    new-instance v5, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

    .line 245
    .line 246
    sget-object v6, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->SUBJECT:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 247
    .line 248
    invoke-direct {v5, v6, v7, v2}, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;-><init>(Lnet/thunderbird/feature/search/legacy/api/SearchField;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v11, v5}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->or(Lnet/thunderbird/feature/search/legacy/api/SearchCondition;)V

    .line 252
    .line 253
    .line 254
    new-instance v5, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

    .line 255
    .line 256
    sget-object v6, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->MESSAGE_CONTENTS:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 257
    .line 258
    invoke-direct {v5, v6, v7, v2}, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;-><init>(Lnet/thunderbird/feature/search/legacy/api/SearchField;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v11, v5}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->or(Lnet/thunderbird/feature/search/legacy/api/SearchCondition;)V

    .line 262
    .line 263
    .line 264
    const-string v2, "app_data"

    .line 265
    .line 266
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    if-eqz v1, :cond_5

    .line 271
    .line 272
    const-string v2, "com.fsck.k9.search_account"

    .line 273
    .line 274
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    if-eqz v2, :cond_5

    .line 279
    .line 280
    iget-object v5, v11, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->accountUuidSet:Ljava/util/Set;

    .line 281
    .line 282
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    const-string v2, "com.fsck.k9.search_folder"

    .line 286
    .line 287
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    if-eqz v5, :cond_5

    .line 292
    .line 293
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 294
    .line 295
    .line 296
    move-result-wide v1

    .line 297
    invoke-virtual {v11, v1, v2}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAllowedFolder(J)V

    .line 298
    .line 299
    .line 300
    :cond_5
    new-instance v10, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;

    .line 301
    .line 302
    const/4 v15, 0x0

    .line 303
    const/16 v16, 0x16

    .line 304
    .line 305
    const/4 v12, 0x0

    .line 306
    const/4 v13, 0x0

    .line 307
    const/4 v14, 0x1

    .line 308
    invoke-direct/range {v10 .. v16}, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;-><init>(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/MessageReference;ZZI)V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_1

    .line 312
    .line 313
    :cond_6
    const-string v2, "message_reference"

    .line 314
    .line 315
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    const-string v6, "search_bytes"

    .line 320
    .line 321
    if-eqz v5, :cond_a

    .line 322
    .line 323
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-static {v2}, Lkotlin/math/MathKt;->parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 328
    .line 329
    .line 330
    move-result-object v13

    .line 331
    if-eqz v13, :cond_e

    .line 332
    .line 333
    iget-wide v10, v13, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 334
    .line 335
    iget-object v2, v13, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    if-eqz v5, :cond_9

    .line 342
    .line 343
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    if-eqz v5, :cond_8

    .line 348
    .line 349
    invoke-static {v5}, Lnet/thunderbird/feature/search/legacy/serialization/LocalMessageSearchSerializer;->deserialize([B)Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    if-nez v5, :cond_7

    .line 354
    .line 355
    goto :goto_3

    .line 356
    :cond_7
    :goto_2
    move-object v11, v5

    .line 357
    goto :goto_4

    .line 358
    :cond_8
    :goto_3
    new-instance v5, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 359
    .line 360
    invoke-direct {v5}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v5, v2}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v5, v10, v11}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAllowedFolder(J)V

    .line 367
    .line 368
    .line 369
    goto :goto_2

    .line 370
    :cond_9
    new-instance v5, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 371
    .line 372
    invoke-direct {v5}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v5, v2}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v5, v10, v11}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAllowedFolder(J)V

    .line 379
    .line 380
    .line 381
    goto :goto_2

    .line 382
    :goto_4
    new-instance v10, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;

    .line 383
    .line 384
    const-string v2, "message_view_only"

    .line 385
    .line 386
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 387
    .line 388
    .line 389
    move-result v15

    .line 390
    const/16 v16, 0xa

    .line 391
    .line 392
    const/4 v12, 0x0

    .line 393
    const/4 v14, 0x0

    .line 394
    invoke-direct/range {v10 .. v16}, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;-><init>(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/MessageReference;ZZI)V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_1

    .line 398
    .line 399
    :cond_a
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    if-eqz v2, :cond_e

    .line 404
    .line 405
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    if-eqz v2, :cond_b

    .line 410
    .line 411
    invoke-static {v2}, Lnet/thunderbird/feature/search/legacy/serialization/LocalMessageSearchSerializer;->deserialize([B)Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    move-object v12, v2

    .line 416
    goto :goto_5

    .line 417
    :cond_b
    move-object v12, v4

    .line 418
    :goto_5
    const-string v2, "no_threading"

    .line 419
    .line 420
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 421
    .line 422
    .line 423
    move-result v15

    .line 424
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    if-eqz v1, :cond_c

    .line 429
    .line 430
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getAccountManager$1()Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    check-cast v2, Lcom/fsck/k9/Preferences;

    .line 435
    .line 436
    invoke-virtual {v2, v1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    move-object v13, v1

    .line 441
    goto :goto_6

    .line 442
    :cond_c
    move-object v13, v4

    .line 443
    :goto_6
    if-nez v12, :cond_d

    .line 444
    .line 445
    const-string v1, "No search data found in intent extras."

    .line 446
    .line 447
    new-array v2, v3, [Ljava/lang/Object;

    .line 448
    .line 449
    invoke-static {v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    new-instance v10, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;

    .line 453
    .line 454
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->createDefaultLocalSearch$default(Lcom/fsck/k9/activity/MessageHomeActivity;)Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 455
    .line 456
    .line 457
    move-result-object v11

    .line 458
    const/4 v15, 0x0

    .line 459
    const/16 v16, 0x1e

    .line 460
    .line 461
    const/4 v12, 0x0

    .line 462
    const/4 v13, 0x0

    .line 463
    const/4 v14, 0x0

    .line 464
    invoke-direct/range {v10 .. v16}, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;-><init>(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/MessageReference;ZZI)V

    .line 465
    .line 466
    .line 467
    goto/16 :goto_1

    .line 468
    .line 469
    :cond_d
    new-instance v11, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;

    .line 470
    .line 471
    const/16 v16, 0x0

    .line 472
    .line 473
    const/16 v17, 0x14

    .line 474
    .line 475
    const/4 v14, 0x0

    .line 476
    invoke-direct/range {v11 .. v17}, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;-><init>(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/MessageReference;ZZI)V

    .line 477
    .line 478
    .line 479
    goto :goto_9

    .line 480
    :cond_e
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getGeneralSettingsManager$1()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    check-cast v1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 485
    .line 486
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    iget-object v1, v1, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 491
    .line 492
    iget-object v1, v1, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 493
    .line 494
    iget-boolean v1, v1, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isShowUnifiedInbox:Z

    .line 495
    .line 496
    if-eqz v1, :cond_f

    .line 497
    .line 498
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->createSearchAccount()Lnet/thunderbird/feature/search/legacy/SearchAccount;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    iget-object v1, v1, Lnet/thunderbird/feature/search/legacy/SearchAccount;->relatedSearch:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 503
    .line 504
    :goto_7
    move-object v11, v1

    .line 505
    goto :goto_8

    .line 506
    :cond_f
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->createDefaultLocalSearch$default(Lcom/fsck/k9/activity/MessageHomeActivity;)Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    goto :goto_7

    .line 511
    :goto_8
    new-instance v10, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;

    .line 512
    .line 513
    const/4 v15, 0x0

    .line 514
    const/16 v16, 0x1e

    .line 515
    .line 516
    const/4 v12, 0x0

    .line 517
    const/4 v13, 0x0

    .line 518
    const/4 v14, 0x0

    .line 519
    invoke-direct/range {v10 .. v16}, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;-><init>(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/MessageReference;ZZI)V

    .line 520
    .line 521
    .line 522
    goto/16 :goto_1

    .line 523
    .line 524
    :goto_9
    iget-object v1, v11, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;->search:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast v1, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 527
    .line 528
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    .line 530
    .line 531
    iget-object v2, v1, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 532
    .line 533
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result v2

    .line 537
    if-eqz v2, :cond_10

    .line 538
    .line 539
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getGeneralSettingsManager$1()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    check-cast v2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 544
    .line 545
    invoke-virtual {v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    iget-object v2, v2, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 550
    .line 551
    iget-object v2, v2, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 552
    .line 553
    iget-boolean v2, v2, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isShowUnifiedInbox:Z

    .line 554
    .line 555
    if-nez v2, :cond_10

    .line 556
    .line 557
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->createDefaultLocalSearch$default(Lcom/fsck/k9/activity/MessageHomeActivity;)Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    goto :goto_a

    .line 562
    :cond_10
    move-object v2, v1

    .line 563
    :goto_a
    iget-object v5, v11, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;->account:Ljava/lang/Object;

    .line 564
    .line 565
    check-cast v5, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 566
    .line 567
    if-nez v5, :cond_14

    .line 568
    .line 569
    iget-object v5, v0, Lcom/fsck/k9/activity/MessageHomeActivity;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 570
    .line 571
    if-eqz v5, :cond_11

    .line 572
    .line 573
    iget-object v1, v1, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 574
    .line 575
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    if-eqz v1, :cond_11

    .line 580
    .line 581
    move-object v4, v5

    .line 582
    :cond_11
    if-nez v4, :cond_13

    .line 583
    .line 584
    iget-object v1, v2, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->accountUuidSet:Ljava/util/Set;

    .line 585
    .line 586
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    if-eqz v1, :cond_12

    .line 591
    .line 592
    iget-object v1, v0, Lcom/fsck/k9/activity/MessageHomeActivity;->preferences$delegate:Lkotlin/Lazy;

    .line 593
    .line 594
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    check-cast v1, Lcom/fsck/k9/Preferences;

    .line 599
    .line 600
    invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v1

    .line 608
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 609
    .line 610
    :goto_b
    move-object v5, v1

    .line 611
    goto :goto_c

    .line 612
    :cond_12
    invoke-virtual {v2}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getAccountUuids()Ljava/util/Set;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    check-cast v1, Ljava/lang/Iterable;

    .line 617
    .line 618
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    check-cast v1, Ljava/lang/String;

    .line 623
    .line 624
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getAccountManager$1()Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 625
    .line 626
    .line 627
    move-result-object v4

    .line 628
    check-cast v4, Lcom/fsck/k9/Preferences;

    .line 629
    .line 630
    invoke-virtual {v4, v1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    goto :goto_b

    .line 635
    :cond_13
    move-object v5, v4

    .line 636
    :cond_14
    :goto_c
    if-nez v5, :cond_15

    .line 637
    .line 638
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 639
    .line 640
    .line 641
    return v3

    .line 642
    :cond_15
    iput-object v5, v0, Lcom/fsck/k9/activity/MessageHomeActivity;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 643
    .line 644
    iput-object v2, v0, Lcom/fsck/k9/activity/MessageHomeActivity;->search:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 645
    .line 646
    invoke-virtual {v2}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getFolderIds()Ljava/util/ArrayList;

    .line 647
    .line 648
    .line 649
    move-result-object v1

    .line 650
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 651
    .line 652
    .line 653
    move-result v1

    .line 654
    if-ne v1, v9, :cond_16

    .line 655
    .line 656
    move v3, v9

    .line 657
    :cond_16
    iput-boolean v3, v0, Lcom/fsck/k9/activity/MessageHomeActivity;->singleFolderMode:Z

    .line 658
    .line 659
    iget-boolean v1, v11, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;->noThreading:Z

    .line 660
    .line 661
    iput-boolean v1, v0, Lcom/fsck/k9/activity/MessageHomeActivity;->noThreading:Z

    .line 662
    .line 663
    iget-object v1, v11, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;->messageReference:Ljava/lang/Object;

    .line 664
    .line 665
    check-cast v1, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 666
    .line 667
    iput-object v1, v0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 668
    .line 669
    iget-boolean v1, v11, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;->messageViewOnly:Z

    .line 670
    .line 671
    iput-boolean v1, v0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewOnly:Z

    .line 672
    .line 673
    return v9
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_30

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->isSearchViewCollapsed$1()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v2

    .line 22
    :goto_0
    if-eqz v0, :cond_30

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto/16 :goto_15

    .line 31
    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/16 v3, 0x15

    .line 37
    .line 38
    sget-object v4, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 39
    .line 40
    if-eq v0, v3, :cond_2f

    .line 41
    .line 42
    const/16 v3, 0x16

    .line 43
    .line 44
    if-eq v0, v3, :cond_2e

    .line 45
    .line 46
    const/16 v3, 0x18

    .line 47
    .line 48
    sget-object v4, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->MESSAGE_LIST:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 49
    .line 50
    if-eq v0, v3, :cond_5

    .line 51
    .line 52
    const/16 v3, 0x19

    .line 53
    .line 54
    if-eq v0, v3, :cond_4

    .line 55
    .line 56
    const/16 v3, 0x43

    .line 57
    .line 58
    if-eq v0, v3, :cond_2

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->onDeleteHotKey()V

    .line 62
    .line 63
    .line 64
    :cond_3
    :goto_1
    move v1, v2

    .line 65
    goto/16 :goto_15

    .line 66
    .line 67
    :cond_4
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 68
    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 72
    .line 73
    if-eq v0, v4, :cond_6

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getGeneralSettingsManager$1()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 86
    .line 87
    iget-boolean v0, v0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->useVolumeKeysForNavigation:Z

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->showNextMessage()Z

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 96
    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 100
    .line 101
    if-eq v0, v4, :cond_6

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getGeneralSettingsManager$1()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 114
    .line 115
    iget-boolean v0, v0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->useVolumeKeysForNavigation:Z

    .line 116
    .line 117
    if-eqz v0, :cond_6

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->showPreviousMessage()Z

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_7

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    int-to-char v0, v0

    .line 134
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    goto :goto_3

    .line 139
    :cond_7
    const/4 v0, 0x0

    .line 140
    :goto_3
    if-nez v0, :cond_8

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    const/16 v5, 0x63

    .line 148
    .line 149
    if-ne v3, v5, :cond_9

    .line 150
    .line 151
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-interface {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->onCompose()V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_9
    :goto_4
    if-nez v0, :cond_a

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    const/16 v5, 0x6f

    .line 168
    .line 169
    if-ne v3, v5, :cond_b

    .line 170
    .line 171
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-interface {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->onCycleSort()V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_b
    :goto_5
    if-nez v0, :cond_c

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    const/16 v5, 0x69

    .line 188
    .line 189
    if-ne v3, v5, :cond_d

    .line 190
    .line 191
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    invoke-interface {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->onReverseSort()V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_1

    .line 200
    .line 201
    :cond_d
    :goto_6
    if-nez v0, :cond_e

    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    const/16 v5, 0x64

    .line 209
    .line 210
    if-ne v3, v5, :cond_f

    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->onDeleteHotKey()V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_1

    .line 216
    .line 217
    :cond_f
    :goto_7
    if-nez v0, :cond_10

    .line 218
    .line 219
    goto :goto_8

    .line 220
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    const/16 v5, 0x73

    .line 225
    .line 226
    if-ne v3, v5, :cond_11

    .line 227
    .line 228
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-interface {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->toggleMessageSelect()V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_1

    .line 237
    .line 238
    :cond_11
    :goto_8
    if-nez v0, :cond_12

    .line 239
    .line 240
    goto :goto_9

    .line 241
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    const/16 v5, 0x67

    .line 246
    .line 247
    if-ne v3, v5, :cond_14

    .line 248
    .line 249
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 250
    .line 251
    if-ne v0, v4, :cond_13

    .line 252
    .line 253
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 254
    .line 255
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    invoke-interface {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->onToggleFlagged()V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_1

    .line 262
    .line 263
    :cond_13
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 264
    .line 265
    if-eqz v0, :cond_3

    .line 266
    .line 267
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->getMessageViewFragment()Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->FLAGGED:Lnet/thunderbird/core/common/mail/Flag;

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->toggleFlag(Lnet/thunderbird/core/common/mail/Flag;)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_1

    .line 277
    .line 278
    :cond_14
    :goto_9
    if-nez v0, :cond_15

    .line 279
    .line 280
    goto :goto_a

    .line 281
    :cond_15
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    const/16 v5, 0x6d

    .line 286
    .line 287
    if-ne v3, v5, :cond_17

    .line 288
    .line 289
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 290
    .line 291
    if-ne v0, v4, :cond_16

    .line 292
    .line 293
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    invoke-interface {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->onMove()V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_1

    .line 302
    .line 303
    :cond_16
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 304
    .line 305
    if-eqz v0, :cond_3

    .line 306
    .line 307
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->getMessageViewFragment()Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onMove()V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_1

    .line 315
    .line 316
    :cond_17
    :goto_a
    if-nez v0, :cond_18

    .line 317
    .line 318
    goto :goto_b

    .line 319
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    const/16 v5, 0x76

    .line 324
    .line 325
    if-ne v3, v5, :cond_1a

    .line 326
    .line 327
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 328
    .line 329
    if-ne v0, v4, :cond_19

    .line 330
    .line 331
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    invoke-interface {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->onArchive()V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_1

    .line 340
    .line 341
    :cond_19
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 342
    .line 343
    if-eqz v0, :cond_3

    .line 344
    .line 345
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->getMessageViewFragment()Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onArchive()V

    .line 350
    .line 351
    .line 352
    goto/16 :goto_1

    .line 353
    .line 354
    :cond_1a
    :goto_b
    if-nez v0, :cond_1b

    .line 355
    .line 356
    goto :goto_c

    .line 357
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    const/16 v5, 0x79

    .line 362
    .line 363
    if-ne v3, v5, :cond_1d

    .line 364
    .line 365
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 366
    .line 367
    if-ne v0, v4, :cond_1c

    .line 368
    .line 369
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 370
    .line 371
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    .line 373
    .line 374
    invoke-interface {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->onCopy()V

    .line 375
    .line 376
    .line 377
    goto/16 :goto_1

    .line 378
    .line 379
    :cond_1c
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 380
    .line 381
    if-eqz v0, :cond_3

    .line 382
    .line 383
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->getMessageViewFragment()Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onCopy()V

    .line 388
    .line 389
    .line 390
    goto/16 :goto_1

    .line 391
    .line 392
    :cond_1d
    :goto_c
    if-nez v0, :cond_1e

    .line 393
    .line 394
    goto :goto_d

    .line 395
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 396
    .line 397
    .line 398
    move-result v3

    .line 399
    const/16 v5, 0x7a

    .line 400
    .line 401
    if-ne v3, v5, :cond_20

    .line 402
    .line 403
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 404
    .line 405
    if-ne v0, v4, :cond_1f

    .line 406
    .line 407
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 408
    .line 409
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    invoke-interface {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->onToggleRead()V

    .line 413
    .line 414
    .line 415
    goto/16 :goto_1

    .line 416
    .line 417
    :cond_1f
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 418
    .line 419
    if-eqz v0, :cond_3

    .line 420
    .line 421
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->getMessageViewFragment()Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onToggleRead()V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_1

    .line 429
    .line 430
    :cond_20
    :goto_d
    if-nez v0, :cond_21

    .line 431
    .line 432
    goto :goto_e

    .line 433
    :cond_21
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 434
    .line 435
    .line 436
    move-result v3

    .line 437
    const/16 v4, 0x66

    .line 438
    .line 439
    if-ne v3, v4, :cond_22

    .line 440
    .line 441
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 442
    .line 443
    if-eqz v0, :cond_3

    .line 444
    .line 445
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->getMessageViewFragment()Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onForward$1()V

    .line 450
    .line 451
    .line 452
    goto/16 :goto_1

    .line 453
    .line 454
    :cond_22
    :goto_e
    if-nez v0, :cond_23

    .line 455
    .line 456
    goto :goto_f

    .line 457
    :cond_23
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    const/16 v4, 0x61

    .line 462
    .line 463
    if-ne v3, v4, :cond_24

    .line 464
    .line 465
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 466
    .line 467
    if-eqz v0, :cond_3

    .line 468
    .line 469
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->getMessageViewFragment()Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onReplyAll$1()V

    .line 474
    .line 475
    .line 476
    goto/16 :goto_1

    .line 477
    .line 478
    :cond_24
    :goto_f
    if-nez v0, :cond_25

    .line 479
    .line 480
    goto :goto_10

    .line 481
    :cond_25
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    const/16 v4, 0x72

    .line 486
    .line 487
    if-ne v3, v4, :cond_26

    .line 488
    .line 489
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 490
    .line 491
    if-eqz v0, :cond_3

    .line 492
    .line 493
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->getMessageViewFragment()Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onReply$1()V

    .line 498
    .line 499
    .line 500
    goto/16 :goto_1

    .line 501
    .line 502
    :cond_26
    :goto_10
    if-nez v0, :cond_27

    .line 503
    .line 504
    goto :goto_11

    .line 505
    :cond_27
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 506
    .line 507
    .line 508
    move-result v3

    .line 509
    const/16 v4, 0x6a

    .line 510
    .line 511
    if-eq v3, v4, :cond_2d

    .line 512
    .line 513
    :goto_11
    if-nez v0, :cond_28

    .line 514
    .line 515
    goto :goto_12

    .line 516
    :cond_28
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 517
    .line 518
    .line 519
    move-result v3

    .line 520
    const/16 v4, 0x70

    .line 521
    .line 522
    if-ne v3, v4, :cond_29

    .line 523
    .line 524
    goto :goto_14

    .line 525
    :cond_29
    :goto_12
    if-nez v0, :cond_2a

    .line 526
    .line 527
    goto :goto_13

    .line 528
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 529
    .line 530
    .line 531
    move-result v3

    .line 532
    const/16 v4, 0x6e

    .line 533
    .line 534
    if-eq v3, v4, :cond_2c

    .line 535
    .line 536
    :goto_13
    if-nez v0, :cond_2b

    .line 537
    .line 538
    goto :goto_15

    .line 539
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    const/16 v3, 0x6b

    .line 544
    .line 545
    if-ne v0, v3, :cond_30

    .line 546
    .line 547
    :cond_2c
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 548
    .line 549
    if-eqz v0, :cond_3

    .line 550
    .line 551
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->showNextMessage()Z

    .line 552
    .line 553
    .line 554
    goto/16 :goto_1

    .line 555
    .line 556
    :cond_2d
    :goto_14
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 557
    .line 558
    if-eqz v0, :cond_3

    .line 559
    .line 560
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->showPreviousMessage()Z

    .line 561
    .line 562
    .line 563
    goto/16 :goto_1

    .line 564
    .line 565
    :cond_2e
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 566
    .line 567
    if-eqz v0, :cond_30

    .line 568
    .line 569
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 570
    .line 571
    if-ne v0, v4, :cond_30

    .line 572
    .line 573
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->showNextMessage()Z

    .line 574
    .line 575
    .line 576
    move-result v1

    .line 577
    goto :goto_15

    .line 578
    :cond_2f
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 579
    .line 580
    if-eqz v0, :cond_30

    .line 581
    .line 582
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 583
    .line 584
    if-ne v0, v4, :cond_30

    .line 585
    .line 586
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->showPreviousMessage()Z

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    :cond_30
    :goto_15
    if-nez v1, :cond_31

    .line 591
    .line 592
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 593
    .line 594
    .line 595
    move-result p0

    .line 596
    return p0

    .line 597
    :cond_31
    return v1
.end method

.method public final displayViews()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_6

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-ne v0, v2, :cond_5

    .line 14
    .line 15
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 16
    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListWasDisplayed:Z

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->setActive(Z)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->onFullyActive()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->showMessageViewPlaceHolder()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->isDrawerEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-lez v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->lockDrawer()V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->navigationDrawer:Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object v0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    const v1, 0x7f0800fc

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->onMessageListDisplayed()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_3
    const-string p0, "actionBar"

    .line 92
    .line 93
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/4 p0, 0x0

    .line 97
    throw p0

    .line 98
    :cond_4
    const-string p0, "Required value was null."

    .line 99
    .line 100
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_5
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_6
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->showMessageView()V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_7
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->showMessageList()V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public final findFragments()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const v1, 0x7f0902a5

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    instance-of v2, v1, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    check-cast v1, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v1, v3

    .line 24
    :goto_0
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 25
    .line 26
    const-string v1, "MessageViewContainerFragment"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    instance-of v1, v0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    move-object v3, v0

    .line 37
    check-cast v3, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 38
    .line 39
    :cond_1
    iput-object v3, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    invoke-interface {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->getLegacyViewModel()Lcom/fsck/k9/ui/messagelist/MessageListViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iget-object v1, v1, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->messageListLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 55
    .line 56
    new-instance v2, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    const/16 v4, 0x11

    .line 59
    .line 60
    invoke-direct {v2, v4, v3}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    new-instance v4, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;

    .line 64
    .line 65
    const/16 v5, 0x8

    .line 66
    .line 67
    invoke-direct {v4, v5, v2}, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-interface {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->initializeFromLocalSearch(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    return-void
.end method

.method public final getAccountManager$1()Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->accountManager$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getGeneralSettingsManager$1()Lnet/thunderbird/core/preference/GeneralSettingsManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getLogger$1()Lnet/thunderbird/core/logging/Logger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->logger$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/logging/Logger;

    .line 8
    .line 9
    return-object p0
.end method

.method public final initializeDisplayMode(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->useSplitView()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->SPLIT_VIEW:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const-string v0, "displayMode"

    .line 15
    .line 16
    const-class v2, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 17
    .line 18
    invoke-static {p1, v0, v2}, Landroidx/compose/ui/window/Api33Impl;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    if-eq p1, v1, :cond_1

    .line 27
    .line 28
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 32
    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    sget-object p1, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->MESSAGE_LIST:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    :goto_0
    sget-object p1, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 44
    .line 45
    :goto_1
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 46
    .line 47
    return-void
.end method

.method public final initializeFolderDrawer()V
    .locals 9

    .line 1
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;

    .line 2
    .line 3
    new-instance v2, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-direct {v2, v1, p0}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    new-instance v3, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/16 v1, 0x19

    .line 12
    .line 13
    invoke-direct {v3, v1, p0}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance v4, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v4, p0, v1}, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;-><init>(Lcom/fsck/k9/activity/MessageHomeActivity;I)V

    .line 20
    .line 21
    .line 22
    new-instance v5, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-direct {v5, p0, v1}, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;-><init>(Lcom/fsck/k9/activity/MessageHomeActivity;I)V

    .line 26
    .line 27
    .line 28
    new-instance v6, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    invoke-direct {v6, p0, v1}, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;-><init>(Lcom/fsck/k9/activity/MessageHomeActivity;I)V

    .line 32
    .line 33
    .line 34
    new-instance v7, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    invoke-direct {v7, p0, v1}, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;-><init>(Lcom/fsck/k9/activity/MessageHomeActivity;I)V

    .line 38
    .line 39
    .line 40
    new-instance v8, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 41
    .line 42
    const/4 v1, 0x5

    .line 43
    invoke-direct {v8, p0, v1}, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;-><init>(Lcom/fsck/k9/activity/MessageHomeActivity;I)V

    .line 44
    .line 45
    .line 46
    move-object v1, p0

    .line 47
    invoke-direct/range {v0 .. v8}, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;-><init>(Lcom/fsck/k9/activity/MessageHomeActivity;Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, v1, Lcom/fsck/k9/activity/MessageHomeActivity;->navigationDrawer:Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;

    .line 51
    .line 52
    return-void
.end method

.method public final initializeFragments()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    move v1, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v2

    .line 22
    :goto_0
    if-nez v1, :cond_2

    .line 23
    .line 24
    new-instance v4, Landroidx/fragment/app/BackStackRecord;

    .line 25
    .line 26
    invoke-direct {v4, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragmentFactory$delegate:Lkotlin/Lazy;

    .line 30
    .line 31
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;

    .line 36
    .line 37
    iget-object v5, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->search:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getGeneralSettingsManager$1()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 47
    .line 48
    invoke-virtual {v6}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    iget-object v6, v6, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 53
    .line 54
    iget-object v6, v6, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 55
    .line 56
    iget-boolean v6, v6, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isThreadedViewEnabled:Z

    .line 57
    .line 58
    if-eqz v6, :cond_1

    .line 59
    .line 60
    iget-boolean v6, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->noThreading:Z

    .line 61
    .line 62
    if-nez v6, :cond_1

    .line 63
    .line 64
    move v6, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move v6, v2

    .line 67
    :goto_1
    invoke-virtual {v0, v5, v2, v6}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;->newInstance(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;ZZ)Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    move-object v2, v0

    .line 72
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    const v6, 0x7f0902a5

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v6, v2, v5, v3}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Landroidx/fragment/app/BackStackRecord;->commitNow()V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 85
    .line 86
    :cond_2
    if-nez v1, :cond_3

    .line 87
    .line 88
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 89
    .line 90
    if-nez v0, :cond_3

    .line 91
    .line 92
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->openMessage(Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    return-void
.end method

.method public final initializeFromLocalSearch(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->search:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->singleFolderMode:Z

    .line 5
    .line 6
    invoke-virtual {p1}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getFolderIds()Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getAccountManager$1()Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v4, p1, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->accountUuidSet:Ljava/util/Set;

    .line 20
    .line 21
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getAccountUuids()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/Iterable;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/String;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    check-cast v3, Lcom/fsck/k9/Preferences;

    .line 44
    .line 45
    invoke-virtual {v3, p1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    move-object v2, p1

    .line 52
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 53
    .line 54
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    const/4 v1, 0x1

    .line 65
    if-ne p1, v1, :cond_2

    .line 66
    .line 67
    move v0, v1

    .line 68
    :cond_2
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->singleFolderMode:Z

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->configureDrawer()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public isDrawerEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->isDrawerEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final lockDrawer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->navigationDrawer:Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const v0, 0x7f0800bf

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const-string p0, "actionBar"

    .line 24
    .line 25
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    throw p0
.end method

.method public final synthetic onBackStackChangeCommitted(Landroidx/fragment/app/Fragment;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onBackStackChangeStarted(Landroidx/fragment/app/Fragment;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onBackStackChanged()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->findFragments()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-interface {v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->setActive(Z)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->onFullyActive()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->isDrawerEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->navigationDrawer:Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object v0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    const v1, 0x7f0800fc

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const-string p0, "actionBar"

    .line 55
    .line 56
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    throw p0

    .line 61
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 62
    .line 63
    sget-object v1, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->SPLIT_VIEW:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 64
    .line 65
    if-ne v0, v1, :cond_4

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->showMessageViewPlaceHolder()V

    .line 68
    .line 69
    .line 70
    :cond_4
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/fsck/k9/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->databaseUpgradeInterceptor$delegate:Lkotlin/Lazy;

    .line 5
    .line 6
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lnet/thunderbird/app/common/startup/DefaultDatabaseUpgradeInterceptor;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v1}, Lnet/thunderbird/app/common/startup/DefaultDatabaseUpgradeInterceptor;->checkAndHandleUpgrade(Lcom/fsck/k9/ui/base/BaseActivity;Landroid/content/Intent;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->useSplitView()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const v0, 0x7f0c0576

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/base/BaseActivity;->setLayout(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const v0, 0x7f0c02d4

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/base/BaseActivity;->setLayout(I)V

    .line 49
    .line 50
    .line 51
    const v0, 0x7f090154

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/fsck/k9/view/ViewSwitcher;

    .line 59
    .line 60
    const v1, 0x7f010040

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/ViewSwitcher;->setFirstInAnimation(Landroid/view/animation/Animation;)V

    .line 68
    .line 69
    .line 70
    const v1, 0x7f010043

    .line 71
    .line 72
    .line 73
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/ViewSwitcher;->setFirstOutAnimation(Landroid/view/animation/Animation;)V

    .line 78
    .line 79
    .line 80
    const v1, 0x7f010041

    .line 81
    .line 82
    .line 83
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/ViewSwitcher;->setSecondInAnimation(Landroid/view/animation/Animation;)V

    .line 88
    .line 89
    .line 90
    const v1, 0x7f010042

    .line 91
    .line 92
    .line 93
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/ViewSwitcher;->setSecondOutAnimation(Landroid/view/animation/Animation;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p0}, Lcom/fsck/k9/view/ViewSwitcher;->setOnSwitchCompleteListener(Lcom/fsck/k9/view/ViewSwitcher$OnSwitchCompleteListener;)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->viewSwitcher:Lcom/fsck/k9/view/ViewSwitcher;

    .line 104
    .line 105
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    .line 113
    .line 114
    const/4 v1, 0x1

    .line 115
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    .line 119
    .line 120
    const/4 v2, 0x0

    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->isDrawerEnabled()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_2

    .line 131
    .line 132
    const v0, 0x7f0902ef

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->initializeFolderDrawer()V

    .line 146
    .line 147
    .line 148
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->decodeExtras(Landroid/content/Intent;)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-nez v0, :cond_3

    .line 160
    .line 161
    return-void

    .line 162
    :cond_3
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->isDrawerEnabled()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_4

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->configureDrawer()V

    .line 169
    .line 170
    .line 171
    :cond_4
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->findFragments()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/MessageHomeActivity;->initializeDisplayMode(Landroid/os/Bundle;)V

    .line 175
    .line 176
    .line 177
    const p1, 0x7f0902ab

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Landroid/widget/ProgressBar;

    .line 185
    .line 186
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 187
    .line 188
    new-instance p1, Lcom/fsck/k9/ui/messageview/PlaceholderFragment;

    .line 189
    .line 190
    invoke-direct {p1}, Lcom/fsck/k9/ui/messageview/PlaceholderFragment;-><init>()V

    .line 191
    .line 192
    .line 193
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewPlaceHolder:Lcom/fsck/k9/ui/messageview/PlaceholderFragment;

    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->initializeFragments()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->displayViews()V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->fundingManager$delegate:Lkotlin/Lazy;

    .line 202
    .line 203
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    check-cast p1, Lnet/thunderbird/feature/funding/noop/NoOpFundingManager;

    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->foldableStateObserver$delegate:Lkotlin/Lazy;

    .line 213
    .line 214
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast p1, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;

    .line 219
    .line 220
    iget-object v0, p0, Landroidx/core/app/ComponentActivity;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 221
    .line 222
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 223
    .line 224
    .line 225
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    new-instance v0, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 230
    .line 231
    const/16 v1, 0xd

    .line 232
    .line 233
    invoke-direct {v0, p0, v2, v1}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 234
    .line 235
    .line 236
    const/4 v1, 0x3

    .line 237
    invoke-static {p1, v2, v2, v0, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 238
    .line 239
    .line 240
    new-instance p1, Lcom/fsck/k9/activity/MessageCompose$3;

    .line 241
    .line 242
    const/4 v0, 0x5

    .line 243
    invoke-direct {p1, v0, p0}, Lcom/fsck/k9/activity/MessageCompose$3;-><init>(ILjava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0, p1, p0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/activity/OnBackPressedCallback;Landroidx/lifecycle/LifecycleOwner;)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :cond_5
    const-string p0, "actionBar"

    .line 255
    .line 256
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw v2
.end method

.method public final onDeleteHotKey()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 2
    .line 3
    sget-object v1, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->MESSAGE_LIST:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->onDelete()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->getMessageViewFragment()Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onDelete()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getGeneralSettingsManager$1()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 15
    .line 16
    iget-boolean v0, v0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->useVolumeKeysForNavigation:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/16 v0, 0x18

    .line 21
    .line 22
    if-eq p1, v0, :cond_0

    .line 23
    .line 24
    const/16 v0, 0x19

    .line 25
    .line 26
    if-eq p1, v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    new-array p0, p0, [Ljava/lang/Object;

    .line 31
    .line 32
    const-string p1, "Swallowed key up."

    .line 33
    .line 34
    invoke-static {p1, p0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0
.end method

.method public final onMessageListDisplayed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messagingController$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->search:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 15
    .line 16
    const/16 v2, 0xb

    .line 17
    .line 18
    invoke-direct {v1, v2, v0, p0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const-string p0, "clearNotifications"

    .line 22
    .line 23
    invoke-virtual {v0, p0, v1}, Lcom/fsck/k9/controller/MessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->databaseUpgradeInterceptor$delegate:Lkotlin/Lazy;

    .line 8
    .line 9
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lnet/thunderbird/app/common/startup/DefaultDatabaseUpgradeInterceptor;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1}, Lnet/thunderbird/app/common/startup/DefaultDatabaseUpgradeInterceptor;->checkAndHandleUpgrade(Lcom/fsck/k9/ui/base/BaseActivity;Landroid/content/Intent;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x1

    .line 43
    const/4 v2, -0x1

    .line 44
    const-string v3, "first"

    .line 45
    .line 46
    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(ILjava/lang/String;I)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    .line 57
    .line 58
    invoke-direct {v1, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->removeMessageViewContainerFragment()V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 81
    .line 82
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->search:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/MessageHomeActivity;->decodeExtras(Landroid/content/Intent;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_2

    .line 89
    .line 90
    :goto_0
    return-void

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->isDrawerEnabled()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->configureDrawer()V

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->initializeDisplayMode(Landroid/os/Bundle;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->initializeFragments()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->displayViews()V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

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
    const v1, 0x102002c

    .line 9
    .line 10
    .line 11
    if-ne v0, v1, :cond_6

    .line 12
    .line 13
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 14
    .line 15
    sget-object v0, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq p1, v0, :cond_5

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-lez p1, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->isDrawerEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->navigationDrawer:Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object p1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 43
    .line 44
    const v0, 0x800003

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 v2, 0x0

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move p1, v2

    .line 60
    :goto_0
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->navigationDrawer:Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->close()V

    .line 68
    .line 69
    .line 70
    return v1

    .line 71
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    return v1

    .line 86
    :cond_3
    const-string p0, "No drawer view found with gravity "

    .line 87
    .line 88
    invoke-static {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1, p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return v2

    .line 96
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 97
    .line 98
    .line 99
    return v1

    .line 100
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 105
    .line 106
    .line 107
    return v1

    .line 108
    :cond_6
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    return p0
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "messageViewOnly"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewOnly:Z

    .line 14
    .line 15
    const-string v0, "messageListWasDisplayed"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput-boolean p1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListWasDisplayed:Z

    .line 22
    .line 23
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListActivityConfig:Lcom/fsck/k9/activity/MessageListActivityConfig;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getGeneralSettingsManager$1()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroidx/appcompat/app/ActionBar;->create(Lnet/thunderbird/core/preference/GeneralSettingsManager;)Lcom/fsck/k9/activity/MessageListActivityConfig;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListActivityConfig:Lcom/fsck/k9/activity/MessageListActivityConfig;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getGeneralSettingsManager$1()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Landroidx/appcompat/app/ActionBar;->create(Lnet/thunderbird/core/preference/GeneralSettingsManager;)Lcom/fsck/k9/activity/MessageListActivityConfig;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageListActivityConfig;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    new-instance v0, Landroid/content/Intent;

    .line 34
    .line 35
    const-class v1, Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 36
    .line 37
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .line 39
    .line 40
    const/high16 v1, 0x10000000

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const v1, 0x8000

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 55
    .line 56
    sget-object v1, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 57
    .line 58
    if-eq v0, v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->onMessageListDisplayed()V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "displayMode"

    .line 8
    .line 9
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "messageViewOnly"

    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewOnly:Z

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    const-string v0, "messageListWasDisplayed"

    .line 22
    .line 23
    iget-boolean p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListWasDisplayed:Z

    .line 24
    .line 25
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onSearchRequested()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 2
    .line 3
    sget-object v1, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->expandSearchView()V

    .line 14
    .line 15
    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public final onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->contactRepository$delegate:Lkotlin/Lazy;

    .line 5
    .line 6
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 11
    .line 12
    instance-of v0, v0, Lapp/k9mail/core/android/common/contact/CachingContactRepository;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    check-cast p0, Lapp/k9mail/core/android/common/contact/CachingContactRepository;

    .line 26
    .line 27
    iget-object p0, p0, Lapp/k9mail/core/android/common/contact/CachingContactRepository;->cache:Lnet/thunderbird/core/common/cache/Cache;

    .line 28
    .line 29
    invoke-interface {p0}, Lnet/thunderbird/core/common/cache/Cache;->clear()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final openMessage(Lapp/k9mail/legacy/message/controller/MessageReference;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getAccountManager$1()Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p1, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 9
    .line 10
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_5

    .line 17
    .line 18
    iget-wide v1, p1, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 19
    .line 20
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDraftsFolderId()Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    cmp-long v0, v1, v3

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    sget-object v0, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->MESSAGE_LIST:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 37
    .line 38
    invoke-static {p0, p1}, Landroidx/room/util/SchemaInfoUtilKt;->actionEditDraft(Landroid/content/Context;Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-interface {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->isShowAccountIndicator$1()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v0, v1

    .line 54
    :goto_0
    new-instance v2, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 55
    .line 56
    invoke-direct {v2}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance v3, Lkotlin/Pair;

    .line 64
    .line 65
    const-string v4, "reference"

    .line 66
    .line 67
    invoke-direct {v3, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance v0, Lkotlin/Pair;

    .line 75
    .line 76
    const-string v4, "showAccountIndicator"

    .line 77
    .line 78
    invoke-direct {v0, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const/4 p1, 0x2

    .line 82
    new-array p1, p1, [Lkotlin/Pair;

    .line 83
    .line 84
    const/4 v4, 0x0

    .line 85
    aput-object v3, p1, v4

    .line 86
    .line 87
    aput-object v0, p1, v1

    .line 88
    .line 89
    invoke-static {v2, p1}, Landroidx/work/OperationKt;->withArguments(Landroidx/fragment/app/Fragment;[Lkotlin/Pair;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    .line 100
    .line 101
    invoke-direct {v0, p1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 102
    .line 103
    .line 104
    const p1, 0x7f0902b5

    .line 105
    .line 106
    .line 107
    const-string v3, "MessageViewContainerFragment"

    .line 108
    .line 109
    invoke-virtual {v0, p1, v2, v3}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->commitNow()V

    .line 113
    .line 114
    .line 115
    iput-object v2, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 116
    .line 117
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 118
    .line 119
    if-eqz p1, :cond_2

    .line 120
    .line 121
    invoke-interface {p1}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->getLegacyViewModel()Lcom/fsck/k9/ui/messagelist/MessageListViewModel;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget-object p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->messageListLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 129
    .line 130
    new-instance v0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 131
    .line 132
    const/16 v3, 0x11

    .line 133
    .line 134
    invoke-direct {v0, v3, v2}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    new-instance v3, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;

    .line 138
    .line 139
    const/16 v4, 0x8

    .line 140
    .line 141
    invoke-direct {v3, v4, v0}, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 145
    .line 146
    .line 147
    :cond_2
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 148
    .line 149
    sget-object v0, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->SPLIT_VIEW:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 150
    .line 151
    if-ne p1, v0, :cond_3

    .line 152
    .line 153
    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_3
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->showMessageView()V

    .line 165
    .line 166
    .line 167
    :goto_1
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 168
    .line 169
    if-eqz p0, :cond_4

    .line 170
    .line 171
    invoke-interface {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->collapseSearchView$1()V

    .line 172
    .line 173
    .line 174
    :cond_4
    return-void

    .line 175
    :cond_5
    const-string p0, "Account not found"

    .line 176
    .line 177
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public final openUnifiedFolders()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->createSearchAccount()Lnet/thunderbird/feature/search/legacy/SearchAccount;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lnet/thunderbird/feature/search/legacy/SearchAccount;->relatedSearch:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v0, v1}, Lcom/fsck/k9/activity/MessageHomeActivity$Companion;->actionDisplaySearch$default(Landroid/content/Context;Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final performNavigationAfterMessageRemoval()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getGeneralSettingsManager$1()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 12
    .line 13
    iget-object v0, v0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->messageViewPostRemoveNavigation:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const v2, -0x4be96bcd

    .line 20
    .line 21
    .line 22
    if-eq v1, v2, :cond_4

    .line 23
    .line 24
    const v2, -0x3076e5c9

    .line 25
    .line 26
    .line 27
    if-eq v1, v2, :cond_2

    .line 28
    .line 29
    const v2, -0x13d93fa6

    .line 30
    .line 31
    .line 32
    if-eq v1, v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v1, "ReturnToMessageList"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->returnToMessageList()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    const-string v1, "ShowNextMessage"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->showNextMessage()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_6

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->returnToMessageList()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_4
    const-string v1, "ShowPreviousMessage"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_5

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_5
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->showPreviousMessage()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_6

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->returnToMessageList()V

    .line 83
    .line 84
    .line 85
    :cond_6
    :goto_0
    return-void
.end method

.method public final performSearch(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/MessageHomeActivity;->initializeFromLocalSearch(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragmentFactory$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getGeneralSettingsManager$1()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v2, v2, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 35
    .line 36
    iget-object v2, v2, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 37
    .line 38
    iget-boolean v2, v2, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isThreadedViewEnabled:Z

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-virtual {v0, p1, v3, v2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;->newInstance(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;ZZ)Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    move-object v0, p1

    .line 46
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    const v3, 0x7f0902a5

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v3, v0, v2}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 56
    .line 57
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->openFolderTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 58
    .line 59
    return-void
.end method

.method public final removeMessageViewContainerFragment()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    invoke-interface {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->updateTitle()V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final returnToMessageList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 2
    .line 3
    sget-object v1, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->SPLIT_VIEW:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->showMessageViewPlaceHolder()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->showMessageList()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setActionBarTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0x7f090446

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7f090445

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/google/android/material/textview/MaterialTextView;

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    const/16 p1, 0x8

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final showMessageList()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewOnly:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListWasDisplayed:Z

    .line 6
    .line 7
    sget-object v2, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->MESSAGE_LIST:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 8
    .line 9
    iput-object v2, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->setActive(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-interface {v1, v2}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->setActiveMessage(Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->viewSwitcher:Lcom/fsck/k9/view/ViewSwitcher;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_1

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/fsck/k9/view/ViewSwitcher;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-object v3, v1, Lcom/fsck/k9/view/ViewSwitcher;->mFirstInAnimation:Landroid/view/animation/Animation;

    .line 58
    .line 59
    iget-object v4, v1, Lcom/fsck/k9/view/ViewSwitcher;->mFirstOutAnimation:Landroid/view/animation/Animation;

    .line 60
    .line 61
    iget-object v5, v1, Lcom/fsck/k9/view/ViewSwitcher;->animationManager:Lnet/thunderbird/core/ui/animation/manager/AnimationManager;

    .line 62
    .line 63
    check-cast v5, Lnet/thunderbird/core/ui/animation/manager/DefaultAnimationManager;

    .line 64
    .line 65
    invoke-virtual {v5}, Lnet/thunderbird/core/ui/animation/manager/DefaultAnimationManager;->shouldShowAnimations()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_2

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v4}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 88
    .line 89
    .line 90
    iget-object v3, v1, Lcom/fsck/k9/view/ViewSwitcher;->animationManager:Lnet/thunderbird/core/ui/animation/manager/AnimationManager;

    .line 91
    .line 92
    check-cast v3, Lnet/thunderbird/core/ui/animation/manager/DefaultAnimationManager;

    .line 93
    .line 94
    invoke-virtual {v3}, Lnet/thunderbird/core/ui/animation/manager/DefaultAnimationManager;->shouldShowAnimations()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_3

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lcom/fsck/k9/view/ViewSwitcher;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->isDrawerEnabled()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_4

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-lez v1, :cond_5

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->lockDrawer()V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_5
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->navigationDrawer:Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    iget-object v1, v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 130
    .line 131
    invoke-virtual {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    .line 135
    .line 136
    if-eqz v0, :cond_7

    .line 137
    .line 138
    const v1, 0x7f0800fc

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 142
    .line 143
    .line 144
    :goto_2
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 145
    .line 146
    if-eqz v0, :cond_6

    .line 147
    .line 148
    invoke-interface {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->updateTitle()V

    .line 149
    .line 150
    .line 151
    :cond_6
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->onMessageListDisplayed()V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_7
    const-string p0, "actionBar"

    .line 156
    .line 157
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v2
.end method

.method public final showMessageView()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    sget-object v1, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v1, v2}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->setActive(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 26
    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListWasDisplayed:Z

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->viewSwitcher:Lcom/fsck/k9/view/ViewSwitcher;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/widget/ViewAnimator;->setAnimateFirstView(Z)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->viewSwitcher:Lcom/fsck/k9/view/ViewSwitcher;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/4 v3, 0x0

    .line 50
    if-ne v2, v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Lcom/fsck/k9/view/ViewSwitcher;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v2, v0, Lcom/fsck/k9/view/ViewSwitcher;->mSecondInAnimation:Landroid/view/animation/Animation;

    .line 57
    .line 58
    iget-object v4, v0, Lcom/fsck/k9/view/ViewSwitcher;->mSecondOutAnimation:Landroid/view/animation/Animation;

    .line 59
    .line 60
    iget-object v5, v0, Lcom/fsck/k9/view/ViewSwitcher;->animationManager:Lnet/thunderbird/core/ui/animation/manager/AnimationManager;

    .line 61
    .line 62
    check-cast v5, Lnet/thunderbird/core/ui/animation/manager/DefaultAnimationManager;

    .line 63
    .line 64
    invoke-virtual {v5}, Lnet/thunderbird/core/ui/animation/manager/DefaultAnimationManager;->shouldShowAnimations()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v4}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lcom/fsck/k9/view/ViewSwitcher;->animationManager:Lnet/thunderbird/core/ui/animation/manager/AnimationManager;

    .line 90
    .line 91
    check-cast v1, Lnet/thunderbird/core/ui/animation/manager/DefaultAnimationManager;

    .line 92
    .line 93
    invoke-virtual {v1}, Lnet/thunderbird/core/ui/animation/manager/DefaultAnimationManager;->shouldShowAnimations()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_4

    .line 98
    .line 99
    invoke-virtual {v0, v3}, Lcom/fsck/k9/view/ViewSwitcher;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->isDrawerEnabled()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->lockDrawer()V

    .line 109
    .line 110
    .line 111
    :cond_5
    const-string v0, ""

    .line 112
    .line 113
    invoke-virtual {p0, v0, v3}, Lcom/fsck/k9/activity/MessageHomeActivity;->setActionBarTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_6
    const-string p0, "Required value was null."

    .line 118
    .line 119
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final showMessageViewPlaceHolder()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->removeMessageViewContainerFragment()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v1, "MessageViewPlaceholder"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    new-instance v2, Landroidx/fragment/app/BackStackRecord;

    .line 20
    .line 21
    invoke-direct {v2, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewPlaceHolder:Lcom/fsck/k9/ui/messageview/PlaceholderFragment;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const v3, 0x7f0902b5

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3, v0, v1}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-interface {p0, v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->setActiveMessage(Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final showNextMessage()Z
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_4

    .line 5
    .line 6
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-string/jumbo v3, "viewPager"

    .line 10
    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v4, 0x1

    .line 19
    add-int/2addr v1, v4

    .line 20
    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->adapter:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;

    .line 21
    .line 22
    if-eqz v5, :cond_2

    .line 23
    .line 24
    iget-object v5, v5, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->messageList:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-ge v1, v5, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->setActiveMessage(I)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 40
    .line 41
    .line 42
    return v4

    .line 43
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v2

    .line 47
    :cond_1
    return v0

    .line 48
    :cond_2
    const-string p0, "adapter"

    .line 49
    .line 50
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v2

    .line 54
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v2

    .line 58
    :cond_4
    const-string p0, "Required value was null."

    .line 59
    .line 60
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return v0
.end method

.method public final showPreviousMessage()Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageViewContainerFragment:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_3

    .line 5
    .line 6
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-string/jumbo v3, "viewPager"

    .line 10
    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v4, 0x1

    .line 19
    sub-int/2addr v1, v4

    .line 20
    if-ltz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->setActiveMessage(I)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 30
    .line 31
    .line 32
    return v4

    .line 33
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v2

    .line 37
    :cond_1
    return v0

    .line 38
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v2

    .line 42
    :cond_3
    const-string p0, "Required value was null."

    .line 43
    .line 44
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return v0
.end method

.method public final startSearch(Ljava/lang/String;Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/Long;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "com.fsck.k9.search_account"

    .line 14
    .line 15
    iget-object p2, p2, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p2, "com.fsck.k9.search_folder"

    .line 21
    .line 22
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-virtual {v0, p2, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    new-instance p2, Landroid/content/Intent;

    .line 32
    .line 33
    const-class p3, Lcom/fsck/k9/activity/MessageSearchActivity;

    .line 34
    .line 35
    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    const-string p3, "android.intent.action.SEARCH"

    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    const-string p3, "query"

    .line 44
    .line 45
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    const-string p1, "app_data"

    .line 49
    .line 50
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final useSplitView()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getGeneralSettingsManager$1()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 12
    .line 13
    iget-object v0, v0, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 14
    .line 15
    iget-object v0, v0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->splitViewMode:Lnet/thunderbird/core/preference/SplitViewMode;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v2, 0x1

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    if-eq v0, v2, :cond_2

    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    if-eq v0, v4, :cond_1

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    if-ne v0, v1, :cond_0

    .line 42
    .line 43
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->foldableStateObserver$delegate:Lkotlin/Lazy;

    .line 44
    .line 45
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;

    .line 50
    .line 51
    iget-object p0, p0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->_foldableState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 52
    .line 53
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Lapp/k9mail/core/ui/compose/common/window/FoldableState;

    .line 58
    .line 59
    sget-object v0, Lapp/k9mail/core/ui/compose/common/window/FoldableState;->UNFOLDED:Lapp/k9mail/core/ui/compose/common/window/FoldableState;

    .line 60
    .line 61
    if-ne p0, v0, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 65
    .line 66
    .line 67
    return v3

    .line 68
    :cond_1
    if-ne v1, v4, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    return v3

    .line 72
    :cond_3
    :goto_0
    return v2
.end method

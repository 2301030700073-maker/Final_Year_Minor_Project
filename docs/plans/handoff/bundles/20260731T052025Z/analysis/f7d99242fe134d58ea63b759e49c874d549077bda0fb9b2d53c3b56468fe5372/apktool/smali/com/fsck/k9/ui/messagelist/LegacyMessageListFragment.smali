.class public final Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;
.implements Lcom/fsck/k9/fragment/ConfirmationDialogFragment$ConfirmationDialogFragmentListener;
.implements Lcom/fsck/k9/ui/messagelist/MessageListItemActionListener;
.implements Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogFragmentActionListener;


# instance fields
.field public account:Lnet/thunderbird/core/android/account/LegacyAccount;

.field public final accountManager$delegate:Lkotlin/Lazy;

.field public accountUuids:[Ljava/lang/String;

.field public accounts:Ljava/util/List;

.field public actionMode:Landroidx/appcompat/view/ActionMode;

.field public final actionModeCallback:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

.field public activeMessage:Lapp/k9mail/legacy/message/controller/MessageReference;

.field public activeMessages:Ljava/util/List;

.field public final activityListener:Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

.field public adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

.field public allAccounts:Z

.field public final avatarMonogramCreator$delegate:Lkotlin/Lazy;

.field public final buildSwipeActions$delegate:Lkotlin/Lazy;

.field public final chooseFolderForCopyLauncher:Landroidx/fragment/app/Fragment$10;

.field public final chooseFolderForMoveLauncher:Landroidx/fragment/app/Fragment$10;

.field public final connectivityManager$delegate:Lkotlin/Lazy;

.field public final contactRepository$delegate:Lkotlin/Lazy;

.field public coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

.field public error:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$Error;

.field public final errorNotificationsDialogFragmentFactory$delegate:Lkotlin/Lazy;

.field public extraSearchResults:Ljava/util/List;

.field public final featureFlagProvider$delegate:Lkotlin/Lazy;

.field public final featureThemeProvider$delegate:Lkotlin/Lazy;

.field public floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final folderNameFormatter$delegate:Lkotlin/Lazy;

.field public fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

.field public final generalSettingsManager$delegate:Lkotlin/Lazy;

.field public final handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

.field public hasConnectivity:Ljava/lang/Boolean;

.field public initialMessageListLoad:Z

.field public initialSearchViewIconified:Z

.field public initialSearchViewQuery:Ljava/lang/String;

.field public isActive:Z

.field public isInitialized:Z

.field public isRemoteSearch:Z

.field public isShowFloatingActionButton:Z

.field public isSingleAccountMode:Z

.field public isSingleFolderMode:Z

.field public isThreadDisplay:Z

.field public itemSelectedOnSwipeStart:Z

.field public itemTouchHelper:Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;

.field public lastMessageClick:J

.field public final legacyViewModel$delegate:Lkotlin/Lazy;

.field public localSearch:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

.field public final localStoreProvider$delegate:Lkotlin/Lazy;

.field public final logTag:Ljava/lang/String;

.field public final logger$delegate:Lkotlin/Lazy;

.field public final messagingController$delegate:Lkotlin/Lazy;

.field public final messagingControllerRegistry$delegate:Lkotlin/Lazy;

.field public final outboxFolderManager$delegate:Lkotlin/Lazy;

.field public recentChangesSnackbar:Lcom/google/android/material/snackbar/Snackbar;

.field public final recentChangesViewModel$delegate:Lkotlin/Lazy;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final relativeDateTimeFormatter$delegate:Lkotlin/Lazy;

.field public rememberedSelected:Ljava/util/Set;

.field public remoteSearchFuture:Ljava/util/concurrent/Future;

.field public searchView:Landroidx/appcompat/widget/SearchView;

.field public final setupArchiveFolderDialogFragmentFactory$delegate:Lkotlin/Lazy;

.field public final shouldShowRecentChangesHintObserver:Landroidx/camera/core/impl/LiveDataObservable$$ExternalSyntheticLambda3;

.field public showingThreadedList:Z

.field public sortAscending:Z

.field public sortDateAscending:Z

.field public sortType:Lnet/thunderbird/core/android/account/SortType;

.field public final sortTypeToastProvider$delegate:Lkotlin/Lazy;

.field public final swipeActionSupportProvider:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;

.field public final swipeListener:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;

.field public swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public threadTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "BaseMessageListFragment"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->logTag:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 9
    .line 10
    const/16 v1, 0x12

    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 16
    .line 17
    const/16 v3, 0xe

    .line 18
    .line 19
    invoke-direct {v2, v3, p0, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 23
    .line 24
    invoke-static {v0, v2}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-object v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->legacyViewModel$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    new-instance v2, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 31
    .line 32
    const/16 v4, 0x13

    .line 33
    .line 34
    invoke-direct {v2, p0, v4}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 38
    .line 39
    const/16 v5, 0xf

    .line 40
    .line 41
    invoke-direct {v4, v5, p0, v2}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v4}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->recentChangesViewModel$delegate:Lkotlin/Lazy;

    .line 49
    .line 50
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 54
    .line 55
    .line 56
    sget-object v4, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 57
    .line 58
    invoke-static {v4, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 63
    .line 64
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 65
    .line 66
    const/16 v6, 0xb

    .line 67
    .line 68
    invoke-direct {v0, p0, v6}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 69
    .line 70
    .line 71
    invoke-static {v4, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortTypeToastProvider$delegate:Lkotlin/Lazy;

    .line 76
    .line 77
    new-instance v0, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    invoke-direct {v0, v1, p0}, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    new-instance v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 83
    .line 84
    const/16 v6, 0xd

    .line 85
    .line 86
    invoke-direct {v1, v6, p0, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v4, v1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->folderNameFormatter$delegate:Lkotlin/Lazy;

    .line 94
    .line 95
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 96
    .line 97
    const/16 v1, 0xc

    .line 98
    .line 99
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 100
    .line 101
    .line 102
    invoke-static {v4, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->messagingController$delegate:Lkotlin/Lazy;

    .line 107
    .line 108
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 109
    .line 110
    invoke-direct {v0, p0, v6}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 111
    .line 112
    .line 113
    invoke-static {v4, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->messagingControllerRegistry$delegate:Lkotlin/Lazy;

    .line 118
    .line 119
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 120
    .line 121
    invoke-direct {v0, p0, v3}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 122
    .line 123
    .line 124
    invoke-static {v4, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->accountManager$delegate:Lkotlin/Lazy;

    .line 129
    .line 130
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 131
    .line 132
    invoke-direct {v0, p0, v5}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 133
    .line 134
    .line 135
    invoke-static {v4, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->connectivityManager$delegate:Lkotlin/Lazy;

    .line 140
    .line 141
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 142
    .line 143
    const/16 v1, 0x10

    .line 144
    .line 145
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 146
    .line 147
    .line 148
    invoke-static {v4, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->localStoreProvider$delegate:Lkotlin/Lazy;

    .line 153
    .line 154
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 155
    .line 156
    const/16 v1, 0x11

    .line 157
    .line 158
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 159
    .line 160
    .line 161
    invoke-static {v4, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->setupArchiveFolderDialogFragmentFactory$delegate:Lkotlin/Lazy;

    .line 166
    .line 167
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 168
    .line 169
    const/4 v1, 0x1

    .line 170
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 171
    .line 172
    .line 173
    invoke-static {v4, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->buildSwipeActions$delegate:Lkotlin/Lazy;

    .line 178
    .line 179
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 180
    .line 181
    const/4 v3, 0x2

    .line 182
    invoke-direct {v0, p0, v3}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 183
    .line 184
    .line 185
    invoke-static {v4, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->featureFlagProvider$delegate:Lkotlin/Lazy;

    .line 190
    .line 191
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 192
    .line 193
    const/4 v5, 0x3

    .line 194
    invoke-direct {v0, p0, v5}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 195
    .line 196
    .line 197
    invoke-static {v4, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->featureThemeProvider$delegate:Lkotlin/Lazy;

    .line 202
    .line 203
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 204
    .line 205
    const/4 v5, 0x4

    .line 206
    invoke-direct {v0, p0, v5}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 207
    .line 208
    .line 209
    invoke-static {v4, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->logger$delegate:Lkotlin/Lazy;

    .line 214
    .line 215
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 216
    .line 217
    const/4 v5, 0x5

    .line 218
    invoke-direct {v0, p0, v5}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 219
    .line 220
    .line 221
    invoke-static {v4, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->outboxFolderManager$delegate:Lkotlin/Lazy;

    .line 226
    .line 227
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 228
    .line 229
    const/4 v5, 0x6

    .line 230
    invoke-direct {v0, p0, v5}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 231
    .line 232
    .line 233
    invoke-static {v4, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 234
    .line 235
    .line 236
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 237
    .line 238
    const/4 v5, 0x7

    .line 239
    invoke-direct {v0, p0, v5}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 240
    .line 241
    .line 242
    invoke-static {v4, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->errorNotificationsDialogFragmentFactory$delegate:Lkotlin/Lazy;

    .line 247
    .line 248
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 249
    .line 250
    invoke-direct {v0, p0}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;)V

    .line 251
    .line 252
    .line 253
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 254
    .line 255
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

    .line 256
    .line 257
    invoke-direct {v0, p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;)V

    .line 258
    .line 259
    .line 260
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activityListener:Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

    .line 261
    .line 262
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 263
    .line 264
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 265
    .line 266
    .line 267
    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasure:Ljava/lang/Object;

    .line 268
    .line 269
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->actionModeCallback:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 270
    .line 271
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 272
    .line 273
    const/16 v5, 0x8

    .line 274
    .line 275
    invoke-direct {v0, p0, v5}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 276
    .line 277
    .line 278
    invoke-static {v4, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->contactRepository$delegate:Lkotlin/Lazy;

    .line 283
    .line 284
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 285
    .line 286
    const/16 v5, 0x9

    .line 287
    .line 288
    invoke-direct {v0, p0, v5}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 289
    .line 290
    .line 291
    invoke-static {v4, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->avatarMonogramCreator$delegate:Lkotlin/Lazy;

    .line 296
    .line 297
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;

    .line 298
    .line 299
    const/16 v5, 0xa

    .line 300
    .line 301
    invoke-direct {v0, p0, v5}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 302
    .line 303
    .line 304
    invoke-static {v4, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->relativeDateTimeFormatter$delegate:Lkotlin/Lazy;

    .line 309
    .line 310
    new-instance v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract;

    .line 311
    .line 312
    sget-object v4, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;->MOVE:Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;

    .line 313
    .line 314
    invoke-direct {v0, v4}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract;-><init>(Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;)V

    .line 315
    .line 316
    .line 317
    new-instance v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda4;

    .line 318
    .line 319
    invoke-direct {v4, p0, v2}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda4;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p0, v4, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lcom/fsck/k9/sasl/OAuthBearer;)Landroidx/fragment/app/Fragment$10;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->chooseFolderForMoveLauncher:Landroidx/fragment/app/Fragment$10;

    .line 327
    .line 328
    new-instance v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract;

    .line 329
    .line 330
    sget-object v4, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;->COPY:Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;

    .line 331
    .line 332
    invoke-direct {v0, v4}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract;-><init>(Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;)V

    .line 333
    .line 334
    .line 335
    new-instance v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda4;

    .line 336
    .line 337
    invoke-direct {v4, p0, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda4;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0, v4, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lcom/fsck/k9/sasl/OAuthBearer;)Landroidx/fragment/app/Fragment$10;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->chooseFolderForCopyLauncher:Landroidx/fragment/app/Fragment$10;

    .line 345
    .line 346
    iput-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->initialSearchViewIconified:Z

    .line 347
    .line 348
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 349
    .line 350
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->accounts:Ljava/util/List;

    .line 351
    .line 352
    sget-object v0, Lnet/thunderbird/core/android/account/SortType;->SORT_DATE:Lnet/thunderbird/core/android/account/SortType;

    .line 353
    .line 354
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 355
    .line 356
    iput-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortAscending:Z

    .line 357
    .line 358
    iput-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isShowFloatingActionButton:Z

    .line 359
    .line 360
    iput-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->initialMessageListLoad:Z

    .line 361
    .line 362
    new-instance v0, Landroidx/camera/core/impl/LiveDataObservable$$ExternalSyntheticLambda3;

    .line 363
    .line 364
    invoke-direct {v0, v3, p0}, Landroidx/camera/core/impl/LiveDataObservable$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->shouldShowRecentChangesHintObserver:Landroidx/camera/core/impl/LiveDataObservable$$ExternalSyntheticLambda3;

    .line 368
    .line 369
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;

    .line 370
    .line 371
    invoke-direct {v0, p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;)V

    .line 372
    .line 373
    .line 374
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->swipeListener:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;

    .line 375
    .line 376
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;

    .line 377
    .line 378
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 379
    .line 380
    .line 381
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->swipeActionSupportProvider:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;

    .line 382
    .line 383
    return-void
.end method

.method public static final access$getSelectedMessages(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->getSelectedMessages()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    const/16 v1, 0xa

    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-object v0

    .line 45
    :cond_1
    const-string p0, "adapter"

    .line 46
    .line 47
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    throw p0
.end method

.method public static final access$isMessageSelected(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;Lcom/fsck/k9/ui/messagelist/MessageListItem;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->isSelected(Lcom/fsck/k9/ui/messagelist/MessageListItem;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const-string p0, "adapter"

    .line 11
    .line 12
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    throw p0
.end method

.method public static final access$onSnackbarInAppNotificationEvent(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;Lkotlin/coroutines/Continuation;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$onSnackbarInAppNotificationEvent$1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$onSnackbarInAppNotificationEvent$1;

    .line 10
    .line 11
    iget v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$onSnackbarInAppNotificationEvent$1;->label:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    and-int v3, v1, v2

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    iput v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$onSnackbarInAppNotificationEvent$1;->label:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$onSnackbarInAppNotificationEvent$1;

    .line 24
    .line 25
    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$onSnackbarInAppNotificationEvent$1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p0, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$onSnackbarInAppNotificationEvent$1;->result:Ljava/lang/Object;

    .line 29
    .line 30
    iget p1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$onSnackbarInAppNotificationEvent$1;->label:I

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    if-ne p1, v1, :cond_1

    .line 37
    .line 38
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p0, Ljava/lang/CharSequence;

    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method public static final access$setFlagForSelected(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;Lnet/thunderbird/core/common/mail/Flag;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "adapter"

    .line 5
    .line 6
    if-eqz v0, :cond_9

    .line 7
    .line 8
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selected:Ljava/util/Set;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v5, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 33
    .line 34
    if-eqz v5, :cond_8

    .line 35
    .line 36
    invoke-virtual {v5}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->getSelectedMessages()Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 55
    .line 56
    iget-object v5, v2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 57
    .line 58
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iget-boolean v6, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->showingThreadedList:Z

    .line 62
    .line 63
    if-eqz v6, :cond_2

    .line 64
    .line 65
    iget v6, v2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->threadCount:I

    .line 66
    .line 67
    const/4 v7, 0x1

    .line 68
    if-le v6, v7, :cond_2

    .line 69
    .line 70
    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    if-nez v6, :cond_1

    .line 75
    .line 76
    new-instance v6, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :cond_1
    check-cast v6, Ljava/util/List;

    .line 85
    .line 86
    iget-wide v7, v2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->threadRoot:J

    .line 87
    .line 88
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    if-nez v6, :cond_3

    .line 101
    .line 102
    new-instance v6, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    :cond_3
    check-cast v6, Ljava/util/List;

    .line 111
    .line 112
    iget-wide v7, v2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->databaseId:J

    .line 113
    .line 114
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_7

    .line 131
    .line 132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    check-cast v4, Ljava/util/List;

    .line 143
    .line 144
    if-eqz v4, :cond_6

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    iget-object v6, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 151
    .line 152
    invoke-virtual {v5, v6, v4, p1, p2}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->setFlag(Lnet/thunderbird/feature/account/AccountId;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 153
    .line 154
    .line 155
    :cond_6
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    check-cast v4, Ljava/util/List;

    .line 160
    .line 161
    if-eqz v4, :cond_5

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    iget-object v2, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 168
    .line 169
    invoke-virtual {v5, v2, v4, p1, p2}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->setFlagForThreads(Lnet/thunderbird/feature/account/AccountId;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_7
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->computeBatchDirection()V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v1

    .line 181
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v1
.end method


# virtual methods
.method public final changeSort(Lnet/thunderbird/core/android/account/SortType;)V
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v2, v1, :cond_0

    .line 9
    .line 10
    iget-boolean v2, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortAscending:Z

    .line 11
    .line 12
    xor-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v2, v3

    .line 20
    :goto_0
    iput-object v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 21
    .line 22
    iget-object v4, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 23
    .line 24
    sget-object v5, Lnet/thunderbird/core/android/account/SortType;->SORT_DATE:Lnet/thunderbird/core/android/account/SortType;

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    if-eqz v4, :cond_4

    .line 28
    .line 29
    iget-object v7, v4, Lnet/thunderbird/core/android/account/LegacyAccount;->sortAscending:Ljava/util/Map;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/Boolean;

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-boolean v2, v1, Lnet/thunderbird/core/android/account/SortType;->isDefaultAscending:Z

    .line 48
    .line 49
    :goto_2
    iput-boolean v2, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortAscending:Z

    .line 50
    .line 51
    invoke-static {v7}, Lkotlin/collections/MapsKt__MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/Boolean;

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    move v2, v6

    .line 76
    :goto_3
    iput-boolean v2, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortDateAscending:Z

    .line 77
    .line 78
    const/16 v39, -0x601

    .line 79
    .line 80
    const v40, 0x7fffff

    .line 81
    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    move-object v5, v3

    .line 85
    const/4 v3, 0x0

    .line 86
    move-object v1, v4

    .line 87
    const/4 v4, 0x0

    .line 88
    move-object v8, v5

    .line 89
    const/4 v5, 0x0

    .line 90
    move v9, v6

    .line 91
    const/4 v6, 0x0

    .line 92
    move-object/from16 v22, v7

    .line 93
    .line 94
    const/4 v7, 0x0

    .line 95
    move-object v10, v8

    .line 96
    const/4 v8, 0x0

    .line 97
    move v11, v9

    .line 98
    const/4 v9, 0x0

    .line 99
    move-object v12, v10

    .line 100
    const/4 v10, 0x0

    .line 101
    move v13, v11

    .line 102
    const/4 v11, 0x0

    .line 103
    move-object v14, v12

    .line 104
    const/4 v12, 0x0

    .line 105
    move v15, v13

    .line 106
    const/4 v13, 0x0

    .line 107
    move-object/from16 v16, v14

    .line 108
    .line 109
    const/4 v14, 0x0

    .line 110
    move/from16 v17, v15

    .line 111
    .line 112
    const/4 v15, 0x0

    .line 113
    move-object/from16 v18, v16

    .line 114
    .line 115
    const/16 v16, 0x0

    .line 116
    .line 117
    move/from16 v19, v17

    .line 118
    .line 119
    const/16 v17, 0x0

    .line 120
    .line 121
    move-object/from16 v20, v18

    .line 122
    .line 123
    const/16 v18, 0x0

    .line 124
    .line 125
    move/from16 v21, v19

    .line 126
    .line 127
    const/16 v19, 0x0

    .line 128
    .line 129
    move-object/from16 v23, v20

    .line 130
    .line 131
    const/16 v20, 0x0

    .line 132
    .line 133
    move-object/from16 v24, v23

    .line 134
    .line 135
    const/16 v23, 0x0

    .line 136
    .line 137
    move-object/from16 v25, v24

    .line 138
    .line 139
    const/16 v24, 0x0

    .line 140
    .line 141
    move-object/from16 v26, v25

    .line 142
    .line 143
    const/16 v25, 0x0

    .line 144
    .line 145
    move-object/from16 v27, v26

    .line 146
    .line 147
    const/16 v26, 0x0

    .line 148
    .line 149
    move-object/from16 v28, v27

    .line 150
    .line 151
    const/16 v27, 0x0

    .line 152
    .line 153
    move-object/from16 v29, v28

    .line 154
    .line 155
    const/16 v28, 0x0

    .line 156
    .line 157
    move-object/from16 v30, v29

    .line 158
    .line 159
    const/16 v29, 0x0

    .line 160
    .line 161
    move-object/from16 v31, v30

    .line 162
    .line 163
    const/16 v30, 0x0

    .line 164
    .line 165
    move-object/from16 v32, v31

    .line 166
    .line 167
    const/16 v31, 0x0

    .line 168
    .line 169
    move-object/from16 v33, v32

    .line 170
    .line 171
    const/16 v32, 0x0

    .line 172
    .line 173
    move-object/from16 v34, v33

    .line 174
    .line 175
    const/16 v33, 0x0

    .line 176
    .line 177
    move-object/from16 v35, v34

    .line 178
    .line 179
    const/16 v34, 0x0

    .line 180
    .line 181
    move-object/from16 v36, v35

    .line 182
    .line 183
    const/16 v35, 0x0

    .line 184
    .line 185
    move-object/from16 v37, v36

    .line 186
    .line 187
    const/16 v36, 0x0

    .line 188
    .line 189
    move-object/from16 v38, v37

    .line 190
    .line 191
    const/16 v37, 0x0

    .line 192
    .line 193
    move-object/from16 v41, v38

    .line 194
    .line 195
    const/16 v38, -0x1

    .line 196
    .line 197
    move-object/from16 v21, p1

    .line 198
    .line 199
    invoke-static/range {v1 .. v40}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    sget-object v3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 208
    .line 209
    sget-object v3, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 210
    .line 211
    new-instance v4, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 212
    .line 213
    const/4 v5, 0x5

    .line 214
    const/4 v8, 0x0

    .line 215
    invoke-direct {v4, v0, v1, v8, v5}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 216
    .line 217
    .line 218
    const/4 v1, 0x2

    .line 219
    invoke-static {v2, v3, v8, v4, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 220
    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/fsck/k9/K9;->setSortType(Lnet/thunderbird/core/android/account/SortType;)V

    .line 224
    .line 225
    .line 226
    if-nez v2, :cond_5

    .line 227
    .line 228
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 229
    .line 230
    invoke-static {v1}, Lcom/fsck/k9/K9;->isSortAscending(Lnet/thunderbird/core/android/account/SortType;)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    iput-boolean v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortAscending:Z

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    iput-boolean v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortAscending:Z

    .line 242
    .line 243
    :goto_4
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 244
    .line 245
    iget-boolean v2, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortAscending:Z

    .line 246
    .line 247
    invoke-static {v1, v2}, Lcom/fsck/k9/K9;->setSortAscending(Lnet/thunderbird/core/android/account/SortType;Z)V

    .line 248
    .line 249
    .line 250
    invoke-static {v5}, Lcom/fsck/k9/K9;->isSortAscending(Lnet/thunderbird/core/android/account/SortType;)Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    iput-boolean v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortDateAscending:Z

    .line 255
    .line 256
    invoke-static {}, Lcom/fsck/k9/K9;->saveSettingsAsync()V

    .line 257
    .line 258
    .line 259
    :goto_5
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortTypeToastProvider$delegate:Lkotlin/Lazy;

    .line 260
    .line 261
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    check-cast v1, Lcom/fsck/k9/ui/messagelist/SortTypeToastProvider;

    .line 266
    .line 267
    iget-object v2, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 268
    .line 269
    iget-boolean v3, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortAscending:Z

    .line 270
    .line 271
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    invoke-static {v2, v3}, Lcom/fsck/k9/ui/messagelist/SortTypeToastProvider;->getToast(Lnet/thunderbird/core/android/account/SortType;Z)I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    const/4 v15, 0x0

    .line 283
    invoke-static {v2, v1, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v15}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->loadMessageList(Z)V

    .line 291
    .line 292
    .line 293
    return-void
.end method

.method public final checkCopyOrMovePossible(Ljava/util/List;Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;)Z
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getAccountManager$1()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 18
    .line 19
    iget-object v2, v2, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 29
    .line 30
    sget-object v2, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;->MOVE:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;

    .line 31
    .line 32
    if-ne p2, v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3, v0}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->isMoveCapable(Lnet/thunderbird/feature/account/AccountId;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    :cond_2
    sget-object v3, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;->COPY:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;

    .line 45
    .line 46
    if-ne p2, v3, :cond_4

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4, v0}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->isCopyCapable(Lnet/thunderbird/feature/account/AccountId;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_4

    .line 57
    .line 58
    :cond_3
    :goto_0
    return v1

    .line 59
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/4 v4, 0x1

    .line 68
    if-eqz v0, :cond_8

    .line 69
    .line 70
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 75
    .line 76
    if-ne p2, v2, :cond_6

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    iget-object v5, v5, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 89
    .line 90
    invoke-virtual {v5, v0}, Lcom/fsck/k9/controller/MessagingController;->isMoveCapable(Lapp/k9mail/legacy/message/controller/MessageReference;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_7

    .line 95
    .line 96
    :cond_6
    if-ne p2, v3, :cond_5

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    iget-object v5, v5, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 109
    .line 110
    invoke-virtual {v5, v0}, Lcom/fsck/k9/controller/MessagingController;->isMoveCapable(Lapp/k9mail/legacy/message/controller/MessageReference;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_5

    .line 115
    .line 116
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    const p1, 0x7f12047f

    .line 121
    .line 122
    .line 123
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 128
    .line 129
    .line 130
    return v1

    .line 131
    :cond_8
    return v4
.end method

.method public final collapseSearchView$1()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setQuery$1(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final computeBatchDirection()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->getSelectedMessages()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    :cond_0
    move v1, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 34
    .line 35
    iget-boolean v4, v4, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isRead:Z

    .line 36
    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    move v1, v2

    .line 40
    :goto_0
    xor-int/lit8 v4, v1, 0x1

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_4

    .line 47
    .line 48
    :cond_3
    move v2, v3

    .line 49
    goto :goto_1

    .line 50
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_3

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 65
    .line 66
    iget-boolean v5, v5, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isStarred:Z

    .line 67
    .line 68
    if-nez v5, :cond_5

    .line 69
    .line 70
    :goto_1
    xor-int/lit8 v0, v2, 0x1

    .line 71
    .line 72
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->actionModeCallback:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 73
    .line 74
    iget-boolean v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 75
    .line 76
    if-nez v3, :cond_7

    .line 77
    .line 78
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v3, Landroid/view/MenuItem;

    .line 81
    .line 82
    if-eqz v3, :cond_6

    .line 83
    .line 84
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 85
    .line 86
    .line 87
    :cond_6
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v3, Landroid/view/MenuItem;

    .line 90
    .line 91
    if-eqz v3, :cond_7

    .line 92
    .line 93
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 94
    .line 95
    .line 96
    :cond_7
    iget-boolean v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 97
    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mGroups:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v1, Landroid/view/MenuItem;

    .line 103
    .line 104
    if-eqz v1, :cond_8

    .line 105
    .line 106
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 107
    .line 108
    .line 109
    :cond_8
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasurer:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p0, Landroid/view/MenuItem;

    .line 112
    .line 113
    if-eqz p0, :cond_9

    .line 114
    .line 115
    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 116
    .line 117
    .line 118
    :cond_9
    return-void

    .line 119
    :cond_a
    const-string p0, "adapter"

    .line 120
    .line 121
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const/4 p0, 0x0

    .line 125
    throw p0
.end method

.method public final copyOrMove(Ljava/util/List;JLcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;)V
    .locals 10

    .line 1
    invoke-virtual {p0, p1, p4}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->checkCopyOrMovePossible(Ljava/util/List;Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    new-instance v0, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1, p1}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;

    .line 16
    .line 17
    const/4 v2, 0x5

    .line 18
    invoke-direct {p1, v2, p2, p3}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;-><init>(IJ)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lkotlin/sequences/FilteringSequence;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-direct {v2, v0, v3, p1}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 33
    .line 34
    invoke-direct {v0, v2}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    move-object v3, v2

    .line 48
    check-cast v3, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 49
    .line 50
    iget-wide v3, v3, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 51
    .line 52
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {p1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-nez v4, :cond_1

    .line 61
    .line 62
    new-instance v4, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_1
    check-cast v4, Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_8

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Ljava/lang/Number;

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 103
    .line 104
    .line 105
    move-result-wide v5

    .line 106
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    move-object v7, v0

    .line 111
    check-cast v7, Ljava/util/List;

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getAccountManager$1()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 122
    .line 123
    iget-object v2, v2, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-nez v0, :cond_3

    .line 130
    .line 131
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->logger$delegate:Lkotlin/Lazy;

    .line 132
    .line 133
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Lnet/thunderbird/core/logging/Logger;

    .line 138
    .line 139
    new-instance v2, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;

    .line 140
    .line 141
    invoke-direct {v2, v1, v7}, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/util/List;)V

    .line 142
    .line 143
    .line 144
    iget-object v3, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->logTag:Ljava/lang/String;

    .line 145
    .line 146
    const/4 v4, 0x0

    .line 147
    invoke-static {v0, v3, v4, v2, v1}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    iget-object v2, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 152
    .line 153
    sget-object v3, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 154
    .line 155
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    aget v3, v3, v4

    .line 160
    .line 161
    if-ne v3, v1, :cond_4

    .line 162
    .line 163
    iget-boolean v4, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->showingThreadedList:Z

    .line 164
    .line 165
    if-eqz v4, :cond_4

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    iget-object v4, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 172
    .line 173
    move-wide v8, p2

    .line 174
    invoke-virtual/range {v3 .. v9}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->moveMessagesInThread(Lnet/thunderbird/feature/account/AccountId;JLjava/util/List;J)V

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_4
    move-wide v8, p2

    .line 179
    if-ne v3, v1, :cond_5

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, v2}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    iget-object v3, p2, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 196
    .line 197
    invoke-virtual/range {v3 .. v9}, Lcom/fsck/k9/controller/MessagingController;->moveMessages(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;J)V

    .line 198
    .line 199
    .line 200
    :goto_2
    move-wide p2, v8

    .line 201
    goto :goto_1

    .line 202
    :cond_5
    const/4 p2, 0x1

    .line 203
    if-ne v3, p2, :cond_6

    .line 204
    .line 205
    iget-boolean p3, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->showingThreadedList:Z

    .line 206
    .line 207
    if-eqz p3, :cond_6

    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    iget-object v4, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 214
    .line 215
    invoke-virtual/range {v3 .. v9}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->copyMessagesInThread(Lnet/thunderbird/feature/account/AccountId;JLjava/util/List;J)V

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_6
    if-ne v3, p2, :cond_7

    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2, v2}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    iget-object v3, p2, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 236
    .line 237
    invoke-virtual/range {v3 .. v9}, Lcom/fsck/k9/controller/MessagingController;->copyMessages(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;J)V

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_7
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 242
    .line 243
    .line 244
    :cond_8
    :goto_3
    return-void
.end method

.method public final dialogCancelled(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->doNegativeClick(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final displayFolderChoice(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 1
    iput-object p4, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activeMessages:Ljava/util/List;

    .line 2
    .line 3
    new-instance p4, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Input;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-direct {p4, v0, p2, p3}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Input;-><init>(ILjava/lang/Long;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    if-ne p1, p2, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->chooseFolderForMoveLauncher:Landroidx/fragment/app/Fragment$10;

    .line 20
    .line 21
    invoke-virtual {p0, p4}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->chooseFolderForCopyLauncher:Landroidx/fragment/app/Fragment$10;

    .line 30
    .line 31
    invoke-virtual {p0, p4}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final doNegativeClick(I)V
    .locals 2

    .line 1
    const v0, 0x7f09019f

    .line 2
    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const v0, 0x7f09019b

    .line 7
    .line 8
    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activeMessages:Ljava/util/List;

    .line 12
    .line 13
    if-nez p1, :cond_2

    .line 14
    .line 15
    :cond_1
    return-void

    .line 16
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_3

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->resetSwipedView(Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 30
    .line 31
    .line 32
    :cond_3
    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activeMessages:Ljava/util/List;

    .line 34
    .line 35
    return-void
.end method

.method public final doPositiveClick(I)V
    .locals 4

    .line 1
    const v0, 0x7f09019f

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activeMessages:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->onSpamConfirmed(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activeMessages:Ljava/util/List;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const v0, 0x7f09019b

    .line 19
    .line 20
    .line 21
    if-ne p1, v0, :cond_3

    .line 22
    .line 23
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activeMessages:Ljava/util/List;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->showingThreadedList:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 40
    .line 41
    new-instance v2, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    const/16 v3, 0x15

    .line 44
    .line 45
    invoke-direct {v2, v3, v0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1, v2}, Lcom/fsck/k9/controller/MessagingController;->actOnMessagesGroupedByAccountAndFolder(Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 60
    .line 61
    new-instance v2, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda9;

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-direct {v2, v0, v3}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda9;-><init>(Lcom/fsck/k9/controller/MessagingController;Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1, v2}, Lcom/fsck/k9/controller/MessagingController;->actOnMessagesGroupedByAccountAndFolder(Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    iput-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activeMessage:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 73
    .line 74
    if-eqz p0, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->setActiveMessage(Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    const-string p0, "adapter"

    .line 81
    .line 82
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v1

    .line 86
    :cond_3
    const v0, 0x7f09019e

    .line 87
    .line 88
    .line 89
    if-ne p1, v0, :cond_4

    .line 90
    .line 91
    iget-boolean p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleAccountMode:Z

    .line 92
    .line 93
    if-eqz p1, :cond_6

    .line 94
    .line 95
    iget-boolean p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleFolderMode:Z

    .line 96
    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isOutbox()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_6

    .line 104
    .line 105
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 106
    .line 107
    if-eqz p1, :cond_6

    .line 108
    .line 109
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 110
    .line 111
    if-eqz p1, :cond_6

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    iget-wide v1, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    iget-object p1, v0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 132
    .line 133
    invoke-static {v1, v2}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;->create(J)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p1, p0, v0}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p0}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_4
    const v0, 0x7f09019c

    .line 145
    .line 146
    .line 147
    if-ne p1, v0, :cond_5

    .line 148
    .line 149
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 150
    .line 151
    if-eqz p1, :cond_6

    .line 152
    .line 153
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 154
    .line 155
    if-eqz p1, :cond_6

    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 169
    .line 170
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$3;

    .line 171
    .line 172
    const/4 v1, 0x3

    .line 173
    invoke-direct {v0, p0, p1, v1}, Lcom/fsck/k9/controller/MessagingController$3;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 174
    .line 175
    .line 176
    const-string p1, "emptySpam"

    .line 177
    .line 178
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_5
    const v0, 0x7f09019d

    .line 183
    .line 184
    .line 185
    if-ne p1, v0, :cond_6

    .line 186
    .line 187
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 188
    .line 189
    if-eqz p1, :cond_6

    .line 190
    .line 191
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 192
    .line 193
    if-eqz p1, :cond_6

    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 207
    .line 208
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$3;

    .line 209
    .line 210
    const/4 v1, 0x4

    .line 211
    invoke-direct {v0, p0, p1, v1}, Lcom/fsck/k9/controller/MessagingController$3;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 212
    .line 213
    .line 214
    const-string p1, "emptyTrash"

    .line 215
    .line 216
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 217
    .line 218
    .line 219
    :cond_6
    return-void
.end method

.method public final expandSearchView()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final filterInAppNotificationEvents(Lnet/thunderbird/feature/notification/api/content/InAppNotification;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lnet/thunderbird/feature/notification/api/content/Notification;->getAccountUuid()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of p1, p1, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->accountUuids:[Ljava/lang/String;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-static {p0, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_0
    const-string p0, "accountUuids"

    .line 27
    .line 28
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    throw p0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final finishActionMode()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final folderLoading(JZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v1, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 6
    .line 7
    cmp-long p1, v1, p1

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iput-boolean p3, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->loading:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->updateFooterText()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final getAccountManager$1()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->accountManager$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getGeneralSettingsManager$2()Lnet/thunderbird/core/preference/GeneralSettingsManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->generalSettingsManager$delegate:Lkotlin/Lazy;

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

.method public final getLegacyViewModel()Lcom/fsck/k9/ui/messagelist/MessageListViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->legacyViewModel$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->localSearch:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "localSearch"

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final getMessageListSettings()Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getGeneralSettingsManager$2()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-object p0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 12
    .line 13
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 14
    .line 15
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 16
    .line 17
    return-object p0
.end method

.method public final getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->messagingController$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getSelectedMessageListItem()Lcom/fsck/k9/ui/messagelist/MessageListItem;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_2

    .line 19
    .line 20
    move-object v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    instance-of v2, v0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;

    .line 27
    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    check-cast v0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_3
    move-object v0, v1

    .line 34
    :goto_1
    if-nez v0, :cond_4

    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_4
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 38
    .line 39
    if-eqz p0, :cond_5

    .line 40
    .line 41
    iget-wide v0, v0, Lcom/fsck/k9/ui/messagelist/item/MessageViewHolder;->uniqueId:J

    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->getItemById(J)Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_5
    const-string p0, "adapter"

    .line 49
    .line 50
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v1
.end method

.method public final handleChooseFolderResult(Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Result;Lkotlin/jvm/functions/Function2;)V
    .locals 46

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    iget-wide v1, v1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Result;->folderId:J

    .line 10
    .line 11
    iget-object v3, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activeMessages:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-wide/16 v4, -0x1

    .line 17
    .line 18
    cmp-long v4, v1, v4

    .line 19
    .line 20
    if-eqz v4, :cond_4

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    iput-object v4, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activeMessages:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_3

    .line 30
    .line 31
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 36
    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getAccountManager$1()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    iget-object v4, v4, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v5, v4}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    if-nez v6, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getAccountManager$1()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v39

    .line 61
    const/16 v44, -0x1

    .line 62
    .line 63
    const v45, 0x7f7fff

    .line 64
    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    const/4 v8, 0x0

    .line 68
    const/4 v9, 0x0

    .line 69
    const/4 v10, 0x0

    .line 70
    const/4 v11, 0x0

    .line 71
    const/4 v12, 0x0

    .line 72
    const/4 v13, 0x0

    .line 73
    const/4 v14, 0x0

    .line 74
    const/4 v15, 0x0

    .line 75
    const/16 v16, 0x0

    .line 76
    .line 77
    const/16 v17, 0x0

    .line 78
    .line 79
    const/16 v18, 0x0

    .line 80
    .line 81
    const/16 v19, 0x0

    .line 82
    .line 83
    const/16 v20, 0x0

    .line 84
    .line 85
    const/16 v21, 0x0

    .line 86
    .line 87
    const/16 v22, 0x0

    .line 88
    .line 89
    const/16 v23, 0x0

    .line 90
    .line 91
    const/16 v24, 0x0

    .line 92
    .line 93
    const/16 v25, 0x0

    .line 94
    .line 95
    const/16 v26, 0x0

    .line 96
    .line 97
    const/16 v27, 0x0

    .line 98
    .line 99
    const/16 v28, 0x0

    .line 100
    .line 101
    const/16 v29, 0x0

    .line 102
    .line 103
    const/16 v30, 0x0

    .line 104
    .line 105
    const/16 v31, 0x0

    .line 106
    .line 107
    const/16 v32, 0x0

    .line 108
    .line 109
    const/16 v33, 0x0

    .line 110
    .line 111
    const/16 v34, 0x0

    .line 112
    .line 113
    const/16 v35, 0x0

    .line 114
    .line 115
    const/16 v36, 0x0

    .line 116
    .line 117
    const/16 v37, 0x0

    .line 118
    .line 119
    const/16 v38, 0x0

    .line 120
    .line 121
    const/16 v40, 0x0

    .line 122
    .line 123
    const/16 v41, 0x0

    .line 124
    .line 125
    const/16 v42, 0x0

    .line 126
    .line 127
    const/16 v43, -0x1

    .line 128
    .line 129
    invoke-static/range {v6 .. v45}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v4}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccount;)V

    .line 137
    .line 138
    .line 139
    :cond_3
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    move-object/from16 v1, p2

    .line 144
    .line 145
    invoke-interface {v1, v0, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    :cond_4
    :goto_1
    return-void
.end method

.method public final isOutbox()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->outboxFolderManager$delegate:Lkotlin/Lazy;

    .line 10
    .line 11
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 16
    .line 17
    invoke-static {v1, v0}, Lkotlinx/io/Sink$-CC;->getOutboxFolderIdSync$default(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/feature/account/AccountId;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSpecialFolder(Ljava/lang/Long;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final isRemoteFolder()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->isManualSearch:Z

    .line 6
    .line 7
    if-nez v0, :cond_5

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isOutbox()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v0, v1

    .line 25
    :goto_0
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, v0}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->isMoveCapable(Lnet/thunderbird/feature/account/AccountId;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->inboxFolderId:Ljava/lang/Long;

    .line 45
    .line 46
    :cond_4
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSpecialFolder(Ljava/lang/Long;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_5
    :goto_2
    const/4 p0, 0x0

    .line 52
    return p0
.end method

.method public final isRemoteSearchAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->isManualSearch:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isRemoteSearch:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleFolderMode:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrNull(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    move p0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p0}, Lcom/fsck/k9/backend/api/Backend;->isPushCapable()Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    :goto_0
    const/4 v0, 0x1

    .line 52
    if-ne p0, v0, :cond_1

    .line 53
    .line 54
    return v0

    .line 55
    :cond_1
    return v1
.end method

.method public final isSearchViewCollapsed$1()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-boolean p0, p0, Landroidx/appcompat/widget/SearchView;->mIconified:Z

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    move v0, v1

    .line 12
    :cond_0
    xor-int/lit8 p0, v0, 0x1

    .line 13
    .line 14
    return p0
.end method

.method public final isShowAccountIndicator$1()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "unified_folders"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleAccountMode:Z

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final isShowingSpamFolder()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleFolderMode:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-wide v0, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 12
    .line 13
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderId:Ljava/lang/Long;

    .line 19
    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    cmp-long p0, v0, v2

    .line 28
    .line 29
    if-nez p0, :cond_2

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final isShowingTrashFolder()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleFolderMode:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-wide v0, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 12
    .line 13
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->trashFolderId:Ljava/lang/Long;

    .line 19
    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    cmp-long p0, v0, v2

    .line 28
    .line 29
    if-nez p0, :cond_2

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final isSpecialFolder(Ljava/lang/Long;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    iget-wide p0, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 14
    .line 15
    cmp-long p0, p0, v1

    .line 16
    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_1
    return v0
.end method

.method public final loadMessageList(Z)V
    .locals 8

    .line 1
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListConfig;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->showingThreadedList:Z

    .line 8
    .line 9
    iget-object v3, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 10
    .line 11
    iget-boolean v4, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortAscending:Z

    .line 12
    .line 13
    iget-boolean v5, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortDateAscending:Z

    .line 14
    .line 15
    iget-object v6, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activeMessage:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLegacyViewModel()Lcom/fsck/k9/ui/messagelist/MessageListViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    iget-object v7, v7, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->messageSortOverrides:Ljava/util/LinkedList;

    .line 22
    .line 23
    invoke-static {v7}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/List;)Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/ui/messagelist/MessageListConfig;-><init>(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;ZLnet/thunderbird/core/android/account/SortType;ZZLapp/k9mail/legacy/message/controller/MessageReference;Ljava/util/Map;)V

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getAccountManager$1()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v1, v2}, Landroidx/room/util/SchemaInfoUtilKt;->getLegacyAccountsFromLocalSearch(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;)Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->accounts:Ljava/util/List;

    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLegacyViewModel()Lcom/fsck/k9/ui/messagelist/MessageListViewModel;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->loadMessageList(Lcom/fsck/k9/ui/messagelist/MessageListConfig;Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final onArchive()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getSelectedMessageListItem()Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;->MOVE:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->checkCopyOrMovePossible(Ljava/util/List;Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->showingThreadedList:Z

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->archiveOperations:Lcom/beetstra/jutf7/Base64Util;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v1, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-direct {v1, p0, v2}, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda0;-><init>(Lcom/beetstra/jutf7/Base64Util;I)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    const-string v4, "archiveThreads"

    .line 53
    .line 54
    invoke-direct {v2, p0, v4, v1, v3}, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 58
    .line 59
    const/16 v3, 0x14

    .line 60
    .line 61
    invoke-direct {v1, v3, v2}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Lcom/fsck/k9/controller/MessagingController;

    .line 67
    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/controller/MessagingController;->actOnMessagesGroupedByAccountAndFolder(Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 77
    .line 78
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->archiveOperations:Lcom/beetstra/jutf7/Base64Util;

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lcom/beetstra/jutf7/Base64Util;->archiveMessages(Ljava/util/List;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_1
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    check-cast p1, Lcom/fsck/k9/activity/MessageHomeActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " must implement MessageListFragmentListener"

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public final onCompose()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleAccountMode:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 4
    .line 5
    const-string v2, "fragmentListener"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {v1, v3}, Landroidx/room/util/SchemaInfoUtilKt;->actionCompose(Landroid/content/Context;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v3

    .line 20
    :cond_1
    if-eqz v1, :cond_3

    .line 21
    .line 22
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 23
    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    iget-object v0, v1, Lcom/fsck/k9/activity/MessageHomeActivity;->legacyAccountDataMapper$delegate:Lkotlin/Lazy;

    .line 27
    .line 28
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;->toDto(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    move-object v3, p0

    .line 39
    check-cast v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 40
    .line 41
    :cond_2
    invoke-static {v1, v3}, Landroidx/room/util/SchemaInfoUtilKt;->actionCompose(Landroid/content/Context;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v3
.end method

.method public final onCopy()V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getSelectedMessageListItem()Lcom/fsck/k9/ui/messagelist/MessageListItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 57
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->onCopy(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final onCopy(Ljava/util/List;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;->COPY:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->checkCopyOrMovePossible(Ljava/util/List;Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isThreadDisplay:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 19
    .line 20
    iget-wide v1, v1, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 21
    .line 22
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleFolderMode:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-wide v1, v1, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 37
    .line 38
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v1, 0x0

    .line 44
    :goto_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 49
    .line 50
    iget-object v2, v2, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->displayFolderChoice(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v4, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    const/4 v12, 0x0

    .line 9
    const/4 v13, 0x0

    .line 10
    const/4 v14, 0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    const-string v1, "activeMessages"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    new-instance v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    array-length v3, v1

    .line 25
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    array-length v3, v1

    .line 29
    move v5, v12

    .line 30
    :goto_0
    if-ge v5, v3, :cond_2

    .line 31
    .line 32
    aget-object v6, v1, v5

    .line 33
    .line 34
    invoke-static {v6}, Lkotlin/math/MathKt;->parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    add-int/lit8 v5, v5, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move-object v2, v13

    .line 48
    :cond_2
    iput-object v2, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activeMessages:Ljava/util/List;

    .line 49
    .line 50
    const-string v1, "selectedMessages"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([J)Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move-object v1, v13

    .line 64
    :goto_1
    iput-object v1, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->rememberedSelected:Ljava/util/Set;

    .line 65
    .line 66
    const-string v1, "remoteSearchPerformed"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iput-boolean v1, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isRemoteSearch:Z

    .line 73
    .line 74
    const-string v1, "searchViewQuery"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iput-object v1, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->initialSearchViewQuery:Ljava/lang/String;

    .line 81
    .line 82
    const-string v1, "searchViewIconified"

    .line 83
    .line 84
    invoke-virtual {v0, v1, v14}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iput-boolean v1, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->initialSearchViewIconified:Z

    .line 89
    .line 90
    const-string v1, "activeMessage"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Lkotlin/math/MathKt;->parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activeMessage:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 101
    .line 102
    :goto_2
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v1, "showingThreadedList"

    .line 107
    .line 108
    invoke-virtual {v0, v1, v12}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    iput-boolean v1, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->showingThreadedList:Z

    .line 113
    .line 114
    const-string v1, "isThreadedDisplay"

    .line 115
    .line 116
    invoke-virtual {v0, v1, v12}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    iput-boolean v1, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isThreadDisplay:Z

    .line 121
    .line 122
    const-string v1, "searchObject"

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    invoke-static {v0}, Lnet/thunderbird/feature/search/legacy/serialization/LocalMessageSearchSerializer;->deserialize([B)Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    goto :goto_3

    .line 135
    :cond_4
    move-object v0, v13

    .line 136
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    iput-object v0, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->localSearch:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 140
    .line 141
    invoke-virtual {v4}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget-object v0, v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->accountUuidSet:Ljava/util/Set;

    .line 146
    .line 147
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    iput-boolean v0, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->allAccounts:Z

    .line 152
    .line 153
    invoke-virtual {v4}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v4}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getAccountManager$1()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-static {v0, v1}, Landroidx/room/util/SchemaInfoUtilKt;->getLegacyAccountsFromLocalSearch(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;)Ljava/util/ArrayList;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iput-object v0, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->accounts:Ljava/util/List;

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-ne v1, v14, :cond_5

    .line 172
    .line 173
    iput-boolean v14, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleAccountMode:Z

    .line 174
    .line 175
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 180
    .line 181
    iput-object v0, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 182
    .line 183
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 184
    .line 185
    filled-new-array {v0}, [Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    iput-object v0, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->accountUuids:[Ljava/lang/String;

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_5
    iput-boolean v12, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleAccountMode:Z

    .line 193
    .line 194
    iput-object v13, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 195
    .line 196
    new-instance v1, Ljava/util/ArrayList;

    .line 197
    .line 198
    const/16 v2, 0xa

    .line 199
    .line 200
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-eqz v2, :cond_6

    .line 216
    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 222
    .line 223
    iget-object v2, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_6
    new-array v0, v12, [Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    check-cast v0, [Ljava/lang/String;

    .line 236
    .line 237
    iput-object v0, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->accountUuids:[Ljava/lang/String;

    .line 238
    .line 239
    :goto_5
    iput-boolean v12, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleFolderMode:Z

    .line 240
    .line 241
    iget-boolean v0, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleAccountMode:Z

    .line 242
    .line 243
    if-eqz v0, :cond_8

    .line 244
    .line 245
    invoke-virtual {v4}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getFolderIds()Ljava/util/ArrayList;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-ne v0, v14, :cond_8

    .line 258
    .line 259
    :try_start_0
    iget-object v0, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 260
    .line 261
    if-eqz v0, :cond_7

    .line 262
    .line 263
    invoke-virtual {v4}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v1}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getFolderIds()Ljava/util/ArrayList;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    check-cast v1, Ljava/lang/Number;

    .line 276
    .line 277
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 278
    .line 279
    .line 280
    move-result-wide v1

    .line 281
    iget-object v3, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->localStoreProvider$delegate:Lkotlin/Lazy;

    .line 282
    .line 283
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    check-cast v3, Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 288
    .line 289
    invoke-virtual {v3, v0}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstanceByLegacyAccount(Lnet/thunderbird/core/android/account/LegacyAccount;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    new-instance v5, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 294
    .line 295
    invoke-direct {v5, v3, v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v5}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 299
    .line 300
    .line 301
    new-instance v1, Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 302
    .line 303
    iget-object v2, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->folderNameFormatter$delegate:Lkotlin/Lazy;

    .line 304
    .line 305
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    check-cast v2, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 310
    .line 311
    iget-object v3, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->outboxFolderManager$delegate:Lkotlin/Lazy;

    .line 312
    .line 313
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    check-cast v3, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 318
    .line 319
    invoke-direct {v1, v2, v3, v5, v0}, Lcom/fsck/k9/activity/FolderInfoHolder;-><init>(Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lcom/fsck/k9/mailstore/LocalFolder;Lnet/thunderbird/core/android/account/LegacyAccount;)V

    .line 320
    .line 321
    .line 322
    iput-object v1, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 323
    .line 324
    iput-boolean v14, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleFolderMode:Z

    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_7
    const-string v0, "Required value was null."

    .line 328
    .line 329
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 330
    .line 331
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    throw v1
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :catch_0
    sget-object v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$Error;->FolderNotFound:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$Error;

    .line 336
    .line 337
    goto :goto_7

    .line 338
    :cond_8
    :goto_6
    move-object v0, v13

    .line 339
    :goto_7
    if-eqz v0, :cond_9

    .line 340
    .line 341
    iput-object v0, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->error:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$Error;

    .line 342
    .line 343
    return-void

    .line 344
    :cond_9
    invoke-virtual {v4}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLegacyViewModel()Lcom/fsck/k9/ui/messagelist/MessageListViewModel;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->messageListLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 349
    .line 350
    new-instance v1, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda1;

    .line 351
    .line 352
    invoke-direct {v1, v4, v12}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 353
    .line 354
    .line 355
    new-instance v2, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;

    .line 356
    .line 357
    const/4 v15, 0x5

    .line 358
    invoke-direct {v2, v15, v1}, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v4, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 362
    .line 363
    .line 364
    new-instance v7, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 365
    .line 366
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 371
    .line 372
    .line 373
    move-result-object v8

    .line 374
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 378
    .line 379
    .line 380
    move-result-object v9

    .line 381
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 385
    .line 386
    .line 387
    move-result-object v10

    .line 388
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    const-class v0, Lcom/fsck/k9/contacts/ContactPictureLoader;

    .line 392
    .line 393
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    move-object v11, v0

    .line 398
    check-cast v11, Lcom/fsck/k9/contacts/ContactPictureLoader;

    .line 399
    .line 400
    new-instance v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;

    .line 401
    .line 402
    const/4 v1, 0x0

    .line 403
    const/4 v2, 0x5

    .line 404
    const-class v3, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 405
    .line 406
    const-string v5, "messageListAppearance"

    .line 407
    .line 408
    const-string v6, "getMessageListAppearance()Lcom/fsck/k9/ui/messagelist/MessageListAppearance;"

    .line 409
    .line 410
    invoke-direct/range {v0 .. v6}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    iget-object v1, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->featureThemeProvider$delegate:Lkotlin/Lazy;

    .line 414
    .line 415
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    check-cast v1, Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 420
    .line 421
    iget-object v2, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->featureFlagProvider$delegate:Lkotlin/Lazy;

    .line 422
    .line 423
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    check-cast v2, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 428
    .line 429
    iget-object v3, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->contactRepository$delegate:Lkotlin/Lazy;

    .line 430
    .line 431
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    check-cast v3, Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 436
    .line 437
    iget-object v5, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->avatarMonogramCreator$delegate:Lkotlin/Lazy;

    .line 438
    .line 439
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    check-cast v5, Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;

    .line 444
    .line 445
    move-object v6, v11

    .line 446
    new-instance v11, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda1;

    .line 447
    .line 448
    invoke-direct {v11, v4, v14}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 449
    .line 450
    .line 451
    move-object/from16 v16, v6

    .line 452
    .line 453
    move-object v6, v0

    .line 454
    move-object v0, v7

    .line 455
    move-object v7, v1

    .line 456
    move-object v1, v8

    .line 457
    move-object v8, v2

    .line 458
    move-object v2, v9

    .line 459
    move-object v9, v3

    .line 460
    move-object v3, v10

    .line 461
    move-object v10, v5

    .line 462
    move-object v5, v4

    .line 463
    move-object/from16 v4, v16

    .line 464
    .line 465
    invoke-direct/range {v0 .. v11}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;-><init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/fsck/k9/contacts/ContactPictureLoader;Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lapp/k9mail/core/android/common/contact/ContactRepository;Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda1;)V

    .line 466
    .line 467
    .line 468
    move-object v4, v5

    .line 469
    iget-object v1, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activeMessage:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 470
    .line 471
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->setActiveMessage(Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 472
    .line 473
    .line 474
    iput-object v0, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 475
    .line 476
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 477
    .line 478
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v4}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessageListSettings()Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    iget-object v1, v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->dateTimeFormat:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 486
    .line 487
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 488
    .line 489
    invoke-virtual {v4}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getGeneralSettingsManager$2()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    check-cast v1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 494
    .line 495
    iget-object v1, v1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->generalSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 496
    .line 497
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    .line 498
    .line 499
    invoke-direct {v2, v1, v12}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 500
    .line 501
    .line 502
    new-instance v1, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 503
    .line 504
    invoke-direct {v1, v4, v0, v13, v15}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 505
    .line 506
    .line 507
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 508
    .line 509
    const/4 v3, 0x2

    .line 510
    invoke-direct {v0, v2, v1, v3}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 511
    .line 512
    .line 513
    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 518
    .line 519
    .line 520
    iput-boolean v14, v4, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isInitialized:Z

    .line 521
    .line 522
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->error:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$Error;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const v0, 0x7f0c02d6

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance p2, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda11;

    .line 17
    .line 18
    invoke-direct {p2, p0, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda11;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v2, Landroidx/fragment/app/FragmentKt$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-direct {v2, v1, p2}, Landroidx/fragment/app/FragmentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-string p2, "SetupArchiveFolderDialogFragmentFactory_dialog_dismiss"

    .line 31
    .line 32
    invoke-virtual {v0, p2, p0, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_0
    const p0, 0x7f0c02d5

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public final onCycleSort()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 2
    .line 3
    sget-object v1, Lnet/thunderbird/core/android/account/SortType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lkotlin/enums/EnumEntriesList;->indexOf(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {v1}, Lkotlin/enums/EnumEntriesList;->getSize()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    add-int/lit8 v2, v2, -0x1

    .line 14
    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v1, v0}, Lkotlin/enums/EnumEntriesList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lnet/thunderbird/core/android/account/SortType;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->changeSort(Lnet/thunderbird/core/android/account/SortType;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onDelete()V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getSelectedMessageListItem()Lcom/fsck/k9/ui/messagelist/MessageListItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 70
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->onDelete(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final onDelete(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getGeneralSettingsManager$2()Lnet/thunderbird/core/preference/GeneralSettingsManager;

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
    iget-boolean v0, v0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDelete:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activeMessages:Ljava/util/List;

    .line 18
    .line 19
    const p1, 0x7f09019b

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->showDialog$1(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->showingThreadedList:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 38
    .line 39
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    const/16 v1, 0x15

    .line 42
    .line 43
    invoke-direct {v0, v1, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController;->actOnMessagesGroupedByAccountAndFolder(Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 58
    .line 59
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda9;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda9;-><init>(Lcom/fsck/k9/controller/MessagingController;Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController;->actOnMessagesGroupedByAccountAndFolder(Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final onDestroyView()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->itemTouchHelper:Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "new_messages"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v2, v2, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 57
    .line 58
    new-instance v3, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda8;

    .line 59
    .line 60
    invoke-direct {v3, v2, v0, v1}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda8;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 61
    .line 62
    .line 63
    const-string v0, "clearNewMessages"

    .line 64
    .line 65
    invoke-virtual {v2, v0, v3}, Lcom/fsck/k9/controller/MessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 69
    .line 70
    return-void
.end method

.method public final onFullyActive()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final onMessageClicked(Lcom/fsck/k9/ui/messagelist/MessageListItem;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isActive:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->lastMessageClick:J

    .line 14
    .line 15
    sub-long v2, v0, v2

    .line 16
    .line 17
    const-wide/16 v4, 0xc8

    .line 18
    .line 19
    cmp-long v2, v2, v4

    .line 20
    .line 21
    if-gez v2, :cond_1

    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_b

    .line 28
    .line 29
    iget v2, v2, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selectedCount:I

    .line 30
    .line 31
    if-lez v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->toggleMessageSelect(Lcom/fsck/k9/ui/messagelist/MessageListItem;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    iput-wide v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->lastMessageClick:J

    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->showingThreadedList:Z

    .line 40
    .line 41
    const-string v1, "fragmentListener"

    .line 42
    .line 43
    if-eqz v0, :cond_9

    .line 44
    .line 45
    iget v0, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->threadCount:I

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    if-le v0, v2, :cond_9

    .line 49
    .line 50
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 51
    .line 52
    if-eqz p0, :cond_8

    .line 53
    .line 54
    iget-object v0, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 55
    .line 56
    iget-wide v4, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->threadRoot:J

    .line 57
    .line 58
    iget-object p1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->showMessageViewPlaceHolder()V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 64
    .line 65
    invoke-direct {v0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->search:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    iget-object v1, v1, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 73
    .line 74
    if-nez v1, :cond_4

    .line 75
    .line 76
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v6, "ShowThread-"

    .line 79
    .line 80
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v6, "-"

    .line 87
    .line 88
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    :cond_4
    iput-object v1, v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sget-object p1, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->THREAD_ID:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 104
    .line 105
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    sget-object v4, Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;->EQUALS:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 110
    .line 111
    invoke-virtual {v0, p1, v1, v4}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->and(Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;Ljava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->initializeFromLocalSearch(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragmentFactory$delegate:Lkotlin/Lazy;

    .line 118
    .line 119
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;

    .line 124
    .line 125
    const/4 v1, 0x0

    .line 126
    invoke-virtual {p1, v0, v2, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;->newInstance(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;ZZ)Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 131
    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    invoke-interface {v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->setActive(Z)V

    .line 135
    .line 136
    .line 137
    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    .line 145
    .line 146
    invoke-direct {v1, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 147
    .line 148
    .line 149
    const v0, 0x7f0902a5

    .line 150
    .line 151
    .line 152
    move-object v4, p1

    .line 153
    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 154
    .line 155
    invoke-virtual {v1, v0, v4, v3}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iput-boolean v2, v1, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    .line 159
    .line 160
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_6

    .line 169
    .line 170
    const-string v0, "first"

    .line 171
    .line 172
    invoke-virtual {v1, v0}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_6
    invoke-virtual {v1, v3}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :goto_1
    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 180
    .line 181
    .line 182
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 183
    .line 184
    invoke-interface {p1, v2}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->setActive(Z)V

    .line 185
    .line 186
    .line 187
    invoke-interface {p1}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->onFullyActive()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->isDrawerEnabled()Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-eqz p1, :cond_7

    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->lockDrawer()V

    .line 197
    .line 198
    .line 199
    :cond_7
    return-void

    .line 200
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v3

    .line 204
    :cond_9
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 209
    .line 210
    if-eqz p0, :cond_a

    .line 211
    .line 212
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/MessageHomeActivity;->openMessage(Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v3

    .line 220
    :cond_b
    const-string p0, "adapter"

    .line 221
    .line 222
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw v3
.end method

.method public final onMove()V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getSelectedMessageListItem()Lcom/fsck/k9/ui/messagelist/MessageListItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 57
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->onMove(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final onMove(Ljava/util/List;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;->MOVE:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->checkCopyOrMovePossible(Ljava/util/List;Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isThreadDisplay:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 19
    .line 20
    iget-wide v1, v1, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 21
    .line 22
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleFolderMode:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-wide v1, v1, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 37
    .line 38
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v1, 0x0

    .line 44
    :goto_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 49
    .line 50
    iget-object v2, v2, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->displayFolderChoice(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final onNotificationActionClick(Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$UpdateIncomingServerSettings;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget v0, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;->$r8$clinit:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v0, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountEditIncomingSettings;

    .line 15
    .line 16
    check-cast p1, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$UpdateIncomingServerSettings;

    .line 17
    .line 18
    iget-object p1, p1, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$UpdateIncomingServerSettings;->accountUuid:Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountEditIncomingSettings;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0}, Lapp/k9mail/feature/launcher/FeatureLauncherActivity$Companion;->launch(Landroid/content/Context;Lnet/openid/appauth/JsonUtil$Field;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    instance-of v0, p1, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$UpdateOutgoingServerSettings;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget v0, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;->$r8$clinit:I

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance v0, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountEditOutgoingSettings;

    .line 38
    .line 39
    check-cast p1, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$UpdateOutgoingServerSettings;

    .line 40
    .line 41
    iget-object p1, p1, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$UpdateOutgoingServerSettings;->accountUuid:Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct {v0, p1}, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountEditOutgoingSettings;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p0, v0}, Lapp/k9mail/feature/launcher/FeatureLauncherActivity$Companion;->launch(Landroid/content/Context;Lnet/openid/appauth/JsonUtil$Field;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    instance-of p1, p1, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$OpenNotificationCentre;

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->errorNotificationsDialogFragmentFactory$delegate:Lkotlin/Lazy;

    .line 55
    .line 56
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment$Factory;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    new-instance p1, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;

    .line 73
    .line 74
    invoke-direct {p1}, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v0, "ErrorNotificationsDialogFragment"

    .line 78
    .line 79
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    return-void
.end method

.method public final onNotificationActionClicked(Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->onNotificationActionClick(Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;)V

    .line 5
    .line 6
    .line 7
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
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->messagingControllerRegistry$delegate:Lkotlin/Lazy;

    .line 5
    .line 6
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lapp/k9mail/legacy/message/controller/MessagingControllerRegistry;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activityListener:Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

    .line 13
    .line 14
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/fsck/k9/controller/MessagingController;->removeListener(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onRemoteSearchRequested()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-wide v3, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getRemoteSearchArguments()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isRemoteSearch:Z

    .line 18
    .line 19
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 37
    .line 38
    iget-object v6, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activityListener:Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

    .line 39
    .line 40
    invoke-virtual/range {v1 .. v6}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->searchRemoteMessages(Lnet/thunderbird/feature/account/AccountId;JLjava/lang/String;Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)Ljava/util/concurrent/Future;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->remoteSearchFuture:Ljava/util/concurrent/Future;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->hasConnectivity:Ljava/lang/Boolean;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->connectivityManager$delegate:Lkotlin/Lazy;

    .line 9
    .line 10
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lnet/thunderbird/core/android/network/ConnectivityManagerBase;

    .line 15
    .line 16
    invoke-virtual {v0}, Lnet/thunderbird/core/android/network/ConnectivityManagerBase;->isNetworkAvailable()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->hasConnectivity:Ljava/lang/Boolean;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->messagingControllerRegistry$delegate:Lkotlin/Lazy;

    .line 27
    .line 28
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lapp/k9mail/legacy/message/controller/MessagingControllerRegistry;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activityListener:Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

    .line 35
    .line 36
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->addListener(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->updateTitle()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final onReverseSort()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->changeSort(Lnet/thunderbird/core/android/account/SortType;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->error:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$Error;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selected:Ljava/util/Set;

    .line 12
    .line 13
    check-cast v0, Ljava/util/Collection;

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toLongArray(Ljava/util/Collection;)[J

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, "selectedMessages"

    .line 20
    .line 21
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 22
    .line 23
    .line 24
    const-string v0, "remoteSearchPerformed"

    .line 25
    .line 26
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isRemoteSearch:Z

    .line 27
    .line 28
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "searchViewQuery"

    .line 44
    .line 45
    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v2, "searchViewIconified"

    .line 49
    .line 50
    iget-boolean v0, v0, Landroidx/appcompat/widget/SearchView;->mIconified:Z

    .line 51
    .line 52
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activeMessages:Ljava/util/List;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    new-instance v1, Ljava/util/ArrayList;

    .line 60
    .line 61
    const/16 v2, 0xa

    .line 62
    .line 63
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 85
    .line 86
    invoke-virtual {v2}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    const/4 v0, 0x0

    .line 95
    new-array v0, v0, [Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    move-object v1, v0

    .line 102
    check-cast v1, [Ljava/lang/String;

    .line 103
    .line 104
    :cond_3
    const-string v0, "activeMessages"

    .line 105
    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activeMessage:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 110
    .line 111
    if-eqz p0, :cond_4

    .line 112
    .line 113
    const-string v0, "activeMessage"

    .line 114
    .line 115
    invoke-virtual {p0}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    :goto_1
    return-void

    .line 123
    :cond_5
    const-string p0, "adapter"

    .line 124
    .line 125
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v1
.end method

.method public final onSpamConfirmed(Ljava/util/List;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v2, v1

    .line 21
    check-cast v2, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getAccountManager$1()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v2, v2, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v3, v2}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    new-instance v3, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_0
    check-cast v3, Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/util/Map$Entry;

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Ljava/util/List;

    .line 87
    .line 88
    iget-object v1, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderId:Ljava/lang/Long;

    .line 89
    .line 90
    if-eqz v1, :cond_2

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 93
    .line 94
    .line 95
    move-result-wide v1

    .line 96
    sget-object v3, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;->MOVE:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;

    .line 97
    .line 98
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->copyOrMove(Ljava/util/List;JLcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    return-void
.end method

.method public final onStop()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->logTag:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->logger$delegate:Lkotlin/Lazy;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isRemoteSearch:Z

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->remoteSearchFuture:Ljava/util/concurrent/Future;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    :try_start_0
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 19
    .line 20
    new-instance v4, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const/16 v5, 0x1c

    .line 23
    .line 24
    invoke-direct {v4, v5}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 25
    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    const/4 v6, 0x0

    .line 29
    invoke-static {v2, v0, v6, v4, v5}, Lkotlinx/io/Sink$-CC;->info$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->remoteSearchFuture:Ljava/util/concurrent/Future;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 48
    .line 49
    new-instance v4, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    const/16 v7, 0x1d

    .line 52
    .line 53
    invoke-direct {v4, v7}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-static {v2, v0, v6, v4, v5}, Lkotlinx/io/Sink$-CC;->error$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v2

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-object v4, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activityListener:Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

    .line 68
    .line 69
    iget-object v5, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iget v2, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->remoteSearchNumResults:I

    .line 75
    .line 76
    invoke-virtual {v4, v2, v6}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->remoteSearchFinished(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :goto_1
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lnet/thunderbird/core/logging/Logger;

    .line 85
    .line 86
    new-instance v4, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 87
    .line 88
    const/16 v5, 0x1b

    .line 89
    .line 90
    invoke-direct {v4, v5}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v1, v0, v2, v4}, Lnet/thunderbird/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 94
    .line 95
    .line 96
    :cond_1
    :goto_2
    iput-boolean v3, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 97
    .line 98
    return-void
.end method

.method public final onToggleFlagged()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getSelectedMessageListItem()Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->FLAGGED:Lnet/thunderbird/core/common/mail/Flag;

    .line 8
    .line 9
    iget-boolean v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isStarred:Z

    .line 10
    .line 11
    xor-int/lit8 v2, v2, 0x1

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1, v2}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->setFlag(Lcom/fsck/k9/ui/messagelist/MessageListItem;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onToggleMessageFlag(Lcom/fsck/k9/ui/messagelist/MessageListItem;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lnet/thunderbird/core/common/mail/Flag;->FLAGGED:Lnet/thunderbird/core/common/mail/Flag;

    .line 5
    .line 6
    iget-boolean v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isStarred:Z

    .line 7
    .line 8
    xor-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0, v1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->setFlag(Lcom/fsck/k9/ui/messagelist/MessageListItem;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onToggleRead()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getSelectedMessageListItem()Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 8
    .line 9
    iget-boolean v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isRead:Z

    .line 10
    .line 11
    xor-int/lit8 v2, v2, 0x1

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1, v2}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->setFlag(Lcom/fsck/k9/ui/messagelist/MessageListItem;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    new-instance v3, Landroidx/fragment/app/FragmentManager$2;

    .line 13
    .line 14
    const/4 v4, 0x4

    .line 15
    invoke-direct {v3, v4, v0}, Landroidx/fragment/app/FragmentManager$2;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v2, v3, v4}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/fragment/app/FragmentManager$2;Landroidx/lifecycle/LifecycleOwner;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->error:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$Error;

    .line 26
    .line 27
    if-nez v2, :cond_17

    .line 28
    .line 29
    const v2, 0x7f090409

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isRemoteSearchAllowed()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x1

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    new-instance v3, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;

    .line 46
    .line 47
    invoke-direct {v3, v0, v4}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-boolean v3, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->allAccounts:Z

    .line 55
    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    iget-boolean v3, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleAccountMode:Z

    .line 59
    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    iget-boolean v3, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleFolderMode:Z

    .line 63
    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isRemoteFolder()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    :cond_1
    new-instance v3, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;

    .line 73
    .line 74
    const/4 v5, 0x2

    .line 75
    invoke-direct {v3, v0, v5}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_0
    const/4 v3, 0x0

    .line 82
    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 83
    .line 84
    .line 85
    iput-object v2, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getGeneralSettingsManager$2()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget-object v2, v2, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 98
    .line 99
    iget-object v2, v2, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 100
    .line 101
    iget-boolean v2, v2, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isShowComposeButtonOnMessageList:Z

    .line 102
    .line 103
    iput-boolean v2, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isShowFloatingActionButton:Z

    .line 104
    .line 105
    const/16 v5, 0x8

    .line 106
    .line 107
    const v6, 0x7f0901f7

    .line 108
    .line 109
    .line 110
    if-eqz v2, :cond_3

    .line 111
    .line 112
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 117
    .line 118
    new-instance v7, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;

    .line 119
    .line 120
    const/4 v8, 0x3

    .line 121
    invoke-direct {v7, v0, v8}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 122
    .line 123
    .line 124
    sget-object v8, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 125
    .line 126
    invoke-static {v2, v7}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 127
    .line 128
    .line 129
    new-instance v7, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda12;

    .line 130
    .line 131
    invoke-direct {v7, v0, v4}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda12;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .line 136
    .line 137
    iput-object v2, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    :goto_1
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 157
    .line 158
    new-instance v6, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda19;

    .line 159
    .line 160
    invoke-direct {v6, v1, v4}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda19;-><init>(Landroid/view/View;I)V

    .line 161
    .line 162
    .line 163
    sget-object v7, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 164
    .line 165
    invoke-static {v2, v6}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 166
    .line 167
    .line 168
    const v2, 0x7f0902a3

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 176
    .line 177
    iget-boolean v6, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isShowFloatingActionButton:Z

    .line 178
    .line 179
    if-nez v6, :cond_4

    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 185
    .line 186
    .line 187
    :cond_4
    new-instance v6, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;

    .line 188
    .line 189
    invoke-direct {v6}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 193
    .line 194
    .line 195
    new-instance v6, Lcom/fsck/k9/ui/messagelist/MessageListItemAnimator;

    .line 196
    .line 197
    invoke-direct {v6}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 198
    .line 199
    .line 200
    iput-boolean v3, v6, Landroidx/recyclerview/widget/DefaultItemAnimator;->mSupportsChangeAnimations:Z

    .line 201
    .line 202
    const-wide/16 v7, 0x78

    .line 203
    .line 204
    iput-wide v7, v6, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    .line 205
    .line 206
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 207
    .line 208
    .line 209
    new-instance v9, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;

    .line 210
    .line 211
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 216
    .line 217
    .line 218
    move-result-object v11

    .line 219
    new-instance v12, Landroidx/navigation/internal/NavContext;

    .line 220
    .line 221
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    const/16 v7, 0xd

    .line 226
    .line 227
    invoke-direct {v12, v6, v7}, Landroidx/navigation/internal/NavContext;-><init>(Landroid/content/Context;I)V

    .line 228
    .line 229
    .line 230
    iget-object v6, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->buildSwipeActions$delegate:Lkotlin/Lazy;

    .line 231
    .line 232
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    check-cast v6, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;

    .line 237
    .line 238
    iget-object v14, v6, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;->swipeActions:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 239
    .line 240
    iget-object v15, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 241
    .line 242
    const/4 v6, 0x0

    .line 243
    const-string v7, "adapter"

    .line 244
    .line 245
    if-eqz v15, :cond_16

    .line 246
    .line 247
    iget-object v8, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->swipeListener:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;

    .line 248
    .line 249
    iget-object v13, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->accounts:Ljava/util/List;

    .line 250
    .line 251
    move-object/from16 v17, v13

    .line 252
    .line 253
    iget-object v13, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->swipeActionSupportProvider:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;

    .line 254
    .line 255
    move-object/from16 v16, v8

    .line 256
    .line 257
    invoke-direct/range {v9 .. v17}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Landroidx/navigation/internal/NavContext;Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda7;Lkotlinx/coroutines/flow/StateFlow;Lcom/fsck/k9/ui/messagelist/MessageListAdapter;Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$swipeListener$1;Ljava/util/List;)V

    .line 258
    .line 259
    .line 260
    new-instance v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;

    .line 261
    .line 262
    invoke-direct {v8, v9}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;)V

    .line 263
    .line 264
    .line 265
    iget-object v9, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 266
    .line 267
    if-ne v9, v2, :cond_5

    .line 268
    .line 269
    goto/16 :goto_4

    .line 270
    .line 271
    :cond_5
    iget-object v10, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mOnItemTouchListener:Landroidx/recyclerview/widget/ItemTouchHelper$2;

    .line 272
    .line 273
    if-eqz v9, :cond_b

    .line 274
    .line 275
    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 276
    .line 277
    .line 278
    iget-object v9, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 279
    .line 280
    iget-object v11, v9, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    iget-object v11, v9, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 286
    .line 287
    if-ne v11, v10, :cond_6

    .line 288
    .line 289
    iput-object v6, v9, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 290
    .line 291
    :cond_6
    iget-object v9, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 292
    .line 293
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/ArrayList;

    .line 294
    .line 295
    if-nez v9, :cond_7

    .line 296
    .line 297
    goto :goto_2

    .line 298
    :cond_7
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    :goto_2
    iget-object v9, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 304
    .line 305
    .line 306
    move-result v11

    .line 307
    sub-int/2addr v11, v4

    .line 308
    :goto_3
    if-ltz v11, :cond_8

    .line 309
    .line 310
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v12

    .line 314
    check-cast v12, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;

    .line 315
    .line 316
    iget-object v13, v12, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 317
    .line 318
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->cancel()V

    .line 319
    .line 320
    .line 321
    iget-object v13, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 322
    .line 323
    iget-object v12, v12, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 324
    .line 325
    iget-object v14, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mCallback:Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;

    .line 326
    .line 327
    invoke-virtual {v14, v13, v12}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 328
    .line 329
    .line 330
    add-int/lit8 v11, v11, -0x1

    .line 331
    .line 332
    goto :goto_3

    .line 333
    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 334
    .line 335
    .line 336
    iput-object v6, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 337
    .line 338
    iget-object v9, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 339
    .line 340
    if-eqz v9, :cond_9

    .line 341
    .line 342
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 343
    .line 344
    .line 345
    iput-object v6, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 346
    .line 347
    :cond_9
    iget-object v9, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 348
    .line 349
    if-eqz v9, :cond_a

    .line 350
    .line 351
    iput-boolean v3, v9, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->mShouldReactToLongPress:Z

    .line 352
    .line 353
    iput-object v6, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 354
    .line 355
    :cond_a
    iget-object v9, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    .line 356
    .line 357
    if-eqz v9, :cond_b

    .line 358
    .line 359
    iput-object v6, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    .line 360
    .line 361
    :cond_b
    iput-object v2, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 362
    .line 363
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 364
    .line 365
    .line 366
    move-result-object v9

    .line 367
    const v11, 0x7f0700cb

    .line 368
    .line 369
    .line 370
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    .line 371
    .line 372
    .line 373
    const v11, 0x7f0700ca

    .line 374
    .line 375
    .line 376
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    .line 377
    .line 378
    .line 379
    iget-object v9, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 380
    .line 381
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 382
    .line 383
    .line 384
    move-result-object v9

    .line 385
    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 386
    .line 387
    .line 388
    move-result-object v9

    .line 389
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 390
    .line 391
    .line 392
    move-result v9

    .line 393
    iput v9, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mSlop:I

    .line 394
    .line 395
    iget-object v9, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 396
    .line 397
    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 398
    .line 399
    .line 400
    iget-object v9, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 401
    .line 402
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 403
    .line 404
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    iget-object v9, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 408
    .line 409
    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 410
    .line 411
    .line 412
    new-instance v9, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 413
    .line 414
    invoke-direct {v9, v8, v4}, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    .line 415
    .line 416
    .line 417
    iput-object v9, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 418
    .line 419
    new-instance v9, Landroid/view/GestureDetector;

    .line 420
    .line 421
    iget-object v10, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 422
    .line 423
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 424
    .line 425
    .line 426
    move-result-object v10

    .line 427
    iget-object v11, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 428
    .line 429
    invoke-direct {v9, v10, v11}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 430
    .line 431
    .line 432
    iput-object v9, v8, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    .line 433
    .line 434
    :goto_4
    iget-object v9, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 435
    .line 436
    if-eqz v9, :cond_15

    .line 437
    .line 438
    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 439
    .line 440
    .line 441
    iget-object v7, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->featureFlagProvider$delegate:Lkotlin/Lazy;

    .line 442
    .line 443
    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v7

    .line 447
    check-cast v7, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 448
    .line 449
    const-string v9, "display_in_app_notifications"

    .line 450
    .line 451
    invoke-virtual {v7, v9}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 452
    .line 453
    .line 454
    move-result-object v7

    .line 455
    sget-object v9, Lnet/thunderbird/core/featureflag/FeatureFlagResult$Enabled;->INSTANCE:Lnet/thunderbird/core/featureflag/FeatureFlagResult$Enabled;

    .line 456
    .line 457
    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v7

    .line 461
    if-eqz v7, :cond_c

    .line 462
    .line 463
    const v7, 0x7f09009f

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    check-cast v1, Landroidx/compose/ui/platform/ComposeView;

    .line 471
    .line 472
    new-instance v7, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda2;

    .line 473
    .line 474
    invoke-direct {v7, v0, v2, v3}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda2;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 475
    .line 476
    .line 477
    new-instance v9, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 478
    .line 479
    const v10, -0x5b76dd26

    .line 480
    .line 481
    .line 482
    invoke-direct {v9, v10, v7, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v1, v9}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 486
    .line 487
    .line 488
    :cond_c
    iput-object v2, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 489
    .line 490
    iput-object v8, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->itemTouchHelper:Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;

    .line 491
    .line 492
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 493
    .line 494
    if-nez v1, :cond_d

    .line 495
    .line 496
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    const v2, 0x7f0902a6

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 508
    .line 509
    iput-object v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 510
    .line 511
    :cond_d
    if-eqz v1, :cond_14

    .line 512
    .line 513
    sget-object v2, Lcom/google/android/material/snackbar/Snackbar;->SNACKBAR_CONTENT_STYLE_ATTRS:[I

    .line 514
    .line 515
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    const v7, 0x7f120200

    .line 520
    .line 521
    .line 522
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    const/16 v7, 0x2710

    .line 527
    .line 528
    invoke-static {v1, v2, v7}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    new-instance v2, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda12;

    .line 533
    .line 534
    invoke-direct {v2, v0, v3}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda12;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V

    .line 535
    .line 536
    .line 537
    const v7, 0x7f1201ff

    .line 538
    .line 539
    .line 540
    iget-object v8, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 541
    .line 542
    invoke-virtual {v8, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 543
    .line 544
    .line 545
    move-result-object v7

    .line 546
    iget-object v8, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 547
    .line 548
    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 549
    .line 550
    .line 551
    move-result-object v8

    .line 552
    check-cast v8, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 553
    .line 554
    invoke-virtual {v8}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    .line 555
    .line 556
    .line 557
    move-result-object v8

    .line 558
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 559
    .line 560
    .line 561
    move-result v9

    .line 562
    if-nez v9, :cond_e

    .line 563
    .line 564
    iput-boolean v4, v1, Lcom/google/android/material/snackbar/Snackbar;->hasAction:Z

    .line 565
    .line 566
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    .line 571
    .line 572
    new-instance v5, Lcom/google/android/material/snackbar/Snackbar$$ExternalSyntheticLambda0;

    .line 573
    .line 574
    invoke-direct {v5, v3, v1, v2}, Lcom/google/android/material/snackbar/Snackbar$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v8, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    .line 579
    .line 580
    goto :goto_5

    .line 581
    :cond_e
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v8, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    .line 586
    .line 587
    iput-boolean v3, v1, Lcom/google/android/material/snackbar/Snackbar;->hasAction:Z

    .line 588
    .line 589
    :goto_5
    new-instance v2, Lcom/fsck/k9/ui/messagelist/MessageListFragment$initializeRecentChangesSnackbar$2;

    .line 590
    .line 591
    invoke-direct {v2, v4, v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$initializeRecentChangesSnackbar$2;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 592
    .line 593
    .line 594
    iget-object v4, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/ArrayList;

    .line 595
    .line 596
    if-nez v4, :cond_f

    .line 597
    .line 598
    new-instance v4, Ljava/util/ArrayList;

    .line 599
    .line 600
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .line 602
    .line 603
    iput-object v4, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/ArrayList;

    .line 604
    .line 605
    :cond_f
    iget-object v4, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/ArrayList;

    .line 606
    .line 607
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    .line 609
    .line 610
    iput-object v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->recentChangesSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 611
    .line 612
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->recentChangesViewModel$delegate:Lkotlin/Lazy;

    .line 613
    .line 614
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    check-cast v1, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel;

    .line 619
    .line 620
    iget-object v1, v1, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel;->shouldShowRecentChangesHint:Landroidx/lifecycle/CoroutineLiveData;

    .line 621
    .line 622
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 623
    .line 624
    .line 625
    move-result-object v2

    .line 626
    iget-object v4, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->shouldShowRecentChangesHintObserver:Landroidx/camera/core/impl/LiveDataObservable$$ExternalSyntheticLambda3;

    .line 627
    .line 628
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 629
    .line 630
    .line 631
    iget-boolean v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleAccountMode:Z

    .line 632
    .line 633
    sget-object v2, Lnet/thunderbird/core/android/account/SortType;->SORT_DATE:Lnet/thunderbird/core/android/account/SortType;

    .line 634
    .line 635
    if-eqz v1, :cond_13

    .line 636
    .line 637
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 638
    .line 639
    if-eqz v1, :cond_12

    .line 640
    .line 641
    iget-object v4, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->sortAscending:Ljava/util/Map;

    .line 642
    .line 643
    iget-object v1, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 644
    .line 645
    iput-object v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 646
    .line 647
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v1

    .line 651
    check-cast v1, Ljava/lang/Boolean;

    .line 652
    .line 653
    if-eqz v1, :cond_10

    .line 654
    .line 655
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 656
    .line 657
    .line 658
    move-result v1

    .line 659
    goto :goto_6

    .line 660
    :cond_10
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 661
    .line 662
    iget-boolean v1, v1, Lnet/thunderbird/core/android/account/SortType;->isDefaultAscending:Z

    .line 663
    .line 664
    :goto_6
    iput-boolean v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortAscending:Z

    .line 665
    .line 666
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    check-cast v1, Ljava/lang/Boolean;

    .line 671
    .line 672
    if-eqz v1, :cond_11

    .line 673
    .line 674
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 675
    .line 676
    .line 677
    move-result v1

    .line 678
    goto :goto_7

    .line 679
    :cond_11
    move v1, v3

    .line 680
    :goto_7
    iput-boolean v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortDateAscending:Z

    .line 681
    .line 682
    goto :goto_8

    .line 683
    :cond_12
    const-string v0, "Required value was null."

    .line 684
    .line 685
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    return-void

    .line 689
    :cond_13
    invoke-static {}, Lcom/fsck/k9/K9;->getSortType()Lnet/thunderbird/core/android/account/SortType;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    iput-object v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 694
    .line 695
    invoke-static {v1}, Lcom/fsck/k9/K9;->isSortAscending(Lnet/thunderbird/core/android/account/SortType;)Z

    .line 696
    .line 697
    .line 698
    move-result v1

    .line 699
    iput-boolean v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortAscending:Z

    .line 700
    .line 701
    invoke-static {v2}, Lcom/fsck/k9/K9;->isSortAscending(Lnet/thunderbird/core/android/account/SortType;)Z

    .line 702
    .line 703
    .line 704
    move-result v1

    .line 705
    iput-boolean v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortDateAscending:Z

    .line 706
    .line 707
    :goto_8
    invoke-virtual {v0, v3}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->loadMessageList(Z)V

    .line 708
    .line 709
    .line 710
    return-void

    .line 711
    :cond_14
    const-string v0, "Coordinator layout not initialized"

    .line 712
    .line 713
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    return-void

    .line 717
    :cond_15
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    throw v6

    .line 721
    :cond_16
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    throw v6

    .line 725
    :cond_17
    const v2, 0x7f0902aa

    .line 726
    .line 727
    .line 728
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 729
    .line 730
    .line 731
    move-result-object v1

    .line 732
    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    .line 733
    .line 734
    iget-object v2, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->error:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$Error;

    .line 735
    .line 736
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 737
    .line 738
    .line 739
    const v2, 0x7f120446

    .line 740
    .line 741
    .line 742
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    .line 748
    .line 749
    return-void
.end method

.method public final progress(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 12
    .line 13
    if-eqz p0, :cond_2

    .line 14
    .line 15
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x4

    .line 24
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    const-string p0, "fragmentListener"

    .line 29
    .line 30
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    throw p0
.end method

.method public final remoteSearchFinished()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->remoteSearchFuture:Ljava/util/concurrent/Future;

    .line 3
    .line 4
    return-void
.end method

.method public final resetActionMode()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-lt v0, v1, :cond_5

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isActive:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selected:Ljava/util/Set;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->startAndPrepareActionMode()V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->updateActionMode()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    const-string p0, "adapter"

    .line 36
    .line 37
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1

    .line 41
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 46
    .line 47
    .line 48
    :cond_4
    iput-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 49
    .line 50
    :cond_5
    return-void
.end method

.method public final resetSwipedView(Lapp/k9mail/legacy/message/controller/MessageReference;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->itemTouchHelper:Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const-string v4, "adapter"

    .line 15
    .line 16
    if-eqz v2, :cond_5

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->getItem(Lapp/k9mail/legacy/message/controller/MessageReference;)Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_4

    .line 23
    .line 24
    iget-wide v5, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->uniqueId:J

    .line 25
    .line 26
    invoke-virtual {v0, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForItemId(J)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lapp/k9mail/ui/utils/itemtouchhelper/ItemTouchHelper;->resetSwipeView(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->getPosition(Lcom/fsck/k9/ui/messagelist/MessageListItem;)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 52
    .line 53
    if-eqz p0, :cond_2

    .line 54
    .line 55
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, p1, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v3

    .line 66
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v3

    .line 70
    :cond_4
    :goto_0
    return-void

    .line 71
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v3
.end method

.method public final selectAll$1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "adapter"

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->viewItems:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->messagesMap:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Iterable;

    .line 28
    .line 29
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->setSelected(Ljava/util/Set;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->startAndPrepareActionMode()V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->computeBatchDirection()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->updateActionMode()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v1

    .line 54
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v1
.end method

.method public final setActive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isActive:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->resetActionMode()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    const/16 p1, 0x8

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final setActiveMessage(Lapp/k9mail/legacy/message/controller/MessageReference;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activeMessage:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLegacyViewModel()Lcom/fsck/k9/ui/messagelist/MessageListViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->messageSortOverrides:Ljava/util/LinkedList;

    .line 8
    .line 9
    const-string v1, "adapter"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v3, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 19
    .line 20
    sget-object v4, Lnet/thunderbird/core/android/account/SortType;->SORT_UNREAD:Lnet/thunderbird/core/android/account/SortType;

    .line 21
    .line 22
    if-eq v3, v4, :cond_1

    .line 23
    .line 24
    sget-object v4, Lnet/thunderbird/core/android/account/SortType;->SORT_FLAGGED:Lnet/thunderbird/core/android/account/SortType;

    .line 25
    .line 26
    if-eq v3, v4, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 30
    .line 31
    if-eqz v3, :cond_10

    .line 32
    .line 33
    invoke-virtual {v3, p1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->getItem(Lapp/k9mail/legacy/message/controller/MessageReference;)Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_4

    .line 49
    .line 50
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    move-object v6, v5

    .line 55
    check-cast v6, Lkotlin/Pair;

    .line 56
    .line 57
    iget-object v6, v6, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 58
    .line 59
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    move-object v5, v2

    .line 67
    :goto_0
    check-cast v5, Lkotlin/Pair;

    .line 68
    .line 69
    if-eqz v5, :cond_5

    .line 70
    .line 71
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    new-instance v4, Lcom/fsck/k9/ui/messagelist/MessageSortOverride;

    .line 79
    .line 80
    iget-boolean v5, v3, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isRead:Z

    .line 81
    .line 82
    iget-boolean v3, v3, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isStarred:Z

    .line 83
    .line 84
    invoke-direct {v4, v5, v3}, Lcom/fsck/k9/ui/messagelist/MessageSortOverride;-><init>(ZZ)V

    .line 85
    .line 86
    .line 87
    new-instance v3, Lkotlin/Pair;

    .line 88
    .line 89
    invoke-direct {v3, p1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    const/4 v4, 0x3

    .line 100
    if-le v3, v4, :cond_6

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    const/4 v3, 0x0

    .line 110
    if-eqz v0, :cond_7

    .line 111
    .line 112
    invoke-virtual {p0, v3}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->loadMessageList(Z)V

    .line 113
    .line 114
    .line 115
    :cond_7
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 116
    .line 117
    if-eqz v0, :cond_f

    .line 118
    .line 119
    iget-object v4, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activeMessage:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 120
    .line 121
    invoke-virtual {v0, v4}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->setActiveMessage(Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 122
    .line 123
    .line 124
    if-eqz p1, :cond_f

    .line 125
    .line 126
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 127
    .line 128
    if-nez v0, :cond_8

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_8
    iget-object v4, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 132
    .line 133
    if-eqz v4, :cond_e

    .line 134
    .line 135
    invoke-virtual {v4, p1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->getItem(Lapp/k9mail/legacy/message/controller/MessageReference;)Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-nez p1, :cond_9

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_9
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 143
    .line 144
    if-eqz p0, :cond_d

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->getPosition(Lcom/fsck/k9/ui/messagelist/MessageListItem;)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    if-eqz p0, :cond_f

    .line 151
    .line 152
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    check-cast p1, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;

    .line 164
    .line 165
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    const/4 v2, 0x1

    .line 170
    invoke-virtual {p1, v3, v1, v2, v3}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    const/4 v4, -0x1

    .line 175
    if-nez v1, :cond_a

    .line 176
    .line 177
    move v1, v4

    .line 178
    goto :goto_2

    .line 179
    :cond_a
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    :goto_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    sub-int/2addr v5, v2

    .line 188
    invoke-virtual {p1, v5, v4, v2, v3}, Lapp/k9mail/ui/utils/linearlayoutmanager/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    if-nez p1, :cond_b

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_b
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    :goto_3
    if-gt v1, p0, :cond_c

    .line 200
    .line 201
    if-gt p0, v4, :cond_c

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_c
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw v2

    .line 212
    :cond_e
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw v2

    .line 216
    :cond_f
    :goto_4
    return-void

    .line 217
    :cond_10
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v2
.end method

.method public final setFlag(Lcom/fsck/k9/ui/messagelist/MessageListItem;Lnet/thunderbird/core/common/mail/Flag;Z)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 2
    .line 3
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->showingThreadedList:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->threadCount:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-le v1, v2, :cond_0

    .line 13
    .line 14
    iget-wide v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->threadRoot:J

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->setFlagForThreads(Lnet/thunderbird/feature/account/AccountId;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-wide v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->databaseId:J

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->setFlag(Lnet/thunderbird/feature/account/AccountId;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->computeBatchDirection()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final showDialog$1(I)V
    .locals 8

    .line 1
    const v0, 0x7f09019f

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    const v0, 0x7f1202a3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activeMessages:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    new-array v2, v2, [Ljava/lang/Object;

    .line 36
    .line 37
    aput-object v5, v2, v1

    .line 38
    .line 39
    const v1, 0x7f100005

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v1, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const v2, 0x7f1202a2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    const v3, 0x7f1202a1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v0, v1, v2, v3}, Lcom/fsck/k9/fragment/ConfirmationDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/fragment/ConfirmationDialogFragment;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :cond_0
    const v0, 0x7f09019b

    .line 76
    .line 77
    .line 78
    const v3, 0x7f120295

    .line 79
    .line 80
    .line 81
    const v4, 0x7f120296

    .line 82
    .line 83
    .line 84
    if-ne p1, v0, :cond_1

    .line 85
    .line 86
    const v0, 0x7f120298

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    iget-object v5, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activeMessages:Ljava/util/List;

    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    new-array v2, v2, [Ljava/lang/Object;

    .line 114
    .line 115
    aput-object v7, v2, v1

    .line 116
    .line 117
    const v1, 0x7f100004

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, v1, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-static {p1, v0, v1, v2, v3}, Lcom/fsck/k9/fragment/ConfirmationDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/fragment/ConfirmationDialogFragment;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :cond_1
    const v0, 0x7f09019e

    .line 148
    .line 149
    .line 150
    if-ne p1, v0, :cond_2

    .line 151
    .line 152
    const v0, 0x7f1202a0

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    const v1, 0x7f12029f

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    const v2, 0x7f12029e

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    const v3, 0x7f12029d

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    invoke-static {p1, v0, v1, v2, v3}, Lcom/fsck/k9/fragment/ConfirmationDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/fragment/ConfirmationDialogFragment;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    goto :goto_0

    .line 197
    :cond_2
    const v0, 0x7f09019c

    .line 198
    .line 199
    .line 200
    if-ne p1, v0, :cond_3

    .line 201
    .line 202
    const v0, 0x7f12029a

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    const v1, 0x7f120299

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    invoke-static {p1, v0, v1, v2, v3}, Lcom/fsck/k9/fragment/ConfirmationDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/fragment/ConfirmationDialogFragment;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    goto :goto_0

    .line 241
    :cond_3
    const v0, 0x7f09019d

    .line 242
    .line 243
    .line 244
    if-ne p1, v0, :cond_4

    .line 245
    .line 246
    const v0, 0x7f12029c

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    const v1, 0x7f12029b

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    invoke-static {p1, v0, v1, v2, v3}, Lcom/fsck/k9/fragment/ConfirmationDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/fragment/ConfirmationDialogFragment;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    :goto_0
    invoke-virtual {v0, p1, p0}, Landroidx/fragment/app/Fragment;->setTargetFragment(ILandroidx/fragment/app/Fragment;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    const-string v2, "dialog-"

    .line 294
    .line 295
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :cond_4
    const-string p0, "Called showDialog(int) with unknown dialog id."

    .line 310
    .line 311
    invoke-static {p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    return-void
.end method

.method public final startAndPrepareActionMode()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->actionModeCallback:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v2}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->collapseSearchView$1()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDelegate;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void

    .line 33
    :cond_2
    const-string p0, "fragmentListener"

    .line 34
    .line 35
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    throw p0
.end method

.method public final toggleMessageSelect()V
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getSelectedMessageListItem()Lcom/fsck/k9/ui/messagelist/MessageListItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->toggleMessageSelect(Lcom/fsck/k9/ui/messagelist/MessageListItem;)V

    :cond_0
    return-void
.end method

.method public final toggleMessageSelect(Lcom/fsck/k9/ui/messagelist/MessageListItem;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-wide v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->uniqueId:J

    .line 9
    .line 10
    iget-object p1, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->messagesMap:Ljava/util/Map;

    .line 11
    .line 12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selected:Ljava/util/Set;

    .line 24
    .line 25
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-object v3, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selected:Ljava/util/Set;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v3, p1}, Lorg/jsoup/helper/Validate;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->setSelected(Ljava/util/Set;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {v3, p1}, Lorg/jsoup/helper/Validate;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->setSelected(Ljava/util/Set;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->updateAfterSelectionChange()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    const-string p0, "adapter"

    .line 65
    .line 66
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    throw p0
.end method

.method public final updateActionMode()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "adapter"

    .line 9
    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    iget v1, v1, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selectedCount:I

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v4, 0x1

    .line 19
    new-array v5, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    aput-object v1, v5, v6

    .line 23
    .line 24
    const v1, 0x7f1201c6

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-object v2, v1, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selected:Ljava/util/Set;

    .line 39
    .line 40
    check-cast v2, Ljava/util/Collection;

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_0

    .line 47
    .line 48
    iget-object v2, v1, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selected:Ljava/util/Set;

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iget-object v1, v1, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->viewItems:Ljava/util/List;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->filterMessageListItem(Ljava/util/List;)Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-ne v2, v1, :cond_0

    .line 65
    .line 66
    move v6, v4

    .line 67
    :cond_0
    xor-int/lit8 v1, v6, 0x1

    .line 68
    .line 69
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->actionModeCallback:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 70
    .line 71
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mWidgetcontainer:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p0, Landroid/view/MenuItem;

    .line 74
    .line 75
    if-eqz p0, :cond_1

    .line 76
    .line 77
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v2

    .line 88
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v2

    .line 92
    :cond_4
    const-string p0, "actionMode == null"

    .line 93
    .line 94
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final updateAfterSelectionChange()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->selectedCount:I

    .line 7
    .line 8
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    if-nez v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->startAndPrepareActionMode()V

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->computeBatchDirection()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->updateActionMode()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_3
    const-string p0, "adapter"

    .line 33
    .line 34
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v1
.end method

.method public final updateFooterText()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 79
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 80
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->initialMessageListLoad:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    move-result-object v2

    .line 82
    iget-boolean v2, v2, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->isManualSearch:Z

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    if-nez v1, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    iget-boolean v2, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->loading:Z

    if-eqz v2, :cond_2

    const v0, 0x7f120623

    .line 84
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 85
    :cond_2
    iget-boolean v0, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->moreMessages:Z

    if-nez v0, :cond_3

    goto :goto_0

    .line 86
    :cond_3
    iget v0, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->displayCount:I

    if-nez v0, :cond_4

    const v0, 0x7f12044b

    .line 87
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 88
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const v0, 0x7f12039c

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 89
    :cond_5
    :goto_0
    invoke-virtual {p0, v3}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->updateFooterText(Ljava/lang/String;)V

    return-void
.end method

.method public final updateFooterText(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "adapter"

    .line 5
    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->viewItems:Ljava/util/List;

    .line 9
    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    move-object v5, v4

    .line 30
    check-cast v5, Lcom/fsck/k9/ui/messagelist/MessageListViewItem;

    .line 31
    .line 32
    instance-of v5, v5, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Footer;

    .line 33
    .line 34
    if-nez v5, :cond_0

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    .line 44
    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Footer;

    .line 55
    .line 56
    invoke-direct {v3, p1}, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Footer;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 63
    .line 64
    if-eqz p0, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->setViewItems(Ljava/util/AbstractList;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v1

    .line 74
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v1
.end method

.method public final updateTitle()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->error:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$Error;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const v2, 0x7f120447

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v2, v0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 21
    .line 22
    sget-object v3, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 23
    .line 24
    if-eq v2, v3, :cond_f

    .line 25
    .line 26
    invoke-virtual {v0, p0, v1}, Lcom/fsck/k9/activity/MessageHomeActivity;->setActionBarTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const-string p0, "fragmentListener"

    .line 31
    .line 32
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v1

    .line 36
    :cond_1
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isInitialized:Z

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :cond_2
    const-string v0, ""

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v2, v2, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 49
    .line 50
    const-string v3, "unified_folders"

    .line 51
    .line 52
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    const v0, 0x7f120383

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iget-object v2, v2, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 71
    .line 72
    const-string v3, "new_messages"

    .line 73
    .line 74
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    const v0, 0x7f1204db

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iget-boolean v2, v2, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->isManualSearch:Z

    .line 93
    .line 94
    if-eqz v2, :cond_5

    .line 95
    .line 96
    const v0, 0x7f120577

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    goto :goto_0

    .line 104
    :cond_5
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isThreadDisplay:Z

    .line 105
    .line 106
    if-eqz v2, :cond_7

    .line 107
    .line 108
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->threadTitle:Ljava/lang/String;

    .line 109
    .line 110
    if-nez v2, :cond_6

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_6
    move-object v0, v2

    .line 114
    goto :goto_0

    .line 115
    :cond_7
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleFolderMode:Z

    .line 116
    .line 117
    if-eqz v2, :cond_8

    .line 118
    .line 119
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    iget-object v0, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->displayName:Ljava/lang/String;

    .line 125
    .line 126
    :cond_8
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 130
    .line 131
    const/4 v3, 0x1

    .line 132
    if-eqz v2, :cond_a

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    iget-object v4, v4, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 139
    .line 140
    const-string v5, "unified_folders"

    .line 141
    .line 142
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-nez v4, :cond_a

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getAccountManager$1()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v4}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getAccounts()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    check-cast v4, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-ne v4, v3, :cond_9

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_9
    iget-object v2, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->profile:Lnet/thunderbird/feature/account/storage/profile/ProfileDto;

    .line 166
    .line 167
    iget-object v2, v2, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;->name:Ljava/lang/String;

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_a
    :goto_1
    move-object v2, v1

    .line 171
    :goto_2
    iget-object v4, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 172
    .line 173
    if-eqz v4, :cond_10

    .line 174
    .line 175
    iget-object v5, v4, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 176
    .line 177
    sget-object v6, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->MESSAGE_VIEW:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 178
    .line 179
    if-eq v5, v6, :cond_b

    .line 180
    .line 181
    invoke-virtual {v4, v0, v2}, Lcom/fsck/k9/activity/MessageHomeActivity;->setActionBarTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_b
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iget-boolean v0, v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->isManualSearch:Z

    .line 189
    .line 190
    if-nez v0, :cond_f

    .line 191
    .line 192
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 193
    .line 194
    if-eqz v0, :cond_d

    .line 195
    .line 196
    iget-boolean v0, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->loading:Z

    .line 197
    .line 198
    if-ne v0, v3, :cond_d

    .line 199
    .line 200
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activityListener:Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

    .line 201
    .line 202
    iget-object v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->lock:Ljava/lang/Object;

    .line 203
    .line 204
    monitor-enter v2

    .line 205
    :try_start_0
    iget v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->folderTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .line 207
    monitor-exit v2

    .line 208
    if-lez v0, :cond_d

    .line 209
    .line 210
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->activityListener:Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

    .line 211
    .line 212
    invoke-virtual {v2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;->getFolderCompleted()I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    const/16 v3, 0x2710

    .line 217
    .line 218
    mul-int/2addr v2, v3

    .line 219
    div-int/2addr v2, v0

    .line 220
    if-le v2, v3, :cond_c

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_c
    move v3, v2

    .line 224
    goto :goto_3

    .line 225
    :catchall_0
    move-exception p0

    .line 226
    monitor-exit v2

    .line 227
    throw p0

    .line 228
    :cond_d
    const/4 v3, 0x0

    .line 229
    :goto_3
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 230
    .line 231
    if-eqz p0, :cond_e

    .line 232
    .line 233
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 234
    .line 235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :cond_e
    const-string p0, "fragmentListener"

    .line 243
    .line 244
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw v1

    .line 248
    :cond_f
    :goto_4
    return-void

    .line 249
    :cond_10
    const-string p0, "fragmentListener"

    .line 250
    .line 251
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw v1
.end method

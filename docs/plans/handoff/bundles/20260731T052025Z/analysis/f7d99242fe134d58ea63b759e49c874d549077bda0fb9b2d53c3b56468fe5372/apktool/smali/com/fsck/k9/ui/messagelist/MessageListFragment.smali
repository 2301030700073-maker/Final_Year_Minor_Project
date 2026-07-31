.class public final Lcom/fsck/k9/ui/messagelist/MessageListFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;
.implements Lcom/fsck/k9/fragment/ConfirmationDialogFragment$ConfirmationDialogFragmentListener;
.implements Lcom/fsck/k9/ui/messagelist/MessageListItemActionListener;
.implements Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogFragmentActionListener;


# static fields
.field public static final Factory:Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;


# instance fields
.field public account:Lnet/thunderbird/core/android/account/LegacyAccount;

.field public final accountManager$delegate:Lkotlin/Lazy;

.field public accountUuids:[Ljava/lang/String;

.field public actionMode:Landroidx/appcompat/view/ActionMode;

.field public final actionModeCallback:Lcom/google/zxing/BinaryBitmap;

.field public activeMessage:Lapp/k9mail/legacy/message/controller/MessageReference;

.field public activeMessages:Ljava/util/List;

.field public final activityListener:Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

.field public final avatarMonogramCreator$delegate:Lkotlin/Lazy;

.field public final chooseFolderForCopyLauncher:Landroidx/fragment/app/Fragment$10;

.field public final chooseFolderForMoveLauncher:Landroidx/fragment/app/Fragment$10;

.field public final connectivityManager$delegate:Lkotlin/Lazy;

.field public final contactRepository$delegate:Lkotlin/Lazy;

.field public coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

.field public error:Lcom/fsck/k9/ui/messagelist/MessageListFragment$Error;

.field public final errorNotificationsDialogFragmentFactory$delegate:Lkotlin/Lazy;

.field public extraSearchResults:Ljava/util/List;

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

.field public final legacyViewModel$delegate:Lkotlin/Lazy;

.field public localSearch:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

.field public final localStoreProvider$delegate:Lkotlin/Lazy;

.field public final logTag:Ljava/lang/String;

.field public final logger$delegate:Lkotlin/Lazy;

.field public final messageListScreenRenderer$delegate:Lkotlin/Lazy;

.field public final messagingController$delegate:Lkotlin/Lazy;

.field public final messagingControllerRegistry$delegate:Lkotlin/Lazy;

.field public final outboxFolderManager$delegate:Lkotlin/Lazy;

.field public recentChangesSnackbar:Lcom/google/android/material/snackbar/Snackbar;

.field public final recentChangesViewModel$delegate:Lkotlin/Lazy;

.field public rememberedSelected:Ljava/util/Set;

.field public remoteSearchFuture:Ljava/util/concurrent/Future;

.field public searchView:Landroidx/appcompat/widget/SearchView;

.field public final shouldShowRecentChangesHintObserver:Landroidx/camera/core/impl/LiveDataObservable$$ExternalSyntheticLambda3;

.field public showingThreadedList:Z

.field public sortAscending:Z

.field public sortDateAscending:Z

.field public sortType:Lnet/thunderbird/core/android/account/SortType;

.field public final sortTypeToastProvider$delegate:Lkotlin/Lazy;

.field public threadTitle:Ljava/lang/String;

.field public final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->Factory:Lcom/fsck/k9/ui/messagelist/MessageListFragment$Factory;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "MessageListFragment"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->logTag:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 15
    .line 16
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->messageListScreenRenderer$delegate:Lkotlin/Lazy;

    .line 21
    .line 22
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 23
    .line 24
    const/16 v3, 0xf

    .line 25
    .line 26
    invoke-direct {v0, p0, v3}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 30
    .line 31
    const/16 v4, 0x11

    .line 32
    .line 33
    invoke-direct {v3, v4, p0, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 37
    .line 38
    invoke-static {v0, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->legacyViewModel$delegate:Lkotlin/Lazy;

    .line 43
    .line 44
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 45
    .line 46
    const/16 v5, 0x10

    .line 47
    .line 48
    invoke-direct {v3, p0, v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 49
    .line 50
    .line 51
    new-instance v6, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 52
    .line 53
    const/16 v7, 0x12

    .line 54
    .line 55
    invoke-direct {v6, v7, p0, v3}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v6}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->recentChangesViewModel$delegate:Lkotlin/Lazy;

    .line 63
    .line 64
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 65
    .line 66
    const/16 v6, 0x8

    .line 67
    .line 68
    invoke-direct {v3, p0, v6}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 76
    .line 77
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 78
    .line 79
    const/16 v6, 0x9

    .line 80
    .line 81
    invoke-direct {v3, p0, v6}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 82
    .line 83
    .line 84
    invoke-static {v2, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortTypeToastProvider$delegate:Lkotlin/Lazy;

    .line 89
    .line 90
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda7;

    .line 91
    .line 92
    invoke-direct {v3, p0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda7;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 93
    .line 94
    .line 95
    new-instance v6, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 96
    .line 97
    invoke-direct {v6, v5, p0, v3}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v2, v6}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->folderNameFormatter$delegate:Lkotlin/Lazy;

    .line 105
    .line 106
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 107
    .line 108
    const/16 v5, 0xa

    .line 109
    .line 110
    invoke-direct {v3, p0, v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 111
    .line 112
    .line 113
    invoke-static {v2, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->messagingController$delegate:Lkotlin/Lazy;

    .line 118
    .line 119
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 120
    .line 121
    const/16 v5, 0xb

    .line 122
    .line 123
    invoke-direct {v3, p0, v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 124
    .line 125
    .line 126
    invoke-static {v2, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->messagingControllerRegistry$delegate:Lkotlin/Lazy;

    .line 131
    .line 132
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 133
    .line 134
    const/16 v5, 0xc

    .line 135
    .line 136
    invoke-direct {v3, p0, v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 137
    .line 138
    .line 139
    invoke-static {v2, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->accountManager$delegate:Lkotlin/Lazy;

    .line 144
    .line 145
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 146
    .line 147
    const/16 v5, 0xd

    .line 148
    .line 149
    invoke-direct {v3, p0, v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 150
    .line 151
    .line 152
    invoke-static {v2, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->connectivityManager$delegate:Lkotlin/Lazy;

    .line 157
    .line 158
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 159
    .line 160
    const/16 v5, 0xe

    .line 161
    .line 162
    invoke-direct {v3, p0, v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 163
    .line 164
    .line 165
    invoke-static {v2, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->localStoreProvider$delegate:Lkotlin/Lazy;

    .line 170
    .line 171
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 172
    .line 173
    const/4 v5, 0x1

    .line 174
    invoke-direct {v3, p0, v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 175
    .line 176
    .line 177
    invoke-static {v2, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->featureThemeProvider$delegate:Lkotlin/Lazy;

    .line 182
    .line 183
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 184
    .line 185
    const/4 v6, 0x2

    .line 186
    invoke-direct {v3, p0, v6}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 187
    .line 188
    .line 189
    invoke-static {v2, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->logger$delegate:Lkotlin/Lazy;

    .line 194
    .line 195
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 196
    .line 197
    const/4 v6, 0x3

    .line 198
    invoke-direct {v3, p0, v6}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 199
    .line 200
    .line 201
    invoke-static {v2, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->outboxFolderManager$delegate:Lkotlin/Lazy;

    .line 206
    .line 207
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 208
    .line 209
    const/4 v7, 0x4

    .line 210
    invoke-direct {v3, p0, v7}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 211
    .line 212
    .line 213
    invoke-static {v2, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 214
    .line 215
    .line 216
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 217
    .line 218
    const/4 v7, 0x5

    .line 219
    invoke-direct {v3, p0, v7}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 220
    .line 221
    .line 222
    invoke-static {v2, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->errorNotificationsDialogFragmentFactory$delegate:Lkotlin/Lazy;

    .line 227
    .line 228
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 229
    .line 230
    invoke-direct {v3, p0}, Lcom/fsck/k9/ui/messagelist/MessageListHandler;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;)V

    .line 231
    .line 232
    .line 233
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->handler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 234
    .line 235
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

    .line 236
    .line 237
    invoke-direct {v3, p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;)V

    .line 238
    .line 239
    .line 240
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activityListener:Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

    .line 241
    .line 242
    new-instance v3, Lcom/google/zxing/BinaryBitmap;

    .line 243
    .line 244
    invoke-direct {v3, p0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;)V

    .line 245
    .line 246
    .line 247
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->actionModeCallback:Lcom/google/zxing/BinaryBitmap;

    .line 248
    .line 249
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 250
    .line 251
    const/4 v7, 0x6

    .line 252
    invoke-direct {v3, p0, v7}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 253
    .line 254
    .line 255
    invoke-static {v2, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->contactRepository$delegate:Lkotlin/Lazy;

    .line 260
    .line 261
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 262
    .line 263
    const/4 v7, 0x7

    .line 264
    invoke-direct {v3, p0, v7}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 265
    .line 266
    .line 267
    invoke-static {v2, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    iput-object v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->avatarMonogramCreator$delegate:Lkotlin/Lazy;

    .line 272
    .line 273
    new-instance v2, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract;

    .line 274
    .line 275
    sget-object v3, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;->MOVE:Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;

    .line 276
    .line 277
    invoke-direct {v2, v3}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract;-><init>(Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;)V

    .line 278
    .line 279
    .line 280
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda8;

    .line 281
    .line 282
    invoke-direct {v3, p0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda8;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0, v3, v2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lcom/fsck/k9/sasl/OAuthBearer;)Landroidx/fragment/app/Fragment$10;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    iput-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->chooseFolderForMoveLauncher:Landroidx/fragment/app/Fragment$10;

    .line 290
    .line 291
    new-instance v1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract;

    .line 292
    .line 293
    sget-object v2, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;->COPY:Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;

    .line 294
    .line 295
    invoke-direct {v1, v2}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract;-><init>(Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;)V

    .line 296
    .line 297
    .line 298
    new-instance v2, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda8;

    .line 299
    .line 300
    invoke-direct {v2, p0, v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda8;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lcom/fsck/k9/sasl/OAuthBearer;)Landroidx/fragment/app/Fragment$10;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    iput-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->chooseFolderForCopyLauncher:Landroidx/fragment/app/Fragment$10;

    .line 308
    .line 309
    iput-boolean v5, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->initialSearchViewIconified:Z

    .line 310
    .line 311
    sget-object v1, Lnet/thunderbird/core/android/account/SortType;->SORT_DATE:Lnet/thunderbird/core/android/account/SortType;

    .line 312
    .line 313
    iput-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 314
    .line 315
    iput-boolean v5, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortAscending:Z

    .line 316
    .line 317
    iput-boolean v5, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isShowFloatingActionButton:Z

    .line 318
    .line 319
    iput-boolean v5, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->initialMessageListLoad:Z

    .line 320
    .line 321
    new-instance v1, Landroidx/camera/core/impl/LiveDataObservable$$ExternalSyntheticLambda3;

    .line 322
    .line 323
    invoke-direct {v1, v6, p0}, Landroidx/camera/core/impl/LiveDataObservable$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    iput-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->shouldShowRecentChangesHintObserver:Landroidx/camera/core/impl/LiveDataObservable$$ExternalSyntheticLambda3;

    .line 327
    .line 328
    new-instance v1, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda7;

    .line 329
    .line 330
    invoke-direct {v1, p0, v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda7;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 331
    .line 332
    .line 333
    new-instance v2, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 334
    .line 335
    invoke-direct {v2, p0, v4}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 336
    .line 337
    .line 338
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$viewModel$default$6;

    .line 339
    .line 340
    invoke-direct {v3, p0, v2, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$viewModel$default$6;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda7;)V

    .line 341
    .line 342
    .line 343
    invoke-static {v0, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 348
    .line 349
    return-void
.end method

.method public static final access$setFlagForSelected(Lcom/fsck/k9/ui/messagelist/MessageListFragment;Lnet/thunderbird/core/common/mail/Flag;Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getSelectedMessagesCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_3

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Ljava/util/List;

    .line 44
    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iget-object v6, v3, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 52
    .line 53
    invoke-virtual {v5, v6, v4, p1, p2}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->setFlag(Lnet/thunderbird/feature/account/AccountId;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Ljava/util/List;

    .line 61
    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    iget-object v3, v3, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 69
    .line 70
    invoke-virtual {v5, v3, v4, p1, p2}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->setFlagForThreads(Lnet/thunderbird/feature/account/AccountId;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final SortCriteriaMenuList(Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v10, p1

    .line 6
    .line 7
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v2, -0x4440086b    # -0.0058583715f

    .line 10
    .line 11
    .line 12
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v3

    .line 25
    :goto_0
    or-int/2addr v2, v1

    .line 26
    and-int/lit8 v4, v2, 0x3

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x1

    .line 30
    if-eq v4, v3, :cond_1

    .line 31
    .line 32
    move v3, v6

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v3, v5

    .line 35
    :goto_1
    and-int/2addr v2, v6

    .line 36
    invoke-virtual {v10, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_7

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getViewModel()Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->getState()Lkotlinx/coroutines/flow/StateFlow;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v3, v10}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 63
    .line 64
    if-nez v4, :cond_2

    .line 65
    .line 66
    if-ne v6, v7, :cond_3

    .line 67
    .line 68
    :cond_2
    new-instance v6, Lcom/fsck/k9/ui/messagelist/MessageListFragment$SortCriteriaMenuList$$inlined$observeWithoutEffect$1;

    .line 69
    .line 70
    invoke-direct {v6, v2, v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$SortCriteriaMenuList$$inlined$observeWithoutEffect$1;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    move-object v14, v6

    .line 77
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 90
    .line 91
    invoke-interface {v2}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iget-object v3, v2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->folder:Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;

    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    if-eqz v3, :cond_4

    .line 99
    .line 100
    iget-object v3, v3, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->account:Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 101
    .line 102
    iget-object v3, v3, Lnet/thunderbird/feature/mail/message/list/ui/state/Account;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 103
    .line 104
    if-eqz v3, :cond_4

    .line 105
    .line 106
    sget-object v5, Lnet/thunderbird/feature/account/UnifiedAccountIdKt;->UnifiedAccountId:Lnet/thunderbird/feature/account/AccountId;

    .line 107
    .line 108
    invoke-virtual {v3, v5}, Lnet/thunderbird/feature/account/AccountId;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-nez v5, :cond_4

    .line 113
    .line 114
    move-object v15, v3

    .line 115
    goto :goto_2

    .line 116
    :cond_4
    move-object v15, v4

    .line 117
    :goto_2
    iget-object v13, v2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->availablePrimarySortTypes:Lkotlinx/collections/immutable/ImmutableSet;

    .line 118
    .line 119
    iget-object v3, v2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->availableSecondarySortTypes:Lkotlinx/collections/immutable/ImmutableSet;

    .line 120
    .line 121
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    if-nez v4, :cond_5

    .line 130
    .line 131
    if-ne v5, v7, :cond_6

    .line 132
    .line 133
    :cond_5
    iget-object v2, v2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->sortCriteriaPerAccount:Lkotlinx/collections/immutable/PersistentMap;

    .line 134
    .line 135
    invoke-static {v2, v15}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    move-object v5, v2

    .line 140
    check-cast v5, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;

    .line 141
    .line 142
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_6
    move-object v12, v5

    .line 146
    check-cast v12, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;

    .line 147
    .line 148
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 149
    .line 150
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    const/high16 v2, 0x41000000    # 8.0f

    .line 160
    .line 161
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 162
    .line 163
    invoke-static {v4, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    sget-object v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 168
    .line 169
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 174
    .line 175
    iget-wide v4, v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->surfaceContainer:J

    .line 176
    .line 177
    sget-object v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevationsKt;->LocalThemeElevations:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 178
    .line 179
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    check-cast v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevations;

    .line 184
    .line 185
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    sget-object v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapesKt;->LocalThemeShapes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 189
    .line 190
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    check-cast v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;

    .line 195
    .line 196
    iget-object v6, v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;->medium:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 197
    .line 198
    new-instance v11, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;

    .line 199
    .line 200
    const/16 v17, 0xc

    .line 201
    .line 202
    move-object/from16 v16, v3

    .line 203
    .line 204
    invoke-direct/range {v11 .. v17}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 205
    .line 206
    .line 207
    const v3, -0x3e72db4e

    .line 208
    .line 209
    .line 210
    invoke-static {v3, v11, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    const/high16 v11, 0x30000

    .line 215
    .line 216
    const/16 v12, 0x8

    .line 217
    .line 218
    move-object v3, v6

    .line 219
    const-wide/16 v6, 0x0

    .line 220
    .line 221
    const/high16 v8, 0x40400000    # 3.0f

    .line 222
    .line 223
    invoke-static/range {v2 .. v12}, Lkotlin/math/MathKt;->Surface-_UMDTes(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 224
    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_7
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 228
    .line 229
    .line 230
    :goto_3
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    if-eqz v2, :cond_8

    .line 235
    .line 236
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;

    .line 237
    .line 238
    invoke-direct {v3, v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 239
    .line 240
    .line 241
    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 242
    .line 243
    :cond_8
    return-void
.end method

.method public final changeSort$1(Lnet/thunderbird/core/android/account/SortType;)V
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v2, v1, :cond_0

    .line 9
    .line 10
    iget-boolean v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortAscending:Z

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
    iput-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 21
    .line 22
    iget-object v4, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

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
    iput-boolean v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortAscending:Z

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
    iput-boolean v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortDateAscending:Z

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
    const/4 v5, 0x6

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
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 229
    .line 230
    invoke-static {v1}, Lcom/fsck/k9/K9;->isSortAscending(Lnet/thunderbird/core/android/account/SortType;)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    iput-boolean v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortAscending:Z

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
    iput-boolean v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortAscending:Z

    .line 242
    .line 243
    :goto_4
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 244
    .line 245
    iget-boolean v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortAscending:Z

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
    iput-boolean v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortDateAscending:Z

    .line 255
    .line 256
    invoke-static {}, Lcom/fsck/k9/K9;->saveSettingsAsync()V

    .line 257
    .line 258
    .line 259
    :goto_5
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortTypeToastProvider$delegate:Lkotlin/Lazy;

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
    iget-object v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 268
    .line 269
    iget-boolean v3, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortAscending:Z

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
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 291
    .line 292
    .line 293
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 294
    .line 295
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLegacyViewModel()Lcom/fsck/k9/ui/messagelist/MessageListViewModel;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->messageSortOverrides:Ljava/util/LinkedList;

    .line 300
    .line 301
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/List;)Ljava/util/Map;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    return-void
.end method

.method public final checkCopyOrMovePossible(Ljava/util/List;Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;)Z
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
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getAccountManager$2()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

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
    sget-object v2, Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;->MOVE:Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;

    .line 31
    .line 32
    if-ne p2, v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

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
    sget-object v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;->COPY:Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;

    .line 45
    .line 46
    if-ne p2, v3, :cond_4

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

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
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

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
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

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
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->searchView:Landroidx/appcompat/widget/SearchView;

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

.method public final copyOrMove(Ljava/util/List;JLcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;)V
    .locals 10

    .line 1
    invoke-virtual {p0, p1, p4}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->checkCopyOrMovePossible(Ljava/util/List;Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;)Z

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
    const/4 v2, 0x6

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
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getAccountManager$2()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

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
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->logger$delegate:Lkotlin/Lazy;

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
    const/4 v3, 0x3

    .line 142
    invoke-direct {v2, v3, v7}, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/util/List;)V

    .line 143
    .line 144
    .line 145
    iget-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->logTag:Ljava/lang/String;

    .line 146
    .line 147
    const/4 v4, 0x0

    .line 148
    invoke-static {v0, v3, v4, v2, v1}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_3
    iget-object v2, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 153
    .line 154
    sget-object v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 155
    .line 156
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    aget v3, v3, v4

    .line 161
    .line 162
    if-ne v3, v1, :cond_4

    .line 163
    .line 164
    iget-boolean v4, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->showingThreadedList:Z

    .line 165
    .line 166
    if-eqz v4, :cond_4

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    iget-object v4, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 173
    .line 174
    move-wide v8, p2

    .line 175
    invoke-virtual/range {v3 .. v9}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->moveMessagesInThread(Lnet/thunderbird/feature/account/AccountId;JLjava/util/List;J)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_4
    move-wide v8, p2

    .line 180
    if-ne v3, v1, :cond_5

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, v2}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    iget-object v3, p2, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 197
    .line 198
    invoke-virtual/range {v3 .. v9}, Lcom/fsck/k9/controller/MessagingController;->moveMessages(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;J)V

    .line 199
    .line 200
    .line 201
    :goto_2
    move-wide p2, v8

    .line 202
    goto :goto_1

    .line 203
    :cond_5
    const/4 p2, 0x1

    .line 204
    if-ne v3, p2, :cond_6

    .line 205
    .line 206
    iget-boolean p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->showingThreadedList:Z

    .line 207
    .line 208
    if-eqz p3, :cond_6

    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    iget-object v4, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 215
    .line 216
    invoke-virtual/range {v3 .. v9}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->copyMessagesInThread(Lnet/thunderbird/feature/account/AccountId;JLjava/util/List;J)V

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_6
    if-ne v3, p2, :cond_7

    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2, v2}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    iget-object v3, p2, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 237
    .line 238
    invoke-virtual/range {v3 .. v9}, Lcom/fsck/k9/controller/MessagingController;->copyMessages(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;J)V

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_7
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 243
    .line 244
    .line 245
    :cond_8
    :goto_3
    return-void
.end method

.method public final decodeArguments()Lcom/fsck/k9/ui/messagelist/MessageListFragment$Error;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "showingThreadedList"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iput-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->showingThreadedList:Z

    .line 13
    .line 14
    const-string v1, "isThreadedDisplay"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isThreadDisplay:Z

    .line 21
    .line 22
    const-string v1, "searchObject"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-static {v0}, Lnet/thunderbird/feature/search/legacy/serialization/LocalMessageSearchSerializer;->deserialize([B)Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object v0, v1

    .line 37
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->localSearch:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v0, v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->accountUuidSet:Ljava/util/Set;

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getAccountManager$2()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v0, v3}, Landroidx/room/util/SchemaInfoUtilKt;->getLegacyAccountsFromLocalSearch(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;)Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    const/4 v4, 0x1

    .line 68
    if-ne v3, v4, :cond_1

    .line 69
    .line 70
    iput-boolean v4, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleAccountMode:Z

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 79
    .line 80
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 81
    .line 82
    filled-new-array {v0}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->accountUuids:[Ljava/lang/String;

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_1
    iput-boolean v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleAccountMode:Z

    .line 90
    .line 91
    iput-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 92
    .line 93
    new-instance v3, Ljava/util/ArrayList;

    .line 94
    .line 95
    const/16 v5, 0xa

    .line 96
    .line 97
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-eqz v5, :cond_2

    .line 113
    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    check-cast v5, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 119
    .line 120
    iget-object v5, v5, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    new-array v0, v2, [Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, [Ljava/lang/String;

    .line 133
    .line 134
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->accountUuids:[Ljava/lang/String;

    .line 135
    .line 136
    :goto_2
    iput-boolean v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleFolderMode:Z

    .line 137
    .line 138
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleAccountMode:Z

    .line 139
    .line 140
    if-eqz v0, :cond_4

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getFolderIds()Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-ne v0, v4, :cond_4

    .line 155
    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 157
    .line 158
    if-eqz v0, :cond_3

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {v3}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getFolderIds()Ljava/util/ArrayList;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Ljava/lang/Number;

    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 175
    .line 176
    .line 177
    move-result-wide v2

    .line 178
    iget-object v5, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->localStoreProvider$delegate:Lkotlin/Lazy;

    .line 179
    .line 180
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    check-cast v5, Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 185
    .line 186
    invoke-virtual {v5, v0}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstanceByLegacyAccount(Lnet/thunderbird/core/android/account/LegacyAccount;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    new-instance v6, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 191
    .line 192
    invoke-direct {v6, v5, v2, v3}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 196
    .line 197
    .line 198
    new-instance v2, Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 199
    .line 200
    iget-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->folderNameFormatter$delegate:Lkotlin/Lazy;

    .line 201
    .line 202
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    check-cast v3, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 207
    .line 208
    iget-object v5, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->outboxFolderManager$delegate:Lkotlin/Lazy;

    .line 209
    .line 210
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    check-cast v5, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 215
    .line 216
    invoke-direct {v2, v3, v5, v6, v0}, Lcom/fsck/k9/activity/FolderInfoHolder;-><init>(Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lcom/fsck/k9/mailstore/LocalFolder;Lnet/thunderbird/core/android/account/LegacyAccount;)V

    .line 217
    .line 218
    .line 219
    iput-object v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 220
    .line 221
    iput-boolean v4, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleFolderMode:Z

    .line 222
    .line 223
    return-object v1

    .line 224
    :cond_3
    const-string p0, "Required value was null."

    .line 225
    .line 226
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 227
    .line 228
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v0
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :catch_0
    sget-object p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$Error;->FolderNotFound:Lcom/fsck/k9/ui/messagelist/MessageListFragment$Error;

    .line 233
    .line 234
    return-object p0

    .line 235
    :cond_4
    return-object v1
.end method

.method public final dialogCancelled(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->doNegativeClick(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final displayFolderChoice(Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 1
    iput-object p4, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activeMessages:Ljava/util/List;

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
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->chooseFolderForMoveLauncher:Landroidx/fragment/app/Fragment$10;

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
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->chooseFolderForCopyLauncher:Landroidx/fragment/app/Fragment$10;

    .line 30
    .line 31
    invoke-virtual {p0, p4}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final doNegativeClick(I)V
    .locals 1

    .line 1
    const v0, 0x7f09019f

    .line 2
    .line 3
    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const v0, 0x7f09019b

    .line 7
    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activeMessages:Ljava/util/List;

    .line 15
    .line 16
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
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activeMessages:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->onSpamConfirmed$1(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activeMessages:Ljava/util/List;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const v0, 0x7f09019b

    .line 19
    .line 20
    .line 21
    if-ne p1, v0, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activeMessages:Ljava/util/List;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->showingThreadedList:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

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
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

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
    iput-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activeMessage:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    const v0, 0x7f09019e

    .line 74
    .line 75
    .line 76
    if-ne p1, v0, :cond_3

    .line 77
    .line 78
    iget-boolean p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleAccountMode:Z

    .line 79
    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    iget-boolean p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleFolderMode:Z

    .line 83
    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isOutbox()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_5

    .line 91
    .line 92
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 93
    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 97
    .line 98
    if-eqz p1, :cond_5

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    iget-wide v1, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    iget-object p1, v0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 119
    .line 120
    invoke-static {v1, v2}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;->create(J)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p1, p0, v0}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p0}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_3
    const v0, 0x7f09019c

    .line 132
    .line 133
    .line 134
    if-ne p1, v0, :cond_4

    .line 135
    .line 136
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 137
    .line 138
    if-eqz p1, :cond_5

    .line 139
    .line 140
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 141
    .line 142
    if-eqz p1, :cond_5

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 156
    .line 157
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$3;

    .line 158
    .line 159
    const/4 v1, 0x3

    .line 160
    invoke-direct {v0, p0, p1, v1}, Lcom/fsck/k9/controller/MessagingController$3;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 161
    .line 162
    .line 163
    const-string p1, "emptySpam"

    .line 164
    .line 165
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_4
    const v0, 0x7f09019d

    .line 170
    .line 171
    .line 172
    if-ne p1, v0, :cond_5

    .line 173
    .line 174
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 175
    .line 176
    if-eqz p1, :cond_5

    .line 177
    .line 178
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 179
    .line 180
    if-eqz p1, :cond_5

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 194
    .line 195
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$3;

    .line 196
    .line 197
    const/4 v1, 0x4

    .line 198
    invoke-direct {v0, p0, p1, v1}, Lcom/fsck/k9/controller/MessagingController$3;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 199
    .line 200
    .line 201
    const-string p1, "emptyTrash"

    .line 202
    .line 203
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 204
    .line 205
    .line 206
    :cond_5
    return-void
.end method

.method public final expandSearchView()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->searchView:Landroidx/appcompat/widget/SearchView;

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
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->accountUuids:[Ljava/lang/String;

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
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

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
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

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
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->updateFooterText$1()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final getAccountManager$2()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->accountManager$delegate:Lkotlin/Lazy;

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

.method public final getFocusedMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getStateSnapshot()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->focusedMessage:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->messageReference:Ljava/lang/String;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    invoke-static {p0}, Lkotlin/math/MathKt;->parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final getLegacyViewModel()Lcom/fsck/k9/ui/messagelist/MessageListViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->legacyViewModel$delegate:Lkotlin/Lazy;

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
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->localSearch:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

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

.method public final getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->messagingController$delegate:Lkotlin/Lazy;

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

.method public final getSelectedMessages$1()Ljava/util/ArrayList;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getViewModel()Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->getState()Lkotlinx/coroutines/flow/StateFlow;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 14
    .line 15
    invoke-interface {p0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMessages()Lkotlinx/collections/immutable/ImmutableList;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    move-object v2, v1

    .line 39
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 40
    .line 41
    iget-boolean v2, v2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->selected:Z

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 69
    .line 70
    iget-object v1, v1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->messageReference:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v1}, Lkotlin/math/MathKt;->parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    return-object p0
.end method

.method public final getSelectedMessagesCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getStateSnapshot()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v1

    .line 14
    :goto_0
    if-eqz p0, :cond_1

    .line 15
    .line 16
    iget p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;->selectedCount:I

    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_1
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_2
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final getStateSnapshot()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getViewModel()Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->getState()Lkotlinx/coroutines/flow/StateFlow;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 14
    .line 15
    return-object p0
.end method

.method public final getViewModel()Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final handleChooseFolderResult$1(Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Result;Lkotlin/jvm/functions/Function2;)V
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
    iget-object v3, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activeMessages:Ljava/util/List;

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
    iput-object v4, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activeMessages:Ljava/util/List;

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
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getAccountManager$2()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

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
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getAccountManager$2()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

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
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

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
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->outboxFolderManager$delegate:Lkotlin/Lazy;

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
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSpecialFolder$1(Ljava/lang/Long;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final isSearchViewCollapsed$1()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->searchView:Landroidx/appcompat/widget/SearchView;

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
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

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
    iget-boolean p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleAccountMode:Z

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

.method public final isShowingSpamFolder$1()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleFolderMode:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-wide v0, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 12
    .line 13
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

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

.method public final isShowingTrashFolder$1()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleFolderMode:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-wide v0, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 12
    .line 13
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

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

.method public final isSpecialFolder$1(Ljava/lang/Long;)Z
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
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

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

.method public final onArchive()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getFocusedMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;->MOVE:Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->checkCopyOrMovePossible(Ljava/util/List;Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->showingThreadedList:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->archiveOperations:Lcom/beetstra/jutf7/Base64Util;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-direct {v1, p0, v2}, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda0;-><init>(Lcom/beetstra/jutf7/Base64Util;I)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    const-string v4, "archiveThreads"

    .line 45
    .line 46
    invoke-direct {v2, p0, v4, v1, v3}, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    const/16 v3, 0x14

    .line 52
    .line 53
    invoke-direct {v1, v3, v2}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, Lcom/fsck/k9/controller/MessagingController;

    .line 59
    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/controller/MessagingController;->actOnMessagesGroupedByAccountAndFolder(Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->archiveOperations:Lcom/beetstra/jutf7/Base64Util;

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lcom/beetstra/jutf7/Base64Util;->archiveMessages(Ljava/util/List;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_0
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
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

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
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleAccountMode:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

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
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

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

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getFocusedMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->onCopy$1(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onCopy$1(Ljava/util/List;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;->COPY:Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->checkCopyOrMovePossible(Ljava/util/List;Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;)Z

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
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isThreadDisplay:Z

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
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleFolderMode:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

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
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->displayFolderChoice(Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getViewModel()Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    const-string v3, "activeMessages"

    .line 14
    .line 15
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    new-instance v4, Ljava/util/ArrayList;

    .line 22
    .line 23
    array-length v5, v3

    .line 24
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    array-length v5, v3

    .line 28
    move v6, v0

    .line 29
    :goto_0
    if-ge v6, v5, :cond_2

    .line 30
    .line 31
    aget-object v7, v3, v6

    .line 32
    .line 33
    invoke-static {v7}, Lkotlin/math/MathKt;->parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    add-int/lit8 v6, v6, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-object v4, v1

    .line 47
    :cond_2
    iput-object v4, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activeMessages:Ljava/util/List;

    .line 48
    .line 49
    const-string v3, "selectedMessages"

    .line 50
    .line 51
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    invoke-static {v3}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([J)Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move-object v3, v1

    .line 63
    :goto_1
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->rememberedSelected:Ljava/util/Set;

    .line 64
    .line 65
    const-string v3, "remoteSearchPerformed"

    .line 66
    .line 67
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    iput-boolean v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isRemoteSearch:Z

    .line 72
    .line 73
    const-string v3, "searchViewQuery"

    .line 74
    .line 75
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iput-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->initialSearchViewQuery:Ljava/lang/String;

    .line 80
    .line 81
    const-string v3, "searchViewIconified"

    .line 82
    .line 83
    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    iput-boolean v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->initialSearchViewIconified:Z

    .line 88
    .line 89
    const-string v3, "activeMessage"

    .line 90
    .line 91
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1}, Lkotlin/math/MathKt;->parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activeMessage:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 100
    .line 101
    :goto_2
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->decodeArguments()Lcom/fsck/k9/ui/messagelist/MessageListFragment$Error;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->error:Lcom/fsck/k9/ui/messagelist/MessageListFragment$Error;

    .line 108
    .line 109
    return-void

    .line 110
    :cond_4
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 111
    .line 112
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 117
    .line 118
    check-cast p1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->generalSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 121
    .line 122
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    .line 123
    .line 124
    invoke-direct {v3, p1, v0}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 125
    .line 126
    .line 127
    new-instance p1, Lkotlinx/coroutines/flow/SafeFlow;

    .line 128
    .line 129
    const/4 v4, 0x5

    .line 130
    invoke-direct {p1, v4, v3}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;

    .line 138
    .line 139
    invoke-direct {v3, p0, v1, v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 140
    .line 141
    .line 142
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 143
    .line 144
    const/4 v1, 0x2

    .line 145
    invoke-direct {v0, p1, v3, v1}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 146
    .line 147
    .line 148
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 153
    .line 154
    .line 155
    iput-boolean v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isInitialized:Z

    .line 156
    .line 157
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->error:Lcom/fsck/k9/ui/messagelist/MessageListFragment$Error;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const v0, 0x7f0c0304

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const p2, 0x7f0902a4

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Landroidx/compose/ui/platform/ComposeView;

    .line 24
    .line 25
    sget-object v0, Landroidx/compose/ui/platform/AndroidFontResourceLoader;->INSTANCE:Landroidx/compose/ui/platform/AndroidFontResourceLoader;

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroidx/compose/ui/platform/AbstractComposeView;->setViewCompositionStrategy(Landroidx/compose/ui/platform/ViewCompositionStrategy;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    const/4 v2, 0x7

    .line 33
    invoke-direct {v0, p0, v2, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;IB)V

    .line 34
    .line 35
    .line 36
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 37
    .line 38
    const v1, 0x393feec5

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-direct {p0, v1, v0, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 46
    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_0
    const p0, 0x7f0c02d5

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method

.method public final onCycleSort()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

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
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->changeSort$1(Lnet/thunderbird/core/android/account/SortType;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onDelete()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getFocusedMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 12
    .line 13
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 18
    .line 19
    check-cast v1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v1, v1, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 26
    .line 27
    iget-boolean v1, v1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDelete:Z

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activeMessages:Ljava/util/List;

    .line 32
    .line 33
    const v0, 0x7f09019b

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->showDialog$2(I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->showingThreadedList:Z

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 52
    .line 53
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 54
    .line 55
    const/16 v2, 0x15

    .line 56
    .line 57
    invoke-direct {v1, v2, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/controller/MessagingController;->actOnMessagesGroupedByAccountAndFolder(Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 72
    .line 73
    new-instance v1, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda9;

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    invoke-direct {v1, p0, v2}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda9;-><init>(Lcom/fsck/k9/controller/MessagingController;Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/controller/MessagingController;->actOnMessagesGroupedByAccountAndFolder(Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    return-void
.end method

.method public final onDestroyView()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "new_messages"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v2, v2, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 51
    .line 52
    new-instance v3, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda8;

    .line 53
    .line 54
    invoke-direct {v3, v2, v0, v1}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda8;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 55
    .line 56
    .line 57
    const-string v0, "clearNewMessages"

    .line 58
    .line 59
    invoke-virtual {v2, v0, v3}, Lcom/fsck/k9/controller/MessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 63
    .line 64
    return-void
.end method

.method public final onFullyActive()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

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

.method public final onMove()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getFocusedMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->onMove$1(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onMove$1(Ljava/util/List;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;->MOVE:Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->checkCopyOrMovePossible(Ljava/util/List;Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;)Z

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
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isThreadDisplay:Z

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
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleFolderMode:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

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
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->displayFolderChoice(Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;)V

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
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->errorNotificationsDialogFragmentFactory$delegate:Lkotlin/Lazy;

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
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->onNotificationActionClick(Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;)V

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
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->messagingControllerRegistry$delegate:Lkotlin/Lazy;

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
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activityListener:Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

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

.method public final onResume()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->hasConnectivity:Ljava/lang/Boolean;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->connectivityManager$delegate:Lkotlin/Lazy;

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
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->hasConnectivity:Ljava/lang/Boolean;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->messagingControllerRegistry$delegate:Lkotlin/Lazy;

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
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activityListener:Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

    .line 35
    .line 36
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->addListener(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->updateTitle()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final onReverseSort()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->changeSort$1(Lnet/thunderbird/core/android/account/SortType;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->error:Lcom/fsck/k9/ui/messagelist/MessageListFragment$Error;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    const-string v0, "remoteSearchPerformed"

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isRemoteSearch:Z

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "searchViewQuery"

    .line 26
    .line 27
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "searchViewIconified"

    .line 31
    .line 32
    iget-boolean v0, v0, Landroidx/appcompat/widget/SearchView;->mIconified:Z

    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activeMessages:Ljava/util/List;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    const/16 v2, 0xa

    .line 44
    .line 45
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 67
    .line 68
    invoke-virtual {v2}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const/4 v0, 0x0

    .line 77
    new-array v0, v0, [Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, [Ljava/lang/String;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    const/4 v0, 0x0

    .line 87
    :goto_1
    const-string v1, "activeMessages"

    .line 88
    .line 89
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activeMessage:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 93
    .line 94
    if-eqz p0, :cond_4

    .line 95
    .line 96
    const-string v0, "activeMessage"

    .line 97
    .line 98
    invoke-virtual {p0}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    :goto_2
    return-void
.end method

.method public final onSpamConfirmed$1(Ljava/util/List;)V
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
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getAccountManager$2()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

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
    sget-object v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;->MOVE:Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;

    .line 97
    .line 98
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->copyOrMove(Ljava/util/List;JLcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;)V

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
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->logTag:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->logger$delegate:Lkotlin/Lazy;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isRemoteSearch:Z

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->remoteSearchFuture:Ljava/util/concurrent/Future;

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
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->remoteSearchFuture:Ljava/util/concurrent/Future;

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
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-object v4, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activityListener:Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

    .line 68
    .line 69
    iget-object v5, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

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
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getStateSnapshot()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->focusedMessage:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->FLAGGED:Lnet/thunderbird/core/common/mail/Flag;

    .line 14
    .line 15
    iget-boolean v2, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->starred:Z

    .line 16
    .line 17
    xor-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1, v2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->setFlag(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onToggleRead()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getStateSnapshot()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->focusedMessage:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 14
    .line 15
    iget-boolean v2, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->starred:Z

    .line 16
    .line 17
    xor-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1, v2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->setFlag(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLegacyViewModel()Lcom/fsck/k9/ui/messagelist/MessageListViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iget-object p2, p2, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->messageListLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/16 v2, 0xd

    .line 17
    .line 18
    invoke-direct {v1, v2, p0}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;

    .line 22
    .line 23
    const/4 v3, 0x6

    .line 24
    invoke-direct {v2, v3, v1}, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    new-instance v0, Landroidx/fragment/app/FragmentManager$2;

    .line 35
    .line 36
    const/4 v1, 0x5

    .line 37
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/FragmentManager$2;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p2, v0, v1}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/fragment/app/FragmentManager$2;Landroidx/lifecycle/LifecycleOwner;)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->error:Lcom/fsck/k9/ui/messagelist/MessageListFragment$Error;

    .line 48
    .line 49
    if-nez p2, :cond_9

    .line 50
    .line 51
    iget-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 52
    .line 53
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 58
    .line 59
    check-cast p2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget-object p2, p2, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 66
    .line 67
    iget-object p2, p2, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 68
    .line 69
    iget-boolean p2, p2, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isShowComposeButtonOnMessageList:Z

    .line 70
    .line 71
    iput-boolean p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isShowFloatingActionButton:Z

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    const/16 v1, 0x8

    .line 75
    .line 76
    const v2, 0x7f0901f7

    .line 77
    .line 78
    .line 79
    if-eqz p2, :cond_0

    .line 80
    .line 81
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 86
    .line 87
    new-instance v3, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;

    .line 88
    .line 89
    invoke-direct {v3, v0, p0}, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 93
    .line 94
    invoke-static {p2, v3}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 95
    .line 96
    .line 97
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda15;

    .line 98
    .line 99
    const/4 v4, 0x2

    .line 100
    invoke-direct {v3, p0, v4}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda15;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 126
    .line 127
    new-instance v2, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda19;

    .line 128
    .line 129
    const/4 v3, 0x0

    .line 130
    invoke-direct {v2, p1, v3}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda19;-><init>(Landroid/view/View;I)V

    .line 131
    .line 132
    .line 133
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 134
    .line 135
    invoke-static {p2, v2}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 139
    .line 140
    if-nez p1, :cond_1

    .line 141
    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    const p2, 0x7f0902a6

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 154
    .line 155
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 156
    .line 157
    :cond_1
    if-eqz p1, :cond_8

    .line 158
    .line 159
    sget-object p2, Lcom/google/android/material/snackbar/Snackbar;->SNACKBAR_CONTENT_STYLE_ATTRS:[I

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    const v2, 0x7f120200

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    const/16 v2, 0x2710

    .line 173
    .line 174
    invoke-static {p1, p2, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    new-instance p2, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda15;

    .line 179
    .line 180
    invoke-direct {p2, p0, v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda15;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V

    .line 181
    .line 182
    .line 183
    const v2, 0x7f1201ff

    .line 184
    .line 185
    .line 186
    iget-object v4, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 187
    .line 188
    invoke-virtual {v4, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    iget-object v4, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 193
    .line 194
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    check-cast v4, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 199
    .line 200
    invoke-virtual {v4}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    if-nez v5, :cond_2

    .line 209
    .line 210
    iput-boolean v0, p1, Lcom/google/android/material/snackbar/Snackbar;->hasAction:Z

    .line 211
    .line 212
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    new-instance v0, Lcom/google/android/material/snackbar/Snackbar$$ExternalSyntheticLambda0;

    .line 219
    .line 220
    invoke-direct {v0, v3, p1, p2}, Lcom/google/android/material/snackbar/Snackbar$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    .line 229
    .line 230
    const/4 p2, 0x0

    .line 231
    invoke-virtual {v4, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .line 233
    .line 234
    iput-boolean v3, p1, Lcom/google/android/material/snackbar/Snackbar;->hasAction:Z

    .line 235
    .line 236
    :goto_1
    new-instance p2, Lcom/fsck/k9/ui/messagelist/MessageListFragment$initializeRecentChangesSnackbar$2;

    .line 237
    .line 238
    invoke-direct {p2, v3, p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$initializeRecentChangesSnackbar$2;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 239
    .line 240
    .line 241
    iget-object v0, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/ArrayList;

    .line 242
    .line 243
    if-nez v0, :cond_3

    .line 244
    .line 245
    new-instance v0, Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .line 249
    .line 250
    iput-object v0, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/ArrayList;

    .line 251
    .line 252
    :cond_3
    iget-object v0, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->recentChangesSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 258
    .line 259
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->recentChangesViewModel$delegate:Lkotlin/Lazy;

    .line 260
    .line 261
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    check-cast p1, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel;

    .line 266
    .line 267
    iget-object p1, p1, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel;->shouldShowRecentChangesHint:Landroidx/lifecycle/CoroutineLiveData;

    .line 268
    .line 269
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 270
    .line 271
    .line 272
    move-result-object p2

    .line 273
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->shouldShowRecentChangesHintObserver:Landroidx/camera/core/impl/LiveDataObservable$$ExternalSyntheticLambda3;

    .line 274
    .line 275
    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 276
    .line 277
    .line 278
    iget-boolean p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleAccountMode:Z

    .line 279
    .line 280
    sget-object p2, Lnet/thunderbird/core/android/account/SortType;->SORT_DATE:Lnet/thunderbird/core/android/account/SortType;

    .line 281
    .line 282
    if-eqz p1, :cond_7

    .line 283
    .line 284
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 285
    .line 286
    if-eqz p1, :cond_6

    .line 287
    .line 288
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->sortAscending:Ljava/util/Map;

    .line 289
    .line 290
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 291
    .line 292
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 293
    .line 294
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    check-cast v1, Ljava/lang/Boolean;

    .line 299
    .line 300
    if-eqz v1, :cond_4

    .line 301
    .line 302
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    goto :goto_2

    .line 307
    :cond_4
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 308
    .line 309
    iget-boolean v1, v1, Lnet/thunderbird/core/android/account/SortType;->isDefaultAscending:Z

    .line 310
    .line 311
    :goto_2
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object p2

    .line 315
    check-cast p2, Ljava/lang/Boolean;

    .line 316
    .line 317
    if-eqz p2, :cond_5

    .line 318
    .line 319
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    :cond_5
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 324
    .line 325
    iput-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortAscending:Z

    .line 326
    .line 327
    iput-boolean v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortDateAscending:Z

    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_6
    const-string p0, "Required value was null."

    .line 331
    .line 332
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    return-void

    .line 336
    :cond_7
    invoke-static {}, Lcom/fsck/k9/K9;->getSortType()Lnet/thunderbird/core/android/account/SortType;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 341
    .line 342
    invoke-static {v0}, Lcom/fsck/k9/K9;->isSortAscending(Lnet/thunderbird/core/android/account/SortType;)Z

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    invoke-static {p2}, Lcom/fsck/k9/K9;->isSortAscending(Lnet/thunderbird/core/android/account/SortType;)Z

    .line 347
    .line 348
    .line 349
    move-result p2

    .line 350
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 351
    .line 352
    iput-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortAscending:Z

    .line 353
    .line 354
    iput-boolean p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortDateAscending:Z

    .line 355
    .line 356
    :goto_3
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 357
    .line 358
    .line 359
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 360
    .line 361
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLegacyViewModel()Lcom/fsck/k9/ui/messagelist/MessageListViewModel;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->messageSortOverrides:Ljava/util/LinkedList;

    .line 366
    .line 367
    invoke-static {p0}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/List;)Ljava/util/Map;

    .line 368
    .line 369
    .line 370
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    return-void

    .line 374
    :cond_8
    const-string p0, "Coordinator layout not initialized"

    .line 375
    .line 376
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    return-void

    .line 380
    :cond_9
    const p2, 0x7f0902aa

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 388
    .line 389
    iget-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->error:Lcom/fsck/k9/ui/messagelist/MessageListFragment$Error;

    .line 390
    .line 391
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    const p2, 0x7f120446

    .line 395
    .line 396
    .line 397
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object p0

    .line 401
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    .line 403
    .line 404
    return-void
.end method

.method public final progress(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x4

    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const-string p0, "fragmentListener"

    .line 20
    .line 21
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    throw p0
.end method

.method public final remoteSearchFinished()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->remoteSearchFuture:Ljava/util/concurrent/Future;

    .line 3
    .line 4
    return-void
.end method

.method public final resetActionMode$1()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-lt v0, v1, :cond_6

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isActive:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getSelectedMessagesCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 19
    .line 20
    if-nez v0, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->actionModeCallback:Lcom/google/zxing/BinaryBitmap;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object v2, v0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-interface {v2}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->collapseSearchView$1()V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDelegate;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    const-string p0, "fragmentListener"

    .line 55
    .line 56
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :cond_3
    return-void

    .line 61
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 66
    .line 67
    .line 68
    :cond_5
    iput-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 69
    .line 70
    :cond_6
    return-void
.end method

.method public final setActive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isActive:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->resetActionMode$1()V

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
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

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
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activeMessage:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getStateSnapshot()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMessages()Lkotlinx/collections/immutable/ImmutableList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v3, v1

    .line 27
    check-cast v3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 28
    .line 29
    iget-object v3, v3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->messageReference:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    move-object v2, v1

    .line 44
    :cond_2
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getViewModel()Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$SetMessageActive;

    .line 51
    .line 52
    invoke-direct {p1, v2}, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$SetMessageActive;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->event(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final setFlag(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/core/common/mail/Flag;Z)V
    .locals 3

    .line 1
    iget-object v0, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->account:Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->showingThreadedList:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->threadCount:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-gt v1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void

    .line 14
    :cond_1
    :goto_0
    iget-object p1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->id:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget-object p1, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/Account;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 25
    .line 26
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->setFlag(Lnet/thunderbird/feature/account/AccountId;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final showDialog$2(I)V
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
    iget-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activeMessages:Ljava/util/List;

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
    iget-object v5, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activeMessages:Ljava/util/List;

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

.method public final toggleMessageSelect()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getStateSnapshot()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->focusedMessage:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getViewModel()Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$ToggleSelectMessages;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$ToggleSelectMessages;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->event(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final updateFooterText(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getViewModel()Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdateFooter;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdateFooter;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->event(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final updateFooterText$1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->initialMessageListLoad:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-boolean v2, v2, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->isManualSearch:Z

    .line 16
    .line 17
    if-nez v2, :cond_5

    .line 18
    .line 19
    if-eqz v0, :cond_5

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-boolean v2, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->loading:Z

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    const v0, 0x7f120623

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-boolean v0, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->moreMessages:Z

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    iget v0, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->displayCount:I

    .line 42
    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    const v0, 0x7f12044b

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    goto :goto_0

    .line 53
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/4 v1, 0x1

    .line 58
    new-array v1, v1, [Ljava/lang/Object;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    aput-object v0, v1, v2

    .line 62
    .line 63
    const v0, 0x7f12039c

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :cond_5
    :goto_0
    invoke-virtual {p0, v3}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->updateFooterText(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final updateTitle()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->error:Lcom/fsck/k9/ui/messagelist/MessageListFragment$Error;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

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
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isInitialized:Z

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
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

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
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

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
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

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
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isThreadDisplay:Z

    .line 105
    .line 106
    if-eqz v2, :cond_7

    .line 107
    .line 108
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->threadTitle:Ljava/lang/String;

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
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isSingleFolderMode:Z

    .line 116
    .line 117
    if-eqz v2, :cond_8

    .line 118
    .line 119
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

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
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 130
    .line 131
    const/4 v3, 0x1

    .line 132
    if-eqz v2, :cond_a

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

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
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getAccountManager$2()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

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
    iget-object v4, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

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
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

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
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

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
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activityListener:Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

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
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activityListener:Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

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
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

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

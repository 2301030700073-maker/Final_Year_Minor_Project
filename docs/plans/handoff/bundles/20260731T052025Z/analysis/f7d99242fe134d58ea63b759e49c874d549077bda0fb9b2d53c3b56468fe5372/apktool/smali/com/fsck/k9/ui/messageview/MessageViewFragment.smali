.class public final Lcom/fsck/k9/ui/messageview/MessageViewFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/fragment/ConfirmationDialogFragment$ConfirmationDialogFragmentListener;
.implements Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;


# instance fields
.field public account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final accountManager$delegate:Lkotlin/Lazy;

.field public final appNameProvider$delegate:Lkotlin/Lazy;

.field public final attachmentListBottomSheetState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final chooseFolderForCopyLauncher:Landroidx/fragment/app/Fragment$10;

.field public final chooseFolderForMoveLauncher:Landroidx/fragment/app/Fragment$10;

.field public final createDocumentLauncher:Landroidx/fragment/app/Fragment$10;

.field public currentAttachmentViewInfo:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

.field public destinationFolderId:Ljava/lang/Long;

.field public final featureFlagProvider$delegate:Lkotlin/Lazy;

.field public final fileNameSuggester$delegate:Lkotlin/Lazy;

.field public fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

.field public final generalSettingsManager$delegate:Lkotlin/Lazy;

.field public isActive:Z

.field public isDeleteMenuItemDisabled:Z

.field public mMessageViewInfo:Lcom/fsck/k9/mailstore/MessageViewInfo;

.field public message:Lcom/fsck/k9/mailstore/LocalMessage;

.field public final messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

.field public messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

.field public final messageExporter$delegate:Lkotlin/Lazy;

.field public final messageHeaderClickListener:Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

.field public final messageLoaderCallbacks:Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

.field public messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

.field public final messageLoaderHelperFactory$delegate:Lkotlin/Lazy;

.field public final messageReaderViewModel$delegate:Lkotlin/Lazy;

.field public messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

.field public messageTopView:Lcom/fsck/k9/ui/messageview/MessageTopView;

.field public final messagingController$delegate:Lkotlin/Lazy;

.field public final outboxFolderManager$delegate:Lkotlin/Lazy;

.field public pendingEmlExport:Z

.field public preferredUnsubscribeUri:Lcom/fsck/k9/helper/UnsubscribeUri;

.field public final shareIntentBuilder$delegate:Lkotlin/Lazy;

.field public showAccountIndicator:Z

.field public showProgressThreshold:Ljava/lang/Long;

.field public final themeManager$delegate:Lkotlin/Lazy;

.field public final themeProvider$delegate:Lkotlin/Lazy;

.field public wasMessageMarkedAsOpened:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->themeManager$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    invoke-direct {v0, p0, v3}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->themeProvider$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;

    .line 31
    .line 32
    const/4 v3, 0x5

    .line 33
    invoke-direct {v0, p0, v3}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageLoaderHelperFactory$delegate:Lkotlin/Lazy;

    .line 41
    .line 42
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;

    .line 43
    .line 44
    const/4 v3, 0x6

    .line 45
    invoke-direct {v0, p0, v3}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->accountManager$delegate:Lkotlin/Lazy;

    .line 53
    .line 54
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;

    .line 55
    .line 56
    const/4 v3, 0x7

    .line 57
    invoke-direct {v0, p0, v3}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messagingController$delegate:Lkotlin/Lazy;

    .line 65
    .line 66
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;

    .line 67
    .line 68
    const/16 v3, 0x8

    .line 69
    .line 70
    invoke-direct {v0, p0, v3}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->shareIntentBuilder$delegate:Lkotlin/Lazy;

    .line 78
    .line 79
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;

    .line 80
    .line 81
    const/16 v4, 0x9

    .line 82
    .line 83
    invoke-direct {v0, p0, v4}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 91
    .line 92
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;

    .line 93
    .line 94
    const/16 v4, 0xa

    .line 95
    .line 96
    invoke-direct {v0, p0, v4}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V

    .line 97
    .line 98
    .line 99
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->outboxFolderManager$delegate:Lkotlin/Lazy;

    .line 104
    .line 105
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;

    .line 106
    .line 107
    const/16 v4, 0xb

    .line 108
    .line 109
    invoke-direct {v0, p0, v4}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V

    .line 110
    .line 111
    .line 112
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->featureFlagProvider$delegate:Lkotlin/Lazy;

    .line 117
    .line 118
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;

    .line 119
    .line 120
    const/4 v4, 0x1

    .line 121
    invoke-direct {v0, p0, v4}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V

    .line 122
    .line 123
    .line 124
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->appNameProvider$delegate:Lkotlin/Lazy;

    .line 129
    .line 130
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;

    .line 131
    .line 132
    const/16 v5, 0xc

    .line 133
    .line 134
    invoke-direct {v0, p0, v5}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V

    .line 135
    .line 136
    .line 137
    new-instance v5, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 138
    .line 139
    const/16 v6, 0x15

    .line 140
    .line 141
    invoke-direct {v5, v6, p0, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 145
    .line 146
    invoke-static {v0, v5}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageReaderViewModel$delegate:Lkotlin/Lazy;

    .line 151
    .line 152
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;

    .line 153
    .line 154
    invoke-direct {v0, v3}, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;-><init>(I)V

    .line 155
    .line 156
    .line 157
    new-instance v3, Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda1;

    .line 158
    .line 159
    invoke-direct {v3, p0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v3, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lcom/fsck/k9/sasl/OAuthBearer;)Landroidx/fragment/app/Fragment$10;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->createDocumentLauncher:Landroidx/fragment/app/Fragment$10;

    .line 167
    .line 168
    new-instance v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract;

    .line 169
    .line 170
    sget-object v1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;->COPY:Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;

    .line 171
    .line 172
    invoke-direct {v0, v1}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract;-><init>(Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;)V

    .line 173
    .line 174
    .line 175
    new-instance v1, Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda1;

    .line 176
    .line 177
    invoke-direct {v1, p0, v4}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lcom/fsck/k9/sasl/OAuthBearer;)Landroidx/fragment/app/Fragment$10;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->chooseFolderForCopyLauncher:Landroidx/fragment/app/Fragment$10;

    .line 185
    .line 186
    new-instance v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract;

    .line 187
    .line 188
    sget-object v1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;->MOVE:Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;

    .line 189
    .line 190
    invoke-direct {v0, v1}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract;-><init>(Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$Action;)V

    .line 191
    .line 192
    .line 193
    new-instance v1, Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda1;

    .line 194
    .line 195
    const/4 v3, 0x2

    .line 196
    invoke-direct {v1, p0, v3}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lcom/fsck/k9/sasl/OAuthBearer;)Landroidx/fragment/app/Fragment$10;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->chooseFolderForMoveLauncher:Landroidx/fragment/app/Fragment$10;

    .line 204
    .line 205
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;

    .line 206
    .line 207
    invoke-direct {v0, p0, v3}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V

    .line 208
    .line 209
    .line 210
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageExporter$delegate:Lkotlin/Lazy;

    .line 215
    .line 216
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;

    .line 217
    .line 218
    const/4 v1, 0x3

    .line 219
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V

    .line 220
    .line 221
    .line 222
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->fileNameSuggester$delegate:Lkotlin/Lazy;

    .line 227
    .line 228
    iput-boolean v4, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showAccountIndicator:Z

    .line 229
    .line 230
    sget-object v0, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->EMPTY:Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    .line 231
    .line 232
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->attachmentListBottomSheetState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 237
    .line 238
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

    .line 239
    .line 240
    invoke-direct {v0, p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)V

    .line 241
    .line 242
    .line 243
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageHeaderClickListener:Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

    .line 244
    .line 245
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

    .line 246
    .line 247
    invoke-direct {v0, p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)V

    .line 248
    .line 249
    .line 250
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

    .line 251
    .line 252
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

    .line 253
    .line 254
    invoke-direct {v0, p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)V

    .line 255
    .line 256
    .line 257
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageLoaderCallbacks:Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

    .line 258
    .line 259
    return-void
.end method


# virtual methods
.method public final delete()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->isDeleteMenuItemDisabled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->performNavigationAfterMessageRemoval()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessagingController$3()Lcom/fsck/k9/controller/MessagingController;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    new-instance v1, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda9;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-direct {v1, v0, v2}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda9;-><init>(Lcom/fsck/k9/controller/MessagingController;Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0, v1}, Lcom/fsck/k9/controller/MessagingController;->actOnMessagesGroupedByAccountAndFolder(Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    const-string p0, "fragmentListener"

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

.method public final dialogCancelled(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final doNegativeClick(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final doPositiveClick(I)V
    .locals 2

    .line 1
    const v0, 0x7f09019b

    .line 2
    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->delete()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const v0, 0x7f09019f

    .line 11
    .line 12
    .line 13
    if-ne p1, v0, :cond_2

    .line 14
    .line 15
    iget-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->destinationFolderId:Ljava/lang/Long;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->refileMessage(J)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->destinationFolderId:Ljava/lang/Long;

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const-string p0, "Required value was null."

    .line 31
    .line 32
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public final getGeneralSettingsManager$4()Lnet/thunderbird/core/preference/GeneralSettingsManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->generalSettingsManager$delegate:Lkotlin/Lazy;

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

.method public final getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "messageReference"

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

.method public final getMessagingController$3()Lcom/fsck/k9/controller/MessagingController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messagingController$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/controller/MessagingController;

    .line 8
    .line 9
    return-object p0
.end method

.method public final isOutbox$1()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v0, v0, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 6
    .line 7
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->outboxFolderManager$delegate:Lkotlin/Lazy;

    .line 8
    .line 9
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 20
    .line 21
    invoke-static {v2, p0}, Lkotlinx/io/Sink$-CC;->getOutboxFolderIdSync$default(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/feature/account/AccountId;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    cmp-long p0, v0, v2

    .line 26
    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :cond_1
    const-string p0, "account"

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

.method public final markMessageAsOpened()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->wasMessageMarkedAsOpened:Z

    .line 7
    .line 8
    if-nez v1, :cond_4

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessagingController$3()Lcom/fsck/k9/controller/MessagingController;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 15
    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    iget-object v3, v1, Lcom/fsck/k9/controller/MessagingController;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    new-instance v4, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 21
    .line 22
    const/16 v5, 0x11

    .line 23
    .line 24
    invoke-direct {v4, v1, v2, v0, v5}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    sget-object v3, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 31
    .line 32
    iget-object v4, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 33
    .line 34
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x1

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isMarkMessageAsReadOnView()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlagInternal(Lnet/thunderbird/core/common/mail/Flag;)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v3

    .line 53
    const/4 v6, 0x0

    .line 54
    new-array v6, v6, [Ljava/lang/Object;

    .line 55
    .line 56
    const-string v7, "Error while marking message as read"

    .line 57
    .line 58
    invoke-static {v3, v7, v6}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    iget-wide v6, v0, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 62
    .line 63
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    sget-object v6, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 72
    .line 73
    invoke-static {v2, v3, v6, v5}, Lcom/fsck/k9/controller/MessagingController;->setFlagInCache(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 74
    .line 75
    .line 76
    :cond_2
    new-instance v3, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda5;

    .line 77
    .line 78
    invoke-direct {v3, v1, v2, v0, v4}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda5;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalMessage;Z)V

    .line 79
    .line 80
    .line 81
    const-string v0, "markMessageAsOpened"

    .line 82
    .line 83
    invoke-virtual {v1, v0, v3}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 84
    .line 85
    .line 86
    :goto_1
    iput-boolean v5, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->wasMessageMarkedAsOpened:Z

    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    const-string p0, "account"

    .line 90
    .line 91
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const/4 p0, 0x0

    .line 95
    throw p0

    .line 96
    :cond_4
    :goto_2
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    and-int/lit16 v0, p1, 0x100

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "messageLoaderHelper"

    .line 5
    .line 6
    const/16 v3, 0x100

    .line 7
    .line 8
    if-ne v0, v3, :cond_1

    .line 9
    .line 10
    xor-int/2addr p1, v3

    .line 11
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/activity/MessageLoaderHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v1

    .line 23
    :cond_1
    and-int/lit16 p3, p1, 0x200

    .line 24
    .line 25
    const/16 v0, 0x200

    .line 26
    .line 27
    if-ne p3, v0, :cond_7

    .line 28
    .line 29
    xor-int/2addr p1, v0

    .line 30
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    .line 31
    .line 32
    if-eqz p0, :cond_6

    .line 33
    .line 34
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

    .line 35
    .line 36
    const/16 p3, 0x7b

    .line 37
    .line 38
    if-ne p1, p3, :cond_3

    .line 39
    .line 40
    const/4 p1, -0x1

    .line 41
    if-eq p2, p1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->restartMessageCryptoProcessing()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    const/16 p2, 0x7c

    .line 49
    .line 50
    if-ne p1, p2, :cond_5

    .line 51
    .line 52
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 55
    .line 56
    if-eqz p0, :cond_4

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->startOrResumeLocalMessageLoader()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v1

    .line 66
    :cond_5
    const-string p0, "got an activity result that wasn\'t meant for us. this is a bug!"

    .line 67
    .line 68
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_6
    const-string p0, "messageCryptoPresenter"

    .line 73
    .line 74
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v1

    .line 78
    :cond_7
    :goto_0
    return-void
.end method

.method public final onArchive()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->hasArchiveFolder()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessagingController$3()Lcom/fsck/k9/controller/MessagingController;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Lcom/fsck/k9/controller/MessagingController;->isMoveCapable(Lapp/k9mail/legacy/message/controller/MessageReference;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const v0, 0x7f12047f

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->performNavigationAfterMessageRemoval()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessagingController$3()Lcom/fsck/k9/controller/MessagingController;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingController;->archiveOperations:Lcom/beetstra/jutf7/Base64Util;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {p0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v0, p0}, Lcom/beetstra/jutf7/Base64Util;->archiveMessages(Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    const-string p0, "fragmentListener"

    .line 72
    .line 73
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v1

    .line 77
    :cond_3
    const-string p0, "account"

    .line 78
    .line 79
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v1
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    check-cast p1, Lcom/fsck/k9/activity/MessageHomeActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    new-instance p0, Ljava/lang/ClassCastException;

    .line 20
    .line 21
    const-string p1, "This fragment must be attached to a MessageViewFragmentListener"

    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public final onCopy()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessagingController$3()Lcom/fsck/k9/controller/MessagingController;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "account"

    .line 9
    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lcom/fsck/k9/backend/api/Backend;->getSupportsCopy()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessagingController$3()Lcom/fsck/k9/controller/MessagingController;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->isMoveCapable(Lapp/k9mail/legacy/message/controller/MessageReference;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const v0, 0x7f12047f

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    new-instance v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Input;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    iget-object v1, v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    iget-wide v4, v4, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 69
    .line 70
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 75
    .line 76
    if-eqz v5, :cond_1

    .line 77
    .line 78
    invoke-virtual {v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getLastSelectedFolderId()Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Input;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->chooseFolderForCopyLauncher:Landroidx/fragment/app/Fragment$10;

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v2

    .line 99
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v2

    .line 103
    :cond_3
    const-string p0, "Required value was null."

    .line 104
    .line 105
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_4
    const-string p0, "Check failed."

    .line 110
    .line 111
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v2
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->setMenuVisibility(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    const-string v2, "reference"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-static {v1}, Lkotlin/math/MathKt;->parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_4

    .line 27
    .line 28
    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    const-string v2, "showAccountIndicator"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput-boolean v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showAccountIndicator:Z

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    const-string/jumbo v1, "wasMessageMarkedAsOpened"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iput-boolean v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->wasMessageMarkedAsOpened:Z

    .line 52
    .line 53
    const-string v1, "isActive"

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput-boolean p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->isActive:Z

    .line 60
    .line 61
    :cond_2
    new-instance p1, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

    .line 64
    .line 65
    invoke-direct {p1, v1}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    .line 69
    .line 70
    iget-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageLoaderHelperFactory$delegate:Lkotlin/Lazy;

    .line 71
    .line 72
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/fsck/k9/activity/MessageLoaderHelperFactory;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManagerImpl;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    iget-object v6, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageLoaderCallbacks:Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    iget-object v1, p1, Lcom/fsck/k9/activity/MessageLoaderHelperFactory;->messageReaderHtmlSettingsProvider:Lnet/thunderbird/feature/mail/message/reader/impl/html/DefaultMessageReaderHtmlSettingsProvider;

    .line 106
    .line 107
    invoke-virtual {v1}, Lnet/thunderbird/feature/mail/message/reader/impl/html/DefaultMessageReaderHtmlSettingsProvider;->create()Lnet/thunderbird/core/common/mail/html/HtmlSettings;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iget-object p1, p1, Lcom/fsck/k9/activity/MessageLoaderHelperFactory;->messageViewInfoExtractorFactory:Lcom/fsck/k9/mailstore/MessageViewInfoExtractorFactory;

    .line 112
    .line 113
    invoke-virtual {p1, v1}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractorFactory;->create(Lnet/thunderbird/core/common/mail/html/HtmlSettings;)Lcom/fsck/k9/backend/imap/ImapSync;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    new-instance v2, Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 118
    .line 119
    invoke-direct/range {v2 .. v7}, Lcom/fsck/k9/activity/MessageLoaderHelper;-><init>(Landroid/content/Context;Landroidx/loader/app/LoaderManagerImpl;Landroidx/fragment/app/FragmentManager;Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;Lcom/fsck/k9/backend/imap/ImapSync;)V

    .line 120
    .line 121
    .line 122
    iput-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 123
    .line 124
    new-instance v3, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;

    .line 125
    .line 126
    const/4 v9, 0x0

    .line 127
    const/4 v10, 0x0

    .line 128
    const/4 v4, 0x2

    .line 129
    const-class v6, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 130
    .line 131
    const-string v7, "onMessageDetailsResult"

    .line 132
    .line 133
    const-string v8, "onMessageDetailsResult(Ljava/lang/String;Landroid/os/Bundle;)V"

    .line 134
    .line 135
    move-object v5, p0

    .line 136
    invoke-direct/range {v3 .. v10}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    new-instance p1, Landroidx/fragment/app/FragmentKt$$ExternalSyntheticLambda0;

    .line 144
    .line 145
    invoke-direct {p1, v0, v3}, Landroidx/fragment/app/FragmentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    const-string v0, "messageDetailsResult"

    .line 149
    .line 150
    invoke-virtual {p0, v0, v5, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_3
    const-string p0, "Missing argument: \'showAccountIndicator\'"

    .line 155
    .line 156
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_4
    const-string p0, "Invalid argument \'reference\'"

    .line 161
    .line 162
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->themeManager$delegate:Lkotlin/Lazy;

    .line 5
    .line 6
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 11
    .line 12
    iget-object v1, v0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 13
    .line 14
    check-cast v1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v1, v1, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 21
    .line 22
    iget-object v1, v1, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 23
    .line 24
    iget-object v1, v1, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->messageViewTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->getSubThemeResourceId(Lnet/thunderbird/core/preference/SubTheme;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const v0, 0x7f0c02c3

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const p2, 0x7f0902b4

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    check-cast p2, Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 62
    .line 63
    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageTopView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 64
    .line 65
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showAccountIndicator:Z

    .line 66
    .line 67
    invoke-virtual {p2, v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setShowAccountIndicator(Z)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Lcom/fsck/k9/ui/helper/SizeFormatter;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v2}, Lcom/fsck/k9/ui/helper/SizeFormatter;-><init>(Landroid/content/res/Resources;)V

    .line 80
    .line 81
    .line 82
    const v2, 0x7f090086

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Landroidx/compose/ui/platform/ComposeView;

    .line 90
    .line 91
    sget-object v3, Landroidx/compose/ui/platform/AndroidFontResourceLoader;->INSTANCE:Landroidx/compose/ui/platform/AndroidFontResourceLoader;

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Landroidx/compose/ui/platform/AbstractComposeView;->setViewCompositionStrategy(Landroidx/compose/ui/platform/ViewCompositionStrategy;)V

    .line 94
    .line 95
    .line 96
    new-instance v3, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;

    .line 97
    .line 98
    const/16 v4, 0x8

    .line 99
    .line 100
    invoke-direct {v3, v4, p0, v0}, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 104
    .line 105
    const v4, -0x41524492    # -0.3393206f

    .line 106
    .line 107
    .line 108
    const/4 v5, 0x1

    .line 109
    invoke-direct {v0, v4, v3, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setAttachmentCallback(Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageReaderViewModel$delegate:Lkotlin/Lazy;

    .line 119
    .line 120
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;

    .line 125
    .line 126
    invoke-virtual {p2, v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setMessageReaderViewModel(Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    .line 130
    .line 131
    if-eqz v0, :cond_0

    .line 132
    .line 133
    invoke-virtual {p2, v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setMessageCryptoPresenter(Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;)V

    .line 134
    .line 135
    .line 136
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda5;

    .line 137
    .line 138
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda5;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setOnToggleFlagClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageHeaderClickListener:Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

    .line 145
    .line 146
    invoke-virtual {p2, v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setMessageHeaderClickListener(Lcom/fsck/k9/ui/messageview/MessageHeaderClickListener;)V

    .line 147
    .line 148
    .line 149
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda5;

    .line 150
    .line 151
    invoke-direct {v0, p0, v5}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda5;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setOnDownloadButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    return-object p1

    .line 158
    :cond_0
    const-string p0, "messageCryptoPresenter"

    .line 159
    .line 160
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const/4 p0, 0x0

    .line 164
    throw p0
.end method

.method public final onDelete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getGeneralSettingsManager$4()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v1, v1, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 16
    .line 17
    iget-boolean v1, v1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDelete:Z

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getGeneralSettingsManager$4()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v1, v1, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 32
    .line 33
    iget-boolean v1, v1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDeleteStarred:Z

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->FLAGGED:Lnet/thunderbird/core/common/mail/Flag;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 40
    .line 41
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->delete()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    :goto_0
    const v0, 0x7f09019b

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showDialog$3(I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    const-string p0, "Required value was null."

    .line 60
    .line 61
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    const-string v0, "messageLoaderHelper"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManagerImpl;->destroyLoader(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v1, v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callbackLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v1

    .line 34
    :try_start_0
    iput-object v2, v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$1;

    .line 35
    .line 36
    monitor-exit v1

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0

    .line 41
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    .line 42
    .line 43
    iput-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->context:Landroid/content/Context;

    .line 44
    .line 45
    iput-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 46
    .line 47
    iput-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v2

    .line 54
    :cond_2
    if-eqz p0, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->cancelIfRunning()V

    .line 61
    .line 62
    .line 63
    :cond_3
    iput-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    .line 64
    .line 65
    iput-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->context:Landroid/content/Context;

    .line 66
    .line 67
    iput-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 68
    .line 69
    iput-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v2
.end method

.method public final onEditAsNewMessage$1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalMessage;->makeMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroidx/room/util/SchemaInfoUtilKt;->actionEditDraft(Landroid/content/Context;Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p0, "fragmentListener"

    .line 21
    .line 22
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    throw p0

    .line 27
    :cond_1
    const-string p0, "Required value was null."

    .line 28
    .line 29
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onForward$1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalMessage;->makeMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->getDecryptionResultForReply()Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance v2, Landroid/content/Intent;

    .line 26
    .line 27
    const-class v3, Lcom/fsck/k9/activity/MessageCompose;

    .line 28
    .line 29
    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    const-string v3, "message_reference"

    .line 33
    .line 34
    invoke-virtual {v0}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    const-string v0, "message_decryption_result"

    .line 42
    .line 43
    invoke-virtual {v2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    const-string p0, "com.fsck.k9.intent.action.FORWARD"

    .line 47
    .line 48
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    const-string p0, "messageCryptoPresenter"

    .line 56
    .line 57
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v2

    .line 61
    :cond_1
    const-string p0, "fragmentListener"

    .line 62
    .line 63
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v2

    .line 67
    :cond_2
    const-string p0, "Required value was null."

    .line 68
    .line 69
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final onForwardAsAttachment$1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalMessage;->makeMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->getDecryptionResultForReply()Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance v2, Landroid/content/Intent;

    .line 26
    .line 27
    const-class v3, Lcom/fsck/k9/activity/MessageCompose;

    .line 28
    .line 29
    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    const-string v3, "message_reference"

    .line 33
    .line 34
    invoke-virtual {v0}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    const-string v0, "message_decryption_result"

    .line 42
    .line 43
    invoke-virtual {v2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    const-string p0, "com.fsck.k9.intent.action.FORWARD_AS_ATTACHMENT"

    .line 47
    .line 48
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    const-string p0, "messageCryptoPresenter"

    .line 56
    .line 57
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v2

    .line 61
    :cond_1
    const-string p0, "fragmentListener"

    .line 62
    .line 63
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v2

    .line 67
    :cond_2
    const-string p0, "Required value was null."

    .line 68
    .line 69
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final onMove()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessagingController$3()Lcom/fsck/k9/controller/MessagingController;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "account"

    .line 9
    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lcom/fsck/k9/backend/api/Backend;->getSupportsMove()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessagingController$3()Lcom/fsck/k9/controller/MessagingController;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->isMoveCapable(Lapp/k9mail/legacy/message/controller/MessageReference;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const v0, 0x7f12047f

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    new-instance v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Input;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    iget-object v1, v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    iget-wide v4, v4, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 69
    .line 70
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 75
    .line 76
    if-eqz v5, :cond_1

    .line 77
    .line 78
    invoke-virtual {v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getLastSelectedFolderId()Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Input;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->chooseFolderForMoveLauncher:Landroidx/fragment/app/Fragment$10;

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v2

    .line 99
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v2

    .line 103
    :cond_3
    const-string p0, "Required value was null."

    .line 104
    .line 105
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_4
    const-string p0, "Check failed."

    .line 110
    .line 111
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v2
.end method

.method public final onReply$1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalMessage;->makeMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->getDecryptionResultForReply()Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {v1, v0, v2, p0}, Landroidx/room/util/SchemaInfoUtilKt;->actionReply(Landroid/content/Context;Lapp/k9mail/legacy/message/controller/MessageReference;ZLorg/openintents/openpgp/OpenPgpDecryptionResult;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const-string p0, "messageCryptoPresenter"

    .line 32
    .line 33
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v2

    .line 37
    :cond_2
    const-string p0, "fragmentListener"

    .line 38
    .line 39
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v2
.end method

.method public final onReplyAll$1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalMessage;->makeMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->getDecryptionResultForReply()Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-static {v1, v0, v2, p0}, Landroidx/room/util/SchemaInfoUtilKt;->actionReply(Landroid/content/Context;Lapp/k9mail/legacy/message/controller/MessageReference;ZLorg/openintents/openpgp/OpenPgpDecryptionResult;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const-string p0, "messageCryptoPresenter"

    .line 31
    .line 32
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v2

    .line 36
    :cond_1
    const-string p0, "fragmentListener"

    .line 37
    .line 38
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v2

    .line 42
    :cond_2
    const-string p0, "Required value was null."

    .line 43
    .line 44
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
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
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->markMessageAsOpened()V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->reloadOnResumeWithoutRecreateFlag:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->reloadOnResumeWithoutRecreateFlag:Z

    .line 17
    .line 18
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->restartMessageCryptoProcessing()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :cond_1
    const-string p0, "messageCryptoPresenter"

    .line 25
    .line 26
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    throw p0
.end method

.method public final onSaveAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V
    .locals 4

    .line 1
    const-string v0, "Invalid attachment type. The mimeType is null. Attachment = "

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->currentAttachmentViewInfo:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->createDocumentLauncher:Landroidx/fragment/app/Fragment$10;

    .line 9
    .line 10
    iget-object v2, p1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->displayName:Ljava/lang/String;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    const v2, 0x7f120654

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v3, p1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->mimeType:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    new-instance p1, Lapp/k9mail/core/android/common/activity/CreateDocumentResultContract$Input;

    .line 29
    .line 30
    invoke-direct {p1, v2, v3}, Lapp/k9mail/core/android/common/activity/CreateDocumentResultContract$Input;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :catch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const p1, 0x7f1202c4

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "wasMessageMarkedAsOpened"

    .line 2
    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->wasMessageMarkedAsOpened:Z

    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    const-string v0, "isActive"

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->isActive:Z

    .line 12
    .line 13
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onSendAlternate()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->shareIntentBuilder$delegate:Lkotlin/Lazy;

    .line 6
    .line 7
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/fsck/k9/ui/share/ShareIntentBuilder;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v2, v1, Lcom/fsck/k9/ui/share/ShareIntentBuilder;->resourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/fsck/k9/resources/K9CoreResourceProvider;->context:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/fsck/k9/message/extractors/TextPartFinder;->findFirstTextPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Part;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, ""

    .line 25
    .line 26
    if-eqz v3, :cond_3

    .line 27
    .line 28
    invoke-interface {v3}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-wide/16 v5, -0x1

    .line 36
    .line 37
    invoke-static {v3, v5, v6}, Lcom/fsck/k9/mail/internet/JisSupport;->getTextFromPart(Lcom/fsck/k9/mail/Part;J)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    if-nez v5, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-interface {v3}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v4, "text/html"

    .line 49
    .line 50
    invoke-static {v3, v4}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    invoke-static {v5}, Landroidx/work/OperationKt;->htmlToText(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move-object v4, v5

    .line 62
    :cond_3
    :goto_0
    iget-object v1, v1, Lcom/fsck/k9/ui/share/ShareIntentBuilder;->quoteDateFormatter:Lcom/fsck/k9/message/quote/QuoteDateFormatter;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSentDate()Ljava/util/Date;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v3}, Lcom/fsck/k9/message/quote/QuoteDateFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    iget-object v5, v0, Lcom/fsck/k9/mailstore/LocalMessage;->subject:Ljava/lang/String;

    .line 81
    .line 82
    const/16 v6, 0x20

    .line 83
    .line 84
    const/16 v7, 0xa

    .line 85
    .line 86
    if-eqz v5, :cond_4

    .line 87
    .line 88
    const v8, 0x7f120433

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-lez v5, :cond_5

    .line 115
    .line 116
    const v5, 0x7f120431

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    :cond_5
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    sget-object v5, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 146
    .line 147
    invoke-static {v1}, Lcom/fsck/k9/mail/K9MailLib;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    const/4 v8, 0x0

    .line 156
    if-nez v5, :cond_6

    .line 157
    .line 158
    move-object v1, v8

    .line 159
    :cond_6
    if-eqz v1, :cond_7

    .line 160
    .line 161
    const v5, 0x7f120430

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    :cond_7
    sget-object v1, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    invoke-static {v1}, Lcom/fsck/k9/mail/K9MailLib;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-nez v5, :cond_8

    .line 201
    .line 202
    move-object v1, v8

    .line 203
    :cond_8
    if-eqz v1, :cond_9

    .line 204
    .line 205
    const v5, 0x7f120434

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    :cond_9
    sget-object v1, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    invoke-static {v0}, Lcom/fsck/k9/mail/K9MailLib;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-nez v1, :cond_a

    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_a
    move-object v8, v0

    .line 248
    :goto_1
    if-eqz v8, :cond_b

    .line 249
    .line 250
    const v0, 0x7f12042f

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    :cond_b
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    new-instance v1, Landroid/content/Intent;

    .line 283
    .line 284
    const-string v2, "android.intent.action.SEND"

    .line 285
    .line 286
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    const-string v2, "text/plain"

    .line 290
    .line 291
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    .line 293
    .line 294
    const-string v2, "android.intent.extra.TEXT"

    .line 295
    .line 296
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    .line 298
    .line 299
    const v0, 0x7f120587

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 314
    .line 315
    .line 316
    return-void

    .line 317
    :cond_c
    const-string p0, "Required value was null."

    .line 318
    .line 319
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    return-void
.end method

.method public final onToggleRead()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->toggleFlag(Lnet/thunderbird/core/common/mail/Flag;)V

    .line 14
    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getGeneralSettingsManager$1()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 33
    .line 34
    iget-object v0, v0, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->messageViewPostMarkAsUnreadNavigation:Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    if-ne v0, v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->returnToMessageList()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    const-string p0, "fragmentListener"

    .line 54
    .line 55
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x0

    .line 59
    throw p0

    .line 60
    :cond_2
    return-void

    .line 61
    :cond_3
    const-string p0, "Required value was null."

    .line 62
    .line 63
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final onViewAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->currentAttachmentViewInfo:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 5
    .line 6
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessagingController$3()Lcom/fsck/k9/controller/MessagingController;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v0, v1, v2, p0, p1}, Lcom/fsck/k9/mailstore/LocalStore$7;-><init>(Landroid/content/Context;Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/ui/messageview/MessageViewFragment;Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 17
    .line 18
    .line 19
    iget-boolean p0, p1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->isContentAvailable:Z

    .line 20
    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    iget-object p0, p1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->part:Lcom/fsck/k9/mail/Part;

    .line 24
    .line 25
    check-cast p0, Lcom/fsck/k9/mailstore/LocalPart;

    .line 26
    .line 27
    new-instance p1, Lcom/fsck/k9/controller/MessagingController$1;

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    invoke-direct {p1, v1, v0}, Lcom/fsck/k9/controller/MessagingController$1;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0, p1}, Lcom/fsck/k9/mailstore/LocalStore$7;->downloadAttachment(Lcom/fsck/k9/mailstore/LocalPart;Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance p0, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    invoke-direct {p0, v0, p1}, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;-><init>(Lcom/fsck/k9/mailstore/LocalStore$7;I)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    new-array v0, v0, [Ljava/lang/Void;

    .line 47
    .line 48
    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

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
    const/4 v0, 0x6

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
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 p2, 0x1

    .line 26
    new-array p2, p2, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    aput-object p1, p2, v0

    .line 30
    .line 31
    const-string v0, "MessageViewFragment displaying message %s"

    .line 32
    .line 33
    invoke-static {v0, p2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->accountManager$delegate:Lkotlin/Lazy;

    .line 37
    .line 38
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 43
    .line 44
    iget-object v0, p1, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 45
    .line 46
    check-cast p2, Lcom/fsck/k9/Preferences;

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 55
    .line 56
    iget-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    if-eqz p2, :cond_1

    .line 60
    .line 61
    invoke-virtual {p2, p1, v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->asyncStartOrResumeLoadingMessage(Lapp/k9mail/legacy/message/controller/MessageReference;Landroid/os/Parcelable;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    if-eqz p0, :cond_0

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void

    .line 74
    :cond_1
    const-string p0, "messageLoaderHelper"

    .line 75
    .line 76
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_2
    const-string p0, "Account "

    .line 81
    .line 82
    const-string p1, " not found"

    .line 83
    .line 84
    invoke-static {v0, p1, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final refileMessage(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->performNavigationAfterMessageRemoval()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-wide v4, v0, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessagingController$3()Lcom/fsck/k9/controller/MessagingController;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    move-wide v7, p1

    .line 35
    invoke-virtual/range {v2 .. v8}, Lcom/fsck/k9/controller/MessagingController;->moveMessages(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;J)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const-string p0, "account"

    .line 40
    .line 41
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v1

    .line 45
    :cond_1
    const-string p0, "fragmentListener"

    .line 46
    .line 47
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v1
.end method

.method public final refreshAttachmentThumbnail(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageTopView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p0, :cond_3

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-eqz p0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    instance-of v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    check-cast p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachmentViewMap:Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void

    .line 37
    :cond_2
    const-string p0, "containerView"

    .line 38
    .line 39
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_3
    const-string p0, "messageTopView"

    .line 44
    .line 45
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method public final setMenuVisibility(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->isActive:Z

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->queuedPendingIntent:Landroid/app/PendingIntent;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->deliverResult()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :cond_1
    const-string p0, "messageLoaderHelper"

    .line 25
    .line 26
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    throw p0

    .line 31
    :cond_2
    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->wasMessageMarkedAsOpened:Z

    .line 33
    .line 34
    return-void
.end method

.method public final showDialog$3(I)V
    .locals 7

    .line 1
    const v0, 0x7f09019b

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    const v0, 0x7f120298

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const v2, 0x7f120297

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const v3, 0x7f120296

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const v4, 0x7f120295

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v0, v2, v3, v4}, Lcom/fsck/k9/fragment/ConfirmationDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/fragment/ConfirmationDialogFragment;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const v0, 0x7f09019f

    .line 53
    .line 54
    .line 55
    if-ne p1, v0, :cond_1

    .line 56
    .line 57
    const v0, 0x7f1202a3

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const v3, 0x7f100005

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    const v3, 0x7f1202a2

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    const v4, 0x7f1202a1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-static {p1, v0, v2, v3, v4}, Lcom/fsck/k9/fragment/ConfirmationDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/fragment/ConfirmationDialogFragment;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    goto :goto_0

    .line 106
    :cond_1
    const v0, 0x7f090199

    .line 107
    .line 108
    .line 109
    if-ne p1, v0, :cond_3

    .line 110
    .line 111
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->currentAttachmentViewInfo:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 112
    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    const v2, 0x7f12028d

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    iget-wide v3, v0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->size:J

    .line 126
    .line 127
    new-instance v0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;

    .line 128
    .line 129
    invoke-direct {v0}, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;-><init>()V

    .line 130
    .line 131
    .line 132
    new-instance v5, Landroid/os/Bundle;

    .line 133
    .line 134
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v6, "size"

    .line 138
    .line 139
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 140
    .line 141
    .line 142
    const-string v3, "message"

    .line 143
    .line 144
    invoke-virtual {v5, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 148
    .line 149
    .line 150
    :goto_0
    invoke-virtual {v0, p1, p0}, Landroidx/fragment/app/Fragment;->setTargetFragment(ILandroidx/fragment/app/Fragment;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 158
    .line 159
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    new-array v3, v1, [Ljava/lang/Object;

    .line 164
    .line 165
    const/4 v4, 0x0

    .line 166
    aput-object p1, v3, v4

    .line 167
    .line 168
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    const-string v1, "dialog-%d"

    .line 173
    .line 174
    invoke-static {v2, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_2
    const-string p0, "Required value was null."

    .line 183
    .line 184
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_3
    const-string p0, "Called showDialog(int) with unknown dialog id."

    .line 189
    .line 190
    invoke-static {p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    return-void
.end method

.method public final showMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v2, "input_method"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    if-eqz v0, :cond_1d

    .line 42
    .line 43
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageTopView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 44
    .line 45
    const-string v4, "messageTopView"

    .line 46
    .line 47
    if-eqz v3, :cond_1c

    .line 48
    .line 49
    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 50
    .line 51
    const-string v6, "account"

    .line 52
    .line 53
    if-eqz v5, :cond_1b

    .line 54
    .line 55
    iget-object v7, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 56
    .line 57
    iput-object v7, v0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 58
    .line 59
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->Companion:Lcom/fsck/k9/view/MessageCryptoDisplayStatus$Companion;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {v7}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus$Companion;->fromResultAnnotation(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget-object v7, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->DISABLED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 69
    .line 70
    const/4 v8, 0x1

    .line 71
    if-ne v0, v7, :cond_8

    .line 72
    .line 73
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageTopView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 74
    .line 75
    if-eqz v0, :cond_7

    .line 76
    .line 77
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 78
    .line 79
    if-eqz v3, :cond_6

    .line 80
    .line 81
    invoke-virtual {v0, v3, p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->showMessage(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 85
    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->openPgpProvider:Ljava/lang/String;

    .line 89
    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    move v1, v8

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageTopView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 94
    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/fsck/k9/view/MessageHeader;->setCryptoStatusDisabled()V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_1

    .line 107
    .line 108
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v2

    .line 112
    :cond_3
    if-eqz v0, :cond_4

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iget-object v0, v0, Lcom/fsck/k9/view/MessageHeader;->cryptoStatusIcon:Landroid/widget/ImageView;

    .line 119
    .line 120
    const/16 v1, 0x8

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v2

    .line 131
    :cond_5
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v2

    .line 135
    :cond_6
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v2

    .line 139
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v2

    .line 143
    :cond_8
    invoke-virtual {v3}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-virtual {v6, v0}, Lcom/fsck/k9/view/MessageHeader;->setCryptoStatus(Lcom/fsck/k9/view/MessageCryptoDisplayStatus;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_1a

    .line 155
    .line 156
    const-string v6, "layoutInflater"

    .line 157
    .line 158
    const-string v7, "containerView"

    .line 159
    .line 160
    if-eq v0, v8, :cond_13

    .line 161
    .line 162
    packed-switch v0, :pswitch_data_0

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v5, p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->showMessage(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_1

    .line 169
    .line 170
    :pswitch_0
    invoke-virtual {v3, p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->resetAndPrepareMessageView(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, v3, Lcom/fsck/k9/ui/messageview/MessageTopView;->layoutInflater:Landroid/view/LayoutInflater;

    .line 174
    .line 175
    if-eqz v0, :cond_b

    .line 176
    .line 177
    iget-object v5, v3, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    .line 178
    .line 179
    if-eqz v5, :cond_a

    .line 180
    .line 181
    const v6, 0x7f0c02cd

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v6, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    const v5, 0x7f090166

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    new-instance v6, Lcom/fsck/k9/ui/messageview/MessageTopView$$ExternalSyntheticLambda0;

    .line 196
    .line 197
    invoke-direct {v6, v3, v1}, Lcom/fsck/k9/ui/messageview/MessageTopView$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/messageview/MessageTopView;I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    iget-object v5, v3, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    .line 204
    .line 205
    if-eqz v5, :cond_9

    .line 206
    .line 207
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->displayViewOnLoadFinished(Z)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_1

    .line 214
    .line 215
    :cond_9
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw v2

    .line 219
    :cond_a
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw v2

    .line 223
    :cond_b
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v2

    .line 227
    :pswitch_1
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOpenPgpProvider()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-static {v0, v5}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->getOpenPgpApiProviderIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v3, p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->resetAndPrepareMessageView(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 240
    .line 241
    .line 242
    iget-object v5, v3, Lcom/fsck/k9/ui/messageview/MessageTopView;->layoutInflater:Landroid/view/LayoutInflater;

    .line 243
    .line 244
    if-eqz v5, :cond_e

    .line 245
    .line 246
    iget-object v6, v3, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    .line 247
    .line 248
    if-eqz v6, :cond_d

    .line 249
    .line 250
    const v8, 0x7f0c02cc

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5, v8, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3, v0, v5}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setCryptoProviderIcon(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 261
    .line 262
    .line 263
    iget-object v0, v3, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    .line 264
    .line 265
    if-eqz v0, :cond_c

    .line 266
    .line 267
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3, v1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->displayViewOnLoadFinished(Z)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_1

    .line 274
    .line 275
    :cond_c
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw v2

    .line 279
    :cond_d
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw v2

    .line 283
    :cond_e
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw v2

    .line 287
    :pswitch_2
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOpenPgpProvider()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-static {v0, v5}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->getOpenPgpApiProviderIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v3, p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->resetAndPrepareMessageView(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 300
    .line 301
    .line 302
    iget-object v5, v3, Lcom/fsck/k9/ui/messageview/MessageTopView;->layoutInflater:Landroid/view/LayoutInflater;

    .line 303
    .line 304
    if-eqz v5, :cond_12

    .line 305
    .line 306
    iget-object v6, v3, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    .line 307
    .line 308
    if-eqz v6, :cond_11

    .line 309
    .line 310
    const v8, 0x7f0c02cb

    .line 311
    .line 312
    .line 313
    invoke-virtual {v5, v8, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3, v0, v5}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setCryptoProviderIcon(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 321
    .line 322
    .line 323
    const v0, 0x7f090164

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 331
    .line 332
    iget-object v6, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 333
    .line 334
    iget-object v6, v6, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpError:Lorg/openintents/openpgp/OpenPgpError;

    .line 335
    .line 336
    if-eqz v6, :cond_f

    .line 337
    .line 338
    iget-object v6, v6, Lorg/openintents/openpgp/OpenPgpError;->message:Ljava/lang/String;

    .line 339
    .line 340
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    .line 342
    .line 343
    :cond_f
    iget-object v0, v3, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    .line 344
    .line 345
    if-eqz v0, :cond_10

    .line 346
    .line 347
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3, v1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->displayViewOnLoadFinished(Z)V

    .line 351
    .line 352
    .line 353
    goto :goto_1

    .line 354
    :cond_10
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    throw v2

    .line 358
    :cond_11
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    throw v2

    .line 362
    :cond_12
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    throw v2

    .line 366
    :cond_13
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOpenPgpProvider()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v5

    .line 374
    invoke-static {v0, v5}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->getOpenPgpApiProviderIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {v3, p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->resetAndPrepareMessageView(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 379
    .line 380
    .line 381
    iget-object v5, v3, Lcom/fsck/k9/ui/messageview/MessageTopView;->layoutInflater:Landroid/view/LayoutInflater;

    .line 382
    .line 383
    if-eqz v5, :cond_19

    .line 384
    .line 385
    iget-object v6, v3, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    .line 386
    .line 387
    if-eqz v6, :cond_18

    .line 388
    .line 389
    const v9, 0x7f0c02ca

    .line 390
    .line 391
    .line 392
    invoke-virtual {v5, v9, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3, v0, v5}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setCryptoProviderIcon(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 400
    .line 401
    .line 402
    const v0, 0x7f090162

    .line 403
    .line 404
    .line 405
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    new-instance v6, Lcom/fsck/k9/ui/messageview/MessageTopView$$ExternalSyntheticLambda0;

    .line 410
    .line 411
    invoke-direct {v6, v3, v8}, Lcom/fsck/k9/ui/messageview/MessageTopView$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/messageview/MessageTopView;I)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    .line 416
    .line 417
    iget-object v0, v3, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    .line 418
    .line 419
    if-eqz v0, :cond_17

    .line 420
    .line 421
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v3, v1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->displayViewOnLoadFinished(Z)V

    .line 425
    .line 426
    .line 427
    :goto_1
    iget-object p1, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->subject:Ljava/lang/String;

    .line 428
    .line 429
    if-eqz p1, :cond_16

    .line 430
    .line 431
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-nez v0, :cond_14

    .line 436
    .line 437
    const p1, 0x7f120315

    .line 438
    .line 439
    .line 440
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    :cond_14
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageTopView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 448
    .line 449
    if-eqz p0, :cond_15

    .line 450
    .line 451
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setSubject(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    return-void

    .line 455
    :cond_15
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    throw v2

    .line 459
    :cond_16
    return-void

    .line 460
    :cond_17
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    throw v2

    .line 464
    :cond_18
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    throw v2

    .line 468
    :cond_19
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    throw v2

    .line 472
    :cond_1a
    const-string p0, "Displaying message while in loading state!"

    .line 473
    .line 474
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    return-void

    .line 478
    :cond_1b
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    throw v2

    .line 482
    :cond_1c
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    throw v2

    .line 486
    :cond_1d
    const-string p0, "messageCryptoPresenter"

    .line 487
    .line 488
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    throw v2

    .line 492
    nop

    .line 493
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final toggleFlag(Lnet/thunderbird/core/common/mail/Flag;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->isOutbox$1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 8
    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-object v1, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 12
    .line 13
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    xor-int/lit8 v9, v1, 0x1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessagingController$3()Lcom/fsck/k9/controller/MessagingController;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-object v4, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    const-string v10, "account"

    .line 28
    .line 29
    if-eqz v4, :cond_3

    .line 30
    .line 31
    iget-object v5, v0, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 32
    .line 33
    iget-wide v5, v5, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 34
    .line 35
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    move-object v8, p1

    .line 40
    invoke-virtual/range {v3 .. v9}, Lcom/fsck/k9/controller/MessagingController;->setFlag(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageTopView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-boolean v4, p1, Lcom/fsck/k9/ui/messageview/MessageTopView;->showAccountIndicator:Z

    .line 56
    .line 57
    invoke-virtual {v1, v0, v3, v2, v4}, Lcom/fsck/k9/view/MessageHeader;->populate(Lcom/fsck/k9/mail/internet/MimeMessage;Lnet/thunderbird/core/android/account/LegacyAccountDto;ZZ)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    if-eqz p0, :cond_0

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 75
    .line 76
    .line 77
    :cond_0
    return-void

    .line 78
    :cond_1
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v1

    .line 82
    :cond_2
    const-string p0, "messageTopView"

    .line 83
    .line 84
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v1

    .line 88
    :cond_3
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v1

    .line 92
    :cond_4
    const-string p0, "Required value was null."

    .line 93
    .line 94
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_5
    const-string p0, "Check failed."

    .line 99
    .line 100
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

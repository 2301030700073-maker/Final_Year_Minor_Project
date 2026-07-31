.class public Lcom/fsck/k9/activity/MessageCompose;
.super Lcom/fsck/k9/ui/base/BaseActivity;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field public static final PREFIX:Ljava/util/regex/Pattern;


# instance fields
.field public account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public action:Lcom/fsck/k9/activity/MessageCompose$Action;

.field public final activeInAppNotifications:Ljava/util/HashSet;

.field public alreadyNotifiedUserOfEmptySubject:Z

.field public final attachmentMvpView:Lcom/beetstra/jutf7/Base64Util;

.field public attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

.field public attachmentsView:Landroid/widget/LinearLayout;

.field public final cameraCaptureHandler:Lapp/k9mail/core/android/common/camera/CameraCaptureHandler;

.field public changesMadeSinceLastSave:Z

.field public chooseIdentityView:Lcom/google/android/material/textview/MaterialTextView;

.field public final connectivityManager:Lnet/thunderbird/core/android/network/ConnectivityManagerBase;

.field public final contacts:Lcom/fsck/k9/helper/Contacts;

.field public currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

.field public currentMessageFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

.field public currentMessageViewInfo:Lcom/fsck/k9/mailstore/MessageViewInfo;

.field public final databaseUpgradeInterceptor:Lnet/thunderbird/app/common/startup/DefaultDatabaseUpgradeInterceptor;

.field public final defaultFolderProvider:Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;

.field public draftMessageId:Ljava/lang/Long;

.field public final featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

.field public finishAfterDraftSaved:Z

.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public identity:Lnet/thunderbird/core/android/account/Identity;

.field public identityChanged:Z

.field public ignoreSentFolderNotAssigned:Z

.field public final indentDataMapper:Lcom/fsck/k9/ui/compose/IntentDataMapper;

.field public final internalMessageHandler:Lcom/fsck/k9/activity/MessageCompose$14;

.field public isInSubActivity:Z

.field public messageContentView:Landroid/widget/EditText;

.field public messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

.field public final messageLoaderHelperFactory:Lcom/fsck/k9/activity/MessageLoaderHelperFactory;

.field public final messagingController:Lcom/fsck/k9/controller/MessagingController;

.field public final messagingListener:Lcom/fsck/k9/activity/MessageCompose$12;

.field public navigateUp:Z

.field public final notificationDismisserCompat:Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;

.field public final notificationSenderCompat:Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;

.field public final preferences:Lcom/fsck/k9/Preferences;

.field public quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

.field public recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

.field public referencedMessageIds:Ljava/lang/String;

.field public relatedFlag:Lnet/thunderbird/core/common/mail/Flag;

.field public relatedMessageProcessed:Z

.field public relatedMessageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

.field public repliedToMessageId:Ljava/lang/String;

.field public replyToPresenter:Lcom/fsck/k9/backend/imap/ImapSync;

.field public requestReadReceipt:Z

.field public sendMessageHasBeenTriggered:Z

.field public final sentFolderNotFoundDialogFragmentFactory:Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment$Factory;

.field public signatureChanged:Z

.field public signatureView:Landroid/widget/EditText;

.field public sizeFormatter:Lcom/fsck/k9/ui/helper/SizeFormatter;

.field public subjectView:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "^AW[:\\s]\\s*"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/fsck/k9/activity/MessageCompose;->PREFIX:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/fsck/k9/ui/base/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lnet/thunderbird/app/common/startup/DefaultDatabaseUpgradeInterceptor;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lnet/thunderbird/app/common/startup/DefaultDatabaseUpgradeInterceptor;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->databaseUpgradeInterceptor:Lnet/thunderbird/app/common/startup/DefaultDatabaseUpgradeInterceptor;

    .line 13
    .line 14
    const-class v0, Lcom/fsck/k9/activity/MessageLoaderHelperFactory;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/fsck/k9/activity/MessageLoaderHelperFactory;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->messageLoaderHelperFactory:Lcom/fsck/k9/activity/MessageLoaderHelperFactory;

    .line 23
    .line 24
    const-class v0, Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;

    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->defaultFolderProvider:Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;

    .line 33
    .line 34
    const-class v0, Lcom/fsck/k9/controller/MessagingController;

    .line 35
    .line 36
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 43
    .line 44
    const-class v0, Lcom/fsck/k9/Preferences;

    .line 45
    .line 46
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->preferences:Lcom/fsck/k9/Preferences;

    .line 53
    .line 54
    const-class v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 55
    .line 56
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 63
    .line 64
    const-class v0, Lcom/fsck/k9/ui/compose/IntentDataMapper;

    .line 65
    .line 66
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/fsck/k9/ui/compose/IntentDataMapper;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->indentDataMapper:Lcom/fsck/k9/ui/compose/IntentDataMapper;

    .line 73
    .line 74
    const-class v0, Lcom/fsck/k9/helper/Contacts;

    .line 75
    .line 76
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/fsck/k9/helper/Contacts;

    .line 81
    .line 82
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->contacts:Lcom/fsck/k9/helper/Contacts;

    .line 83
    .line 84
    const-class v0, Lapp/k9mail/core/android/common/camera/CameraCaptureHandler;

    .line 85
    .line 86
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lapp/k9mail/core/android/common/camera/CameraCaptureHandler;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->cameraCaptureHandler:Lapp/k9mail/core/android/common/camera/CameraCaptureHandler;

    .line 93
    .line 94
    const-class v0, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 95
    .line 96
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 101
    .line 102
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 103
    .line 104
    const-class v0, Lnet/thunderbird/feature/notification/api/sender/NotificationSender;

    .line 105
    .line 106
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lnet/thunderbird/feature/notification/api/sender/NotificationSender;

    .line 111
    .line 112
    new-instance v1, Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;

    .line 113
    .line 114
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;-><init>(Lnet/thunderbird/feature/notification/api/sender/NotificationSender;)V

    .line 115
    .line 116
    .line 117
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->notificationSenderCompat:Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;

    .line 118
    .line 119
    const-class v0, Lnet/thunderbird/feature/notification/api/dismisser/NotificationDismisser;

    .line 120
    .line 121
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lnet/thunderbird/feature/notification/api/dismisser/NotificationDismisser;

    .line 126
    .line 127
    const-class v1, Lnet/thunderbird/core/android/network/ConnectivityManagerBase;

    .line 128
    .line 129
    invoke-static {v1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Lnet/thunderbird/core/android/network/ConnectivityManagerBase;

    .line 134
    .line 135
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->connectivityManager:Lnet/thunderbird/core/android/network/ConnectivityManagerBase;

    .line 136
    .line 137
    new-instance v1, Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;

    .line 138
    .line 139
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;-><init>(Lnet/thunderbird/feature/notification/api/dismisser/NotificationDismisser;)V

    .line 140
    .line 141
    .line 142
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->notificationDismisserCompat:Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;

    .line 143
    .line 144
    const-class v0, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment$Factory;

    .line 145
    .line 146
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment$Factory;

    .line 151
    .line 152
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->sentFolderNotFoundDialogFragmentFactory:Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment$Factory;

    .line 153
    .line 154
    new-instance v0, Ljava/util/HashSet;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 157
    .line 158
    .line 159
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->activeInAppNotifications:Ljava/util/HashSet;

    .line 160
    .line 161
    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->identityChanged:Z

    .line 163
    .line 164
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->signatureChanged:Z

    .line 165
    .line 166
    const/4 v1, 0x0

    .line 167
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedFlag:Lnet/thunderbird/core/common/mail/Flag;

    .line 168
    .line 169
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageProcessed:Z

    .line 170
    .line 171
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->alreadyNotifiedUserOfEmptySubject:Z

    .line 172
    .line 173
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 174
    .line 175
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->draftMessageId:Ljava/lang/Long;

    .line 176
    .line 177
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->requestReadReceipt:Z

    .line 178
    .line 179
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->isInSubActivity:Z

    .line 180
    .line 181
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->sendMessageHasBeenTriggered:Z

    .line 182
    .line 183
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->ignoreSentFolderNotAssigned:Z

    .line 184
    .line 185
    new-instance v1, Lcom/fsck/k9/activity/MessageCompose$12;

    .line 186
    .line 187
    invoke-direct {v1, v0, p0}, Lcom/fsck/k9/activity/MessageCompose$12;-><init>(ILjava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->messagingListener:Lcom/fsck/k9/activity/MessageCompose$12;

    .line 191
    .line 192
    new-instance v0, Lcom/beetstra/jutf7/Base64Util;

    .line 193
    .line 194
    invoke-direct {v0, p0}, Lcom/beetstra/jutf7/Base64Util;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    .line 195
    .line 196
    .line 197
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentMvpView:Lcom/beetstra/jutf7/Base64Util;

    .line 198
    .line 199
    new-instance v0, Lcom/fsck/k9/activity/MessageCompose$14;

    .line 200
    .line 201
    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/MessageCompose$14;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    .line 202
    .line 203
    .line 204
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->internalMessageHandler:Lcom/fsck/k9/activity/MessageCompose$14;

    .line 205
    .line 206
    return-void
.end method


# virtual methods
.method public final checkToSaveDraftAndSave()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->hasDraftsFolder()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const v0, 0x7f120218

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->checkOkForSendingOrDraftSaving()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->finishAfterDraftSaved:Z

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->performSaveAfterChecks()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final createMessageBuilder(Z)Lcom/fsck/k9/message/MessageBuilder;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string p0, "Couldn\'t retrieve crypto status; not creating MessageBuilder!"

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object v2

    .line 17
    :cond_0
    iget-boolean v3, v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isOpenPgpConfigured:Z

    .line 18
    .line 19
    const-class v4, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 20
    .line 21
    const-class v5, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 22
    .line 23
    if-eqz v3, :cond_5

    .line 24
    .line 25
    iget-object v3, v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->sendErrorStateOrNull:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;

    .line 26
    .line 27
    if-eqz v3, :cond_4

    .line 28
    .line 29
    iget-object p0, v0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x1

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    if-eq v0, v1, :cond_2

    .line 41
    .line 42
    const/4 p1, 0x2

    .line 43
    if-ne v0, p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showOpenPgpEnabledErrorDialog()V

    .line 46
    .line 47
    .line 48
    return-object v2

    .line 49
    :cond_1
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 50
    .line 51
    .line 52
    return-object v2

    .line 53
    :cond_2
    const p0, 0x7f120219

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 61
    .line 62
    .line 63
    return-object v2

    .line 64
    :cond_3
    const p0, 0x7f1202c7

    .line 65
    .line 66
    .line 67
    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 72
    .line 73
    .line 74
    return-object v2

    .line 75
    :cond_4
    move-object v0, v4

    .line 76
    new-instance v4, Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 77
    .line 78
    new-instance v2, Lokio/Path$Companion;

    .line 79
    .line 80
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-direct {v4, v2}, Lcom/mikepenz/fastadapter/VerboseLogger;-><init>(Lokio/Path$Companion;)V

    .line 84
    .line 85
    .line 86
    move-object v2, v5

    .line 87
    sget-object v5, Lcom/fsck/k9/mail/BoundaryGenerator;->INSTANCE:Lcom/fsck/k9/mail/BoundaryGenerator;

    .line 88
    .line 89
    new-instance v6, Lcom/bumptech/glide/GlideBuilder$1;

    .line 90
    .line 91
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 92
    .line 93
    .line 94
    new-instance v7, Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 95
    .line 96
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-static {v2}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    move-object v8, v2

    .line 104
    check-cast v8, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 105
    .line 106
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    move-object v9, v0

    .line 111
    check-cast v9, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 112
    .line 113
    new-instance v3, Lcom/fsck/k9/message/PgpMessageBuilder;

    .line 114
    .line 115
    invoke-direct/range {v3 .. v9}, Lcom/fsck/k9/message/PgpMessageBuilder;-><init>(Lcom/mikepenz/fastadapter/VerboseLogger;Lcom/fsck/k9/mail/BoundaryGenerator;Lcom/bumptech/glide/GlideBuilder$1;Lcom/mikepenz/fastadapter/VerboseLogger;Lcom/fsck/k9/resources/K9CoreResourceProvider;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getToAddresses()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    new-array v4, v4, [Lcom/fsck/k9/mail/Address;

    .line 132
    .line 133
    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, [Lcom/fsck/k9/mail/Address;

    .line 138
    .line 139
    iput-object v2, v3, Lcom/fsck/k9/message/MessageBuilder;->to:[Lcom/fsck/k9/mail/Address;

    .line 140
    .line 141
    iget-object v2, v0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->getCcAddresses()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    new-array v5, v5, [Lcom/fsck/k9/mail/Address;

    .line 152
    .line 153
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    check-cast v4, [Lcom/fsck/k9/mail/Address;

    .line 158
    .line 159
    iput-object v4, v3, Lcom/fsck/k9/message/MessageBuilder;->cc:[Lcom/fsck/k9/mail/Address;

    .line 160
    .line 161
    invoke-virtual {v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->getBccAddresses()Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    new-array v4, v4, [Lcom/fsck/k9/mail/Address;

    .line 170
    .line 171
    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    check-cast v2, [Lcom/fsck/k9/mail/Address;

    .line 176
    .line 177
    iput-object v2, v3, Lcom/fsck/k9/message/MessageBuilder;->bcc:[Lcom/fsck/k9/mail/Address;

    .line 178
    .line 179
    iget-object v0, v0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 180
    .line 181
    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpApiManager;->getOpenPgpApi()Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iput-object v0, v3, Lcom/fsck/k9/message/PgpMessageBuilder;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 186
    .line 187
    iput-object v1, v3, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/message/CryptoStatus;

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_5
    move-object v0, v4

    .line 191
    move-object v2, v5

    .line 192
    new-instance v3, Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 193
    .line 194
    new-instance v4, Lokio/Path$Companion;

    .line 195
    .line 196
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-direct {v3, v4}, Lcom/mikepenz/fastadapter/VerboseLogger;-><init>(Lokio/Path$Companion;)V

    .line 200
    .line 201
    .line 202
    sget-object v4, Lcom/fsck/k9/mail/BoundaryGenerator;->INSTANCE:Lcom/fsck/k9/mail/BoundaryGenerator;

    .line 203
    .line 204
    invoke-static {v2}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    check-cast v2, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 209
    .line 210
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 215
    .line 216
    new-instance v5, Lcom/fsck/k9/message/SimpleMessageBuilder;

    .line 217
    .line 218
    invoke-direct {v5, v3, v4, v2, v0}, Lcom/fsck/k9/message/MessageBuilder;-><init>(Lcom/mikepenz/fastadapter/VerboseLogger;Lcom/fsck/k9/mail/BoundaryGenerator;Lcom/fsck/k9/resources/K9CoreResourceProvider;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 222
    .line 223
    iget-object v2, v0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getToAddresses()Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    new-array v3, v3, [Lcom/fsck/k9/mail/Address;

    .line 234
    .line 235
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    check-cast v0, [Lcom/fsck/k9/mail/Address;

    .line 240
    .line 241
    iput-object v0, v5, Lcom/fsck/k9/message/MessageBuilder;->to:[Lcom/fsck/k9/mail/Address;

    .line 242
    .line 243
    invoke-virtual {v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->getCcAddresses()Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    new-array v3, v3, [Lcom/fsck/k9/mail/Address;

    .line 252
    .line 253
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, [Lcom/fsck/k9/mail/Address;

    .line 258
    .line 259
    iput-object v0, v5, Lcom/fsck/k9/message/MessageBuilder;->cc:[Lcom/fsck/k9/mail/Address;

    .line 260
    .line 261
    invoke-virtual {v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->getBccAddresses()Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    new-array v2, v2, [Lcom/fsck/k9/mail/Address;

    .line 270
    .line 271
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    check-cast v0, [Lcom/fsck/k9/mail/Address;

    .line 276
    .line 277
    iput-object v0, v5, Lcom/fsck/k9/message/MessageBuilder;->bcc:[Lcom/fsck/k9/mail/Address;

    .line 278
    .line 279
    move-object v3, v5

    .line 280
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    .line 281
    .line 282
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    sget-object v2, Lcom/fsck/k9/helper/Utility;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    .line 291
    .line 292
    const-string v2, "[\\r\\n]"

    .line 293
    .line 294
    const-string v4, ""

    .line 295
    .line 296
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    iput-object v0, v3, Lcom/fsck/k9/message/MessageBuilder;->subject:Ljava/lang/String;

    .line 301
    .line 302
    new-instance v0, Ljava/util/Date;

    .line 303
    .line 304
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 305
    .line 306
    .line 307
    iput-object v0, v3, Lcom/fsck/k9/message/MessageBuilder;->sentDate:Ljava/util/Date;

    .line 308
    .line 309
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 310
    .line 311
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 312
    .line 313
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->privacy:Lnet/thunderbird/core/preference/privacy/PrivacySettings;

    .line 318
    .line 319
    iget-boolean v0, v0, Lnet/thunderbird/core/preference/privacy/PrivacySettings;->isHideTimeZone:Z

    .line 320
    .line 321
    iput-boolean v0, v3, Lcom/fsck/k9/message/MessageBuilder;->hideTimeZone:Z

    .line 322
    .line 323
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->repliedToMessageId:Ljava/lang/String;

    .line 324
    .line 325
    iput-object v0, v3, Lcom/fsck/k9/message/MessageBuilder;->inReplyTo:Ljava/lang/String;

    .line 326
    .line 327
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->referencedMessageIds:Ljava/lang/String;

    .line 328
    .line 329
    iput-object v0, v3, Lcom/fsck/k9/message/MessageBuilder;->references:Ljava/lang/String;

    .line 330
    .line 331
    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->requestReadReceipt:Z

    .line 332
    .line 333
    iput-boolean v0, v3, Lcom/fsck/k9/message/MessageBuilder;->requestReadReceipt:Z

    .line 334
    .line 335
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 336
    .line 337
    iput-object v0, v3, Lcom/fsck/k9/message/MessageBuilder;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 338
    .line 339
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->replyToPresenter:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 340
    .line 341
    iget-object v0, v0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast v0, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 344
    .line 345
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v0, Lcom/fsck/k9/view/RecipientSelectView;

    .line 348
    .line 349
    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView;->getAddresses()[Lcom/fsck/k9/mail/Address;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    iput-object v0, v3, Lcom/fsck/k9/message/MessageBuilder;->replyTo:[Lcom/fsck/k9/mail/Address;

    .line 357
    .line 358
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 359
    .line 360
    iput-object v0, v3, Lcom/fsck/k9/message/MessageBuilder;->messageFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 361
    .line 362
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Landroid/widget/EditText;

    .line 363
    .line 364
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-static {v0}, Lcom/fsck/k9/helper/FileHelper;->toCrLf(Landroid/text/Editable;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    iput-object v0, v3, Lcom/fsck/k9/message/MessageBuilder;->text:Ljava/lang/String;

    .line 373
    .line 374
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 375
    .line 376
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    new-instance v2, Ljava/util/ArrayList;

    .line 380
    .line 381
    iget-object v0, v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    .line 382
    .line 383
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 388
    .line 389
    .line 390
    iput-object v2, v3, Lcom/fsck/k9/message/MessageBuilder;->attachments:Ljava/util/ArrayList;

    .line 391
    .line 392
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 393
    .line 394
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 398
    .line 399
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 400
    .line 401
    .line 402
    iget-object v0, v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->inlineAttachments:Ljava/util/LinkedHashMap;

    .line 403
    .line 404
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 413
    .line 414
    .line 415
    move-result v4

    .line 416
    if-eqz v4, :cond_6

    .line 417
    .line 418
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    check-cast v4, Lcom/fsck/k9/activity/misc/InlineAttachment;

    .line 423
    .line 424
    iget-object v5, v4, Lcom/fsck/k9/activity/misc/InlineAttachment;->contentId:Ljava/lang/String;

    .line 425
    .line 426
    iget-object v4, v4, Lcom/fsck/k9/activity/misc/InlineAttachment;->attachment:Lcom/fsck/k9/activity/misc/Attachment;

    .line 427
    .line 428
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    goto :goto_1

    .line 432
    :cond_6
    iput-object v2, v3, Lcom/fsck/k9/message/MessageBuilder;->inlineAttachments:Ljava/util/LinkedHashMap;

    .line 433
    .line 434
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->signatureView:Landroid/widget/EditText;

    .line 435
    .line 436
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-static {v0}, Lcom/fsck/k9/helper/FileHelper;->toCrLf(Landroid/text/Editable;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    iput-object v0, v3, Lcom/fsck/k9/message/MessageBuilder;->signature:Ljava/lang/String;

    .line 445
    .line 446
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 447
    .line 448
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isSignatureBeforeQuotedText()Z

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    iput-boolean v0, v3, Lcom/fsck/k9/message/MessageBuilder;->isSignatureBeforeQuotedText:Z

    .line 453
    .line 454
    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->identityChanged:Z

    .line 455
    .line 456
    iput-boolean v0, v3, Lcom/fsck/k9/message/MessageBuilder;->identityChanged:Z

    .line 457
    .line 458
    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->signatureChanged:Z

    .line 459
    .line 460
    iput-boolean v0, v3, Lcom/fsck/k9/message/MessageBuilder;->signatureChanged:Z

    .line 461
    .line 462
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Landroid/widget/EditText;

    .line 463
    .line 464
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 465
    .line 466
    .line 467
    move-result v0

    .line 468
    iput v0, v3, Lcom/fsck/k9/message/MessageBuilder;->cursorPosition:I

    .line 469
    .line 470
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 471
    .line 472
    iput-object v0, v3, Lcom/fsck/k9/message/MessageBuilder;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 473
    .line 474
    iput-boolean p1, v3, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z

    .line 475
    .line 476
    iget-boolean p1, v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isPgpInlineModeEnabled:Z

    .line 477
    .line 478
    iput-boolean p1, v3, Lcom/fsck/k9/message/MessageBuilder;->isPgpInlineEnabled:Z

    .line 479
    .line 480
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 481
    .line 482
    iget-object p1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quoteStyle:Ljava/lang/Object;

    .line 483
    .line 484
    check-cast p1, Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 485
    .line 486
    iput-object p1, v3, Lcom/fsck/k9/message/MessageBuilder;->quoteStyle:Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 487
    .line 488
    iget-object p1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Ljava/lang/Object;

    .line 489
    .line 490
    check-cast p1, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 491
    .line 492
    iget-object p1, p1, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 493
    .line 494
    check-cast p1, Landroid/widget/EditText;

    .line 495
    .line 496
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    invoke-static {p1}, Lcom/fsck/k9/helper/FileHelper;->toCrLf(Landroid/text/Editable;)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object p1

    .line 504
    iput-object p1, v3, Lcom/fsck/k9/message/MessageBuilder;->quotedText:Ljava/lang/String;

    .line 505
    .line 506
    iget-object p1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextMode:Ljava/lang/Object;

    .line 507
    .line 508
    check-cast p1, Lcom/fsck/k9/message/QuotedTextMode;

    .line 509
    .line 510
    iput-object p1, v3, Lcom/fsck/k9/message/MessageBuilder;->quotedTextMode:Lcom/fsck/k9/message/QuotedTextMode;

    .line 511
    .line 512
    iget-object p1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Ljava/lang/Object;

    .line 513
    .line 514
    check-cast p1, Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 515
    .line 516
    iput-object p1, v3, Lcom/fsck/k9/message/MessageBuilder;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 517
    .line 518
    iget-object p0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->account:Ljava/lang/Object;

    .line 519
    .line 520
    check-cast p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 521
    .line 522
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isReplyAfterQuote()Z

    .line 523
    .line 524
    .line 525
    move-result p0

    .line 526
    iput-boolean p0, v3, Lcom/fsck/k9/message/MessageBuilder;->isReplyAfterQuote:Z

    .line 527
    .line 528
    return-object v3
.end method

.method public final dismissActiveInAppNotifications()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->activeInAppNotifications:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    new-instance v2, Lcom/fsck/k9/activity/MessageCompose$$ExternalSyntheticLambda2;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-direct {v2, p0, v3}, Lcom/fsck/k9/activity/MessageCompose$$ExternalSyntheticLambda2;-><init>(Lcom/fsck/k9/activity/MessageCompose;I)V

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageCompose;->notificationDismisserCompat:Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v4, v3, Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;->notificationSender:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v4, Lnet/thunderbird/feature/notification/api/dismisser/NotificationDismisser;

    .line 37
    .line 38
    invoke-interface {v4, v1}, Lnet/thunderbird/feature/notification/api/dismisser/NotificationDismisser;->dismiss-RiqCqwk(I)Lkotlinx/coroutines/flow/Flow;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v4, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    const/16 v6, 0x18

    .line 46
    .line 47
    invoke-direct {v4, v2, v5, v6}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 51
    .line 52
    const/4 v5, 0x2

    .line 53
    invoke-direct {v2, v1, v4, v5}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v3, Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;->scope:Lkotlinx/coroutines/internal/ContextScope;

    .line 57
    .line 58
    invoke-static {v2, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method public final fetchAccount(Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string v0, "message_reference"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/math/MathKt;->parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p1, v0, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "account"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->preferences:Lcom/fsck/k9/Preferences;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final loadLocalMessageForDisplay(Lcom/fsck/k9/mailstore/MessageViewInfo;Lcom/fsck/k9/activity/MessageCompose$Action;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageViewInfo:Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageProcessed:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 10
    .line 11
    invoke-virtual {v0, p1, v2, p2}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->populateUIWithQuotedMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;ZLcom/fsck/k9/activity/MessageCompose$Action;)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    iget-object p2, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 17
    .line 18
    sget-object v0, Lcom/fsck/k9/message/QuotedTextMode;->HIDE:Lcom/fsck/k9/message/QuotedTextMode;

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;)V

    .line 21
    .line 22
    .line 23
    const-string p2, "Could not re-process source message; deleting quoted text to be safe."

    .line 24
    .line 25
    new-array v0, v1, [Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {p1, p2, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    .line 31
    .line 32
    .line 33
    goto :goto_4

    .line 34
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eq p2, v2, :cond_4

    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    if-eq p2, v0, :cond_4

    .line 44
    .line 45
    const/4 v0, 0x3

    .line 46
    if-eq p2, v0, :cond_3

    .line 47
    .line 48
    const/4 v0, 0x4

    .line 49
    if-eq p2, v0, :cond_2

    .line 50
    .line 51
    const/4 v0, 0x5

    .line 52
    if-eq p2, v0, :cond_1

    .line 53
    .line 54
    const-string p1, "processSourceMessage() called with unsupported action"

    .line 55
    .line 56
    new-array p2, v1, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-static {p1, p2}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_5

    .line 64
    :catch_1
    move-exception p1

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/MessageCompose;->processDraftMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/fsck/k9/activity/MessageCompose;->processMessageToForward(Lcom/fsck/k9/mailstore/MessageViewInfo;Z)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/activity/MessageCompose;->processMessageToForward(Lcom/fsck/k9/mailstore/MessageViewInfo;Z)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/MessageCompose;->processMessageToReplyTo(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    :try_end_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    :goto_1
    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageProcessed:Z

    .line 82
    .line 83
    iput-boolean v1, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :goto_2
    :try_start_2
    const-string p2, "Error while processing source message: "

    .line 87
    .line 88
    new-array v0, v1, [Ljava/lang/Object;

    .line 89
    .line 90
    invoke-static {p1, p2, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :goto_3
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    .line 95
    .line 96
    .line 97
    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageProcessed:Z

    .line 98
    .line 99
    :goto_4
    return-void

    .line 100
    :goto_5
    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageProcessed:Z

    .line 101
    .line 102
    iput-boolean v1, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 103
    .line 104
    throw p1
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->isInSubActivity:Z

    .line 3
    .line 4
    const/high16 v1, -0x10000

    .line 5
    .line 6
    and-int/2addr v1, p1

    .line 7
    if-nez v1, :cond_10

    .line 8
    .line 9
    and-int/lit16 v1, p1, 0x800

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, -0x1

    .line 13
    const/16 v4, 0x800

    .line 14
    .line 15
    if-ne v1, v4, :cond_2

    .line 16
    .line 17
    xor-int/2addr p1, v4

    .line 18
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const-string p0, "Got a message builder activity result for no message builder, this is an illegal state!"

    .line 23
    .line 24
    new-array p1, v0, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v4, v1, Lcom/fsck/k9/message/MessageBuilder;->callbackLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v4

    .line 33
    :try_start_0
    iput-object p0, v1, Lcom/fsck/k9/message/MessageBuilder;->asyncCallback:Lcom/fsck/k9/activity/MessageCompose;

    .line 34
    .line 35
    iput-object v2, v1, Lcom/fsck/k9/message/MessageBuilder;->queuedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 36
    .line 37
    iput-object v2, v1, Lcom/fsck/k9/message/MessageBuilder;->queuedException:Lnet/thunderbird/core/common/exception/MessagingException;

    .line 38
    .line 39
    iput-object v2, v1, Lcom/fsck/k9/message/MessageBuilder;->queuedPendingIntent:Landroid/app/PendingIntent;

    .line 40
    .line 41
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-eq p2, v3, :cond_1

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->sendMessageHasBeenTriggered:Z

    .line 45
    .line 46
    iput-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    new-instance p0, Lcom/fsck/k9/message/MessageBuilder$2;

    .line 53
    .line 54
    invoke-direct {p0, v1, p1, p3}, Lcom/fsck/k9/message/MessageBuilder$2;-><init>(Lcom/fsck/k9/message/MessageBuilder;ILandroid/content/Intent;)V

    .line 55
    .line 56
    .line 57
    new-array p1, v0, [Ljava/lang/Void;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object p0, v0

    .line 65
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    throw p0

    .line 67
    :cond_2
    and-int/lit16 v0, p1, 0x100

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    const/16 v4, 0x100

    .line 71
    .line 72
    if-ne v0, v4, :cond_c

    .line 73
    .line 74
    xor-int/2addr p1, v4

    .line 75
    iget-object v6, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const/4 p0, 0x3

    .line 81
    const/4 v0, 0x2

    .line 82
    if-eq p1, v1, :cond_5

    .line 83
    .line 84
    if-eq p1, v0, :cond_5

    .line 85
    .line 86
    if-eq p1, p0, :cond_5

    .line 87
    .line 88
    const/4 p0, 0x4

    .line 89
    if-eq p1, p0, :cond_4

    .line 90
    .line 91
    const/4 p0, 0x5

    .line 92
    if-eq p1, p0, :cond_3

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    invoke-virtual {v6}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    iget-object p0, v6, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 100
    .line 101
    iput-object v2, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->userInteractionPendingIntent:Landroid/app/PendingIntent;

    .line 102
    .line 103
    invoke-virtual {p0}, Lorg/openintents/openpgp/OpenPgpApiManager;->refreshConnection()V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_5
    if-ne p2, v3, :cond_b

    .line 108
    .line 109
    if-nez p3, :cond_6

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_6
    if-eq p1, v1, :cond_9

    .line 113
    .line 114
    if-eq p1, v0, :cond_8

    .line 115
    .line 116
    if-ne p1, p0, :cond_7

    .line 117
    .line 118
    sget-object p0, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 119
    .line 120
    :goto_0
    move-object v7, p0

    .line 121
    goto :goto_1

    .line 122
    :cond_7
    const-string p0, "Unhandled case: "

    .line 123
    .line 124
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_8
    sget-object p0, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_9
    sget-object p0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :goto_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    iget-object v8, v6, Lcom/fsck/k9/activity/compose/RecipientPresenter;->context:Landroid/content/Context;

    .line 143
    .line 144
    iget-object p0, v6, Lcom/fsck/k9/activity/compose/RecipientPresenter;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 145
    .line 146
    if-eqz p0, :cond_a

    .line 147
    .line 148
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOpenPgpProvider()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    new-instance v4, Lcom/fsck/k9/activity/compose/RecipientPresenter$addRecipientFromContactUri$1;

    .line 153
    .line 154
    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/activity/compose/RecipientPresenter$addRecipientFromContactUri$1;-><init>(Landroid/net/Uri;Lcom/fsck/k9/activity/compose/RecipientPresenter;Lcom/fsck/k9/mail/Message$RecipientType;Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4}, Landroidx/loader/content/AsyncTaskLoader;->startLoading()V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_a
    const-string p0, "account"

    .line 162
    .line 163
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v2

    .line 167
    :cond_b
    :goto_2
    return-void

    .line 168
    :cond_c
    and-int/lit16 v0, p1, 0x200

    .line 169
    .line 170
    const/16 v2, 0x200

    .line 171
    .line 172
    if-ne v0, v2, :cond_d

    .line 173
    .line 174
    xor-int/2addr p1, v2

    .line 175
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 176
    .line 177
    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/activity/MessageLoaderHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :cond_d
    and-int/lit16 v0, p1, 0x400

    .line 182
    .line 183
    const/16 v2, 0x400

    .line 184
    .line 185
    if-ne v0, v2, :cond_e

    .line 186
    .line 187
    xor-int/2addr p1, v2

    .line 188
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 189
    .line 190
    invoke-virtual {p0, p2, p1, p3}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->onActivityResult(IILandroid/content/Intent;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_e
    const/4 v0, 0x6

    .line 195
    if-ne p1, v0, :cond_10

    .line 196
    .line 197
    if-ne p2, v3, :cond_10

    .line 198
    .line 199
    new-instance p1, Landroid/content/Intent;

    .line 200
    .line 201
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 202
    .line 203
    .line 204
    iget-object p3, p0, Lcom/fsck/k9/activity/MessageCompose;->cameraCaptureHandler:Lapp/k9mail/core/android/common/camera/CameraCaptureHandler;

    .line 205
    .line 206
    iget-object p3, p3, Lapp/k9mail/core/android/common/camera/CameraCaptureHandler;->capturedImageUri:Landroid/net/Uri;

    .line 207
    .line 208
    if-eqz p3, :cond_f

    .line 209
    .line 210
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 211
    .line 212
    .line 213
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 214
    .line 215
    invoke-virtual {p0, p2, v1, p1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->onActivityResult(IILandroid/content/Intent;)V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :cond_f
    new-instance p0, Lorg/jsoup/SerializationException;

    .line 220
    .line 221
    const-string p1, "Image Uri not initialized"

    .line 222
    .line 223
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw p0

    .line 227
    :cond_10
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 228
    .line 229
    .line 230
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f09022c

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x3

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->showDialog(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 38

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Lcom/fsck/k9/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, v1, Lcom/fsck/k9/activity/MessageCompose;->databaseUpgradeInterceptor:Lnet/thunderbird/app/common/startup/DefaultDatabaseUpgradeInterceptor;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v3}, Lnet/thunderbird/app/common/startup/DefaultDatabaseUpgradeInterceptor;->checkAndHandleUpgrade(Lcom/fsck/k9/ui/base/BaseActivity;Landroid/content/Intent;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const v2, 0x7f0c02c5

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/fsck/k9/ui/base/BaseActivity;->setLayout(I)V

    .line 31
    .line 32
    .line 33
    const v2, 0x7f090290

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/view/ViewStub;

    .line 41
    .line 42
    new-instance v3, Lcom/fsck/k9/ui/helper/SizeFormatter;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-direct {v3, v4}, Lcom/fsck/k9/ui/helper/SizeFormatter;-><init>(Landroid/content/res/Resources;)V

    .line 49
    .line 50
    .line 51
    iput-object v3, v1, Lcom/fsck/k9/activity/MessageCompose;->sizeFormatter:Lcom/fsck/k9/ui/helper/SizeFormatter;

    .line 52
    .line 53
    iget-object v3, v1, Lcom/fsck/k9/ui/base/BaseActivity;->themeManager$delegate:Lkotlin/Lazy;

    .line 54
    .line 55
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 60
    .line 61
    iget-object v4, v3, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 62
    .line 63
    check-cast v4, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    iget-object v4, v4, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 70
    .line 71
    iget-object v4, v4, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 72
    .line 73
    iget-object v4, v4, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->messageComposeTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->getSubThemeResourceId(Lnet/thunderbird/core/preference/SubTheme;)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    new-instance v4, Landroid/view/ContextThemeWrapper;

    .line 80
    .line 81
    invoke-direct {v4, v1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 82
    .line 83
    .line 84
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const/4 v6, 0x1

    .line 99
    invoke-virtual {v2, v6}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 100
    .line 101
    .line 102
    const/4 v7, 0x0

    .line 103
    invoke-virtual {v1, v7}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-virtual {v1, v8}, Lcom/fsck/k9/activity/MessageCompose;->fetchAccount(Landroid/content/Intent;)V

    .line 111
    .line 112
    .line 113
    iget-object v2, v1, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 114
    .line 115
    if-nez v2, :cond_1

    .line 116
    .line 117
    iget-object v2, v1, Lcom/fsck/k9/activity/MessageCompose;->preferences:Lcom/fsck/k9/Preferences;

    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 128
    .line 129
    iput-object v2, v1, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 130
    .line 131
    :cond_1
    iget-object v2, v1, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 132
    .line 133
    if-nez v2, :cond_2

    .line 134
    .line 135
    sget-object v0, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 136
    .line 137
    invoke-static {v1}, Lcom/fsck/k9/activity/MessageHomeActivity$Companion;->launch(Landroid/content/Context;)V

    .line 138
    .line 139
    .line 140
    iput-boolean v7, v1, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_2
    const-string v2, "MessageComposeInAppNotificationFragment"

    .line 147
    .line 148
    iget-object v3, v1, Lcom/fsck/k9/activity/MessageCompose;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 149
    .line 150
    const-string v4, "display_in_app_notifications"

    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v4}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-interface {v3}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isDisabledOrUnavailable()Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_3

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_3
    iget-object v3, v1, Lcom/fsck/k9/activity/MessageCompose;->preferences:Lcom/fsck/k9/Preferences;

    .line 167
    .line 168
    invoke-virtual {v3}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-eqz v4, :cond_4

    .line 177
    .line 178
    const-string v2, "Can\'t initialize in-app notifications. No accounts were found."

    .line 179
    .line 180
    new-array v3, v7, [Ljava/lang/Object;

    .line 181
    .line 182
    invoke-static {v2, v3}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_4
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v4, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    if-eqz v5, :cond_5

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    if-eqz v9, :cond_6

    .line 211
    .line 212
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    check-cast v9, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 217
    .line 218
    iget-object v9, v9, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_6
    new-instance v3, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;

    .line 225
    .line 226
    invoke-direct {v3}, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;-><init>()V

    .line 227
    .line 228
    .line 229
    new-instance v9, Landroid/os/Bundle;

    .line 230
    .line 231
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 232
    .line 233
    .line 234
    const-string v10, "MessageComposeInAppNotificationFragment_account_ids"

    .line 235
    .line 236
    new-array v11, v7, [Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    check-cast v5, [Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v9, v10, v5}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3, v9}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 248
    .line 249
    .line 250
    new-instance v5, Landroidx/fragment/app/BackStackRecord;

    .line 251
    .line 252
    invoke-direct {v5, v4}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 253
    .line 254
    .line 255
    const v4, 0x7f090291

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5, v4, v3, v2, v6}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 262
    .line 263
    .line 264
    :goto_1
    const v2, 0x7f09022c

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    .line 272
    .line 273
    iput-object v2, v1, Lcom/fsck/k9/activity/MessageCompose;->chooseIdentityView:Lcom/google/android/material/textview/MaterialTextView;

    .line 274
    .line 275
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    .line 277
    .line 278
    new-instance v9, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 279
    .line 280
    invoke-direct {v9, v1}, Lcom/fsck/k9/mailstore/LocalStore$7;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    .line 281
    .line 282
    .line 283
    new-instance v2, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 284
    .line 285
    invoke-direct {v2, v9}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Lcom/fsck/k9/mailstore/LocalStore$7;)V

    .line 286
    .line 287
    .line 288
    iput-object v2, v1, Lcom/fsck/k9/activity/MessageCompose;->replyToPresenter:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 289
    .line 290
    new-instance v14, Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 291
    .line 292
    invoke-direct {v14, v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    .line 293
    .line 294
    .line 295
    new-instance v4, Lcom/beetstra/jutf7/Base64Util;

    .line 296
    .line 297
    const/16 v2, 0x19

    .line 298
    .line 299
    invoke-direct {v4, v2, v1, v14, v7}, Lcom/beetstra/jutf7/Base64Util;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 300
    .line 301
    .line 302
    new-instance v16, Landroidx/transition/Transition$1;

    .line 303
    .line 304
    invoke-direct/range {v16 .. v16}, Ljava/lang/Object;-><init>()V

    .line 305
    .line 306
    .line 307
    new-instance v17, Lcom/bumptech/glide/load/Option$1;

    .line 308
    .line 309
    invoke-direct/range {v17 .. v17}, Ljava/lang/Object;-><init>()V

    .line 310
    .line 311
    .line 312
    new-instance v13, Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 313
    .line 314
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-direct {v13, v2, v1}, Lorg/openintents/openpgp/OpenPgpApiManager;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;)V

    .line 319
    .line 320
    .line 321
    new-instance v10, Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 322
    .line 323
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 324
    .line 325
    .line 326
    move-result-object v11

    .line 327
    invoke-static {v1}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManagerImpl;

    .line 328
    .line 329
    .line 330
    move-result-object v12

    .line 331
    iget-object v15, v1, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 332
    .line 333
    new-instance v18, Lcom/fsck/k9/helper/ReplyToParser;

    .line 334
    .line 335
    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    .line 336
    .line 337
    .line 338
    const-class v2, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeaderParser;

    .line 339
    .line 340
    invoke-static {v2}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    move-object/from16 v19, v2

    .line 345
    .line 346
    check-cast v19, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeaderParser;

    .line 347
    .line 348
    invoke-direct/range {v10 .. v19}, Lcom/fsck/k9/activity/compose/RecipientPresenter;-><init>(Landroid/content/Context;Landroidx/loader/app/LoaderManagerImpl;Lorg/openintents/openpgp/OpenPgpApiManager;Lcom/fsck/k9/activity/compose/RecipientMvpView;Lnet/thunderbird/core/android/account/LegacyAccountDto;Landroidx/transition/Transition$1;Lcom/bumptech/glide/load/Option$1;Lcom/fsck/k9/helper/ReplyToParser;Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeaderParser;)V

    .line 349
    .line 350
    .line 351
    iput-object v10, v1, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 352
    .line 353
    invoke-virtual {v10}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 354
    .line 355
    .line 356
    const v2, 0x7f090402

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    check-cast v2, Landroid/widget/EditText;

    .line 364
    .line 365
    iput-object v2, v1, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    .line 366
    .line 367
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->getInputExtras(Z)Landroid/os/Bundle;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    const-string v3, "allowEmoji"

    .line 372
    .line 373
    invoke-virtual {v2, v3, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 374
    .line 375
    .line 376
    const v2, 0x7f09046d

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    check-cast v2, Landroid/widget/EditText;

    .line 384
    .line 385
    const v3, 0x7f090263

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    check-cast v3, Landroid/widget/EditText;

    .line 393
    .line 394
    new-instance v10, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 395
    .line 396
    sget-object v5, Lnet/thunderbird/core/ui/theme/api/Theme;->LIGHT:Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 397
    .line 398
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 399
    .line 400
    .line 401
    const-class v11, Lcom/fsck/k9/ui/helper/DisplayHtmlUiFactory;

    .line 402
    .line 403
    invoke-static {v11}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v11

    .line 407
    check-cast v11, Lcom/fsck/k9/ui/helper/DisplayHtmlUiFactory;

    .line 408
    .line 409
    new-instance v12, Lcom/fsck/k9/message/html/DisplayHtml;

    .line 410
    .line 411
    iget-object v13, v11, Lcom/fsck/k9/ui/helper/DisplayHtmlUiFactory;->messageComposerHtmlSettingsProvider:Lnet/thunderbird/feature/mail/message/composer/html/MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;

    .line 412
    .line 413
    sget-object v15, Lnet/thunderbird/core/ui/theme/api/Theme;->DARK:Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 414
    .line 415
    new-instance v7, Lnet/thunderbird/core/common/mail/html/HtmlSettings;

    .line 416
    .line 417
    iget-object v13, v13, Lnet/thunderbird/feature/mail/message/composer/html/MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;->$themeManager:Lnet/thunderbird/core/ui/theme/api/ThemeManager;

    .line 418
    .line 419
    check-cast v13, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 420
    .line 421
    iget-object v6, v13, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 422
    .line 423
    check-cast v6, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 424
    .line 425
    invoke-virtual {v6}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 426
    .line 427
    .line 428
    move-result-object v6

    .line 429
    iget-object v6, v6, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 430
    .line 431
    iget-object v6, v6, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 432
    .line 433
    iget-object v6, v6, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->messageComposeTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 434
    .line 435
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 436
    .line 437
    .line 438
    move-result v6

    .line 439
    move-object/from16 v18, v13

    .line 440
    .line 441
    const/4 v13, 0x2

    .line 442
    const/16 v19, 0x0

    .line 443
    .line 444
    if-eqz v6, :cond_9

    .line 445
    .line 446
    move-object/from16 v20, v4

    .line 447
    .line 448
    const/4 v4, 0x1

    .line 449
    if-eq v6, v4, :cond_8

    .line 450
    .line 451
    if-ne v6, v13, :cond_7

    .line 452
    .line 453
    invoke-virtual/range {v18 .. v18}, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->getAppTheme()Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    goto :goto_2

    .line 458
    :cond_7
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 459
    .line 460
    .line 461
    throw v19

    .line 462
    :cond_8
    move-object v4, v15

    .line 463
    goto :goto_2

    .line 464
    :cond_9
    move-object/from16 v20, v4

    .line 465
    .line 466
    move-object v4, v5

    .line 467
    :goto_2
    if-ne v4, v15, :cond_a

    .line 468
    .line 469
    const/4 v4, 0x1

    .line 470
    :goto_3
    const/4 v6, 0x0

    .line 471
    goto :goto_4

    .line 472
    :cond_a
    const/4 v4, 0x0

    .line 473
    goto :goto_3

    .line 474
    :goto_4
    invoke-direct {v7, v4, v6}, Lnet/thunderbird/core/common/mail/html/HtmlSettings;-><init>(ZZ)V

    .line 475
    .line 476
    .line 477
    iget-object v4, v11, Lcom/fsck/k9/ui/helper/DisplayHtmlUiFactory;->cssClassNameProvider:Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;

    .line 478
    .line 479
    iget-object v6, v11, Lcom/fsck/k9/ui/helper/DisplayHtmlUiFactory;->cssStyleProviders:Ljava/util/List;

    .line 480
    .line 481
    invoke-direct {v12, v7, v4, v6}, Lcom/fsck/k9/message/html/DisplayHtml;-><init>(Lnet/thunderbird/core/common/mail/html/HtmlSettings;Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;Ljava/util/List;)V

    .line 482
    .line 483
    .line 484
    iput-object v12, v10, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 485
    .line 486
    const-class v4, Lcom/fsck/k9/view/WebViewConfigProvider;

    .line 487
    .line 488
    invoke-static {v4}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    check-cast v4, Lcom/fsck/k9/view/WebViewConfigProvider;

    .line 493
    .line 494
    const-class v6, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 495
    .line 496
    invoke-static {v6}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v6

    .line 500
    check-cast v6, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 501
    .line 502
    const v7, 0x7f090359

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 506
    .line 507
    .line 508
    move-result-object v7

    .line 509
    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    .line 510
    .line 511
    iput-object v7, v10, Lcom/fsck/k9/mailstore/LockableDatabase;->mReadLock:Ljava/lang/Object;

    .line 512
    .line 513
    const v7, 0x7f090355

    .line 514
    .line 515
    .line 516
    invoke-virtual {v1, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 517
    .line 518
    .line 519
    move-result-object v7

    .line 520
    iput-object v7, v10, Lcom/fsck/k9/mailstore/LockableDatabase;->mWriteLock:Ljava/lang/Object;

    .line 521
    .line 522
    const v7, 0x7f090358

    .line 523
    .line 524
    .line 525
    invoke-virtual {v1, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 526
    .line 527
    .line 528
    move-result-object v7

    .line 529
    iput-object v7, v10, Lcom/fsck/k9/mailstore/LockableDatabase;->context:Ljava/lang/Object;

    .line 530
    .line 531
    const v7, 0x7f090357

    .line 532
    .line 533
    .line 534
    invoke-virtual {v1, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 535
    .line 536
    .line 537
    move-result-object v7

    .line 538
    iput-object v7, v10, Lcom/fsck/k9/mailstore/LockableDatabase;->generalSettingsManager:Ljava/lang/Object;

    .line 539
    .line 540
    const v7, 0x7f090354

    .line 541
    .line 542
    .line 543
    invoke-virtual {v1, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 544
    .line 545
    .line 546
    move-result-object v7

    .line 547
    check-cast v7, Landroid/widget/EditText;

    .line 548
    .line 549
    iput-object v7, v10, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 550
    .line 551
    check-cast v6, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 552
    .line 553
    invoke-virtual {v6}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 554
    .line 555
    .line 556
    move-result-object v6

    .line 557
    iget-object v6, v6, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 558
    .line 559
    iget-object v6, v6, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 560
    .line 561
    iget-boolean v6, v6, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isUseMessageViewFixedWidthFont:Z

    .line 562
    .line 563
    if-eqz v6, :cond_b

    .line 564
    .line 565
    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 566
    .line 567
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 568
    .line 569
    .line 570
    :cond_b
    const/4 v6, 0x1

    .line 571
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->getInputExtras(Z)Landroid/os/Bundle;

    .line 572
    .line 573
    .line 574
    move-result-object v7

    .line 575
    const-string v11, "allowEmoji"

    .line 576
    .line 577
    invoke-virtual {v7, v11, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 578
    .line 579
    .line 580
    const v6, 0x7f090353

    .line 581
    .line 582
    .line 583
    invoke-virtual {v1, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 584
    .line 585
    .line 586
    move-result-object v6

    .line 587
    check-cast v6, Lcom/fsck/k9/view/MessageWebView;

    .line 588
    .line 589
    iput-object v6, v10, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/Object;

    .line 590
    .line 591
    iget-object v7, v4, Lcom/fsck/k9/view/WebViewConfigProvider;->themeManager:Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 592
    .line 593
    iget-object v11, v7, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 594
    .line 595
    check-cast v11, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 596
    .line 597
    invoke-virtual {v11}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 598
    .line 599
    .line 600
    move-result-object v11

    .line 601
    iget-object v11, v11, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 602
    .line 603
    iget-object v11, v11, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 604
    .line 605
    iget-object v11, v11, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->messageComposeTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 606
    .line 607
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 608
    .line 609
    .line 610
    move-result v11

    .line 611
    if-eqz v11, :cond_e

    .line 612
    .line 613
    const/4 v12, 0x1

    .line 614
    if-eq v11, v12, :cond_d

    .line 615
    .line 616
    if-ne v11, v13, :cond_c

    .line 617
    .line 618
    invoke-virtual {v7}, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->getAppTheme()Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 619
    .line 620
    .line 621
    move-result-object v5

    .line 622
    goto :goto_5

    .line 623
    :cond_c
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 624
    .line 625
    .line 626
    throw v19

    .line 627
    :cond_d
    move-object v5, v15

    .line 628
    :cond_e
    :goto_5
    invoke-virtual {v4, v5}, Lcom/fsck/k9/view/WebViewConfigProvider;->createWebViewConfig(Lnet/thunderbird/core/ui/theme/api/Theme;)Lcom/fsck/k9/view/WebViewConfig;

    .line 629
    .line 630
    .line 631
    move-result-object v4

    .line 632
    invoke-virtual {v6, v4}, Lcom/fsck/k9/view/MessageWebView;->configure(Lcom/fsck/k9/view/WebViewConfig;)V

    .line 633
    .line 634
    .line 635
    new-instance v4, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView$1;

    .line 636
    .line 637
    invoke-direct {v4}, Landroid/webkit/WebViewClient;-><init>()V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v6, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 641
    .line 642
    .line 643
    const v4, 0x7f090293

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 647
    .line 648
    .line 649
    move-result-object v5

    .line 650
    check-cast v5, Landroid/widget/EditText;

    .line 651
    .line 652
    iput-object v5, v10, Lcom/fsck/k9/mailstore/LockableDatabase;->mSchemaDefinition:Ljava/lang/Object;

    .line 653
    .line 654
    new-instance v5, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 655
    .line 656
    iget-object v6, v1, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 657
    .line 658
    invoke-direct {v5, v1, v10, v6}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;-><init>(Lcom/fsck/k9/activity/MessageCompose;Lcom/fsck/k9/mailstore/LockableDatabase;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 659
    .line 660
    .line 661
    iput-object v5, v1, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 662
    .line 663
    new-instance v5, Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 664
    .line 665
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 666
    .line 667
    .line 668
    move-result-object v6

    .line 669
    iget-object v7, v1, Lcom/fsck/k9/activity/MessageCompose;->attachmentMvpView:Lcom/beetstra/jutf7/Base64Util;

    .line 670
    .line 671
    invoke-static {v1}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManagerImpl;

    .line 672
    .line 673
    .line 674
    move-result-object v11

    .line 675
    invoke-direct {v5, v6, v7, v11, v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;-><init>(Landroid/content/Context;Lcom/beetstra/jutf7/Base64Util;Landroidx/loader/app/LoaderManagerImpl;Lcom/fsck/k9/activity/MessageCompose;)V

    .line 676
    .line 677
    .line 678
    iput-object v5, v1, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 679
    .line 680
    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 681
    .line 682
    .line 683
    move-result-object v4

    .line 684
    check-cast v4, Landroid/widget/EditText;

    .line 685
    .line 686
    iput-object v4, v1, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Landroid/widget/EditText;

    .line 687
    .line 688
    const/4 v6, 0x1

    .line 689
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->getInputExtras(Z)Landroid/os/Bundle;

    .line 690
    .line 691
    .line 692
    move-result-object v4

    .line 693
    const-string v5, "allowEmoji"

    .line 694
    .line 695
    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 696
    .line 697
    .line 698
    const v4, 0x7f09008f

    .line 699
    .line 700
    .line 701
    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 702
    .line 703
    .line 704
    move-result-object v4

    .line 705
    check-cast v4, Landroid/widget/LinearLayout;

    .line 706
    .line 707
    iput-object v4, v1, Lcom/fsck/k9/activity/MessageCompose;->attachmentsView:Landroid/widget/LinearLayout;

    .line 708
    .line 709
    new-instance v4, Lcom/fsck/k9/activity/MessageCompose$1;

    .line 710
    .line 711
    const/4 v5, 0x0

    .line 712
    invoke-direct {v4, v1, v5}, Lcom/fsck/k9/activity/MessageCompose$1;-><init>(Lcom/fsck/k9/activity/MessageCompose;I)V

    .line 713
    .line 714
    .line 715
    new-instance v5, Lcom/fsck/k9/activity/MessageCompose$1;

    .line 716
    .line 717
    invoke-direct {v5, v1, v6}, Lcom/fsck/k9/activity/MessageCompose$1;-><init>(Lcom/fsck/k9/activity/MessageCompose;I)V

    .line 718
    .line 719
    .line 720
    iget-object v6, v9, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 721
    .line 722
    check-cast v6, Ljava/util/LinkedHashSet;

    .line 723
    .line 724
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    iget-object v6, v9, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 728
    .line 729
    check-cast v6, Lcom/fsck/k9/view/RecipientSelectView;

    .line 730
    .line 731
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 732
    .line 733
    .line 734
    iget-object v6, v14, Lcom/fsck/k9/activity/compose/RecipientMvpView;->textWatchers:Ljava/util/HashSet;

    .line 735
    .line 736
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 737
    .line 738
    .line 739
    iget-object v6, v14, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 740
    .line 741
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 742
    .line 743
    .line 744
    iget-object v6, v14, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 745
    .line 746
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 747
    .line 748
    .line 749
    iget-object v6, v14, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 750
    .line 751
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 752
    .line 753
    .line 754
    iget-object v6, v10, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 755
    .line 756
    check-cast v6, Landroid/widget/EditText;

    .line 757
    .line 758
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 759
    .line 760
    .line 761
    new-instance v6, Lcom/fsck/k9/ui/compose/WrapUriTextWatcher;

    .line 762
    .line 763
    invoke-direct {v6}, Lcom/fsck/k9/ui/compose/WrapUriTextWatcher;-><init>()V

    .line 764
    .line 765
    .line 766
    iget-object v7, v10, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 767
    .line 768
    check-cast v7, Landroid/widget/EditText;

    .line 769
    .line 770
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 771
    .line 772
    .line 773
    iget-object v6, v1, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    .line 774
    .line 775
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 776
    .line 777
    .line 778
    iget-object v6, v1, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Landroid/widget/EditText;

    .line 779
    .line 780
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 781
    .line 782
    .line 783
    iget-object v4, v1, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Landroid/widget/EditText;

    .line 784
    .line 785
    new-instance v6, Lcom/fsck/k9/ui/compose/WrapUriTextWatcher;

    .line 786
    .line 787
    invoke-direct {v6}, Lcom/fsck/k9/ui/compose/WrapUriTextWatcher;-><init>()V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 791
    .line 792
    .line 793
    iget-object v4, v1, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 794
    .line 795
    sget-object v6, Lcom/fsck/k9/message/QuotedTextMode;->NONE:Lcom/fsck/k9/message/QuotedTextMode;

    .line 796
    .line 797
    invoke-virtual {v4, v6}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;)V

    .line 798
    .line 799
    .line 800
    iget-object v4, v1, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    .line 801
    .line 802
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 803
    .line 804
    .line 805
    iget-object v4, v1, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Landroid/widget/EditText;

    .line 806
    .line 807
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 808
    .line 809
    .line 810
    if-eqz v0, :cond_f

    .line 811
    .line 812
    const-string v4, "com.fsck.k9.activity.MessageCompose.stateKeySourceMessageProced"

    .line 813
    .line 814
    const/4 v6, 0x0

    .line 815
    invoke-virtual {v0, v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 816
    .line 817
    .line 818
    move-result v0

    .line 819
    iput-boolean v0, v1, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageProcessed:Z

    .line 820
    .line 821
    :cond_f
    iget-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->indentDataMapper:Lcom/fsck/k9/ui/compose/IntentDataMapper;

    .line 822
    .line 823
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 824
    .line 825
    .line 826
    const-string v0, "android.intent.extra.STREAM"

    .line 827
    .line 828
    const-string v4, "android.intent.action.SEND_MULTIPLE"

    .line 829
    .line 830
    const-string v6, "android.intent.action.SEND"

    .line 831
    .line 832
    const-string v7, "android.intent.action.SENDTO"

    .line 833
    .line 834
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v11

    .line 838
    new-instance v21, Lcom/fsck/k9/ui/compose/IntentData;

    .line 839
    .line 840
    sget-object v27, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 841
    .line 842
    const/16 v22, 0x0

    .line 843
    .line 844
    const/16 v23, 0x0

    .line 845
    .line 846
    const/16 v24, 0x0

    .line 847
    .line 848
    const/16 v25, 0x0

    .line 849
    .line 850
    const/16 v26, 0x0

    .line 851
    .line 852
    const/16 v28, 0x0

    .line 853
    .line 854
    const/16 v29, 0x0

    .line 855
    .line 856
    invoke-direct/range {v21 .. v29}, Lcom/fsck/k9/ui/compose/IntentData;-><init>(ZZLandroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    move-object/from16 v12, v27

    .line 860
    .line 861
    const-string v15, "android.intent.action.VIEW"

    .line 862
    .line 863
    invoke-virtual {v15, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 864
    .line 865
    .line 866
    move-result v18

    .line 867
    if-nez v18, :cond_10

    .line 868
    .line 869
    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 870
    .line 871
    .line 872
    move-result v18

    .line 873
    if-nez v18, :cond_10

    .line 874
    .line 875
    const-string v13, "android.nfc.action.NDEF_DISCOVERED"

    .line 876
    .line 877
    invoke-virtual {v13, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 878
    .line 879
    .line 880
    move-result v13

    .line 881
    if-eqz v13, :cond_11

    .line 882
    .line 883
    :cond_10
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 884
    .line 885
    .line 886
    move-result-object v22

    .line 887
    if-eqz v22, :cond_11

    .line 888
    .line 889
    const/16 v27, 0x0

    .line 890
    .line 891
    const/16 v28, 0xfb

    .line 892
    .line 893
    const/16 v23, 0x0

    .line 894
    .line 895
    const/16 v24, 0x0

    .line 896
    .line 897
    const/16 v25, 0x0

    .line 898
    .line 899
    const/16 v26, 0x0

    .line 900
    .line 901
    invoke-static/range {v21 .. v28}, Lcom/fsck/k9/ui/compose/IntentData;->copy$default(Lcom/fsck/k9/ui/compose/IntentData;Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Lcom/fsck/k9/ui/compose/IntentData;

    .line 902
    .line 903
    .line 904
    move-result-object v21

    .line 905
    :cond_11
    move-object/from16 v22, v21

    .line 906
    .line 907
    invoke-virtual {v6, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 908
    .line 909
    .line 910
    move-result v13

    .line 911
    if-nez v13, :cond_13

    .line 912
    .line 913
    invoke-virtual {v4, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 914
    .line 915
    .line 916
    move-result v13

    .line 917
    if-nez v13, :cond_13

    .line 918
    .line 919
    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 920
    .line 921
    .line 922
    move-result v7

    .line 923
    if-nez v7, :cond_13

    .line 924
    .line 925
    invoke-virtual {v15, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 926
    .line 927
    .line 928
    move-result v7

    .line 929
    if-eqz v7, :cond_12

    .line 930
    .line 931
    goto :goto_7

    .line 932
    :cond_12
    :goto_6
    move-object/from16 v23, v22

    .line 933
    .line 934
    goto/16 :goto_b

    .line 935
    .line 936
    :cond_13
    :goto_7
    const-string v7, "android.intent.extra.TEXT"

    .line 937
    .line 938
    invoke-virtual {v8, v7}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 939
    .line 940
    .line 941
    move-result-object v24

    .line 942
    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object v25

    .line 946
    const-string v7, "android.intent.extra.SUBJECT"

    .line 947
    .line 948
    invoke-virtual {v8, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v27

    .line 952
    const/16 v28, 0x0

    .line 953
    .line 954
    const/16 v29, 0xa4

    .line 955
    .line 956
    const/16 v23, 0x0

    .line 957
    .line 958
    const/16 v26, 0x0

    .line 959
    .line 960
    invoke-static/range {v22 .. v29}, Lcom/fsck/k9/ui/compose/IntentData;->copy$default(Lcom/fsck/k9/ui/compose/IntentData;Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Lcom/fsck/k9/ui/compose/IntentData;

    .line 961
    .line 962
    .line 963
    move-result-object v30

    .line 964
    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 965
    .line 966
    .line 967
    move-result v6

    .line 968
    if-eqz v6, :cond_15

    .line 969
    .line 970
    const-class v4, Landroid/net/Uri;

    .line 971
    .line 972
    invoke-static {v8, v0, v4}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 973
    .line 974
    .line 975
    move-result-object v0

    .line 976
    check-cast v0, Landroid/net/Uri;

    .line 977
    .line 978
    if-eqz v0, :cond_14

    .line 979
    .line 980
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 981
    .line 982
    .line 983
    move-result-object v27

    .line 984
    move-object/from16 v34, v27

    .line 985
    .line 986
    goto :goto_a

    .line 987
    :cond_14
    move-object/from16 v34, v12

    .line 988
    .line 989
    goto :goto_a

    .line 990
    :cond_15
    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 991
    .line 992
    .line 993
    move-result v4

    .line 994
    if-eqz v4, :cond_14

    .line 995
    .line 996
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 997
    .line 998
    const/16 v6, 0x22

    .line 999
    .line 1000
    if-lt v4, v6, :cond_16

    .line 1001
    .line 1002
    invoke-static {v8}, Landroidx/compose/ui/window/Api33Impl;->getParcelableArrayListExtra(Landroid/content/Intent;)Ljava/util/ArrayList;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v0

    .line 1006
    goto :goto_8

    .line 1007
    :cond_16
    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v0

    .line 1011
    :goto_8
    if-eqz v0, :cond_14

    .line 1012
    .line 1013
    new-instance v4, Ljava/util/ArrayList;

    .line 1014
    .line 1015
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1016
    .line 1017
    .line 1018
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    :cond_17
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1023
    .line 1024
    .line 1025
    move-result v6

    .line 1026
    if-eqz v6, :cond_18

    .line 1027
    .line 1028
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v6

    .line 1032
    instance-of v7, v6, Landroid/net/Uri;

    .line 1033
    .line 1034
    if-eqz v7, :cond_17

    .line 1035
    .line 1036
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    .line 1038
    .line 1039
    goto :goto_9

    .line 1040
    :cond_18
    move-object/from16 v34, v4

    .line 1041
    .line 1042
    :goto_a
    const/16 v36, 0x0

    .line 1043
    .line 1044
    const/16 v37, 0xdf

    .line 1045
    .line 1046
    const/16 v31, 0x0

    .line 1047
    .line 1048
    const/16 v32, 0x0

    .line 1049
    .line 1050
    const/16 v33, 0x0

    .line 1051
    .line 1052
    const/16 v35, 0x0

    .line 1053
    .line 1054
    invoke-static/range {v30 .. v37}, Lcom/fsck/k9/ui/compose/IntentData;->copy$default(Lcom/fsck/k9/ui/compose/IntentData;Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Lcom/fsck/k9/ui/compose/IntentData;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v22

    .line 1058
    goto :goto_6

    .line 1059
    :goto_b
    const-string v0, "org.autocrypt.PEER_ACTION"

    .line 1060
    .line 1061
    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1062
    .line 1063
    .line 1064
    move-result v0

    .line 1065
    if-eqz v0, :cond_19

    .line 1066
    .line 1067
    const-string v0, "autocrypt_peer_id"

    .line 1068
    .line 1069
    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v29

    .line 1073
    const/16 v28, 0x0

    .line 1074
    .line 1075
    const/16 v30, 0x7e

    .line 1076
    .line 1077
    const/16 v24, 0x0

    .line 1078
    .line 1079
    const/16 v25, 0x0

    .line 1080
    .line 1081
    const/16 v26, 0x0

    .line 1082
    .line 1083
    const/16 v27, 0x0

    .line 1084
    .line 1085
    invoke-static/range {v23 .. v30}, Lcom/fsck/k9/ui/compose/IntentData;->copy$default(Lcom/fsck/k9/ui/compose/IntentData;Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Lcom/fsck/k9/ui/compose/IntentData;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v23

    .line 1089
    :cond_19
    move-object/from16 v0, v23

    .line 1090
    .line 1091
    iget-object v4, v0, Lcom/fsck/k9/ui/compose/IntentData;->mailToUri:Landroid/net/Uri;

    .line 1092
    .line 1093
    if-eqz v4, :cond_1c

    .line 1094
    .line 1095
    const-string v6, "mailto"

    .line 1096
    .line 1097
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v7

    .line 1101
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1102
    .line 1103
    .line 1104
    move-result v6

    .line 1105
    if-eqz v6, :cond_1c

    .line 1106
    .line 1107
    invoke-static {v4}, Lcom/fsck/k9/helper/MailTo;->parse(Landroid/net/Uri;)Lcom/fsck/k9/helper/MailTo;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v4

    .line 1111
    iget-object v6, v1, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 1112
    .line 1113
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1114
    .line 1115
    .line 1116
    iget-object v7, v4, Lcom/fsck/k9/helper/MailTo;->toAddresses:[Lcom/fsck/k9/mail/Address;

    .line 1117
    .line 1118
    array-length v11, v7

    .line 1119
    invoke-static {v7, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v7

    .line 1123
    check-cast v7, [Lcom/fsck/k9/mail/Address;

    .line 1124
    .line 1125
    invoke-virtual {v6, v7}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addToAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 1126
    .line 1127
    .line 1128
    iget-object v7, v4, Lcom/fsck/k9/helper/MailTo;->ccAddresses:[Lcom/fsck/k9/mail/Address;

    .line 1129
    .line 1130
    array-length v11, v7

    .line 1131
    invoke-static {v7, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v7

    .line 1135
    check-cast v7, [Lcom/fsck/k9/mail/Address;

    .line 1136
    .line 1137
    invoke-virtual {v6, v7}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addCcAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 1138
    .line 1139
    .line 1140
    iget-object v7, v4, Lcom/fsck/k9/helper/MailTo;->bccAddresses:[Lcom/fsck/k9/mail/Address;

    .line 1141
    .line 1142
    array-length v11, v7

    .line 1143
    invoke-static {v7, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v7

    .line 1147
    check-cast v7, [Lcom/fsck/k9/mail/Address;

    .line 1148
    .line 1149
    invoke-virtual {v6, v7}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addBccAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 1150
    .line 1151
    .line 1152
    iget-object v6, v4, Lcom/fsck/k9/helper/MailTo;->subject:Ljava/lang/String;

    .line 1153
    .line 1154
    if-eqz v6, :cond_1a

    .line 1155
    .line 1156
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 1157
    .line 1158
    .line 1159
    move-result v7

    .line 1160
    if-nez v7, :cond_1a

    .line 1161
    .line 1162
    iget-object v7, v1, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    .line 1163
    .line 1164
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    .line 1166
    .line 1167
    :cond_1a
    iget-object v6, v4, Lcom/fsck/k9/helper/MailTo;->inReplyToMessageId:Ljava/lang/String;

    .line 1168
    .line 1169
    if-eqz v6, :cond_1b

    .line 1170
    .line 1171
    iput-object v6, v1, Lcom/fsck/k9/activity/MessageCompose;->repliedToMessageId:Ljava/lang/String;

    .line 1172
    .line 1173
    :cond_1b
    iget-object v4, v4, Lcom/fsck/k9/helper/MailTo;->body:Ljava/lang/String;

    .line 1174
    .line 1175
    if-eqz v4, :cond_1c

    .line 1176
    .line 1177
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 1178
    .line 1179
    .line 1180
    move-result v6

    .line 1181
    if-nez v6, :cond_1c

    .line 1182
    .line 1183
    iget-object v6, v1, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Landroid/widget/EditText;

    .line 1184
    .line 1185
    const-string v7, "\r\n"

    .line 1186
    .line 1187
    const-string v11, "\n"

    .line 1188
    .line 1189
    invoke-static {v4, v7, v11}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v4

    .line 1193
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    .line 1195
    .line 1196
    :cond_1c
    iget-object v4, v0, Lcom/fsck/k9/ui/compose/IntentData;->extraText:Ljava/lang/CharSequence;

    .line 1197
    .line 1198
    if-eqz v4, :cond_1e

    .line 1199
    .line 1200
    iget-object v4, v1, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Landroid/widget/EditText;

    .line 1201
    .line 1202
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v4

    .line 1206
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 1207
    .line 1208
    .line 1209
    move-result v4

    .line 1210
    if-nez v4, :cond_1e

    .line 1211
    .line 1212
    iget-object v4, v1, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Landroid/widget/EditText;

    .line 1213
    .line 1214
    iget-object v6, v0, Lcom/fsck/k9/ui/compose/IntentData;->extraText:Ljava/lang/CharSequence;

    .line 1215
    .line 1216
    if-eqz v6, :cond_1d

    .line 1217
    .line 1218
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v6

    .line 1222
    if-eqz v6, :cond_1d

    .line 1223
    .line 1224
    const-string v7, "\r\n"

    .line 1225
    .line 1226
    const-string v11, "\n"

    .line 1227
    .line 1228
    invoke-static {v6, v7, v11}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v6

    .line 1232
    goto :goto_c

    .line 1233
    :cond_1d
    move-object/from16 v6, v19

    .line 1234
    .line 1235
    :goto_c
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    .line 1237
    .line 1238
    :cond_1e
    iget-object v4, v0, Lcom/fsck/k9/ui/compose/IntentData;->extraStream:Ljava/util/List;

    .line 1239
    .line 1240
    iget-object v6, v0, Lcom/fsck/k9/ui/compose/IntentData;->intentType:Ljava/lang/String;

    .line 1241
    .line 1242
    if-eqz v6, :cond_1f

    .line 1243
    .line 1244
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v4

    .line 1248
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1249
    .line 1250
    .line 1251
    move-result v7

    .line 1252
    if-eqz v7, :cond_1f

    .line 1253
    .line 1254
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v7

    .line 1258
    check-cast v7, Landroid/net/Uri;

    .line 1259
    .line 1260
    iget-object v11, v1, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 1261
    .line 1262
    const/4 v12, 0x0

    .line 1263
    invoke-virtual {v11, v7, v6, v12, v12}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->addAttachment(Landroid/net/Uri;Ljava/lang/String;ZZ)V

    .line 1264
    .line 1265
    .line 1266
    goto :goto_d

    .line 1267
    :cond_1f
    iget-object v4, v0, Lcom/fsck/k9/ui/compose/IntentData;->subject:Ljava/lang/String;

    .line 1268
    .line 1269
    if-eqz v4, :cond_20

    .line 1270
    .line 1271
    iget-object v4, v1, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    .line 1272
    .line 1273
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v4

    .line 1277
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 1278
    .line 1279
    .line 1280
    move-result v4

    .line 1281
    if-nez v4, :cond_20

    .line 1282
    .line 1283
    iget-object v4, v1, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    .line 1284
    .line 1285
    iget-object v6, v0, Lcom/fsck/k9/ui/compose/IntentData;->subject:Ljava/lang/String;

    .line 1286
    .line 1287
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1288
    .line 1289
    .line 1290
    :cond_20
    iget-boolean v4, v0, Lcom/fsck/k9/ui/compose/IntentData;->shouldInitFromSendOrViewIntent:Z

    .line 1291
    .line 1292
    if-eqz v4, :cond_26

    .line 1293
    .line 1294
    iget-object v4, v1, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 1295
    .line 1296
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1297
    .line 1298
    .line 1299
    const-string v6, "android.intent.extra.EMAIL"

    .line 1300
    .line 1301
    invoke-virtual {v8, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v6

    .line 1305
    if-eqz v6, :cond_21

    .line 1306
    .line 1307
    invoke-static {v6}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->toAddressArray([Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v6

    .line 1311
    goto :goto_e

    .line 1312
    :cond_21
    move-object/from16 v6, v19

    .line 1313
    .line 1314
    :goto_e
    const-string v7, "android.intent.extra.CC"

    .line 1315
    .line 1316
    invoke-virtual {v8, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v7

    .line 1320
    if-eqz v7, :cond_22

    .line 1321
    .line 1322
    invoke-static {v7}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->toAddressArray([Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v7

    .line 1326
    goto :goto_f

    .line 1327
    :cond_22
    move-object/from16 v7, v19

    .line 1328
    .line 1329
    :goto_f
    const-string v11, "android.intent.extra.BCC"

    .line 1330
    .line 1331
    invoke-virtual {v8, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v11

    .line 1335
    if-eqz v11, :cond_23

    .line 1336
    .line 1337
    invoke-static {v11}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->toAddressArray([Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v11

    .line 1341
    goto :goto_10

    .line 1342
    :cond_23
    move-object/from16 v11, v19

    .line 1343
    .line 1344
    :goto_10
    if-eqz v6, :cond_24

    .line 1345
    .line 1346
    array-length v12, v6

    .line 1347
    invoke-static {v6, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v6

    .line 1351
    check-cast v6, [Lcom/fsck/k9/mail/Address;

    .line 1352
    .line 1353
    invoke-virtual {v4, v6}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addToAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 1354
    .line 1355
    .line 1356
    :cond_24
    if-eqz v7, :cond_25

    .line 1357
    .line 1358
    array-length v6, v7

    .line 1359
    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v6

    .line 1363
    check-cast v6, [Lcom/fsck/k9/mail/Address;

    .line 1364
    .line 1365
    invoke-virtual {v4, v6}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addCcAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 1366
    .line 1367
    .line 1368
    :cond_25
    if-eqz v11, :cond_26

    .line 1369
    .line 1370
    array-length v6, v11

    .line 1371
    invoke-static {v11, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v6

    .line 1375
    check-cast v6, [Lcom/fsck/k9/mail/Address;

    .line 1376
    .line 1377
    invoke-virtual {v4, v6}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addBccAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 1378
    .line 1379
    .line 1380
    :cond_26
    iget-object v4, v0, Lcom/fsck/k9/ui/compose/IntentData;->trustId:Ljava/lang/String;

    .line 1381
    .line 1382
    if-eqz v4, :cond_27

    .line 1383
    .line 1384
    iget-object v6, v1, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 1385
    .line 1386
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1387
    .line 1388
    .line 1389
    sget-object v7, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 1390
    .line 1391
    invoke-static {v4}, Lcom/fsck/k9/mail/K9MailLib;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v4

    .line 1395
    array-length v7, v4

    .line 1396
    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v4

    .line 1400
    check-cast v4, [Lcom/fsck/k9/mail/Address;

    .line 1401
    .line 1402
    invoke-virtual {v6, v4}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addToAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 1403
    .line 1404
    .line 1405
    sget-object v4, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_ENABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 1406
    .line 1407
    iput-object v4, v6, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 1408
    .line 1409
    :cond_27
    iget-boolean v0, v0, Lcom/fsck/k9/ui/compose/IntentData;->startedByExternalIntent:Z

    .line 1410
    .line 1411
    if-eqz v0, :cond_28

    .line 1412
    .line 1413
    sget-object v0, Lcom/fsck/k9/activity/MessageCompose$Action;->COMPOSE:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1414
    .line 1415
    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1416
    .line 1417
    const/4 v6, 0x1

    .line 1418
    iput-boolean v6, v1, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 1419
    .line 1420
    :goto_11
    const/4 v6, 0x0

    .line 1421
    goto :goto_12

    .line 1422
    :cond_28
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v0

    .line 1426
    const-string v4, "com.fsck.k9.intent.action.COMPOSE"

    .line 1427
    .line 1428
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1429
    .line 1430
    .line 1431
    move-result v4

    .line 1432
    if-eqz v4, :cond_29

    .line 1433
    .line 1434
    sget-object v0, Lcom/fsck/k9/activity/MessageCompose$Action;->COMPOSE:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1435
    .line 1436
    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1437
    .line 1438
    iget-object v0, v14, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 1439
    .line 1440
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1441
    .line 1442
    .line 1443
    goto :goto_11

    .line 1444
    :cond_29
    const-string v4, "com.fsck.k9.intent.action.REPLY"

    .line 1445
    .line 1446
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1447
    .line 1448
    .line 1449
    move-result v4

    .line 1450
    if-eqz v4, :cond_2a

    .line 1451
    .line 1452
    sget-object v0, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1453
    .line 1454
    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1455
    .line 1456
    goto :goto_11

    .line 1457
    :cond_2a
    const-string v4, "com.fsck.k9.intent.action.REPLY_ALL"

    .line 1458
    .line 1459
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1460
    .line 1461
    .line 1462
    move-result v4

    .line 1463
    if-eqz v4, :cond_2b

    .line 1464
    .line 1465
    sget-object v0, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY_ALL:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1466
    .line 1467
    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1468
    .line 1469
    goto :goto_11

    .line 1470
    :cond_2b
    const-string v4, "com.fsck.k9.intent.action.FORWARD"

    .line 1471
    .line 1472
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1473
    .line 1474
    .line 1475
    move-result v4

    .line 1476
    if-eqz v4, :cond_2c

    .line 1477
    .line 1478
    sget-object v0, Lcom/fsck/k9/activity/MessageCompose$Action;->FORWARD:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1479
    .line 1480
    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1481
    .line 1482
    goto :goto_11

    .line 1483
    :cond_2c
    const-string v4, "com.fsck.k9.intent.action.FORWARD_AS_ATTACHMENT"

    .line 1484
    .line 1485
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1486
    .line 1487
    .line 1488
    move-result v4

    .line 1489
    if-eqz v4, :cond_2d

    .line 1490
    .line 1491
    sget-object v0, Lcom/fsck/k9/activity/MessageCompose$Action;->FORWARD_AS_ATTACHMENT:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1492
    .line 1493
    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1494
    .line 1495
    goto :goto_11

    .line 1496
    :cond_2d
    const-string v4, "com.fsck.k9.intent.action.EDIT_DRAFT"

    .line 1497
    .line 1498
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1499
    .line 1500
    .line 1501
    move-result v0

    .line 1502
    if-eqz v0, :cond_2e

    .line 1503
    .line 1504
    sget-object v0, Lcom/fsck/k9/activity/MessageCompose$Action;->EDIT_DRAFT:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1505
    .line 1506
    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1507
    .line 1508
    goto :goto_11

    .line 1509
    :cond_2e
    const-string v0, "MessageCompose was started with an unsupported action"

    .line 1510
    .line 1511
    const/4 v6, 0x0

    .line 1512
    new-array v4, v6, [Ljava/lang/Object;

    .line 1513
    .line 1514
    invoke-static {v0, v4}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1515
    .line 1516
    .line 1517
    sget-object v0, Lcom/fsck/k9/activity/MessageCompose$Action;->COMPOSE:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1518
    .line 1519
    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1520
    .line 1521
    :goto_12
    iget-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 1522
    .line 1523
    if-nez v0, :cond_2f

    .line 1524
    .line 1525
    iget-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1526
    .line 1527
    invoke-virtual {v0, v6}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIdentity(I)Lnet/thunderbird/core/android/account/Identity;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v0

    .line 1531
    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 1532
    .line 1533
    :cond_2f
    iget-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1534
    .line 1535
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isSignatureBeforeQuotedText()Z

    .line 1536
    .line 1537
    .line 1538
    move-result v0

    .line 1539
    const/16 v4, 0x8

    .line 1540
    .line 1541
    if-eqz v0, :cond_30

    .line 1542
    .line 1543
    iput-object v2, v1, Lcom/fsck/k9/activity/MessageCompose;->signatureView:Landroid/widget/EditText;

    .line 1544
    .line 1545
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1546
    .line 1547
    .line 1548
    goto :goto_13

    .line 1549
    :cond_30
    iput-object v3, v1, Lcom/fsck/k9/activity/MessageCompose;->signatureView:Landroid/widget/EditText;

    .line 1550
    .line 1551
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1552
    .line 1553
    .line 1554
    :goto_13
    invoke-virtual {v1}, Lcom/fsck/k9/activity/MessageCompose;->updateSignature()V

    .line 1555
    .line 1556
    .line 1557
    iget-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->signatureView:Landroid/widget/EditText;

    .line 1558
    .line 1559
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1560
    .line 1561
    .line 1562
    iget-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 1563
    .line 1564
    iget-boolean v0, v0, Lnet/thunderbird/core/android/account/Identity;->signatureUse:Z

    .line 1565
    .line 1566
    if-nez v0, :cond_31

    .line 1567
    .line 1568
    iget-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->signatureView:Landroid/widget/EditText;

    .line 1569
    .line 1570
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1571
    .line 1572
    .line 1573
    :cond_31
    iget-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1574
    .line 1575
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isMessageReadReceipt()Z

    .line 1576
    .line 1577
    .line 1578
    move-result v0

    .line 1579
    iput-boolean v0, v1, Lcom/fsck/k9/activity/MessageCompose;->requestReadReceipt:Z

    .line 1580
    .line 1581
    iget-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->chooseIdentityView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1582
    .line 1583
    iget-object v2, v1, Lcom/fsck/k9/activity/MessageCompose;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 1584
    .line 1585
    iget-object v2, v2, Lnet/thunderbird/core/android/account/Identity;->email:Ljava/lang/String;

    .line 1586
    .line 1587
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1588
    .line 1589
    .line 1590
    iget-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->replyToPresenter:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 1591
    .line 1592
    iget-object v2, v1, Lcom/fsck/k9/activity/MessageCompose;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 1593
    .line 1594
    invoke-virtual {v0, v2}, Lcom/fsck/k9/backend/imap/ImapSync;->setIdentity(Lnet/thunderbird/core/android/account/Identity;)V

    .line 1595
    .line 1596
    .line 1597
    iget-boolean v0, v1, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageProcessed:Z

    .line 1598
    .line 1599
    if-nez v0, :cond_38

    .line 1600
    .line 1601
    iget-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1602
    .line 1603
    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1604
    .line 1605
    if-eq v0, v2, :cond_32

    .line 1606
    .line 1607
    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY_ALL:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1608
    .line 1609
    if-eq v0, v2, :cond_32

    .line 1610
    .line 1611
    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->FORWARD:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1612
    .line 1613
    if-eq v0, v2, :cond_32

    .line 1614
    .line 1615
    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->FORWARD_AS_ATTACHMENT:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1616
    .line 1617
    if-eq v0, v2, :cond_32

    .line 1618
    .line 1619
    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->EDIT_DRAFT:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1620
    .line 1621
    if-ne v0, v2, :cond_38

    .line 1622
    .line 1623
    :cond_32
    iget-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->messageLoaderHelperFactory:Lcom/fsck/k9/activity/MessageLoaderHelperFactory;

    .line 1624
    .line 1625
    invoke-static {v1}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManagerImpl;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v2

    .line 1629
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v3

    .line 1633
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1634
    .line 1635
    .line 1636
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1637
    .line 1638
    .line 1639
    iget-object v4, v0, Lcom/fsck/k9/activity/MessageLoaderHelperFactory;->messageComposerHtmlSettingsProvider:Lnet/thunderbird/feature/mail/message/composer/html/MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;

    .line 1640
    .line 1641
    sget-object v5, Lnet/thunderbird/core/ui/theme/api/Theme;->DARK:Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 1642
    .line 1643
    new-instance v6, Lnet/thunderbird/core/common/mail/html/HtmlSettings;

    .line 1644
    .line 1645
    iget-object v4, v4, Lnet/thunderbird/feature/mail/message/composer/html/MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;->$themeManager:Lnet/thunderbird/core/ui/theme/api/ThemeManager;

    .line 1646
    .line 1647
    check-cast v4, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 1648
    .line 1649
    iget-object v7, v4, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 1650
    .line 1651
    check-cast v7, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 1652
    .line 1653
    invoke-virtual {v7}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v7

    .line 1657
    iget-object v7, v7, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 1658
    .line 1659
    iget-object v7, v7, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 1660
    .line 1661
    iget-object v7, v7, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->messageComposeTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 1662
    .line 1663
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 1664
    .line 1665
    .line 1666
    move-result v7

    .line 1667
    if-eqz v7, :cond_35

    .line 1668
    .line 1669
    const/4 v12, 0x1

    .line 1670
    if-eq v7, v12, :cond_34

    .line 1671
    .line 1672
    const/4 v11, 0x2

    .line 1673
    if-ne v7, v11, :cond_33

    .line 1674
    .line 1675
    invoke-virtual {v4}, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->getAppTheme()Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 1676
    .line 1677
    .line 1678
    move-result-object v4

    .line 1679
    goto :goto_14

    .line 1680
    :cond_33
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1681
    .line 1682
    .line 1683
    return-void

    .line 1684
    :cond_34
    move-object v4, v5

    .line 1685
    goto :goto_14

    .line 1686
    :cond_35
    sget-object v4, Lnet/thunderbird/core/ui/theme/api/Theme;->LIGHT:Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 1687
    .line 1688
    :goto_14
    if-ne v4, v5, :cond_36

    .line 1689
    .line 1690
    const/4 v4, 0x1

    .line 1691
    :goto_15
    const/4 v5, 0x0

    .line 1692
    goto :goto_16

    .line 1693
    :cond_36
    const/4 v4, 0x0

    .line 1694
    goto :goto_15

    .line 1695
    :goto_16
    invoke-direct {v6, v4, v5}, Lnet/thunderbird/core/common/mail/html/HtmlSettings;-><init>(ZZ)V

    .line 1696
    .line 1697
    .line 1698
    iget-object v0, v0, Lcom/fsck/k9/activity/MessageLoaderHelperFactory;->messageViewInfoExtractorFactory:Lcom/fsck/k9/mailstore/MessageViewInfoExtractorFactory;

    .line 1699
    .line 1700
    invoke-virtual {v0, v6}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractorFactory;->create(Lnet/thunderbird/core/common/mail/html/HtmlSettings;)Lcom/fsck/k9/backend/imap/ImapSync;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v5

    .line 1704
    new-instance v0, Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 1705
    .line 1706
    move-object/from16 v4, v20

    .line 1707
    .line 1708
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/activity/MessageLoaderHelper;-><init>(Landroid/content/Context;Landroidx/loader/app/LoaderManagerImpl;Landroidx/fragment/app/FragmentManager;Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;Lcom/fsck/k9/backend/imap/ImapSync;)V

    .line 1709
    .line 1710
    .line 1711
    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 1712
    .line 1713
    iget-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->internalMessageHandler:Lcom/fsck/k9/activity/MessageCompose$14;

    .line 1714
    .line 1715
    const/4 v6, 0x1

    .line 1716
    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1717
    .line 1718
    .line 1719
    iget-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1720
    .line 1721
    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->FORWARD_AS_ATTACHMENT:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1722
    .line 1723
    if-ne v0, v2, :cond_37

    .line 1724
    .line 1725
    iget-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 1726
    .line 1727
    iget-object v2, v1, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 1728
    .line 1729
    iput-boolean v6, v0, Lcom/fsck/k9/activity/MessageLoaderHelper;->onlyLoadMetadata:Z

    .line 1730
    .line 1731
    iput-object v2, v0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 1732
    .line 1733
    const-class v3, Lcom/fsck/k9/Preferences;

    .line 1734
    .line 1735
    invoke-static {v3}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1736
    .line 1737
    .line 1738
    move-result-object v3

    .line 1739
    check-cast v3, Lcom/fsck/k9/Preferences;

    .line 1740
    .line 1741
    iget-object v2, v2, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 1742
    .line 1743
    invoke-virtual {v3, v2}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v2

    .line 1747
    iput-object v2, v0, Lcom/fsck/k9/activity/MessageLoaderHelper;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1748
    .line 1749
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->startOrResumeLocalMessageLoader()V

    .line 1750
    .line 1751
    .line 1752
    goto :goto_17

    .line 1753
    :cond_37
    const-string v0, "message_decryption_result"

    .line 1754
    .line 1755
    const-class v2, Landroid/os/Parcelable;

    .line 1756
    .line 1757
    invoke-static {v8, v0, v2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v0

    .line 1761
    check-cast v0, Landroid/os/Parcelable;

    .line 1762
    .line 1763
    iget-object v2, v1, Lcom/fsck/k9/activity/MessageCompose;->messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 1764
    .line 1765
    iget-object v3, v1, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 1766
    .line 1767
    invoke-virtual {v2, v3, v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->asyncStartOrResumeLoadingMessage(Lapp/k9mail/legacy/message/controller/MessageReference;Landroid/os/Parcelable;)V

    .line 1768
    .line 1769
    .line 1770
    :cond_38
    :goto_17
    iget-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1771
    .line 1772
    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1773
    .line 1774
    if-eq v0, v2, :cond_3b

    .line 1775
    .line 1776
    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY_ALL:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1777
    .line 1778
    if-ne v0, v2, :cond_39

    .line 1779
    .line 1780
    goto :goto_18

    .line 1781
    :cond_39
    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->FORWARD:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1782
    .line 1783
    if-eq v0, v2, :cond_3a

    .line 1784
    .line 1785
    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->FORWARD_AS_ATTACHMENT:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1786
    .line 1787
    if-ne v0, v2, :cond_3c

    .line 1788
    .line 1789
    :cond_3a
    sget-object v0, Lnet/thunderbird/core/common/mail/Flag;->FORWARDED:Lnet/thunderbird/core/common/mail/Flag;

    .line 1790
    .line 1791
    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->relatedFlag:Lnet/thunderbird/core/common/mail/Flag;

    .line 1792
    .line 1793
    goto :goto_19

    .line 1794
    :cond_3b
    :goto_18
    sget-object v0, Lnet/thunderbird/core/common/mail/Flag;->ANSWERED:Lnet/thunderbird/core/common/mail/Flag;

    .line 1795
    .line 1796
    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->relatedFlag:Lnet/thunderbird/core/common/mail/Flag;

    .line 1797
    .line 1798
    :cond_3c
    :goto_19
    invoke-virtual {v1}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    .line 1799
    .line 1800
    .line 1801
    sget-object v0, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 1802
    .line 1803
    iget v0, v0, Lcom/fsck/k9/FontSizes;->messageComposeInput:I

    .line 1804
    .line 1805
    iget-object v2, v9, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 1806
    .line 1807
    check-cast v2, Lcom/fsck/k9/view/RecipientSelectView;

    .line 1808
    .line 1809
    const/16 v3, 0xf

    .line 1810
    .line 1811
    const/4 v4, -0x1

    .line 1812
    const/16 v5, 0x16

    .line 1813
    .line 1814
    const/16 v6, 0xa

    .line 1815
    .line 1816
    const/16 v7, 0xc

    .line 1817
    .line 1818
    const/16 v8, 0xe

    .line 1819
    .line 1820
    const/16 v9, 0x10

    .line 1821
    .line 1822
    const/16 v11, 0x12

    .line 1823
    .line 1824
    const/16 v12, 0x14

    .line 1825
    .line 1826
    if-eq v0, v6, :cond_43

    .line 1827
    .line 1828
    if-eq v0, v7, :cond_42

    .line 1829
    .line 1830
    if-eq v0, v8, :cond_41

    .line 1831
    .line 1832
    if-eq v0, v9, :cond_40

    .line 1833
    .line 1834
    if-eq v0, v11, :cond_3f

    .line 1835
    .line 1836
    if-eq v0, v12, :cond_3e

    .line 1837
    .line 1838
    if-eq v0, v5, :cond_3d

    .line 1839
    .line 1840
    move v13, v4

    .line 1841
    goto :goto_1a

    .line 1842
    :cond_3d
    move v13, v12

    .line 1843
    goto :goto_1a

    .line 1844
    :cond_3e
    move v13, v11

    .line 1845
    goto :goto_1a

    .line 1846
    :cond_3f
    move v13, v9

    .line 1847
    goto :goto_1a

    .line 1848
    :cond_40
    move v13, v3

    .line 1849
    goto :goto_1a

    .line 1850
    :cond_41
    move v13, v8

    .line 1851
    goto :goto_1a

    .line 1852
    :cond_42
    move v13, v7

    .line 1853
    goto :goto_1a

    .line 1854
    :cond_43
    move v13, v6

    .line 1855
    :goto_1a
    invoke-virtual {v2, v13}, Lcom/fsck/k9/view/RecipientSelectView;->setTokenTextSize(I)V

    .line 1856
    .line 1857
    .line 1858
    invoke-static {v2, v0}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 1859
    .line 1860
    .line 1861
    iget-object v2, v14, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 1862
    .line 1863
    iget-object v13, v14, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 1864
    .line 1865
    iget-object v14, v14, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 1866
    .line 1867
    if-eq v0, v6, :cond_49

    .line 1868
    .line 1869
    if-eq v0, v7, :cond_48

    .line 1870
    .line 1871
    if-eq v0, v8, :cond_47

    .line 1872
    .line 1873
    if-eq v0, v9, :cond_4a

    .line 1874
    .line 1875
    if-eq v0, v11, :cond_46

    .line 1876
    .line 1877
    if-eq v0, v12, :cond_45

    .line 1878
    .line 1879
    if-eq v0, v5, :cond_44

    .line 1880
    .line 1881
    move v3, v4

    .line 1882
    goto :goto_1b

    .line 1883
    :cond_44
    move v3, v12

    .line 1884
    goto :goto_1b

    .line 1885
    :cond_45
    move v3, v11

    .line 1886
    goto :goto_1b

    .line 1887
    :cond_46
    move v3, v9

    .line 1888
    goto :goto_1b

    .line 1889
    :cond_47
    move v3, v8

    .line 1890
    goto :goto_1b

    .line 1891
    :cond_48
    move v3, v7

    .line 1892
    goto :goto_1b

    .line 1893
    :cond_49
    move v3, v6

    .line 1894
    :cond_4a
    :goto_1b
    invoke-virtual {v14, v3}, Lcom/fsck/k9/view/RecipientSelectView;->setTokenTextSize(I)V

    .line 1895
    .line 1896
    .line 1897
    invoke-virtual {v13, v3}, Lcom/fsck/k9/view/RecipientSelectView;->setTokenTextSize(I)V

    .line 1898
    .line 1899
    .line 1900
    invoke-virtual {v2, v3}, Lcom/fsck/k9/view/RecipientSelectView;->setTokenTextSize(I)V

    .line 1901
    .line 1902
    .line 1903
    invoke-static {v14, v0}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 1904
    .line 1905
    .line 1906
    invoke-static {v13, v0}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 1907
    .line 1908
    .line 1909
    invoke-static {v2, v0}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 1910
    .line 1911
    .line 1912
    iget-object v2, v10, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 1913
    .line 1914
    check-cast v2, Landroid/widget/EditText;

    .line 1915
    .line 1916
    invoke-static {v2, v0}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 1917
    .line 1918
    .line 1919
    iget-object v2, v1, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    .line 1920
    .line 1921
    invoke-static {v2, v0}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 1922
    .line 1923
    .line 1924
    iget-object v2, v1, Lcom/fsck/k9/activity/MessageCompose;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 1925
    .line 1926
    check-cast v2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 1927
    .line 1928
    invoke-virtual {v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 1929
    .line 1930
    .line 1931
    move-result-object v2

    .line 1932
    iget-object v2, v2, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 1933
    .line 1934
    iget-object v2, v2, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 1935
    .line 1936
    iget-boolean v2, v2, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isUseMessageViewFixedWidthFont:Z

    .line 1937
    .line 1938
    if-eqz v2, :cond_4b

    .line 1939
    .line 1940
    iget-object v2, v1, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Landroid/widget/EditText;

    .line 1941
    .line 1942
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 1943
    .line 1944
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1945
    .line 1946
    .line 1947
    :cond_4b
    iget-object v2, v1, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Landroid/widget/EditText;

    .line 1948
    .line 1949
    invoke-static {v2, v0}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 1950
    .line 1951
    .line 1952
    iget-object v2, v1, Lcom/fsck/k9/activity/MessageCompose;->signatureView:Landroid/widget/EditText;

    .line 1953
    .line 1954
    invoke-static {v2, v0}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 1955
    .line 1956
    .line 1957
    invoke-virtual {v1}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    .line 1958
    .line 1959
    .line 1960
    iget-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 1961
    .line 1962
    iget v0, v0, Lcom/fsck/k9/activity/MessageCompose$Action;->titleResource:I

    .line 1963
    .line 1964
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 1965
    .line 1966
    .line 1967
    invoke-virtual {v1}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    .line 1968
    .line 1969
    .line 1970
    move-result-object v0

    .line 1971
    check-cast v0, Landroidx/activity/ComponentActivity$NonConfigurationInstances;

    .line 1972
    .line 1973
    if-eqz v0, :cond_4c

    .line 1974
    .line 1975
    iget-object v0, v0, Landroidx/activity/ComponentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    .line 1976
    .line 1977
    move-object/from16 v19, v0

    .line 1978
    .line 1979
    :cond_4c
    move-object/from16 v0, v19

    .line 1980
    .line 1981
    check-cast v0, Lcom/fsck/k9/message/MessageBuilder;

    .line 1982
    .line 1983
    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 1984
    .line 1985
    if-eqz v0, :cond_4e

    .line 1986
    .line 1987
    const/4 v6, 0x1

    .line 1988
    invoke-virtual {v1, v6}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 1989
    .line 1990
    .line 1991
    iget-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 1992
    .line 1993
    iget-object v2, v0, Lcom/fsck/k9/message/MessageBuilder;->callbackLock:Ljava/lang/Object;

    .line 1994
    .line 1995
    monitor-enter v2

    .line 1996
    :try_start_0
    iget-object v3, v0, Lcom/fsck/k9/message/MessageBuilder;->asyncCallback:Lcom/fsck/k9/activity/MessageCompose;

    .line 1997
    .line 1998
    if-nez v3, :cond_4d

    .line 1999
    .line 2000
    iput-object v1, v0, Lcom/fsck/k9/message/MessageBuilder;->asyncCallback:Lcom/fsck/k9/activity/MessageCompose;

    .line 2001
    .line 2002
    invoke-virtual {v0}, Lcom/fsck/k9/message/MessageBuilder;->deliverResult()V

    .line 2003
    .line 2004
    .line 2005
    monitor-exit v2

    .line 2006
    goto :goto_1d

    .line 2007
    :catchall_0
    move-exception v0

    .line 2008
    goto :goto_1c

    .line 2009
    :cond_4d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2010
    .line 2011
    const-string v1, "need to detach callback before new one can be attached!"

    .line 2012
    .line 2013
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2014
    .line 2015
    .line 2016
    throw v0

    .line 2017
    :goto_1c
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2018
    throw v0

    .line 2019
    :cond_4e
    :goto_1d
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 2020
    .line 2021
    .line 2022
    move-result-object v0

    .line 2023
    const-string v2, "SentFolderNotFoundConfirmationDialogFragmentFactory_assign_sent_folder"

    .line 2024
    .line 2025
    new-instance v3, Landroidx/fragment/app/FragmentKt$$ExternalSyntheticLambda0;

    .line 2026
    .line 2027
    const/4 v6, 0x1

    .line 2028
    invoke-direct {v3, v6, v1}, Landroidx/fragment/app/FragmentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 2029
    .line 2030
    .line 2031
    invoke-virtual {v0, v2, v1, v3}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 2032
    .line 2033
    .line 2034
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 2035
    .line 2036
    .line 2037
    move-result-object v0

    .line 2038
    const-string v2, "SentFolderNotFoundConfirmationDialogFragmentFactory_send_and_delete"

    .line 2039
    .line 2040
    new-instance v3, Landroidx/fragment/app/FragmentKt$$ExternalSyntheticLambda0;

    .line 2041
    .line 2042
    const/4 v11, 0x2

    .line 2043
    invoke-direct {v3, v11, v1}, Landroidx/fragment/app/FragmentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 2044
    .line 2045
    .line 2046
    invoke-virtual {v0, v2, v1, v3}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 2047
    .line 2048
    .line 2049
    invoke-virtual {v1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 2050
    .line 2051
    .line 2052
    move-result-object v0

    .line 2053
    new-instance v2, Lcom/fsck/k9/activity/MessageCompose$3;

    .line 2054
    .line 2055
    const/4 v6, 0x0

    .line 2056
    invoke-direct {v2, v6, v1}, Lcom/fsck/k9/activity/MessageCompose$3;-><init>(ILjava/lang/Object;)V

    .line 2057
    .line 2058
    .line 2059
    invoke-virtual {v0, v2, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/activity/OnBackPressedCallback;Landroidx/lifecycle/LifecycleOwner;)V

    .line 2060
    .line 2061
    .line 2062
    return-void
.end method

.method public final onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const v3, 0x7f1202aa

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    if-eq p1, v4, :cond_3

    .line 9
    .line 10
    const/4 v5, 0x4

    .line 11
    if-eq p1, v2, :cond_2

    .line 12
    .line 13
    if-eq p1, v1, :cond_1

    .line 14
    .line 15
    if-eq p1, v5, :cond_0

    .line 16
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    const v1, 0x7f120298

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 36
    .line 37
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 38
    .line 39
    const v3, 0x7f120297

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iput-object v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 47
    .line 48
    new-instance v1, Lcom/fsck/k9/activity/MessageCompose$4;

    .line 49
    .line 50
    invoke-direct {v1, p0, v4}, Lcom/fsck/k9/activity/MessageCompose$4;-><init>(Lcom/fsck/k9/activity/MessageCompose;I)V

    .line 51
    .line 52
    .line 53
    const p0, 0x7f120296

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    new-instance p0, Lcom/fsck/k9/activity/MessageCompose$10;

    .line 60
    .line 61
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageCompose$10;-><init>(I)V

    .line 62
    .line 63
    .line 64
    const v0, 0x7f120295

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/fsck/k9/ui/base/BaseActivity;->themeManager$delegate:Lkotlin/Lazy;

    .line 76
    .line 77
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance p1, Landroid/view/ContextThemeWrapper;

    .line 87
    .line 88
    const v0, 0x7f13031c

    .line 89
    .line 90
    .line 91
    invoke-direct {p1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 95
    .line 96
    invoke-direct {v0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    const v1, 0x7f120588

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Lcom/fsck/k9/activity/compose/IdentityAdapter;

    .line 106
    .line 107
    invoke-direct {v1, p1}, Lcom/fsck/k9/activity/compose/IdentityAdapter;-><init>(Landroid/view/ContextThemeWrapper;)V

    .line 108
    .line 109
    .line 110
    new-instance p1, Lcom/fsck/k9/activity/MessageCompose$9;

    .line 111
    .line 112
    invoke-direct {p1, p0, v1}, Lcom/fsck/k9/activity/MessageCompose$9;-><init>(Lcom/fsck/k9/activity/MessageCompose;Lcom/fsck/k9/activity/compose/IdentityAdapter;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :cond_2
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 124
    .line 125
    invoke-direct {p1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    const v0, 0x7f120221

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v0, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 137
    .line 138
    iget-object v1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 139
    .line 140
    const v2, 0x7f120220

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iput-object v1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 148
    .line 149
    new-instance v0, Lcom/fsck/k9/activity/MessageCompose$4;

    .line 150
    .line 151
    const/4 v1, 0x5

    .line 152
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/activity/MessageCompose$4;-><init>(Lcom/fsck/k9/activity/MessageCompose;I)V

    .line 153
    .line 154
    .line 155
    const v1, 0x7f1201fa

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Lcom/fsck/k9/activity/MessageCompose$4;

    .line 162
    .line 163
    invoke-direct {v0, p0, v5}, Lcom/fsck/k9/activity/MessageCompose$4;-><init>(Lcom/fsck/k9/activity/MessageCompose;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v3, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    return-object p0

    .line 174
    :cond_3
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 175
    .line 176
    invoke-direct {p1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 177
    .line 178
    .line 179
    const v4, 0x7f120572

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 183
    .line 184
    .line 185
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose;->draftMessageId:Ljava/lang/Long;

    .line 186
    .line 187
    iget-object v5, p1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v5, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 190
    .line 191
    if-nez v4, :cond_4

    .line 192
    .line 193
    const v2, 0x7f120573

    .line 194
    .line 195
    .line 196
    iget-object v4, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 197
    .line 198
    invoke-virtual {v4, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    iput-object v2, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 203
    .line 204
    new-instance v2, Lcom/fsck/k9/activity/MessageCompose$4;

    .line 205
    .line 206
    invoke-direct {v2, p0, v0}, Lcom/fsck/k9/activity/MessageCompose$4;-><init>(Lcom/fsck/k9/activity/MessageCompose;I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 210
    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_4
    const v0, 0x7f120571

    .line 214
    .line 215
    .line 216
    iget-object v4, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 217
    .line 218
    invoke-virtual {v4, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    iput-object v0, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 223
    .line 224
    new-instance v0, Lcom/fsck/k9/activity/MessageCompose$4;

    .line 225
    .line 226
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/activity/MessageCompose$4;-><init>(Lcom/fsck/k9/activity/MessageCompose;I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v3, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 230
    .line 231
    .line 232
    :goto_0
    new-instance v0, Lcom/fsck/k9/activity/MessageCompose$4;

    .line 233
    .line 234
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/activity/MessageCompose$4;-><init>(Lcom/fsck/k9/activity/MessageCompose;I)V

    .line 235
    .line 236
    .line 237
    const p0, 0x7f120570

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, p0, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    return-object p0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v2, 0x7f0e000a

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 23
    .line 24
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->hasDraftsFolder()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    const p0, 0x7f090384

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 38
    .line 39
    .line 40
    :cond_1
    const/4 p0, 0x1

    .line 41
    return p0
.end method

.method public final onDiscard()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->draftMessageId:Ljava/lang/Long;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 13
    .line 14
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/fsck/k9/controller/MessagingController;->deleteDraft(Lnet/thunderbird/core/android/account/LegacyAccountDto;JZ)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->internalMessageHandler:Lcom/fsck/k9/activity/MessageCompose$14;

    .line 18
    .line 19
    const/4 v2, 0x5

    .line 20
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->draftMessageId:Ljava/lang/Long;

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->navigateUp:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->openDefaultFolder()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f090293

    .line 6
    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    const v0, 0x7f090402

    .line 11
    .line 12
    .line 13
    if-ne p1, v0, :cond_6

    .line 14
    .line 15
    :cond_0
    if-eqz p2, :cond_6

    .line 16
    .line 17
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->replyToPresenter:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 22
    .line 23
    iget-object p2, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p2, Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    const/4 v0, 0x0

    .line 32
    if-nez p2, :cond_1

    .line 33
    .line 34
    iget-object p2, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p2, Lcom/fsck/k9/view/RecipientSelectView;

    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/fsck/k9/mailstore/LocalStore$7;->setVisible(Z)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 55
    .line 56
    iget-boolean p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->forceShowCcBcc:Z

    .line 57
    .line 58
    if-nez p1, :cond_6

    .line 59
    .line 60
    iget-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 61
    .line 62
    if-eqz p1, :cond_5

    .line 63
    .line 64
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isAlwaysShowCcBcc()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->getCcAddresses()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    sget-object v1, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 82
    .line 83
    if-eqz p2, :cond_3

    .line 84
    .line 85
    iget-object p2, p1, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 86
    .line 87
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-nez p2, :cond_3

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setCcVisibility(Z)V

    .line 101
    .line 102
    .line 103
    iget-object p2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 104
    .line 105
    sget-object v2, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 106
    .line 107
    if-ne p2, v2, :cond_3

    .line 108
    .line 109
    iput-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 110
    .line 111
    :cond_3
    invoke-virtual {p1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->getBccAddresses()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    if-eqz p2, :cond_4

    .line 120
    .line 121
    iget-object p2, p1, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 122
    .line 123
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    if-nez p2, :cond_4

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setBccVisibility(Z)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 140
    .line 141
    sget-object p2, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 142
    .line 143
    if-ne p1, p2, :cond_4

    .line 144
    .line 145
    iput-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 146
    .line 147
    :cond_4
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->updateRecipientExpanderVisibility()V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_5
    const-string p0, "account"

    .line 152
    .line 153
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const/4 p0, 0x0

    .line 157
    throw p0

    .line 158
    :cond_6
    :goto_0
    return-void
.end method

.method public final onMessageBuildSuccess(Lcom/fsck/k9/mail/internet/MimeMessage;Z)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/fsck/k9/message/PgpMessageBuilder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/fsck/k9/message/MessageBuilder;->subject:Ljava/lang/String;

    .line 9
    .line 10
    move-object v9, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v9, v2

    .line 13
    :goto_0
    const/4 v0, 0x0

    .line 14
    if-eqz p2, :cond_2

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 17
    .line 18
    iput-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 19
    .line 20
    new-instance v3, Lcom/fsck/k9/activity/compose/SaveMessageTask;

    .line 21
    .line 22
    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 23
    .line 24
    iget-object v6, p0, Lcom/fsck/k9/activity/MessageCompose;->internalMessageHandler:Lcom/fsck/k9/activity/MessageCompose$14;

    .line 25
    .line 26
    iget-object v8, p0, Lcom/fsck/k9/activity/MessageCompose;->draftMessageId:Ljava/lang/Long;

    .line 27
    .line 28
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 29
    .line 30
    move-object v7, p1

    .line 31
    invoke-direct/range {v3 .. v9}, Lcom/fsck/k9/activity/compose/SaveMessageTask;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/activity/MessageCompose$14;Lcom/fsck/k9/mail/internet/MimeMessage;Ljava/lang/Long;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-array p1, v0, [Ljava/lang/Void;

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 37
    .line 38
    .line 39
    iget-boolean p1, p0, Lcom/fsck/k9/activity/MessageCompose;->finishAfterDraftSaved:Z

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    move-object v7, p1

    .line 52
    iput-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 53
    .line 54
    new-instance v3, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;

    .line 55
    .line 56
    iget-object v6, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 57
    .line 58
    move-object v10, v9

    .line 59
    iget-object v9, p0, Lcom/fsck/k9/activity/MessageCompose;->draftMessageId:Ljava/lang/Long;

    .line 60
    .line 61
    iget-object v11, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 62
    .line 63
    iget-object v12, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedFlag:Lnet/thunderbird/core/common/mail/Flag;

    .line 64
    .line 65
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 66
    .line 67
    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->preferences:Lcom/fsck/k9/Preferences;

    .line 68
    .line 69
    move-object v8, v7

    .line 70
    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->contacts:Lcom/fsck/k9/helper/Contacts;

    .line 71
    .line 72
    invoke-direct/range {v3 .. v12}, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Preferences;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/helper/Contacts;Lcom/fsck/k9/mail/internet/MimeMessage;Ljava/lang/Long;Ljava/lang/String;Lapp/k9mail/legacy/message/controller/MessageReference;Lnet/thunderbird/core/common/mail/Flag;)V

    .line 73
    .line 74
    .line 75
    new-array p1, v0, [Ljava/lang/Void;

    .line 76
    .line 77
    invoke-virtual {v3, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/MessageCompose;->prepareToFinish(Z)V

    .line 12
    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    const v1, 0x7f0903a6

    .line 16
    .line 17
    .line 18
    if-ne v0, v1, :cond_8

    .line 19
    .line 20
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget-boolean p1, p0, Lcom/fsck/k9/activity/MessageCompose;->alreadyNotifiedUserOfEmptySubject:Z

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    const p1, 0x7f1202bd

    .line 37
    .line 38
    .line 39
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 44
    .line 45
    .line 46
    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageCompose;->alreadyNotifiedUserOfEmptySubject:Z

    .line 47
    .line 48
    return v2

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->replyToPresenter:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 54
    .line 55
    iget-object v0, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Lcom/fsck/k9/view/RecipientSelectView;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView;->tryPerformCompletion()Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView;->hasUncompletedText()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const v3, 0x7f120217

    .line 67
    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v2}, Lcom/fsck/k9/mailstore/LocalStore$7;->setVisible(Z)V

    .line 83
    .line 84
    .line 85
    return v2

    .line 86
    :cond_2
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 87
    .line 88
    iget-object v0, p1, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 89
    .line 90
    iget-object v1, v0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 91
    .line 92
    iget-object v4, v0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 93
    .line 94
    iget-object v5, v0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/fsck/k9/view/RecipientSelectView;->tryPerformCompletion()Z

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Lcom/fsck/k9/view/RecipientSelectView;->tryPerformCompletion()Z

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Lcom/fsck/k9/view/RecipientSelectView;->tryPerformCompletion()Z

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/fsck/k9/view/RecipientSelectView;->hasUncompletedText()Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_3

    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    return v2

    .line 123
    :cond_3
    invoke-virtual {v5}, Lcom/fsck/k9/view/RecipientSelectView;->hasUncompletedText()Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_4

    .line 128
    .line 129
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    return v2

    .line 141
    :cond_4
    invoke-virtual {v4}, Lcom/fsck/k9/view/RecipientSelectView;->hasUncompletedText()Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_5

    .line 146
    .line 147
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    return v2

    .line 159
    :cond_5
    invoke-virtual {p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getToAddresses()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_6

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->getCcAddresses()Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_6

    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->getBccAddresses()Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_6

    .line 188
    .line 189
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    const p1, 0x7f12042e

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    return v2

    .line 204
    :cond_6
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 205
    .line 206
    invoke-virtual {p1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->checkOkForSendingOrDraftSaving()Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-eqz p1, :cond_7

    .line 211
    .line 212
    return v2

    .line 213
    :cond_7
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->performSendAfterChecks()V

    .line 214
    .line 215
    .line 216
    return v2

    .line 217
    :cond_8
    const v1, 0x7f090384

    .line 218
    .line 219
    .line 220
    if-ne v0, v1, :cond_9

    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->checkToSaveDraftAndSave()V

    .line 223
    .line 224
    .line 225
    return v2

    .line 226
    :cond_9
    const v1, 0x7f0901aa

    .line 227
    .line 228
    .line 229
    if-ne v0, v1, :cond_b

    .line 230
    .line 231
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 232
    .line 233
    check-cast p1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 234
    .line 235
    invoke-virtual {p1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iget-object p1, p1, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 240
    .line 241
    iget-boolean p1, p1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->isConfirmDiscardMessage:Z

    .line 242
    .line 243
    if-eqz p1, :cond_a

    .line 244
    .line 245
    const/4 p1, 0x4

    .line 246
    invoke-virtual {p0, p1}, Landroid/app/Activity;->showDialog(I)V

    .line 247
    .line 248
    .line 249
    return v2

    .line 250
    :cond_a
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->onDiscard()V

    .line 251
    .line 252
    .line 253
    return v2

    .line 254
    :cond_b
    const v1, 0x7f090060

    .line 255
    .line 256
    .line 257
    const/4 v3, 0x2

    .line 258
    const/4 v4, 0x0

    .line 259
    if-ne v0, v1, :cond_f

    .line 260
    .line 261
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 262
    .line 263
    iget-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 264
    .line 265
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_d

    .line 270
    .line 271
    if-eq v0, v2, :cond_e

    .line 272
    .line 273
    if-ne v0, v3, :cond_c

    .line 274
    .line 275
    const/4 v3, 0x3

    .line 276
    goto :goto_0

    .line 277
    :cond_c
    const-string p0, "Unhandled case: "

    .line 278
    .line 279
    invoke-static {p1, p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    return v4

    .line 283
    :cond_d
    move v3, v2

    .line 284
    :cond_e
    :goto_0
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 285
    .line 286
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    .line 287
    .line 288
    or-int/lit16 p1, v3, 0x100

    .line 289
    .line 290
    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageCompose;->isInSubActivity:Z

    .line 291
    .line 292
    new-instance v0, Landroid/content/Intent;

    .line 293
    .line 294
    const-string v1, "android.intent.action.PICK"

    .line 295
    .line 296
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    .line 297
    .line 298
    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 302
    .line 303
    .line 304
    return v2

    .line 305
    :cond_f
    const v1, 0x7f09031d

    .line 306
    .line 307
    .line 308
    if-ne v0, v1, :cond_10

    .line 309
    .line 310
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 311
    .line 312
    invoke-virtual {p1, v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->toggleEncryptionState(Z)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    .line 316
    .line 317
    .line 318
    return v2

    .line 319
    :cond_10
    const v1, 0x7f09031e

    .line 320
    .line 321
    .line 322
    if-ne v0, v1, :cond_11

    .line 323
    .line 324
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 325
    .line 326
    invoke-virtual {p1, v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->toggleEncryptionState(Z)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    .line 330
    .line 331
    .line 332
    return v2

    .line 333
    :cond_11
    const v1, 0x7f090320

    .line 334
    .line 335
    .line 336
    if-ne v0, v1, :cond_13

    .line 337
    .line 338
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 339
    .line 340
    iput-boolean v2, p1, Lcom/fsck/k9/activity/compose/RecipientPresenter;->isForceTextMessageFormat:Z

    .line 341
    .line 342
    invoke-virtual {p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 343
    .line 344
    .line 345
    sget v0, Lcom/fsck/k9/K9;->pgpInlineDialogCounter:I

    .line 346
    .line 347
    if-ge v0, v3, :cond_12

    .line 348
    .line 349
    add-int/2addr v0, v2

    .line 350
    sput v0, Lcom/fsck/k9/K9;->pgpInlineDialogCounter:I

    .line 351
    .line 352
    invoke-static {}, Lcom/fsck/k9/K9;->saveSettingsAsync()V

    .line 353
    .line 354
    .line 355
    iget-object p1, p1, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 356
    .line 357
    invoke-virtual {p1, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showOpenPgpInlineDialog(Z)V

    .line 358
    .line 359
    .line 360
    :cond_12
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    .line 361
    .line 362
    .line 363
    return v2

    .line 364
    :cond_13
    const v1, 0x7f09031f

    .line 365
    .line 366
    .line 367
    if-ne v0, v1, :cond_14

    .line 368
    .line 369
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 370
    .line 371
    iput-boolean v4, p1, Lcom/fsck/k9/activity/compose/RecipientPresenter;->isForceTextMessageFormat:Z

    .line 372
    .line 373
    invoke-virtual {p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    .line 377
    .line 378
    .line 379
    return v2

    .line 380
    :cond_14
    const v1, 0x7f090321

    .line 381
    .line 382
    .line 383
    if-ne v0, v1, :cond_15

    .line 384
    .line 385
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 386
    .line 387
    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onMenuSetSignOnly(Z)V

    .line 388
    .line 389
    .line 390
    return v2

    .line 391
    :cond_15
    const v1, 0x7f090322

    .line 392
    .line 393
    .line 394
    if-ne v0, v1, :cond_16

    .line 395
    .line 396
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 397
    .line 398
    invoke-virtual {p0, v4}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onMenuSetSignOnly(Z)V

    .line 399
    .line 400
    .line 401
    return v2

    .line 402
    :cond_16
    const v1, 0x7f09005f

    .line 403
    .line 404
    .line 405
    if-ne v0, v1, :cond_17

    .line 406
    .line 407
    const p1, 0x7f090444

    .line 408
    .line 409
    .line 410
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    new-instance v0, Landroid/widget/PopupMenu;

    .line 419
    .line 420
    invoke-direct {v0, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    const v1, 0x7f0e0009

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    invoke-virtual {p1, v1, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    const v1, 0x7f09030a

    .line 442
    .line 443
    .line 444
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->cameraCaptureHandler:Lapp/k9mail/core/android/common/camera/CameraCaptureHandler;

    .line 449
    .line 450
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 451
    .line 452
    .line 453
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    const-string v3, "android.hardware.camera.any"

    .line 458
    .line 459
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 464
    .line 465
    .line 466
    new-instance p1, Lcom/fsck/k9/activity/MessageCompose$$ExternalSyntheticLambda3;

    .line 467
    .line 468
    invoke-direct {p1, p0}, Lcom/fsck/k9/activity/MessageCompose$$ExternalSyntheticLambda3;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 475
    .line 476
    .line 477
    return v2

    .line 478
    :cond_17
    const v1, 0x7f09035f

    .line 479
    .line 480
    .line 481
    if-ne v0, v1, :cond_19

    .line 482
    .line 483
    iget-boolean p1, p0, Lcom/fsck/k9/activity/MessageCompose;->requestReadReceipt:Z

    .line 484
    .line 485
    if-nez p1, :cond_18

    .line 486
    .line 487
    const p1, 0x7f12055d

    .line 488
    .line 489
    .line 490
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object p1

    .line 494
    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageCompose;->requestReadReceipt:Z

    .line 495
    .line 496
    goto :goto_1

    .line 497
    :cond_18
    const p1, 0x7f12055c

    .line 498
    .line 499
    .line 500
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object p1

    .line 504
    iput-boolean v4, p0, Lcom/fsck/k9/activity/MessageCompose;->requestReadReceipt:Z

    .line 505
    .line 506
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 507
    .line 508
    .line 509
    move-result-object p0

    .line 510
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 511
    .line 512
    .line 513
    move-result-object p0

    .line 514
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 515
    .line 516
    .line 517
    return v2

    .line 518
    :cond_19
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 519
    .line 520
    .line 521
    move-result p0

    .line 522
    return p0
.end method

.method public final onPause()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->messagingListener:Lcom/fsck/k9/activity/MessageCompose$12;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->removeListener(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getChangingConfigurations()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x80

    .line 16
    .line 17
    and-int/2addr v0, v1

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    move v0, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, v2

    .line 25
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v3, v2

    .line 31
    :goto_1
    if-nez v0, :cond_5

    .line 32
    .line 33
    if-nez v3, :cond_5

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->isInSubActivity:Z

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 41
    .line 42
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->hasDraftsFolder()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 50
    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageCompose;->finishAfterDraftSaved:Z

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->performSaveAfterChecks()V

    .line 57
    .line 58
    .line 59
    :cond_5
    :goto_2
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 12
    .line 13
    const v2, 0x7f09031f

    .line 14
    .line 15
    .line 16
    const v3, 0x7f090320

    .line 17
    .line 18
    .line 19
    const v4, 0x7f090322

    .line 20
    .line 21
    .line 22
    const v5, 0x7f090321

    .line 23
    .line 24
    .line 25
    const v6, 0x7f09031d

    .line 26
    .line 27
    .line 28
    const v7, 0x7f09031e

    .line 29
    .line 30
    .line 31
    const/4 v8, 0x1

    .line 32
    const/4 v9, 0x0

    .line 33
    if-eqz v1, :cond_5

    .line 34
    .line 35
    iget-object v10, v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 36
    .line 37
    sget-object v11, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->OK:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 38
    .line 39
    if-ne v10, v11, :cond_5

    .line 40
    .line 41
    iget-boolean v10, v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptionEnabled:Z

    .line 42
    .line 43
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    xor-int/lit8 v11, v10, 0x1

    .line 48
    .line 49
    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 57
    .line 58
    .line 59
    iget-object v6, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 60
    .line 61
    if-eqz v6, :cond_4

    .line 62
    .line 63
    invoke-virtual {v6}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isOpenPgpHideSignOnly()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    iget-boolean v7, v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isSignOnly:Z

    .line 68
    .line 69
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    if-nez v6, :cond_0

    .line 74
    .line 75
    if-nez v7, :cond_0

    .line 76
    .line 77
    move v11, v8

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    move v11, v9

    .line 80
    :goto_0
    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    if-nez v6, :cond_1

    .line 88
    .line 89
    if-eqz v7, :cond_1

    .line 90
    .line 91
    move v5, v8

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    move v5, v9

    .line 94
    :goto_1
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 95
    .line 96
    .line 97
    iget-boolean v1, v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isPgpInlineModeEnabled:Z

    .line 98
    .line 99
    if-nez v10, :cond_2

    .line 100
    .line 101
    if-eqz v7, :cond_3

    .line 102
    .line 103
    :cond_2
    if-nez v1, :cond_3

    .line 104
    .line 105
    move v4, v8

    .line 106
    goto :goto_2

    .line 107
    :cond_3
    move v4, v9

    .line 108
    :goto_2
    invoke-static {p1, v3, v4, v2, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/view/Menu;IZIZ)V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_4
    const-string p0, "account"

    .line 113
    .line 114
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const/4 p0, 0x0

    .line 118
    throw p0

    .line 119
    :cond_5
    invoke-static {p1, v3, v9, v2, v9}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/view/Menu;IZIZ)V

    .line 120
    .line 121
    .line 122
    invoke-static {p1, v7, v9, v6, v9}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/view/Menu;IZIZ)V

    .line 123
    .line 124
    .line 125
    invoke-static {p1, v5, v9, v4, v9}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/view/Menu;IZIZ)V

    .line 126
    .line 127
    .line 128
    :goto_3
    const v1, 0x7f090060

    .line 129
    .line 130
    .line 131
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    const-string v1, "android.permission.READ_CONTACTS"

    .line 136
    .line 137
    invoke-static {v0, v1}, Landroidx/tracing/TraceApi29Impl;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_7

    .line 142
    .line 143
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->hasContactPicker:Ljava/lang/Boolean;

    .line 144
    .line 145
    if-eqz v1, :cond_6

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    goto :goto_4

    .line 152
    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    new-instance v1, Landroid/content/Intent;

    .line 157
    .line 158
    const-string v2, "android.intent.action.PICK"

    .line 159
    .line 160
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    .line 161
    .line 162
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    xor-int/2addr v0, v8

    .line 177
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    iput-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->hasContactPicker:Ljava/lang/Boolean;

    .line 182
    .line 183
    move p0, v0

    .line 184
    :goto_4
    if-eqz p0, :cond_7

    .line 185
    .line 186
    move v9, v8

    .line 187
    :cond_7
    invoke-interface {p1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 188
    .line 189
    .line 190
    return v8
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x64

    .line 5
    .line 6
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    array-length p1, p3

    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    aget p1, p3, p1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->cameraCaptureHandler:Lapp/k9mail/core/android/common/camera/CameraCaptureHandler;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lapp/k9mail/core/android/common/camera/CameraCaptureHandler;->openCamera(Landroid/app/Activity;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const p1, 0x7f1201f9

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentsView:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    .line 8
    .line 9
    const-string v0, "com.fsck.k9.activity.MessageCompose.messageReadReceipt"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->requestReadReceipt:Z

    .line 16
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->replyToPresenter:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 25
    .line 26
    const-string v1, "com.fsck.k9.activity.compose.ReplyToPresenter.replyToShown"

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LocalStore$7;->setVisible(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 41
    .line 42
    const-string v2, "state:ccShown"

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setCcVisibility(Z)V

    .line 49
    .line 50
    .line 51
    const-string v2, "state:bccShown"

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setBccVisibility(Z)V

    .line 58
    .line 59
    .line 60
    const-string v1, "state:lastFocusedType"

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lcom/fsck/k9/mail/Message$RecipientType;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Message$RecipientType;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, v0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 74
    .line 75
    const-string v1, "state:currentCryptoMode"

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-static {v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iput-object v1, v0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 89
    .line 90
    const-string v1, "state:cryptoEnablePgpInline"

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    iput-boolean v1, v0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->isForceTextMessageFormat:Z

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->updateRecipientExpanderVisibility()V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    const-string v1, "state:htmlQuote"

    .line 107
    .line 108
    const-class v2, Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 109
    .line 110
    invoke-static {p1, v1, v2}, Landroidx/compose/ui/window/Api33Impl;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 115
    .line 116
    iput-object v1, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Ljava/lang/Object;

    .line 117
    .line 118
    const-string v1, "state:quotedTextFormat"

    .line 119
    .line 120
    const-class v2, Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 121
    .line 122
    invoke-static {p1, v1, v2}, Landroidx/compose/ui/window/Api33Impl;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 127
    .line 128
    iput-object v1, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Ljava/io/Serializable;

    .line 129
    .line 130
    const-string v1, "state:forcePlainText"

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    iput-boolean v1, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->forcePlainText:Z

    .line 137
    .line 138
    const-string v1, "state:quotedTextShown"

    .line 139
    .line 140
    const-class v2, Lcom/fsck/k9/message/QuotedTextMode;

    .line 141
    .line 142
    invoke-static {p1, v1, v2}, Landroidx/compose/ui/window/Api33Impl;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Lcom/fsck/k9/message/QuotedTextMode;

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v1, Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 154
    .line 155
    const/4 v2, 0x0

    .line 156
    if-eqz v1, :cond_0

    .line 157
    .line 158
    iget-object v1, v1, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    .line 159
    .line 160
    iget-object v0, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iget-object v3, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v3, Lcom/fsck/k9/view/MessageWebView;

    .line 171
    .line 172
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v0, Lcom/fsck/k9/message/html/DisplayHtml;

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Lcom/fsck/k9/message/html/DisplayHtml;->wrapMessageContent(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v3, v0, v2, v2}, Lcom/fsck/k9/view/MessageWebView;->displayHtmlContentWithInlineAttachments$1(Ljava/lang/String;Lcom/fsck/k9/mailstore/AttachmentResolver;Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;)V

    .line 181
    .line 182
    .line 183
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    const-string/jumbo v1, "waitingForAttachments"

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    const/4 v3, 0x0

    .line 196
    if-eqz v1, :cond_4

    .line 197
    .line 198
    const-string v4, "NONE"

    .line 199
    .line 200
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    if-eqz v4, :cond_1

    .line 205
    .line 206
    const/4 v3, 0x1

    .line 207
    goto :goto_0

    .line 208
    :cond_1
    const-string v4, "SEND"

    .line 209
    .line 210
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-eqz v4, :cond_2

    .line 215
    .line 216
    const/4 v3, 0x2

    .line 217
    goto :goto_0

    .line 218
    :cond_2
    const-string v4, "SAVE"

    .line 219
    .line 220
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-eqz v4, :cond_3

    .line 225
    .line 226
    const/4 v3, 0x3

    .line 227
    goto :goto_0

    .line 228
    :cond_3
    const-string v4, "No enum constant com.fsck.k9.activity.compose.AttachmentPresenter.WaitingAction."

    .line 229
    .line 230
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-static {v1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    goto :goto_0

    .line 238
    :cond_4
    const-string v1, "Name is null"

    .line 239
    .line 240
    invoke-static {v1}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    :goto_0
    iput v3, v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->actionToPerformAfterWaiting:I

    .line 244
    .line 245
    const-string v1, "nextLoaderId"

    .line 246
    .line 247
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    iput v1, v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->nextLoaderId:I

    .line 252
    .line 253
    const-string v1, "com.fsck.k9.activity.MessageCompose.attachments"

    .line 254
    .line 255
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    if-eqz v3, :cond_7

    .line 268
    .line 269
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    check-cast v3, Lcom/fsck/k9/activity/misc/Attachment;

    .line 274
    .line 275
    iget-object v4, v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    .line 276
    .line 277
    iget-object v5, v3, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 278
    .line 279
    invoke-virtual {v4, v5, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    iget-object v4, v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/beetstra/jutf7/Base64Util;

    .line 283
    .line 284
    invoke-virtual {v4, v3}, Lcom/beetstra/jutf7/Base64Util;->addAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 285
    .line 286
    .line 287
    iget-object v4, v3, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 288
    .line 289
    sget-object v5, Lcom/fsck/k9/message/Attachment$LoadingState;->URI_ONLY:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 290
    .line 291
    if-ne v4, v5, :cond_6

    .line 292
    .line 293
    invoke-virtual {v0, v3}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->initAttachmentInfoLoader(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 294
    .line 295
    .line 296
    goto :goto_1

    .line 297
    :cond_6
    sget-object v5, Lcom/fsck/k9/message/Attachment$LoadingState;->METADATA:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 298
    .line 299
    if-ne v4, v5, :cond_5

    .line 300
    .line 301
    invoke-virtual {v0, v3}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->initAttachmentContentLoader(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 302
    .line 303
    .line 304
    goto :goto_1

    .line 305
    :cond_7
    const-string v0, "com.fsck.k9.activity.MessageCompose.draftId"

    .line 306
    .line 307
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-eqz v1, :cond_8

    .line 312
    .line 313
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 314
    .line 315
    .line 316
    move-result-wide v0

    .line 317
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->draftMessageId:Ljava/lang/Long;

    .line 322
    .line 323
    goto :goto_2

    .line 324
    :cond_8
    iput-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->draftMessageId:Ljava/lang/Long;

    .line 325
    .line 326
    :goto_2
    const-string v0, "com.fsck.k9.activity.MessageCompose.identity"

    .line 327
    .line 328
    const-class v1, Lnet/thunderbird/core/android/account/Identity;

    .line 329
    .line 330
    invoke-static {p1, v0, v1}, Landroidx/sqlite/SQLite;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    check-cast v0, Lnet/thunderbird/core/android/account/Identity;

    .line 335
    .line 336
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 337
    .line 338
    const-string v0, "com.fsck.k9.activity.MessageCompose.identityChanged"

    .line 339
    .line 340
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->identityChanged:Z

    .line 345
    .line 346
    const-string v0, "com.fsck.k9.activity.MessageCompose.inReplyTo"

    .line 347
    .line 348
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->repliedToMessageId:Ljava/lang/String;

    .line 353
    .line 354
    const-string v0, "com.fsck.k9.activity.MessageCompose.references"

    .line 355
    .line 356
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->referencedMessageIds:Ljava/lang/String;

    .line 361
    .line 362
    const-string v0, "com.fsck.k9.activity.MessageCompose.changesMadeSinceLastSave"

    .line 363
    .line 364
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 369
    .line 370
    const-string v0, "alreadyNotifiedUserOfEmptySubject"

    .line 371
    .line 372
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->alreadyNotifiedUserOfEmptySubject:Z

    .line 377
    .line 378
    const-string v0, "com.fsck.k9.activity.MessageCompose.activeInAppNotifications"

    .line 379
    .line 380
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    if-eqz p1, :cond_9

    .line 385
    .line 386
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    if-nez v0, :cond_9

    .line 391
    .line 392
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->activeInAppNotifications:Ljava/util/HashSet;

    .line 393
    .line 394
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 395
    .line 396
    .line 397
    :cond_9
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->chooseIdentityView:Lcom/google/android/material/textview/MaterialTextView;

    .line 398
    .line 399
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 400
    .line 401
    iget-object v0, v0, Lnet/thunderbird/core/android/account/Identity;->email:Ljava/lang/String;

    .line 402
    .line 403
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    .line 407
    .line 408
    .line 409
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->messagingListener:Lcom/fsck/k9/activity/MessageCompose$12;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->addListener(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->fetchAccount(Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->dismissActiveInAppNotifications()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->triggerIfNeededSentFolderNotFoundInAppNotification()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lcom/fsck/k9/message/MessageBuilder;->callbackLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    iput-object v2, v0, Lcom/fsck/k9/message/MessageBuilder;->asyncCallback:Lcom/fsck/k9/activity/MessageCompose;

    .line 10
    .line 11
    monitor-exit v1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0

    .line 16
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 17
    .line 18
    return-object p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.fsck.k9.activity.MessageCompose.stateKeySourceMessageProced"

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageProcessed:Z

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->draftMessageId:Ljava/lang/Long;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v1, "com.fsck.k9.activity.MessageCompose.draftId"

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const-string v0, "com.fsck.k9.activity.MessageCompose.identity"

    .line 25
    .line 26
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "com.fsck.k9.activity.MessageCompose.identityChanged"

    .line 32
    .line 33
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageCompose;->identityChanged:Z

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const-string v0, "com.fsck.k9.activity.MessageCompose.inReplyTo"

    .line 39
    .line 40
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->repliedToMessageId:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "com.fsck.k9.activity.MessageCompose.references"

    .line 46
    .line 47
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->referencedMessageIds:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v0, "com.fsck.k9.activity.MessageCompose.messageReadReceipt"

    .line 53
    .line 54
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageCompose;->requestReadReceipt:Z

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    const-string v0, "com.fsck.k9.activity.MessageCompose.changesMadeSinceLastSave"

    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    const-string v0, "alreadyNotifiedUserOfEmptySubject"

    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageCompose;->alreadyNotifiedUserOfEmptySubject:Z

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->activeInAppNotifications:Ljava/util/HashSet;

    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    .line 79
    .line 80
    const-string v1, "com.fsck.k9.activity.MessageCompose.activeInAppNotifications"

    .line 81
    .line 82
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->replyToPresenter:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    iget-object v0, v0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v0, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v0, Landroid/view/View;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    const/4 v1, 0x0

    .line 103
    const/4 v2, 0x1

    .line 104
    if-nez v0, :cond_1

    .line 105
    .line 106
    move v0, v2

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    move v0, v1

    .line 109
    :goto_0
    const-string v3, "com.fsck.k9.activity.compose.ReplyToPresenter.replyToShown"

    .line 110
    .line 111
    invoke-virtual {p1, v3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    iget-object v3, v0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 120
    .line 121
    iget-object v4, v3, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccWrapper:Landroid/view/View;

    .line 122
    .line 123
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-nez v4, :cond_2

    .line 128
    .line 129
    move v4, v2

    .line 130
    goto :goto_1

    .line 131
    :cond_2
    move v4, v1

    .line 132
    :goto_1
    const-string v5, "state:ccShown"

    .line 133
    .line 134
    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    .line 136
    .line 137
    iget-object v3, v3, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccWrapper:Landroid/view/View;

    .line 138
    .line 139
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-nez v3, :cond_3

    .line 144
    .line 145
    move v1, v2

    .line 146
    :cond_3
    const-string v3, "state:bccShown"

    .line 147
    .line 148
    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const-string v3, "state:lastFocusedType"

    .line 158
    .line 159
    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v1, v0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    const-string v3, "state:currentCryptoMode"

    .line 169
    .line 170
    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string v1, "state:cryptoEnablePgpInline"

    .line 174
    .line 175
    iget-boolean v0, v0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->isForceTextMessageFormat:Z

    .line 176
    .line 177
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 181
    .line 182
    iget-object v1, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextMode:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v1, Lcom/fsck/k9/message/QuotedTextMode;

    .line 185
    .line 186
    const-string v3, "state:quotedTextShown"

    .line 187
    .line 188
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 189
    .line 190
    .line 191
    iget-object v1, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v1, Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 194
    .line 195
    const-string v3, "state:htmlQuote"

    .line 196
    .line 197
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 198
    .line 199
    .line 200
    iget-object v1, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Ljava/io/Serializable;

    .line 201
    .line 202
    check-cast v1, Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 203
    .line 204
    const-string v3, "state:quotedTextFormat"

    .line 205
    .line 206
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 207
    .line 208
    .line 209
    const-string v1, "state:forcePlainText"

    .line 210
    .line 211
    iget-boolean v0, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->forcePlainText:Z

    .line 212
    .line 213
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 214
    .line 215
    .line 216
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 217
    .line 218
    iget v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->actionToPerformAfterWaiting:I

    .line 219
    .line 220
    if-eq v0, v2, :cond_6

    .line 221
    .line 222
    const/4 v1, 0x2

    .line 223
    if-eq v0, v1, :cond_5

    .line 224
    .line 225
    const/4 v1, 0x3

    .line 226
    if-ne v0, v1, :cond_4

    .line 227
    .line 228
    const-string v0, "SAVE"

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_4
    const/4 p0, 0x0

    .line 232
    throw p0

    .line 233
    :cond_5
    const-string v0, "SEND"

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_6
    const-string v0, "NONE"

    .line 237
    .line 238
    :goto_2
    const-string/jumbo v1, "waitingForAttachments"

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    new-instance v0, Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .line 248
    .line 249
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-eqz v2, :cond_7

    .line 264
    .line 265
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    check-cast v2, Lcom/fsck/k9/activity/misc/Attachment;

    .line 270
    .line 271
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_7
    const-string v1, "com.fsck.k9.activity.MessageCompose.attachments"

    .line 276
    .line 277
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 278
    .line 279
    .line 280
    const-string v0, "nextLoaderId"

    .line 281
    .line 282
    iget p0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->nextLoaderId:I

    .line 283
    .line 284
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 285
    .line 286
    .line 287
    return-void
.end method

.method public final openDefaultFolder()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->defaultFolderProvider:Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;->getDefaultFolder(Lnet/thunderbird/core/android/account/LegacyAccountDto;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    new-instance v2, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 10
    .line 11
    invoke-direct {v2}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 15
    .line 16
    iget-object v3, v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0, v1}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAllowedFolder(J)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-static {p0, v2, v0}, Lcom/fsck/k9/activity/MessageHomeActivity$Companion;->actionDisplaySearch$default(Landroid/content/Context;Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final performSaveAfterChecks()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->createMessageBuilder(Z)Lcom/fsck/k9/message/MessageBuilder;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/fsck/k9/message/MessageBuilder;->buildAsync(Lcom/fsck/k9/activity/MessageCompose;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final performSendAfterChecks()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->sendMessageHasBeenTriggered:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 8
    .line 9
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isUploadSentMessages()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->ignoreSentFolderNotAssigned:Z

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v3, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->sentFolderId:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    move v3, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v3, v1

    .line 31
    :goto_0
    monitor-exit v0

    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->sentFolderNotFoundDialogFragmentFactory:Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment$Factory;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 37
    .line 38
    iget-object v3, v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    new-instance v0, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment;

    .line 54
    .line 55
    invoke-direct {v0}, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v4, "SetupArchiveFolderDialogFragmentFactory_accountUuid"

    .line 59
    .line 60
    new-instance v5, Lkotlin/Pair;

    .line 61
    .line 62
    invoke-direct {v5, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-array v2, v2, [Lkotlin/Pair;

    .line 66
    .line 67
    aput-object v5, v2, v1

    .line 68
    .line 69
    invoke-static {v2}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 74
    .line 75
    .line 76
    const-string v1, "SentFolderNotFoundConfirmationDialogFragment"

    .line 77
    .line 78
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw p0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->connectivityManager:Lnet/thunderbird/core/android/network/ConnectivityManagerBase;

    .line 86
    .line 87
    invoke-virtual {v0}, Lnet/thunderbird/core/android/network/ConnectivityManagerBase;->isNetworkAvailable()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_3

    .line 92
    .line 93
    const v0, 0x7f1204dc

    .line 94
    .line 95
    .line 96
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/MessageCompose;->createMessageBuilder(Z)Lcom/fsck/k9/message/MessageBuilder;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 108
    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageCompose;->sendMessageHasBeenTriggered:Z

    .line 112
    .line 113
    iput-boolean v1, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 114
    .line 115
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 119
    .line 120
    invoke-virtual {v0, p0}, Lcom/fsck/k9/message/MessageBuilder;->buildAsync(Lcom/fsck/k9/activity/MessageCompose;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    :goto_1
    return-void
.end method

.method public final prepareToFinish(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/fsck/k9/activity/MessageCompose;->navigateUp:Z

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 4
    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Landroid/widget/EditText;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/fsck/k9/activity/misc/Attachment;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getToAddresses()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->getCcAddresses()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->getBccAddresses()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_5

    .line 114
    .line 115
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 116
    .line 117
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->hasDraftsFolder()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_4

    .line 122
    .line 123
    const/4 p1, 0x2

    .line 124
    invoke-virtual {p0, p1}, Landroid/app/Activity;->showDialog(I)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_4
    const/4 p1, 0x1

    .line 129
    invoke-virtual {p0, p1}, Landroid/app/Activity;->showDialog(I)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_5
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->draftMessageId:Ljava/lang/Long;

    .line 134
    .line 135
    if-nez p1, :cond_6

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->onDiscard()V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_6
    iget-boolean p1, p0, Lcom/fsck/k9/activity/MessageCompose;->navigateUp:Z

    .line 142
    .line 143
    if-eqz p1, :cond_7

    .line 144
    .line 145
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 146
    .line 147
    sget-object v0, Lcom/fsck/k9/activity/MessageCompose$Action;->EDIT_DRAFT:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 148
    .line 149
    if-eq p1, v0, :cond_7

    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->openDefaultFolder()V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public final processDraftMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/fsck/k9/mailstore/MessageViewInfo;->rootPart:Lcom/fsck/k9/mail/Part;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/fsck/k9/activity/MessageCompose;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 10
    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    instance-of v4, v2, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    move-object v4, v2

    .line 20
    check-cast v4, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 21
    .line 22
    iget-wide v7, v4, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 23
    .line 24
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v4, "MessagingController.getId() called without a LocalMessage"

    .line 30
    .line 31
    new-array v7, v6, [Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {v4, v7}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    :goto_0
    iput-object v4, v0, Lcom/fsck/k9/activity/MessageCompose;->draftMessageId:Ljava/lang/Long;

    .line 38
    .line 39
    iget-object v4, v0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    .line 40
    .line 41
    iget-object v7, v1, Lcom/fsck/k9/mailstore/MessageViewInfo;->subject:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    iget-object v4, v0, Lcom/fsck/k9/activity/MessageCompose;->replyToPresenter:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 47
    .line 48
    iget-object v4, v4, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v4, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-object v7, v2, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->getReplyTo()[Lcom/fsck/k9/mail/Address;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    array-length v9, v8

    .line 65
    if-nez v9, :cond_1

    .line 66
    .line 67
    const/4 v8, 0x0

    .line 68
    :cond_1
    const/4 v13, 0x1

    .line 69
    if-eqz v8, :cond_2

    .line 70
    .line 71
    invoke-virtual {v4, v8}, Lcom/fsck/k9/mailstore/LocalStore$7;->silentlyAddAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v13}, Lcom/fsck/k9/mailstore/LocalStore$7;->setVisible(Z)V

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-object v4, v0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    sget-object v8, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 83
    .line 84
    invoke-virtual {v2, v8}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    array-length v9, v8

    .line 89
    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    check-cast v8, [Lcom/fsck/k9/mail/Address;

    .line 94
    .line 95
    invoke-virtual {v4, v8}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addToAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 96
    .line 97
    .line 98
    sget-object v8, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 99
    .line 100
    invoke-virtual {v2, v8}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    array-length v9, v8

    .line 105
    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    check-cast v8, [Lcom/fsck/k9/mail/Address;

    .line 110
    .line 111
    invoke-virtual {v4, v8}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addCcAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 112
    .line 113
    .line 114
    sget-object v8, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 115
    .line 116
    invoke-virtual {v2, v8}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    array-length v9, v8

    .line 121
    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    check-cast v8, [Lcom/fsck/k9/mail/Address;

    .line 126
    .line 127
    invoke-virtual {v4, v8}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addBccAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 128
    .line 129
    .line 130
    const-string v8, "Autocrypt-Draft-State"

    .line 131
    .line 132
    invoke-virtual {v7, v8}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    array-length v9, v8

    .line 137
    if-ne v9, v13, :cond_9

    .line 138
    .line 139
    invoke-static {v8}, Lkotlin/collections/ArraysKt___ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    check-cast v8, Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {v8}, Lcom/fsck/k9/mail/internet/JisSupport;->getAllHeaderParameters(Ljava/lang/String;)Ljava/util/HashMap;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    const-string v9, "encrypt"

    .line 153
    .line 154
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    check-cast v9, Ljava/lang/String;

    .line 159
    .line 160
    if-nez v9, :cond_3

    .line 161
    .line 162
    :goto_1
    const/4 v14, 0x0

    .line 163
    goto :goto_2

    .line 164
    :cond_3
    const-string/jumbo v10, "yes"

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v15

    .line 171
    const-string v9, "_sign-only"

    .line 172
    .line 173
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    check-cast v9, Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v16

    .line 183
    const-string v9, "_is-reply-to-encrypted"

    .line 184
    .line 185
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    check-cast v9, Ljava/lang/String;

    .line 190
    .line 191
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v17

    .line 195
    const-string v9, "_by-choice"

    .line 196
    .line 197
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    check-cast v9, Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v18

    .line 207
    const-string v9, "_pgp-inline"

    .line 208
    .line 209
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    check-cast v9, Ljava/lang/String;

    .line 214
    .line 215
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v19

    .line 219
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v10

    .line 231
    if-eqz v10, :cond_5

    .line 232
    .line 233
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    check-cast v10, Ljava/lang/String;

    .line 238
    .line 239
    const-string v11, "_"

    .line 240
    .line 241
    invoke-static {v10, v11, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 242
    .line 243
    .line 244
    move-result v10

    .line 245
    if-nez v10, :cond_4

    .line 246
    .line 247
    goto :goto_1

    .line 248
    :cond_5
    new-instance v14, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;

    .line 249
    .line 250
    move-object/from16 v20, v8

    .line 251
    .line 252
    invoke-direct/range {v14 .. v20}, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;-><init>(ZZZZZLjava/util/Map;)V

    .line 253
    .line 254
    .line 255
    :goto_2
    if-eqz v14, :cond_a

    .line 256
    .line 257
    iget-boolean v8, v14, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isPgpInline:Z

    .line 258
    .line 259
    iput-boolean v8, v4, Lcom/fsck/k9/activity/compose/RecipientPresenter;->isForceTextMessageFormat:Z

    .line 260
    .line 261
    iget-boolean v8, v14, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isReply:Z

    .line 262
    .line 263
    iput-boolean v8, v4, Lcom/fsck/k9/activity/compose/RecipientPresenter;->isReplyToEncryptedMessage:Z

    .line 264
    .line 265
    iget-boolean v8, v14, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isByChoice:Z

    .line 266
    .line 267
    if-nez v8, :cond_6

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_6
    iget-boolean v8, v14, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isSignOnly:Z

    .line 271
    .line 272
    if-eqz v8, :cond_7

    .line 273
    .line 274
    sget-object v8, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_7
    iget-boolean v8, v14, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isEncrypt:Z

    .line 278
    .line 279
    if-eqz v8, :cond_8

    .line 280
    .line 281
    sget-object v8, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_ENABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 282
    .line 283
    goto :goto_3

    .line 284
    :cond_8
    sget-object v8, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_DISABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 285
    .line 286
    :goto_3
    iput-object v8, v4, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_9
    sget-object v8, Lnet/thunderbird/core/common/mail/Flag;->X_DRAFT_OPENPGP_INLINE:Lnet/thunderbird/core/common/mail/Flag;

    .line 290
    .line 291
    iget-object v9, v2, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 292
    .line 293
    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    iput-boolean v8, v4, Lcom/fsck/k9/activity/compose/RecipientPresenter;->isForceTextMessageFormat:Z

    .line 298
    .line 299
    :cond_a
    :goto_4
    const-string v4, "In-Reply-To"

    .line 300
    .line 301
    invoke-virtual {v7, v4}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    array-length v8, v4

    .line 306
    if-lt v8, v13, :cond_b

    .line 307
    .line 308
    aget-object v4, v4, v6

    .line 309
    .line 310
    iput-object v4, v0, Lcom/fsck/k9/activity/MessageCompose;->repliedToMessageId:Ljava/lang/String;

    .line 311
    .line 312
    :cond_b
    const-string v4, "References"

    .line 313
    .line 314
    invoke-virtual {v7, v4}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    array-length v8, v4

    .line 319
    if-lt v8, v13, :cond_c

    .line 320
    .line 321
    aget-object v4, v4, v6

    .line 322
    .line 323
    iput-object v4, v0, Lcom/fsck/k9/activity/MessageCompose;->referencedMessageIds:Ljava/lang/String;

    .line 324
    .line 325
    :cond_c
    iget-boolean v4, v0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageProcessed:Z

    .line 326
    .line 327
    if-nez v4, :cond_d

    .line 328
    .line 329
    iget-object v4, v0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 330
    .line 331
    invoke-virtual {v4, v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->loadAllAvailableAttachments(Lcom/fsck/k9/mailstore/MessageViewInfo;)Z

    .line 332
    .line 333
    .line 334
    :cond_d
    new-instance v1, Ljava/util/HashMap;

    .line 335
    .line 336
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 337
    .line 338
    .line 339
    const-string v4, "X-K9mail-Identity"

    .line 340
    .line 341
    invoke-virtual {v7, v4}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v7

    .line 345
    array-length v8, v7

    .line 346
    if-nez v8, :cond_e

    .line 347
    .line 348
    invoke-interface {v3, v4}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v7

    .line 352
    :cond_e
    array-length v4, v7

    .line 353
    const/4 v15, 0x1

    .line 354
    sget-object v9, Lcom/fsck/k9/message/IdentityField;->QUOTED_TEXT_MODE:Lcom/fsck/k9/message/IdentityField;

    .line 355
    .line 356
    sget-object v10, Lcom/fsck/k9/message/IdentityField;->EMAIL:Lcom/fsck/k9/message/IdentityField;

    .line 357
    .line 358
    sget-object v11, Lcom/fsck/k9/message/IdentityField;->NAME:Lcom/fsck/k9/message/IdentityField;

    .line 359
    .line 360
    sget-object v12, Lcom/fsck/k9/message/IdentityField;->SIGNATURE:Lcom/fsck/k9/message/IdentityField;

    .line 361
    .line 362
    sget-object v14, Lcom/fsck/k9/message/IdentityField;->PLAIN_OFFSET:Lcom/fsck/k9/message/IdentityField;

    .line 363
    .line 364
    const/16 p1, 0x3

    .line 365
    .line 366
    sget-object v8, Lcom/fsck/k9/message/IdentityField;->PLAIN_LENGTH:Lcom/fsck/k9/message/IdentityField;

    .line 367
    .line 368
    sget-object v5, Lcom/fsck/k9/message/IdentityField;->FOOTER_OFFSET:Lcom/fsck/k9/message/IdentityField;

    .line 369
    .line 370
    move-object/from16 v17, v14

    .line 371
    .line 372
    sget-object v14, Lcom/fsck/k9/message/IdentityField;->OFFSET:Lcom/fsck/k9/message/IdentityField;

    .line 373
    .line 374
    move-object/from16 v18, v14

    .line 375
    .line 376
    const-string v14, ""

    .line 377
    .line 378
    move/from16 v19, v6

    .line 379
    .line 380
    sget-object v6, Lcom/fsck/k9/message/IdentityField;->LENGTH:Lcom/fsck/k9/message/IdentityField;

    .line 381
    .line 382
    if-lez v4, :cond_18

    .line 383
    .line 384
    aget-object v4, v7, v19

    .line 385
    .line 386
    if-eqz v4, :cond_18

    .line 387
    .line 388
    new-instance v1, Ljava/util/HashMap;

    .line 389
    .line 390
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 391
    .line 392
    .line 393
    new-array v7, v15, [Ljava/lang/Object;

    .line 394
    .line 395
    aput-object v4, v7, v19

    .line 396
    .line 397
    const-string v15, "Decoding identity: %s"

    .line 398
    .line 399
    invoke-static {v15, v7}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 403
    .line 404
    .line 405
    move-result v7

    .line 406
    const/4 v15, 0x1

    .line 407
    if-ge v7, v15, :cond_f

    .line 408
    .line 409
    goto/16 :goto_9

    .line 410
    .line 411
    :cond_f
    const-string v7, "\r?\n "

    .line 412
    .line 413
    invoke-virtual {v4, v7, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    move/from16 v7, v19

    .line 418
    .line 419
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    .line 420
    .line 421
    .line 422
    move-result v15

    .line 423
    const-string v13, "!"

    .line 424
    .line 425
    invoke-virtual {v13, v7}, Ljava/lang/String;->charAt(I)C

    .line 426
    .line 427
    .line 428
    move-result v13

    .line 429
    if-ne v15, v13, :cond_13

    .line 430
    .line 431
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 432
    .line 433
    .line 434
    move-result v7

    .line 435
    const/4 v13, 0x2

    .line 436
    if-le v7, v13, :cond_13

    .line 437
    .line 438
    new-instance v7, Landroid/net/Uri$Builder;

    .line 439
    .line 440
    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    .line 441
    .line 442
    .line 443
    const/4 v15, 0x1

    .line 444
    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    invoke-virtual {v7, v4}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    invoke-static {}, Lcom/fsck/k9/message/IdentityField;->values()[Lcom/fsck/k9/message/IdentityField;

    .line 456
    .line 457
    .line 458
    move-result-object v7

    .line 459
    array-length v13, v7

    .line 460
    const/4 v15, 0x0

    .line 461
    :goto_5
    if-ge v15, v13, :cond_11

    .line 462
    .line 463
    move-object/from16 v23, v7

    .line 464
    .line 465
    aget-object v7, v23, v15

    .line 466
    .line 467
    move/from16 v24, v13

    .line 468
    .line 469
    iget-object v13, v7, Lcom/fsck/k9/message/IdentityField;->value:Ljava/lang/String;

    .line 470
    .line 471
    invoke-virtual {v4, v13}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v13

    .line 475
    if-eqz v13, :cond_10

    .line 476
    .line 477
    invoke-virtual {v1, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    :cond_10
    add-int/lit8 v15, v15, 0x1

    .line 481
    .line 482
    move-object/from16 v7, v23

    .line 483
    .line 484
    move/from16 v13, v24

    .line 485
    .line 486
    goto :goto_5

    .line 487
    :cond_11
    const/4 v7, 0x1

    .line 488
    new-array v4, v7, [Ljava/lang/Object;

    .line 489
    .line 490
    const/16 v19, 0x0

    .line 491
    .line 492
    aput-object v1, v4, v19

    .line 493
    .line 494
    const-string v13, "Decoded identity: %s"

    .line 495
    .line 496
    invoke-static {v13, v4}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    const/4 v4, 0x5

    .line 500
    new-array v13, v4, [Lcom/fsck/k9/message/IdentityField;

    .line 501
    .line 502
    aput-object v6, v13, v19

    .line 503
    .line 504
    aput-object v18, v13, v7

    .line 505
    .line 506
    const/16 v22, 0x2

    .line 507
    .line 508
    aput-object v5, v13, v22

    .line 509
    .line 510
    aput-object v8, v13, p1

    .line 511
    .line 512
    const/4 v7, 0x4

    .line 513
    aput-object v17, v13, v7

    .line 514
    .line 515
    const/4 v7, 0x0

    .line 516
    :goto_6
    if-ge v7, v4, :cond_18

    .line 517
    .line 518
    aget-object v15, v13, v7

    .line 519
    .line 520
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v23

    .line 524
    if-eqz v23, :cond_12

    .line 525
    .line 526
    :try_start_0
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v23

    .line 530
    check-cast v23, Ljava/lang/String;

    .line 531
    .line 532
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .line 534
    .line 535
    :cond_12
    move/from16 v24, v7

    .line 536
    .line 537
    const/4 v7, 0x1

    .line 538
    goto :goto_7

    .line 539
    :catch_0
    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v23

    .line 543
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v15

    .line 547
    move/from16 v24, v7

    .line 548
    .line 549
    const/4 v7, 0x2

    .line 550
    new-array v4, v7, [Ljava/lang/Object;

    .line 551
    .line 552
    const/16 v19, 0x0

    .line 553
    .line 554
    aput-object v23, v4, v19

    .line 555
    .line 556
    const/4 v7, 0x1

    .line 557
    aput-object v15, v4, v7

    .line 558
    .line 559
    const-string v15, "Invalid %s field in identity: %s"

    .line 560
    .line 561
    invoke-static {v15, v4}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    .line 563
    .line 564
    :goto_7
    add-int/lit8 v4, v24, 0x1

    .line 565
    .line 566
    move v7, v4

    .line 567
    const/4 v4, 0x5

    .line 568
    goto :goto_6

    .line 569
    :cond_13
    const/4 v7, 0x1

    .line 570
    new-array v13, v7, [Ljava/lang/Object;

    .line 571
    .line 572
    const/4 v7, 0x0

    .line 573
    aput-object v4, v13, v7

    .line 574
    .line 575
    const-string v15, "Got a saved legacy identity: %s"

    .line 576
    .line 577
    invoke-static {v15, v13}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    .line 579
    .line 580
    new-instance v13, Ljava/util/StringTokenizer;

    .line 581
    .line 582
    const-string v15, ":"

    .line 583
    .line 584
    invoke-direct {v13, v4, v15, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 588
    .line 589
    .line 590
    move-result v4

    .line 591
    if-eqz v4, :cond_14

    .line 592
    .line 593
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v4

    .line 597
    invoke-static {v4}, Lcom/fsck/k9/mail/filter/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v4

    .line 601
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 602
    .line 603
    .line 604
    move-result-object v7

    .line 605
    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v7

    .line 609
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 610
    .line 611
    .line 612
    goto :goto_8

    .line 613
    :catch_1
    const/4 v7, 0x1

    .line 614
    new-array v15, v7, [Ljava/lang/Object;

    .line 615
    .line 616
    const/16 v19, 0x0

    .line 617
    .line 618
    aput-object v4, v15, v19

    .line 619
    .line 620
    const-string v4, "Unable to parse bodyLength \'%s\'"

    .line 621
    .line 622
    invoke-static {v4, v15}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    .line 624
    .line 625
    :cond_14
    :goto_8
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 626
    .line 627
    .line 628
    move-result v4

    .line 629
    if-eqz v4, :cond_15

    .line 630
    .line 631
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v4

    .line 635
    invoke-static {v4}, Lcom/fsck/k9/mail/filter/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v4

    .line 639
    invoke-virtual {v1, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    :cond_15
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 643
    .line 644
    .line 645
    move-result v4

    .line 646
    if-eqz v4, :cond_16

    .line 647
    .line 648
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v4

    .line 652
    invoke-static {v4}, Lcom/fsck/k9/mail/filter/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v4

    .line 656
    invoke-virtual {v1, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    :cond_16
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 660
    .line 661
    .line 662
    move-result v4

    .line 663
    if-eqz v4, :cond_17

    .line 664
    .line 665
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v4

    .line 669
    invoke-static {v4}, Lcom/fsck/k9/mail/filter/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v4

    .line 673
    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    :cond_17
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 677
    .line 678
    .line 679
    move-result v4

    .line 680
    if-eqz v4, :cond_18

    .line 681
    .line 682
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v4

    .line 686
    invoke-static {v4}, Lcom/fsck/k9/mail/filter/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v4

    .line 690
    invoke-virtual {v1, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    :cond_18
    :goto_9
    new-instance v24, Lnet/thunderbird/core/android/account/Identity;

    .line 694
    .line 695
    const/16 v29, 0x0

    .line 696
    .line 697
    const/16 v30, 0x3f

    .line 698
    .line 699
    const/16 v25, 0x0

    .line 700
    .line 701
    const/16 v26, 0x0

    .line 702
    .line 703
    const/16 v27, 0x0

    .line 704
    .line 705
    const/16 v28, 0x0

    .line 706
    .line 707
    invoke-direct/range {v24 .. v30}, Lnet/thunderbird/core/android/account/Identity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 708
    .line 709
    .line 710
    invoke-interface {v1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    move-result v4

    .line 714
    if-eqz v4, :cond_19

    .line 715
    .line 716
    move-object v4, v12

    .line 717
    const/4 v12, 0x0

    .line 718
    move-object v2, v14

    .line 719
    const/16 v14, 0x2f

    .line 720
    .line 721
    move-object v7, v10

    .line 722
    const/4 v10, 0x0

    .line 723
    move-object v13, v11

    .line 724
    const/4 v11, 0x0

    .line 725
    move-object/from16 v20, v3

    .line 726
    .line 727
    move-object v15, v7

    .line 728
    move-object v7, v9

    .line 729
    move-object/from16 v3, v18

    .line 730
    .line 731
    move-object/from16 v9, v24

    .line 732
    .line 733
    const/16 v22, 0x2

    .line 734
    .line 735
    move-object/from16 v18, v2

    .line 736
    .line 737
    move-object v2, v4

    .line 738
    move-object/from16 v4, v17

    .line 739
    .line 740
    move-object/from16 v17, v13

    .line 741
    .line 742
    const/4 v13, 0x1

    .line 743
    invoke-static/range {v9 .. v14}, Lnet/thunderbird/core/android/account/Identity;->copy$default(Lnet/thunderbird/core/android/account/Identity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lnet/thunderbird/core/android/account/Identity;

    .line 744
    .line 745
    .line 746
    move-result-object v23

    .line 747
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    move-object/from16 v26, v2

    .line 752
    .line 753
    check-cast v26, Ljava/lang/String;

    .line 754
    .line 755
    const/16 v27, 0x0

    .line 756
    .line 757
    const/16 v28, 0x37

    .line 758
    .line 759
    const/16 v24, 0x0

    .line 760
    .line 761
    const/16 v25, 0x0

    .line 762
    .line 763
    invoke-static/range {v23 .. v28}, Lnet/thunderbird/core/android/account/Identity;->copy$default(Lnet/thunderbird/core/android/account/Identity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lnet/thunderbird/core/android/account/Identity;

    .line 764
    .line 765
    .line 766
    move-result-object v2

    .line 767
    iput-boolean v13, v0, Lcom/fsck/k9/activity/MessageCompose;->signatureChanged:Z

    .line 768
    .line 769
    move-object/from16 v9, v17

    .line 770
    .line 771
    :goto_a
    move-object/from16 v23, v2

    .line 772
    .line 773
    goto :goto_b

    .line 774
    :cond_19
    move-object/from16 v20, v3

    .line 775
    .line 776
    move-object v7, v9

    .line 777
    move-object v15, v10

    .line 778
    move-object v9, v11

    .line 779
    move-object/from16 v4, v17

    .line 780
    .line 781
    move-object/from16 v3, v18

    .line 782
    .line 783
    const/4 v13, 0x1

    .line 784
    const/16 v22, 0x2

    .line 785
    .line 786
    move-object/from16 v18, v14

    .line 787
    .line 788
    instance-of v10, v2, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 789
    .line 790
    if-eqz v10, :cond_1a

    .line 791
    .line 792
    check-cast v2, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 793
    .line 794
    iget-object v2, v2, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 795
    .line 796
    iget-object v2, v2, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 797
    .line 798
    iget-object v2, v2, Lcom/fsck/k9/mailstore/LocalStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 799
    .line 800
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSignatureUse()Z

    .line 801
    .line 802
    .line 803
    move-result v28

    .line 804
    const/16 v27, 0x0

    .line 805
    .line 806
    const/16 v29, 0x2f

    .line 807
    .line 808
    const/16 v25, 0x0

    .line 809
    .line 810
    const/16 v26, 0x0

    .line 811
    .line 812
    invoke-static/range {v24 .. v29}, Lnet/thunderbird/core/android/account/Identity;->copy$default(Lnet/thunderbird/core/android/account/Identity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lnet/thunderbird/core/android/account/Identity;

    .line 813
    .line 814
    .line 815
    move-result-object v24

    .line 816
    :cond_1a
    move-object/from16 v25, v24

    .line 817
    .line 818
    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 819
    .line 820
    iget-object v2, v2, Lnet/thunderbird/core/android/account/Identity;->signature:Ljava/lang/String;

    .line 821
    .line 822
    const/16 v29, 0x0

    .line 823
    .line 824
    const/16 v30, 0x37

    .line 825
    .line 826
    const/16 v26, 0x0

    .line 827
    .line 828
    const/16 v27, 0x0

    .line 829
    .line 830
    move-object/from16 v28, v2

    .line 831
    .line 832
    invoke-static/range {v25 .. v30}, Lnet/thunderbird/core/android/account/Identity;->copy$default(Lnet/thunderbird/core/android/account/Identity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lnet/thunderbird/core/android/account/Identity;

    .line 833
    .line 834
    .line 835
    move-result-object v2

    .line 836
    goto :goto_a

    .line 837
    :goto_b
    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    move-result v2

    .line 841
    if-eqz v2, :cond_1b

    .line 842
    .line 843
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v2

    .line 847
    move-object/from16 v24, v2

    .line 848
    .line 849
    check-cast v24, Ljava/lang/String;

    .line 850
    .line 851
    const/16 v27, 0x0

    .line 852
    .line 853
    const/16 v28, 0x3d

    .line 854
    .line 855
    const/16 v25, 0x0

    .line 856
    .line 857
    const/16 v26, 0x0

    .line 858
    .line 859
    invoke-static/range {v23 .. v28}, Lnet/thunderbird/core/android/account/Identity;->copy$default(Lnet/thunderbird/core/android/account/Identity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lnet/thunderbird/core/android/account/Identity;

    .line 860
    .line 861
    .line 862
    move-result-object v2

    .line 863
    iput-boolean v13, v0, Lcom/fsck/k9/activity/MessageCompose;->identityChanged:Z

    .line 864
    .line 865
    :goto_c
    move-object/from16 v23, v2

    .line 866
    .line 867
    goto :goto_d

    .line 868
    :cond_1b
    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 869
    .line 870
    iget-object v2, v2, Lnet/thunderbird/core/android/account/Identity;->name:Ljava/lang/String;

    .line 871
    .line 872
    const/16 v27, 0x0

    .line 873
    .line 874
    const/16 v28, 0x3d

    .line 875
    .line 876
    const/16 v25, 0x0

    .line 877
    .line 878
    const/16 v26, 0x0

    .line 879
    .line 880
    move-object/from16 v24, v2

    .line 881
    .line 882
    invoke-static/range {v23 .. v28}, Lnet/thunderbird/core/android/account/Identity;->copy$default(Lnet/thunderbird/core/android/account/Identity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lnet/thunderbird/core/android/account/Identity;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    goto :goto_c

    .line 887
    :goto_d
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 888
    .line 889
    .line 890
    move-result v2

    .line 891
    if-eqz v2, :cond_1c

    .line 892
    .line 893
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object v2

    .line 897
    move-object/from16 v25, v2

    .line 898
    .line 899
    check-cast v25, Ljava/lang/String;

    .line 900
    .line 901
    const/16 v27, 0x0

    .line 902
    .line 903
    const/16 v28, 0x3b

    .line 904
    .line 905
    const/16 v24, 0x0

    .line 906
    .line 907
    const/16 v26, 0x0

    .line 908
    .line 909
    invoke-static/range {v23 .. v28}, Lnet/thunderbird/core/android/account/Identity;->copy$default(Lnet/thunderbird/core/android/account/Identity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lnet/thunderbird/core/android/account/Identity;

    .line 910
    .line 911
    .line 912
    move-result-object v2

    .line 913
    iput-boolean v13, v0, Lcom/fsck/k9/activity/MessageCompose;->identityChanged:Z

    .line 914
    .line 915
    goto :goto_e

    .line 916
    :cond_1c
    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 917
    .line 918
    iget-object v2, v2, Lnet/thunderbird/core/android/account/Identity;->email:Ljava/lang/String;

    .line 919
    .line 920
    const/16 v27, 0x0

    .line 921
    .line 922
    const/16 v28, 0x3b

    .line 923
    .line 924
    const/16 v24, 0x0

    .line 925
    .line 926
    const/16 v26, 0x0

    .line 927
    .line 928
    move-object/from16 v25, v2

    .line 929
    .line 930
    invoke-static/range {v23 .. v28}, Lnet/thunderbird/core/android/account/Identity;->copy$default(Lnet/thunderbird/core/android/account/Identity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lnet/thunderbird/core/android/account/Identity;

    .line 931
    .line 932
    .line 933
    move-result-object v2

    .line 934
    :goto_e
    sget-object v9, Lcom/fsck/k9/message/IdentityField;->ORIGINAL_MESSAGE:Lcom/fsck/k9/message/IdentityField;

    .line 935
    .line 936
    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 937
    .line 938
    .line 939
    move-result v10

    .line 940
    if-eqz v10, :cond_1d

    .line 941
    .line 942
    const/4 v10, 0x0

    .line 943
    iput-object v10, v0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 944
    .line 945
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v9

    .line 949
    check-cast v9, Ljava/lang/String;

    .line 950
    .line 951
    invoke-static {v9}, Lkotlin/math/MathKt;->parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 952
    .line 953
    .line 954
    move-result-object v9

    .line 955
    if-eqz v9, :cond_1d

    .line 956
    .line 957
    iget-object v10, v0, Lcom/fsck/k9/activity/MessageCompose;->preferences:Lcom/fsck/k9/Preferences;

    .line 958
    .line 959
    iget-object v11, v9, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 960
    .line 961
    invoke-virtual {v10, v11}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 962
    .line 963
    .line 964
    move-result-object v10

    .line 965
    if-eqz v10, :cond_1d

    .line 966
    .line 967
    iput-object v9, v0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 968
    .line 969
    :cond_1d
    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 970
    .line 971
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageCompose;->updateSignature()V

    .line 972
    .line 973
    .line 974
    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->chooseIdentityView:Lcom/google/android/material/textview/MaterialTextView;

    .line 975
    .line 976
    iget-object v9, v0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 977
    .line 978
    iget-object v9, v9, Lnet/thunderbird/core/android/account/Identity;->email:Ljava/lang/String;

    .line 979
    .line 980
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 981
    .line 982
    .line 983
    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->replyToPresenter:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 984
    .line 985
    iget-object v9, v0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 986
    .line 987
    invoke-virtual {v2, v9}, Lcom/fsck/k9/backend/imap/ImapSync;->setIdentity(Lnet/thunderbird/core/android/account/Identity;)V

    .line 988
    .line 989
    .line 990
    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 991
    .line 992
    iget-object v0, v2, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Ljava/lang/Object;

    .line 993
    .line 994
    move-object v9, v0

    .line 995
    check-cast v9, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 996
    .line 997
    sget-object v0, Lcom/fsck/k9/message/IdentityField;->QUOTE_STYLE:Lcom/fsck/k9/message/IdentityField;

    .line 998
    .line 999
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v10

    .line 1003
    if-eqz v10, :cond_1e

    .line 1004
    .line 1005
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v0

    .line 1009
    check-cast v0, Ljava/lang/String;

    .line 1010
    .line 1011
    invoke-static {v0}, Lnet/thunderbird/core/android/account/QuoteStyle;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v0

    .line 1015
    goto :goto_f

    .line 1016
    :cond_1e
    iget-object v0, v2, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->account:Ljava/lang/Object;

    .line 1017
    .line 1018
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1019
    .line 1020
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getQuoteStyle()Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    :goto_f
    iput-object v0, v2, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quoteStyle:Ljava/lang/Object;

    .line 1025
    .line 1026
    sget-object v0, Lcom/fsck/k9/message/IdentityField;->CURSOR_POSITION:Lcom/fsck/k9/message/IdentityField;

    .line 1027
    .line 1028
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1029
    .line 1030
    .line 1031
    move-result v10

    .line 1032
    if-eqz v10, :cond_1f

    .line 1033
    .line 1034
    :try_start_2
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v0

    .line 1038
    check-cast v0, Ljava/lang/String;

    .line 1039
    .line 1040
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1041
    .line 1042
    .line 1043
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1044
    goto :goto_10

    .line 1045
    :catch_2
    move-exception v0

    .line 1046
    const-string v10, "Could not parse cursor position for MessageCompose; continuing."

    .line 1047
    .line 1048
    const/4 v11, 0x0

    .line 1049
    new-array v12, v11, [Ljava/lang/Object;

    .line 1050
    .line 1051
    invoke-static {v0, v10, v12}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1052
    .line 1053
    .line 1054
    :cond_1f
    const/4 v0, 0x0

    .line 1055
    :goto_10
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1056
    .line 1057
    .line 1058
    move-result v10

    .line 1059
    if-eqz v10, :cond_20

    .line 1060
    .line 1061
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v7

    .line 1065
    check-cast v7, Ljava/lang/String;

    .line 1066
    .line 1067
    goto :goto_11

    .line 1068
    :cond_20
    const-string v7, "NONE"

    .line 1069
    .line 1070
    :goto_11
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v10

    .line 1074
    if-eqz v10, :cond_21

    .line 1075
    .line 1076
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v6

    .line 1080
    check-cast v6, Ljava/lang/String;

    .line 1081
    .line 1082
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v6

    .line 1086
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1087
    .line 1088
    .line 1089
    move-result v6

    .line 1090
    goto :goto_12

    .line 1091
    :cond_21
    const/4 v6, 0x0

    .line 1092
    :goto_12
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v10

    .line 1096
    if-eqz v10, :cond_22

    .line 1097
    .line 1098
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v3

    .line 1102
    check-cast v3, Ljava/lang/String;

    .line 1103
    .line 1104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v3

    .line 1108
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1109
    .line 1110
    .line 1111
    move-result v3

    .line 1112
    goto :goto_13

    .line 1113
    :cond_22
    const/4 v3, 0x0

    .line 1114
    :goto_13
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v10

    .line 1118
    if-eqz v10, :cond_23

    .line 1119
    .line 1120
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v5

    .line 1124
    check-cast v5, Ljava/lang/String;

    .line 1125
    .line 1126
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v10

    .line 1130
    goto :goto_14

    .line 1131
    :cond_23
    const/4 v10, 0x0

    .line 1132
    :goto_14
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v5

    .line 1136
    if-eqz v5, :cond_24

    .line 1137
    .line 1138
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v5

    .line 1142
    check-cast v5, Ljava/lang/String;

    .line 1143
    .line 1144
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v5

    .line 1148
    goto :goto_15

    .line 1149
    :cond_24
    const/4 v5, 0x0

    .line 1150
    :goto_15
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v8

    .line 1154
    if-eqz v8, :cond_25

    .line 1155
    .line 1156
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v4

    .line 1160
    check-cast v4, Ljava/lang/String;

    .line 1161
    .line 1162
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v4

    .line 1166
    goto :goto_16

    .line 1167
    :cond_25
    const/4 v4, 0x0

    .line 1168
    :goto_16
    :try_start_3
    invoke-static {v7}, Lcom/fsck/k9/message/QuotedTextMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/message/QuotedTextMode;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1172
    goto :goto_17

    .line 1173
    :catch_3
    sget-object v7, Lcom/fsck/k9/message/QuotedTextMode;->NONE:Lcom/fsck/k9/message/QuotedTextMode;

    .line 1174
    .line 1175
    :goto_17
    sget-object v8, Lcom/fsck/k9/message/IdentityField;->MESSAGE_FORMAT:Lcom/fsck/k9/message/IdentityField;

    .line 1176
    .line 1177
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v1

    .line 1181
    check-cast v1, Ljava/lang/String;

    .line 1182
    .line 1183
    if-eqz v1, :cond_26

    .line 1184
    .line 1185
    :try_start_4
    invoke-static {v1}, Lnet/thunderbird/core/android/account/MessageFormat;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/android/account/MessageFormat;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1189
    goto :goto_18

    .line 1190
    :catch_4
    :cond_26
    const/4 v1, 0x0

    .line 1191
    :goto_18
    const-string v8, "\n"

    .line 1192
    .line 1193
    const-string v11, "\r\n"

    .line 1194
    .line 1195
    sget-object v12, Lcom/fsck/k9/message/SimpleMessageFormat;->TEXT:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 1196
    .line 1197
    if-nez v1, :cond_27

    .line 1198
    .line 1199
    move-object/from16 v14, v20

    .line 1200
    .line 1201
    invoke-static {v14, v12}, Lkotlin/math/MathKt;->getBodyTextFromMessage(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/message/SimpleMessageFormat;)Ljava/lang/String;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v0

    .line 1205
    iget-object v1, v9, Lcom/fsck/k9/mailstore/LockableDatabase;->mSchemaDefinition:Ljava/lang/Object;

    .line 1206
    .line 1207
    check-cast v1, Landroid/widget/EditText;

    .line 1208
    .line 1209
    invoke-static {v0, v11, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v0

    .line 1213
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1214
    .line 1215
    .line 1216
    iput-boolean v13, v2, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->forcePlainText:Z

    .line 1217
    .line 1218
    invoke-virtual {v2, v7}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;)V

    .line 1219
    .line 1220
    .line 1221
    goto/16 :goto_1d

    .line 1222
    .line 1223
    :cond_27
    move-object/from16 v14, v20

    .line 1224
    .line 1225
    sget-object v15, Lnet/thunderbird/core/android/account/MessageFormat;->HTML:Lnet/thunderbird/core/android/account/MessageFormat;

    .line 1226
    .line 1227
    if-ne v1, v15, :cond_2d

    .line 1228
    .line 1229
    const-string v1, "text/html"

    .line 1230
    .line 1231
    invoke-static {v14, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v1

    .line 1235
    if-eqz v1, :cond_2b

    .line 1236
    .line 1237
    sget-object v12, Lcom/fsck/k9/message/SimpleMessageFormat;->HTML:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 1238
    .line 1239
    iput-object v12, v2, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Ljava/io/Serializable;

    .line 1240
    .line 1241
    const-wide/16 v12, -0x1

    .line 1242
    .line 1243
    invoke-static {v1, v12, v13}, Lcom/fsck/k9/mail/internet/JisSupport;->getTextFromPart(Lcom/fsck/k9/mail/Part;J)Ljava/lang/String;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v1

    .line 1247
    if-nez v1, :cond_28

    .line 1248
    .line 1249
    const-string v12, "Empty message; skipping."

    .line 1250
    .line 1251
    const/4 v13, 0x0

    .line 1252
    new-array v15, v13, [Ljava/lang/Object;

    .line 1253
    .line 1254
    invoke-static {v12, v15}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1255
    .line 1256
    .line 1257
    goto :goto_19

    .line 1258
    :cond_28
    const/4 v13, 0x0

    .line 1259
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v12

    .line 1263
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v15

    .line 1267
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1268
    .line 1269
    .line 1270
    move-result v17

    .line 1271
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v17

    .line 1275
    move/from16 v19, v13

    .line 1276
    .line 1277
    move/from16 v13, p1

    .line 1278
    .line 1279
    new-array v13, v13, [Ljava/lang/Object;

    .line 1280
    .line 1281
    aput-object v12, v13, v19

    .line 1282
    .line 1283
    const/16 v21, 0x1

    .line 1284
    .line 1285
    aput-object v15, v13, v21

    .line 1286
    .line 1287
    aput-object v17, v13, v22

    .line 1288
    .line 1289
    const-string v12, "Loading message with offset %d, length %d. Text length is %d."

    .line 1290
    .line 1291
    invoke-static {v12, v13}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1292
    .line 1293
    .line 1294
    add-int v12, v3, v6

    .line 1295
    .line 1296
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1297
    .line 1298
    .line 1299
    move-result v13

    .line 1300
    if-le v12, v13, :cond_29

    .line 1301
    .line 1302
    const-string v3, "The identity field from the draft contains an invalid LENGTH/OFFSET"

    .line 1303
    .line 1304
    move/from16 v13, v19

    .line 1305
    .line 1306
    new-array v6, v13, [Ljava/lang/Object;

    .line 1307
    .line 1308
    invoke-static {v3, v6}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1309
    .line 1310
    .line 1311
    const/4 v3, 0x0

    .line 1312
    const/4 v6, 0x0

    .line 1313
    :cond_29
    add-int v12, v3, v6

    .line 1314
    .line 1315
    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v12

    .line 1319
    move-object/from16 v18, v12

    .line 1320
    .line 1321
    :goto_19
    invoke-static/range {v18 .. v18}, Landroidx/work/OperationKt;->htmlToText(Ljava/lang/String;)Ljava/lang/String;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v12

    .line 1325
    iget-object v13, v9, Lcom/fsck/k9/mailstore/LockableDatabase;->mSchemaDefinition:Ljava/lang/Object;

    .line 1326
    .line 1327
    check-cast v13, Landroid/widget/EditText;

    .line 1328
    .line 1329
    invoke-static {v12, v11, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v8

    .line 1333
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1334
    .line 1335
    .line 1336
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1337
    .line 1338
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1339
    .line 1340
    .line 1341
    const/4 v13, 0x0

    .line 1342
    invoke-virtual {v1, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v11

    .line 1346
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    .line 1348
    .line 1349
    add-int/2addr v6, v3

    .line 1350
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v1

    .line 1354
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    .line 1356
    .line 1357
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    .line 1358
    .line 1359
    .line 1360
    move-result v1

    .line 1361
    if-lez v1, :cond_2b

    .line 1362
    .line 1363
    new-instance v1, Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 1364
    .line 1365
    invoke-direct {v1}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;-><init>()V

    .line 1366
    .line 1367
    .line 1368
    iput-object v1, v2, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Ljava/lang/Object;

    .line 1369
    .line 1370
    iput-object v8, v1, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    .line 1371
    .line 1372
    invoke-virtual {v1, v3}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setHeaderInsertionPoint(I)V

    .line 1373
    .line 1374
    .line 1375
    iget-object v1, v2, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Ljava/lang/Object;

    .line 1376
    .line 1377
    check-cast v1, Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 1378
    .line 1379
    if-eqz v10, :cond_2a

    .line 1380
    .line 1381
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 1382
    .line 1383
    .line 1384
    move-result v3

    .line 1385
    invoke-virtual {v1, v3}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setFooterInsertionPoint(I)V

    .line 1386
    .line 1387
    .line 1388
    goto :goto_1a

    .line 1389
    :cond_2a
    invoke-virtual {v1, v3}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setFooterInsertionPoint(I)V

    .line 1390
    .line 1391
    .line 1392
    :goto_1a
    iget-object v1, v2, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Ljava/lang/Object;

    .line 1393
    .line 1394
    check-cast v1, Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 1395
    .line 1396
    iget-object v1, v1, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    .line 1397
    .line 1398
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v1

    .line 1402
    invoke-static {v14}, Lcom/fsck/k9/mailstore/AttachmentResolver;->createFromPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/AttachmentResolver;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v3

    .line 1406
    iget-object v6, v9, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/Object;

    .line 1407
    .line 1408
    check-cast v6, Lcom/fsck/k9/view/MessageWebView;

    .line 1409
    .line 1410
    iget-object v8, v9, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 1411
    .line 1412
    check-cast v8, Lcom/fsck/k9/message/html/DisplayHtml;

    .line 1413
    .line 1414
    invoke-virtual {v8, v1}, Lcom/fsck/k9/message/html/DisplayHtml;->wrapMessageContent(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v1

    .line 1418
    const/4 v10, 0x0

    .line 1419
    invoke-virtual {v6, v1, v3, v10}, Lcom/fsck/k9/view/MessageWebView;->displayHtmlContentWithInlineAttachments$1(Ljava/lang/String;Lcom/fsck/k9/mailstore/AttachmentResolver;Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;)V

    .line 1420
    .line 1421
    .line 1422
    :cond_2b
    if-eqz v4, :cond_2c

    .line 1423
    .line 1424
    if-eqz v5, :cond_2c

    .line 1425
    .line 1426
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1427
    .line 1428
    .line 1429
    move-result v1

    .line 1430
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1431
    .line 1432
    .line 1433
    move-result v3

    .line 1434
    const/4 v11, 0x0

    .line 1435
    invoke-virtual {v2, v14, v1, v3, v11}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->processSourceMessageText(Lcom/fsck/k9/mail/Part;IIZ)V

    .line 1436
    .line 1437
    .line 1438
    goto :goto_1b

    .line 1439
    :cond_2c
    const/4 v11, 0x0

    .line 1440
    goto :goto_1b

    .line 1441
    :cond_2d
    const/4 v11, 0x0

    .line 1442
    sget-object v4, Lnet/thunderbird/core/android/account/MessageFormat;->TEXT:Lnet/thunderbird/core/android/account/MessageFormat;

    .line 1443
    .line 1444
    if-ne v1, v4, :cond_2e

    .line 1445
    .line 1446
    iput-object v12, v2, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Ljava/io/Serializable;

    .line 1447
    .line 1448
    invoke-virtual {v2, v14, v3, v6, v13}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->processSourceMessageText(Lcom/fsck/k9/mail/Part;IIZ)V

    .line 1449
    .line 1450
    .line 1451
    goto :goto_1b

    .line 1452
    :cond_2e
    const-string v1, "Unhandled message format."

    .line 1453
    .line 1454
    new-array v3, v11, [Ljava/lang/Object;

    .line 1455
    .line 1456
    invoke-static {v1, v3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1457
    .line 1458
    .line 1459
    :goto_1b
    :try_start_5
    iget-object v1, v9, Lcom/fsck/k9/mailstore/LockableDatabase;->mSchemaDefinition:Ljava/lang/Object;

    .line 1460
    .line 1461
    check-cast v1, Landroid/widget/EditText;

    .line 1462
    .line 1463
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1464
    .line 1465
    .line 1466
    goto :goto_1c

    .line 1467
    :catch_5
    move-exception v0

    .line 1468
    const-string v1, "Could not set cursor position in MessageCompose; ignoring."

    .line 1469
    .line 1470
    const/4 v13, 0x0

    .line 1471
    new-array v3, v13, [Ljava/lang/Object;

    .line 1472
    .line 1473
    invoke-static {v0, v1, v3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1474
    .line 1475
    .line 1476
    :goto_1c
    invoke-virtual {v2, v7}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;)V

    .line 1477
    .line 1478
    .line 1479
    :goto_1d
    return-void
.end method

.method public final processMessageToForward(Lcom/fsck/k9/mailstore/MessageViewInfo;Z)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->subject:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "fwd:"

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    .line 22
    .line 23
    const-string v3, "Fwd: "

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->repliedToMessageId:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->referencedMessageIds:Ljava/lang/String;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 v1, 0x0

    .line 58
    new-array v1, v1, [Ljava/lang/Object;

    .line 59
    .line 60
    const-string v2, "could not get Message-ID."

    .line 61
    .line 62
    invoke-static {v2, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    const/4 v1, 0x1

    .line 66
    if-eqz p2, :cond_3

    .line 67
    .line 68
    iget-object p2, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget-boolean v2, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->isMessageIncomplete:Z

    .line 74
    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    iget-object p1, p2, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/beetstra/jutf7/Base64Util;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p1, Lcom/fsck/k9/activity/MessageCompose;

    .line 82
    .line 83
    const p2, 0x7f120429

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_2
    iget-object p1, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 99
    .line 100
    check-cast p1, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LocalMessage;->makeMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    sget-object v2, Lcom/fsck/k9/provider/RawMessageProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {p1}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    const-string v2, "message/rfc822"

    .line 125
    .line 126
    invoke-virtual {p2, p1, v2, v1, v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->addAttachment(Landroid/net/Uri;Ljava/lang/String;ZZ)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    iget-object p2, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    sget-object v2, Lnet/thunderbird/core/android/account/QuoteStyle;->HEADER:Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 136
    .line 137
    iput-object v2, p2, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quoteStyle:Ljava/lang/Object;

    .line 138
    .line 139
    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->FORWARD:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 140
    .line 141
    invoke-virtual {p2, p1, v1, v2}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->populateUIWithQuotedMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;ZLcom/fsck/k9/activity/MessageCompose$Action;)V

    .line 142
    .line 143
    .line 144
    iget-object p2, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 145
    .line 146
    invoke-virtual {p2, p1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->loadAllAvailableAttachments(Lcom/fsck/k9/mailstore/MessageViewInfo;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-nez p1, :cond_4

    .line 151
    .line 152
    iget-object p1, p2, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/beetstra/jutf7/Base64Util;

    .line 153
    .line 154
    iget-object p1, p1, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p1, Lcom/fsck/k9/activity/MessageCompose;

    .line 157
    .line 158
    const p2, 0x7f12042a

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 170
    .line 171
    .line 172
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->setIdentityFromMessage(Lcom/fsck/k9/mail/internet/MimeMessage;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public final processMessageToReplyTo(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->subject:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    sget-object v3, Lcom/fsck/k9/activity/MessageCompose;->PREFIX:Ljava/util/regex/Pattern;

    .line 10
    .line 11
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "re:"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    const-string v3, "Re: "

    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    const/4 v4, 0x0

    .line 58
    sget-object v5, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY_ALL:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 59
    .line 60
    if-ne v1, v5, :cond_2

    .line 61
    .line 62
    move v1, v3

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move v1, v4

    .line 65
    :goto_1
    iget-object v6, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 66
    .line 67
    iget-object v7, v6, Lcom/fsck/k9/activity/compose/RecipientPresenter;->replyToParser:Lcom/fsck/k9/helper/ReplyToParser;

    .line 68
    .line 69
    const/4 v7, 0x0

    .line 70
    const-string v8, "account"

    .line 71
    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    iput-boolean v3, v6, Lcom/fsck/k9/activity/compose/RecipientPresenter;->forceShowCcBcc:Z

    .line 75
    .line 76
    iget-object v1, v6, Lcom/fsck/k9/activity/compose/RecipientPresenter;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 77
    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-static {v0, v1}, Lcom/fsck/k9/helper/ReplyToParser;->getRecipientsToReplyAllTo(Lcom/fsck/k9/mail/internet/MimeMessage;Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/google/zxing/BinaryBitmap;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v7

    .line 89
    :cond_4
    iget-object v1, v6, Lcom/fsck/k9/activity/compose/RecipientPresenter;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 90
    .line 91
    if-eqz v1, :cond_c

    .line 92
    .line 93
    invoke-static {v0, v1}, Lcom/fsck/k9/helper/ReplyToParser;->getRecipientsToReplyTo(Lcom/fsck/k9/mail/internet/MimeMessage;Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/google/zxing/BinaryBitmap;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    :goto_2
    iget-object v7, v1, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v7, [Lcom/fsck/k9/mail/Address;

    .line 100
    .line 101
    array-length v8, v7

    .line 102
    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    check-cast v7, [Lcom/fsck/k9/mail/Address;

    .line 107
    .line 108
    invoke-virtual {v6, v7}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addToAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, v1, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v1, [Lcom/fsck/k9/mail/Address;

    .line 114
    .line 115
    array-length v7, v1

    .line 116
    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, [Lcom/fsck/k9/mail/Address;

    .line 121
    .line 122
    invoke-virtual {v6, v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addCcAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v0}, Landroidx/work/Operation$State;->findPgpInlineParts(Lcom/fsck/k9/mail/Part;)Ljava/util/ArrayList;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-nez v1, :cond_5

    .line 134
    .line 135
    iput-boolean v3, v6, Lcom/fsck/k9/activity/compose/RecipientPresenter;->isForceTextMessageFormat:Z

    .line 136
    .line 137
    :cond_5
    if-eqz v0, :cond_6

    .line 138
    .line 139
    invoke-static {v0}, Landroidx/work/Operation$State;->findMultipartEncryptedParts(Lcom/fsck/k9/mail/Part;)Ljava/util/ArrayList;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    xor-int/2addr v1, v3

    .line 148
    goto :goto_3

    .line 149
    :cond_6
    move v1, v4

    .line 150
    :goto_3
    iput-boolean v1, v6, Lcom/fsck/k9/activity/compose/RecipientPresenter;->isReplyToEncryptedMessage:Z

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    if-eqz v1, :cond_9

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-lez v1, :cond_9

    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->repliedToMessageId:Ljava/lang/String;

    .line 173
    .line 174
    iget-object v1, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReferences:[Ljava/lang/String;

    .line 175
    .line 176
    if-nez v1, :cond_7

    .line 177
    .line 178
    const-string v1, "References"

    .line 179
    .line 180
    iget-object v3, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 181
    .line 182
    invoke-virtual {v3, v1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    iput-object v1, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReferences:[Ljava/lang/String;

    .line 187
    .line 188
    :cond_7
    iget-object v1, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReferences:[Ljava/lang/String;

    .line 189
    .line 190
    if-eqz v1, :cond_8

    .line 191
    .line 192
    array-length v3, v1

    .line 193
    if-lez v3, :cond_8

    .line 194
    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v1, " "

    .line 208
    .line 209
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->repliedToMessageId:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->referencedMessageIds:Ljava/lang/String;

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_8
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->repliedToMessageId:Ljava/lang/String;

    .line 225
    .line 226
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->referencedMessageIds:Ljava/lang/String;

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_9
    const-string v1, "could not get Message-ID."

    .line 230
    .line 231
    new-array v2, v4, [Ljava/lang/Object;

    .line 232
    .line 233
    invoke-static {v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :goto_4
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 237
    .line 238
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 239
    .line 240
    iget-object v3, v1, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->account:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 243
    .line 244
    invoke-virtual {v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isDefaultQuotedTextShown()Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    invoke-virtual {v1, p1, v3, v2}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->populateUIWithQuotedMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;ZLcom/fsck/k9/activity/MessageCompose$Action;)V

    .line 249
    .line 250
    .line 251
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 252
    .line 253
    sget-object v1, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 254
    .line 255
    if-eq p1, v1, :cond_b

    .line 256
    .line 257
    if-ne p1, v5, :cond_a

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_a
    return-void

    .line 261
    :cond_b
    :goto_5
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->setIdentityFromMessage(Lcom/fsck/k9/mail/internet/MimeMessage;)V

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :cond_c
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v7
.end method

.method public final setIdentityFromMessage(Lcom/fsck/k9/mail/internet/MimeMessage;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 2
    .line 3
    sget-object v1, Lcom/fsck/k9/helper/IdentityHelper;->RECIPIENT_TYPES:Ljava/util/List;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/fsck/k9/helper/IdentityHelper;->RECIPIENT_TYPES:Ljava/util/List;

    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    const/4 v3, 0x5

    .line 20
    invoke-direct {v2, v3, p1}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Lkotlin/sequences/TakeWhileSequence;

    .line 24
    .line 25
    sget-object v3, Lkotlin/sequences/SequencesKt___SequencesKt$flatMap$2;->INSTANCE:Lkotlin/sequences/SequencesKt___SequencesKt$flatMap$2;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-direct {p1, v1, v2, v3}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/fsck/k9/helper/IdentityHelper$$ExternalSyntheticLambda1;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v1, v0, v2}, Lcom/fsck/k9/helper/IdentityHelper$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lkotlin/sequences/TakeWhileSequence;

    .line 38
    .line 39
    const/4 v5, 0x2

    .line 40
    invoke-direct {v4, p1, v1, v5}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 41
    .line 42
    .line 43
    invoke-static {v4}, Lkotlin/sequences/SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/FilteringSequence;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/FilteringSequence;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lnet/thunderbird/core/android/account/Identity;

    .line 52
    .line 53
    if-nez p1, :cond_0

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIdentity(I)Lnet/thunderbird/core/android/account/Identity;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIdentity(I)Lnet/thunderbird/core/android/account/Identity;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eq p1, v0, :cond_1

    .line 66
    .line 67
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 68
    .line 69
    iput-boolean v3, p0, Lcom/fsck/k9/activity/MessageCompose;->identityChanged:Z

    .line 70
    .line 71
    iput-boolean v3, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 72
    .line 73
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->chooseIdentityView:Lcom/google/android/material/textview/MaterialTextView;

    .line 74
    .line 75
    iget-object v1, p1, Lnet/thunderbird/core/android/account/Identity;->email:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateSignature()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->replyToPresenter:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Lcom/fsck/k9/backend/imap/ImapSync;->setIdentity(Lnet/thunderbird/core/android/account/Identity;)V

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 94
    .line 95
    .line 96
    :cond_1
    return-void
.end method

.method public final triggerIfNeededSentFolderNotFoundInAppNotification()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isUploadSentMessages()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->sentFolderId:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    move v1, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    monitor-exit v0

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    new-instance v0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-direct {v0, v2, p0}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Landroidx/camera/camera2/pipe/core/Threads$runAsyncSupervised$1;

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-direct {v1, v3, v4, v0}, Landroidx/camera/camera2/pipe/core/Threads$runAsyncSupervised$1;-><init>(ILkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 38
    .line 39
    invoke-static {v0, v1}, Lkotlinx/coroutines/JobKt;->runBlockingK(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->notificationSenderCompat:Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;

    .line 46
    .line 47
    new-instance v5, Lcom/fsck/k9/activity/MessageCompose$$ExternalSyntheticLambda2;

    .line 48
    .line 49
    invoke-direct {v5, p0, v2}, Lcom/fsck/k9/activity/MessageCompose$$ExternalSyntheticLambda2;-><init>(Lcom/fsck/k9/activity/MessageCompose;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object p0, v1, Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;->notificationSender:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p0, Lnet/thunderbird/feature/notification/api/sender/NotificationSender;

    .line 61
    .line 62
    invoke-interface {p0, v0}, Lnet/thunderbird/feature/notification/api/sender/NotificationSender;->send(Lnet/thunderbird/feature/notification/api/content/Notification;)Lkotlinx/coroutines/flow/Flow;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    new-instance v0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 67
    .line 68
    const/16 v2, 0x1a

    .line 69
    .line 70
    invoke-direct {v0, v5, v4, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 71
    .line 72
    .line 73
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 74
    .line 75
    invoke-direct {v2, p0, v0, v3}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 76
    .line 77
    .line 78
    iget-object p0, v1, Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat;->scope:Lkotlinx/coroutines/internal/ContextScope;

    .line 79
    .line 80
    invoke-static {v2, p0}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    throw p0

    .line 87
    :cond_1
    return-void
.end method

.method public final updateMessageFormat()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getMessageFormat()Lnet/thunderbird/core/android/account/MessageFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lnet/thunderbird/core/android/account/MessageFormat;->TEXT:Lnet/thunderbird/core/android/account/MessageFormat;

    .line 8
    .line 9
    sget-object v2, Lcom/fsck/k9/message/SimpleMessageFormat;->TEXT:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 15
    .line 16
    iget-boolean v3, v1, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->forcePlainText:Z

    .line 17
    .line 18
    sget-object v4, Lcom/fsck/k9/message/QuotedTextMode;->SHOW:Lcom/fsck/k9/message/QuotedTextMode;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iget-object v3, v1, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextMode:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v3, Lcom/fsck/k9/message/QuotedTextMode;

    .line 25
    .line 26
    if-ne v3, v4, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 30
    .line 31
    iget-boolean v3, v3, Lcom/fsck/k9/activity/compose/RecipientPresenter;->isForceTextMessageFormat:Z

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    sget-object v3, Lnet/thunderbird/core/android/account/MessageFormat;->AUTO:Lnet/thunderbird/core/android/account/MessageFormat;

    .line 37
    .line 38
    sget-object v5, Lcom/fsck/k9/message/SimpleMessageFormat;->HTML:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 39
    .line 40
    if-ne v0, v3, :cond_4

    .line 41
    .line 42
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 43
    .line 44
    sget-object v3, Lcom/fsck/k9/activity/MessageCompose$Action;->COMPOSE:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 45
    .line 46
    if-eq v0, v3, :cond_5

    .line 47
    .line 48
    iget-object v0, v1, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Ljava/io/Serializable;

    .line 49
    .line 50
    check-cast v0, Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 51
    .line 52
    if-ne v0, v2, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget-object v0, v1, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextMode:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Lcom/fsck/k9/message/QuotedTextMode;

    .line 58
    .line 59
    if-ne v0, v4, :cond_5

    .line 60
    .line 61
    :cond_4
    move-object v2, v5

    .line 62
    :cond_5
    :goto_0
    iput-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 63
    .line 64
    return-void
.end method

.method public final updateSignature()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lnet/thunderbird/core/android/account/Identity;->signatureUse:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lnet/thunderbird/core/android/account/Identity;->signature:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "\r\n"

    .line 12
    .line 13
    const-string v2, "\n"

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->signatureView:Landroid/widget/EditText;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->signatureView:Landroid/widget/EditText;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->signatureView:Landroid/widget/EditText;

    .line 34
    .line 35
    const/16 v0, 0x8

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

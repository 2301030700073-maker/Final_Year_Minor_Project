.class public final Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

.field public final clipboardManager:Lcom/fsck/k9/helper/ClipboardManager;

.field public final contactPermissionResolver:Lapp/k9mail/core/android/common/contact/AndroidContactPermissionResolver;

.field public final contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

.field public final contactSettingsProvider:Lcom/fsck/k9/ui/messagedetails/ContactSettingsProvider;

.field public cryptoResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

.field public final dateFormat:Ljava/text/DateFormat;

.field public final eventChannel:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final folderNameFormatter:Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

.field public final folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

.field public final internalUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

.field public final messageRepository:Lcom/fsck/k9/mailstore/MessageRepository;

.field public final participantFormatter:Lcom/fsck/k9/ui/messagedetails/RealMessageDetailsParticipantFormatter;

.field public final resources:Landroid/content/res/Resources;

.field public final uiEvents:Lkotlinx/coroutines/flow/ChannelAsFlow;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/fsck/k9/mailstore/MessageRepository;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lcom/fsck/k9/ui/messagedetails/ContactSettingsProvider;Lapp/k9mail/core/android/common/contact/ContactRepository;Lapp/k9mail/core/android/common/contact/AndroidContactPermissionResolver;Lcom/fsck/k9/helper/ClipboardManager;Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lcom/fsck/k9/ui/messagedetails/RealMessageDetailsParticipantFormatter;Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->resources:Landroid/content/res/Resources;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->messageRepository:Lcom/fsck/k9/mailstore/MessageRepository;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->contactSettingsProvider:Lcom/fsck/k9/ui/messagedetails/ContactSettingsProvider;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->contactPermissionResolver:Lapp/k9mail/core/android/common/contact/AndroidContactPermissionResolver;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->clipboardManager:Lcom/fsck/k9/helper/ClipboardManager;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->participantFormatter:Lcom/fsck/k9/ui/messagedetails/RealMessageDetailsParticipantFormatter;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->folderNameFormatter:Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 23
    .line 24
    const/4 p1, 0x2

    .line 25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const/4 p3, 0x1

    .line 30
    invoke-static {p3, p1, p2}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->dateFormat:Ljava/text/DateFormat;

    .line 35
    .line 36
    sget-object p1, Lcom/fsck/k9/ui/messagedetails/MessageDetailsState$Error;->INSTANCE$1:Lcom/fsck/k9/ui/messagedetails/MessageDetailsState$Error;

    .line 37
    .line 38
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->internalUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    const/4 p2, 0x7

    .line 46
    const/4 p3, 0x0

    .line 47
    invoke-static {p3, p1, p1, p2}, Lokhttp3/Cookie$Companion;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->eventChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 52
    .line 53
    new-instance p2, Lkotlinx/coroutines/flow/ChannelAsFlow;

    .line 54
    .line 55
    invoke-direct {p2, p1, p3}, Lkotlinx/coroutines/flow/ChannelAsFlow;-><init>(Lkotlinx/coroutines/channels/Channel;Z)V

    .line 56
    .line 57
    .line 58
    iput-object p2, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->uiEvents:Lkotlinx/coroutines/flow/ChannelAsFlow;

    .line 59
    .line 60
    return-void
.end method

.method public static final access$toParticipants(Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;Ljava/util/List;Lnet/thunderbird/core/android/account/LegacyAccountDto;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_9

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/fsck/k9/mail/Address;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->participantFormatter:Lcom/fsck/k9/ui/messagedetails/RealMessageDetailsParticipantFormatter;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-object v3, v1, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v4, v1, Lcom/fsck/k9/mail/Address;->personal:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->findIdentity(Lcom/fsck/k9/mail/Address;)Lnet/thunderbird/core/android/account/Identity;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v5, 0x0

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    iget-object v4, v2, Lcom/fsck/k9/ui/messagedetails/RealMessageDetailsParticipantFormatter;->meText:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIdentities()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    const/4 v6, 0x1

    .line 63
    if-ne v2, v6, :cond_0

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_0
    iget-object v2, v1, Lnet/thunderbird/core/android/account/Identity;->description:Ljava/lang/String;

    .line 67
    .line 68
    if-nez v2, :cond_2

    .line 69
    .line 70
    iget-object v1, v1, Lnet/thunderbird/core/android/account/Identity;->name:Ljava/lang/String;

    .line 71
    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_1
    move-object v4, v1

    .line 76
    goto :goto_3

    .line 77
    :cond_2
    move-object v4, v2

    .line 78
    goto :goto_3

    .line 79
    :cond_3
    iget-boolean v1, v2, Lcom/fsck/k9/ui/messagedetails/RealMessageDetailsParticipantFormatter;->showContactNames:Z

    .line 80
    .line 81
    if-eqz v1, :cond_7

    .line 82
    .line 83
    iget-object v1, v2, Lcom/fsck/k9/ui/messagedetails/RealMessageDetailsParticipantFormatter;->contactNameColor:Ljava/lang/Integer;

    .line 84
    .line 85
    iget-object v2, v2, Lcom/fsck/k9/ui/messagedetails/RealMessageDetailsParticipantFormatter;->contactNameProvider:Lcom/fsck/k9/helper/RealContactNameProvider;

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-static {v3}, Lnet/thunderbird/core/common/mail/TokensKt;->toEmailAddressOrNull(Ljava/lang/String;)Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    if-eqz v6, :cond_4

    .line 95
    .line 96
    iget-object v2, v2, Lcom/fsck/k9/helper/RealContactNameProvider;->contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 97
    .line 98
    check-cast v2, Lapp/k9mail/core/android/common/contact/CachingContactRepository;

    .line 99
    .line 100
    invoke-virtual {v2, v6}, Lapp/k9mail/core/android/common/contact/CachingContactRepository;->getContactFor(Lnet/thunderbird/core/common/mail/EmailAddress;)Lapp/k9mail/core/android/common/contact/Contact;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    iget-object v2, v2, Lapp/k9mail/core/android/common/contact/Contact;->name:Ljava/lang/String;

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    move-object v2, v5

    .line 110
    :goto_1
    if-nez v2, :cond_5

    .line 111
    .line 112
    move-object v2, v5

    .line 113
    goto :goto_2

    .line 114
    :cond_5
    if-eqz v1, :cond_6

    .line 115
    .line 116
    new-instance v6, Landroid/text/SpannableString;

    .line 117
    .line 118
    invoke-direct {v6, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-direct {v7, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    const/16 v2, 0x21

    .line 135
    .line 136
    const/4 v8, 0x0

    .line 137
    invoke-virtual {v6, v7, v8, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 138
    .line 139
    .line 140
    move-object v2, v6

    .line 141
    :cond_6
    :goto_2
    if-nez v2, :cond_2

    .line 142
    .line 143
    :cond_7
    :goto_3
    new-instance v1, Lcom/fsck/k9/ui/messagedetails/Participant;

    .line 144
    .line 145
    invoke-static {v3}, Lnet/thunderbird/core/common/mail/TokensKt;->toEmailAddressOrNull(Ljava/lang/String;)Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    if-eqz v2, :cond_8

    .line 150
    .line 151
    iget-object v6, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 152
    .line 153
    check-cast v6, Lapp/k9mail/core/android/common/contact/CachingContactRepository;

    .line 154
    .line 155
    invoke-virtual {v6, v2}, Lapp/k9mail/core/android/common/contact/CachingContactRepository;->getContactFor(Lnet/thunderbird/core/common/mail/EmailAddress;)Lapp/k9mail/core/android/common/contact/Contact;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    if-eqz v2, :cond_8

    .line 160
    .line 161
    iget-object v5, v2, Lapp/k9mail/core/android/common/contact/Contact;->uri:Landroid/net/Uri;

    .line 162
    .line 163
    :cond_8
    invoke-direct {v1, v4, v3, v5}, Lcom/fsck/k9/ui/messagedetails/Participant;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/net/Uri;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_9
    return-object v0
.end method

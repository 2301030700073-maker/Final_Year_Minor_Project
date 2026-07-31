.class public final Lcom/fsck/k9/activity/compose/RecipientPresenter$asyncUpdateCryptoStatus$1;
.super Landroid/os/AsyncTask;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $composeCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

.field public final synthetic $recipientAddresses:[Ljava/lang/String;

.field public final synthetic this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/activity/compose/RecipientPresenter;[Ljava/lang/String;Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$asyncUpdateCryptoStatus$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$asyncUpdateCryptoStatus$1;->$recipientAddresses:[Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$asyncUpdateCryptoStatus$1;->$composeCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$asyncUpdateCryptoStatus$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/openintents/openpgp/OpenPgpApiManager;->getOpenPgpApi()Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$asyncUpdateCryptoStatus$1;->$recipientAddresses:[Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v1, Landroid/content/Intent;

    .line 24
    .line 25
    const-string v2, "org.openintents.openpgp.action.QUERY_AUTOCRYPT_STATUS"

    .line 26
    .line 27
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v2, "user_ids"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApi(Landroid/content/Intent;Ljava/io/ByteArrayOutputStream;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string p1, "result_code"

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/4 v2, 0x1

    .line 48
    const/4 v3, 0x2

    .line 49
    sget-object v4, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->ERROR:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 50
    .line 51
    if-eqz p1, :cond_a

    .line 52
    .line 53
    if-eq p1, v2, :cond_2

    .line 54
    .line 55
    if-eq p1, v3, :cond_1

    .line 56
    .line 57
    new-instance p0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    .line 58
    .line 59
    invoke-direct {p0, v4, v0}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;-><init>(Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;Landroid/app/PendingIntent;)V

    .line 60
    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_1
    new-instance p0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    .line 64
    .line 65
    invoke-direct {p0, v4, v0}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;-><init>(Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;Landroid/app/PendingIntent;)V

    .line 66
    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_2
    const-string p1, "keys_confirmed"

    .line 70
    .line 71
    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    const-string v4, "autocrypt_status"

    .line 76
    .line 77
    invoke-virtual {p0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_9

    .line 82
    .line 83
    if-eq v1, v2, :cond_7

    .line 84
    .line 85
    if-eq v1, v3, :cond_5

    .line 86
    .line 87
    const/4 v2, 0x3

    .line 88
    if-ne v1, v2, :cond_4

    .line 89
    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    sget-object p1, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->RECOMMENDED_CONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    sget-object p1, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->RECOMMENDED_UNCONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    const-string p0, "encountered bad autocrypt status number!"

    .line 99
    .line 100
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_5
    if-eqz p1, :cond_6

    .line 105
    .line 106
    sget-object p1, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->AVAILABLE_CONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_6
    sget-object p1, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->AVAILABLE_UNCONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_7
    if-eqz p1, :cond_8

    .line 113
    .line 114
    sget-object p1, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->DISCOURAGE_CONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_8
    sget-object p1, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->DISCOURAGE_UNCONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_9
    sget-object p1, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->UNAVAILABLE:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 121
    .line 122
    :goto_0
    const-string v0, "intent"

    .line 123
    .line 124
    const-class v1, Landroid/app/PendingIntent;

    .line 125
    .line 126
    invoke-static {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    check-cast p0, Landroid/app/PendingIntent;

    .line 131
    .line 132
    new-instance v0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    .line 133
    .line 134
    invoke-direct {v0, p1, p0}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;-><init>(Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;Landroid/app/PendingIntent;)V

    .line 135
    .line 136
    .line 137
    return-object v0

    .line 138
    :cond_a
    const-string p1, "error"

    .line 139
    .line 140
    const-class v5, Lorg/openintents/openpgp/OpenPgpError;

    .line 141
    .line 142
    invoke-static {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    check-cast p0, Lorg/openintents/openpgp/OpenPgpError;

    .line 147
    .line 148
    if-eqz p0, :cond_b

    .line 149
    .line 150
    iget p1, p0, Lorg/openintents/openpgp/OpenPgpError;->errorId:I

    .line 151
    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iget-object p0, p0, Lorg/openintents/openpgp/OpenPgpError;->message:Ljava/lang/String;

    .line 157
    .line 158
    new-array v3, v3, [Ljava/lang/Object;

    .line 159
    .line 160
    aput-object p1, v3, v1

    .line 161
    .line 162
    aput-object p0, v3, v2

    .line 163
    .line 164
    const-string p0, "OpenPGP API Error #%s: %s"

    .line 165
    .line 166
    invoke-static {p0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_b
    const-string p0, "OpenPGP API Unknown Error"

    .line 171
    .line 172
    new-array p1, v1, [Ljava/lang/Object;

    .line 173
    .line 174
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :goto_1
    new-instance p0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    .line 178
    .line 179
    invoke-direct {p0, v4, v0}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;-><init>(Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;Landroid/app/PendingIntent;)V

    .line 180
    .line 181
    .line 182
    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 11

    .line 1
    move-object v10, p1

    .line 2
    check-cast v10, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$asyncUpdateCryptoStatus$1;->$composeCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 5
    .line 6
    if-eqz v10, :cond_0

    .line 7
    .line 8
    iget-object v1, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 9
    .line 10
    iget-object v9, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 11
    .line 12
    iget-object v2, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->openPgpKeyId:Ljava/lang/Long;

    .line 13
    .line 14
    iget-boolean v4, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isPgpInlineModeEnabled:Z

    .line 15
    .line 16
    iget-boolean v5, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isSenderPreferEncryptMutual:Z

    .line 17
    .line 18
    iget-boolean v6, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isReplyToEncrypted:Z

    .line 19
    .line 20
    iget-boolean v7, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptAllDrafts:Z

    .line 21
    .line 22
    iget-boolean v8, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptSubject:Z

    .line 23
    .line 24
    iget-object v3, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAddresses:Ljava/util/ArrayList;

    .line 25
    .line 26
    new-instance v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 27
    .line 28
    invoke-direct/range {v0 .. v10}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;-><init>(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;Ljava/lang/Long;Ljava/util/ArrayList;ZZZZZLcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;)V

    .line 29
    .line 30
    .line 31
    move-object p1, v0

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$asyncUpdateCryptoStatus$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->redrawCachedCryptoStatusIcon()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

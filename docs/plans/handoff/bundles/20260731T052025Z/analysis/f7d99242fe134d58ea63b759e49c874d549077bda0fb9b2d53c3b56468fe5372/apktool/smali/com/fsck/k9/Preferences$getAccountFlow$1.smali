.class public final Lcom/fsck/k9/Preferences$getAccountFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $accountUuid:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/account/server/certificate/domain/usecase/AddServerCertificateException;Ljava/lang/String;ILjava/security/cert/X509Certificate;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    iput v0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$r8$classId:I

    .line 4
    .line 5
    iput-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 8
    .line 9
    iput p3, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 10
    .line 11
    iput-object p4, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 18
    iput p5, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$r8$classId:I

    iput-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 19
    iput p4, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$r8$classId:I

    iput-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 20
    iput p3, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$r8$classId:I

    iput-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;Lkotlin/coroutines/Continuation;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 21
    iput p5, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$r8$classId:I

    iput-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    iput-object p4, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private final invokeSuspend$app$k9mail$feature$account$server$certificate$domain$usecase$AddServerCertificateException$addCertificate$2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lapp/k9mail/feature/account/server/certificate/domain/usecase/AddServerCertificateException;

    .line 7
    .line 8
    iget-object p1, p1, Lapp/k9mail/feature/account/server/certificate/domain/usecase/AddServerCertificateException;->localKeyStore:Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ljava/lang/String;

    .line 13
    .line 14
    iget v1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 15
    .line 16
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 19
    .line 20
    monitor-enter p1

    .line 21
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v2, p1, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->keyStore$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 25
    .line 26
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/security/KeyStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    :try_start_1
    invoke-static {v0, v1}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->getCertKey(Ljava/lang/String;I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v2, v0, p0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    :try_start_2
    invoke-virtual {p1}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->writeCertificateFile()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    .line 43
    .line 44
    monitor-exit p1

    .line 45
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    :try_start_3
    new-instance v0, Ljava/security/cert/CertificateException;

    .line 52
    .line 53
    const-string v1, "Failed to add certificate to local key store"

    .line 54
    .line 55
    invoke-direct {v0, v1, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_0
    new-instance p0, Ljava/security/cert/CertificateException;

    .line 60
    .line 61
    const-string v0, "Certificate not added because key store not initialized"

    .line 62
    .line 63
    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :goto_0
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    throw p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    .line 1
    iget v0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;

    .line 13
    .line 14
    check-cast v1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;

    .line 15
    .line 16
    const/16 v2, 0x1d

    .line 17
    .line 18
    invoke-direct {v0, p0, v1, p2, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, v0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_0
    new-instance v0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lkotlinx/coroutines/flow/FlowCollector;

    .line 29
    .line 30
    check-cast v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    .line 31
    .line 32
    const/16 v2, 0x1c

    .line 33
    .line 34
    invoke-direct {v0, p0, v1, p2, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 35
    .line 36
    .line 37
    iput-object p1, v0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    return-object v0

    .line 40
    :pswitch_1
    new-instance v0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Lkotlinx/coroutines/channels/SendChannel;

    .line 45
    .line 46
    const/16 v2, 0x1b

    .line 47
    .line 48
    invoke-direct {v0, p0, v1, p2, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 49
    .line 50
    .line 51
    iput-object p1, v0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 52
    .line 53
    return-object v0

    .line 54
    :pswitch_2
    new-instance v3, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 55
    .line 56
    iget-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 57
    .line 58
    move-object v4, p1

    .line 59
    check-cast v4, Lcom/fsck/k9/ui/settings/AboutViewModel;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 62
    .line 63
    move-object v6, p0

    .line 64
    check-cast v6, Lcom/fsck/k9/ui/settings/AboutFragment;

    .line 65
    .line 66
    move-object v7, v1

    .line 67
    check-cast v7, Landroidx/compose/ui/platform/ComposeView;

    .line 68
    .line 69
    const/16 v8, 0x1a

    .line 70
    .line 71
    move-object v5, p2

    .line 72
    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;Lkotlin/coroutines/Continuation;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 73
    .line 74
    .line 75
    return-object v3

    .line 76
    :pswitch_3
    move-object v8, p2

    .line 77
    new-instance p1, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 78
    .line 79
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 82
    .line 83
    check-cast v1, Landroid/net/Uri;

    .line 84
    .line 85
    const/16 p2, 0x19

    .line 86
    .line 87
    invoke-direct {p1, p0, v1, v8, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 88
    .line 89
    .line 90
    return-object p1

    .line 91
    :pswitch_4
    move-object v8, p2

    .line 92
    new-instance v4, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 93
    .line 94
    iget-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 95
    .line 96
    move-object v5, p1

    .line 97
    check-cast v5, Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessageLiveEvent;

    .line 98
    .line 99
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 100
    .line 101
    move-object v6, p0

    .line 102
    check-cast v6, Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 103
    .line 104
    move-object v7, v1

    .line 105
    check-cast v7, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 106
    .line 107
    const/16 v9, 0x18

    .line 108
    .line 109
    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 110
    .line 111
    .line 112
    return-object v4

    .line 113
    :pswitch_5
    move-object v8, p2

    .line 114
    new-instance v4, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 115
    .line 116
    iget-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 117
    .line 118
    move-object v5, p1

    .line 119
    check-cast v5, Lcom/fsck/k9/ui/base/AppLanguageManager;

    .line 120
    .line 121
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 122
    .line 123
    move-object v6, p0

    .line 124
    check-cast v6, Ljava/util/Locale;

    .line 125
    .line 126
    move-object v7, v1

    .line 127
    check-cast v7, Ljava/util/Locale;

    .line 128
    .line 129
    const/16 v9, 0x17

    .line 130
    .line 131
    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 132
    .line 133
    .line 134
    return-object v4

    .line 135
    :pswitch_6
    move-object v8, p2

    .line 136
    new-instance v4, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 137
    .line 138
    iget-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 139
    .line 140
    move-object v5, p1

    .line 141
    check-cast v5, Landroidx/lifecycle/LifecycleOwner;

    .line 142
    .line 143
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 144
    .line 145
    move-object v6, p0

    .line 146
    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 147
    .line 148
    move-object v7, v1

    .line 149
    check-cast v7, Lkotlinx/coroutines/flow/FlowCollector;

    .line 150
    .line 151
    const/16 v9, 0x16

    .line 152
    .line 153
    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 154
    .line 155
    .line 156
    return-object v4

    .line 157
    :pswitch_7
    move-object v8, p2

    .line 158
    new-instance p2, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 159
    .line 160
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast p0, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;

    .line 163
    .line 164
    check-cast v1, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 165
    .line 166
    const/16 v0, 0x15

    .line 167
    .line 168
    invoke-direct {p2, p0, v1, v8, v0}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 169
    .line 170
    .line 171
    iput-object p1, p2, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 172
    .line 173
    return-object p2

    .line 174
    :pswitch_8
    move-object v8, p2

    .line 175
    new-instance v4, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 176
    .line 177
    iget-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 178
    .line 179
    move-object v5, p1

    .line 180
    check-cast v5, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;

    .line 181
    .line 182
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 183
    .line 184
    move-object v7, p0

    .line 185
    check-cast v7, Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    .line 186
    .line 187
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 188
    .line 189
    const/16 v9, 0x14

    .line 190
    .line 191
    move-object v6, v8

    .line 192
    move-object v8, v1

    .line 193
    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;Lkotlin/coroutines/Continuation;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 194
    .line 195
    .line 196
    return-object v4

    .line 197
    :pswitch_9
    move-object v8, p2

    .line 198
    new-instance v4, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 199
    .line 200
    iget-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 201
    .line 202
    move-object v5, p1

    .line 203
    check-cast v5, Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment;

    .line 204
    .line 205
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 206
    .line 207
    move-object v6, p0

    .line 208
    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 209
    .line 210
    move-object v7, v1

    .line 211
    check-cast v7, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;

    .line 212
    .line 213
    const/16 v9, 0x13

    .line 214
    .line 215
    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 216
    .line 217
    .line 218
    return-object v4

    .line 219
    :pswitch_a
    move-object v8, p2

    .line 220
    new-instance v4, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 221
    .line 222
    iget-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 223
    .line 224
    move-object v5, p1

    .line 225
    check-cast v5, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;

    .line 226
    .line 227
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 228
    .line 229
    move-object v6, p0

    .line 230
    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 231
    .line 232
    move-object v7, v1

    .line 233
    check-cast v7, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;

    .line 234
    .line 235
    const/16 v9, 0x12

    .line 236
    .line 237
    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 238
    .line 239
    .line 240
    return-object v4

    .line 241
    :pswitch_b
    move-object v8, p2

    .line 242
    new-instance v4, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 243
    .line 244
    iget-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 245
    .line 246
    move-object v5, p1

    .line 247
    check-cast v5, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorViewModel;

    .line 248
    .line 249
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 250
    .line 251
    move-object v7, p0

    .line 252
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 253
    .line 254
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 255
    .line 256
    const/16 v9, 0x11

    .line 257
    .line 258
    move-object v6, v8

    .line 259
    move-object v8, v1

    .line 260
    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;Lkotlin/coroutines/Continuation;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 261
    .line 262
    .line 263
    return-object v4

    .line 264
    :pswitch_c
    move-object v8, p2

    .line 265
    new-instance v4, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 266
    .line 267
    iget-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 268
    .line 269
    move-object v5, p1

    .line 270
    check-cast v5, Lapp/k9mail/feature/account/server/certificate/domain/usecase/AddServerCertificateException;

    .line 271
    .line 272
    move-object v6, v1

    .line 273
    check-cast v6, Ljava/lang/String;

    .line 274
    .line 275
    iget v7, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 276
    .line 277
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 280
    .line 281
    move-object v9, v8

    .line 282
    move-object v8, p0

    .line 283
    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Lapp/k9mail/feature/account/server/certificate/domain/usecase/AddServerCertificateException;Ljava/lang/String;ILjava/security/cert/X509Certificate;Lkotlin/coroutines/Continuation;)V

    .line 284
    .line 285
    .line 286
    return-object v4

    .line 287
    :pswitch_d
    move-object v8, p2

    .line 288
    new-instance v4, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 289
    .line 290
    iget-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 291
    .line 292
    move-object v5, p1

    .line 293
    check-cast v5, Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;

    .line 294
    .line 295
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 296
    .line 297
    move-object v7, p0

    .line 298
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 299
    .line 300
    check-cast v1, Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 301
    .line 302
    const/16 v9, 0xf

    .line 303
    .line 304
    move-object v6, v8

    .line 305
    move-object v8, v1

    .line 306
    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;Lkotlin/coroutines/Continuation;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 307
    .line 308
    .line 309
    return-object v4

    .line 310
    :pswitch_e
    move-object v8, p2

    .line 311
    new-instance v4, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 312
    .line 313
    iget-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 314
    .line 315
    move-object v5, p1

    .line 316
    check-cast v5, Lapp/k9mail/autodiscovery/api/AutoDiscoveryRunnable;

    .line 317
    .line 318
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 319
    .line 320
    move-object v6, p0

    .line 321
    check-cast v6, Lcom/beetstra/jutf7/Base64Util;

    .line 322
    .line 323
    move-object v7, v1

    .line 324
    check-cast v7, Ljava/util/List;

    .line 325
    .line 326
    const/16 v9, 0xe

    .line 327
    .line 328
    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 329
    .line 330
    .line 331
    return-object v4

    .line 332
    :pswitch_f
    move-object v8, p2

    .line 333
    new-instance v4, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 334
    .line 335
    iget-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 336
    .line 337
    move-object v5, p1

    .line 338
    check-cast v5, Lokhttp3/Headers$Builder;

    .line 339
    .line 340
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 341
    .line 342
    move-object v6, p0

    .line 343
    check-cast v6, Landroidx/work/impl/model/WorkSpec;

    .line 344
    .line 345
    move-object v7, v1

    .line 346
    check-cast v7, Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;

    .line 347
    .line 348
    const/16 v9, 0xd

    .line 349
    .line 350
    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 351
    .line 352
    .line 353
    return-object v4

    .line 354
    :pswitch_10
    move-object v8, p2

    .line 355
    new-instance p2, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 356
    .line 357
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast p0, Landroidx/work/Constraints;

    .line 360
    .line 361
    check-cast v1, Landroidx/work/impl/constraints/NetworkRequestConstraintController;

    .line 362
    .line 363
    const/16 v0, 0xc

    .line 364
    .line 365
    invoke-direct {p2, p0, v1, v8, v0}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 366
    .line 367
    .line 368
    iput-object p1, p2, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 369
    .line 370
    return-object p2

    .line 371
    :pswitch_11
    move-object v8, p2

    .line 372
    new-instance v4, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 373
    .line 374
    iget-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 375
    .line 376
    move-object v5, p1

    .line 377
    check-cast v5, Landroidx/work/impl/WorkerWrapper;

    .line 378
    .line 379
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 380
    .line 381
    move-object v6, p0

    .line 382
    check-cast v6, Landroidx/work/ListenableWorker;

    .line 383
    .line 384
    move-object v7, v1

    .line 385
    check-cast v7, Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 386
    .line 387
    const/16 v9, 0xb

    .line 388
    .line 389
    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 390
    .line 391
    .line 392
    return-object v4

    .line 393
    :pswitch_12
    move-object v8, p2

    .line 394
    new-instance p2, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 395
    .line 396
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 397
    .line 398
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 399
    .line 400
    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 401
    .line 402
    const/16 v0, 0xa

    .line 403
    .line 404
    invoke-direct {p2, p0, v1, v8, v0}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 405
    .line 406
    .line 407
    iput-object p1, p2, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 408
    .line 409
    return-object p2

    .line 410
    :pswitch_13
    move-object v8, p2

    .line 411
    new-instance p2, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 412
    .line 413
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 414
    .line 415
    check-cast p0, Landroidx/window/layout/FoldingFeature$State;

    .line 416
    .line 417
    check-cast v1, Landroid/app/Activity;

    .line 418
    .line 419
    const/16 v0, 0x9

    .line 420
    .line 421
    invoke-direct {p2, p0, v1, v8, v0}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 422
    .line 423
    .line 424
    iput-object p1, p2, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 425
    .line 426
    return-object p2

    .line 427
    :pswitch_14
    move-object v8, p2

    .line 428
    new-instance p2, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 429
    .line 430
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 431
    .line 432
    check-cast p0, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 433
    .line 434
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 435
    .line 436
    const/16 v0, 0x8

    .line 437
    .line 438
    invoke-direct {p2, p0, v1, v8, v0}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 439
    .line 440
    .line 441
    iput-object p1, p2, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 442
    .line 443
    return-object p2

    .line 444
    :pswitch_15
    move-object v8, p2

    .line 445
    new-instance p1, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 446
    .line 447
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 450
    .line 451
    check-cast v1, Landroidx/room/coroutines/Pool;

    .line 452
    .line 453
    const/4 p2, 0x7

    .line 454
    invoke-direct {p1, p0, v1, v8, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 455
    .line 456
    .line 457
    return-object p1

    .line 458
    :pswitch_16
    move-object v8, p2

    .line 459
    new-instance v4, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 460
    .line 461
    iget-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 462
    .line 463
    move-object v5, p1

    .line 464
    check-cast v5, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 465
    .line 466
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 467
    .line 468
    move-object v6, p0

    .line 469
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 470
    .line 471
    move-object v7, v1

    .line 472
    check-cast v7, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 473
    .line 474
    const/4 v9, 0x6

    .line 475
    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 476
    .line 477
    .line 478
    return-object v4

    .line 479
    :pswitch_17
    move-object v8, p2

    .line 480
    new-instance v4, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 481
    .line 482
    iget-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 483
    .line 484
    move-object v5, p1

    .line 485
    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    .line 486
    .line 487
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 488
    .line 489
    move-object v6, p0

    .line 490
    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 491
    .line 492
    move-object v7, v1

    .line 493
    check-cast v7, Landroidx/compose/runtime/ProduceStateScope;

    .line 494
    .line 495
    const/4 v9, 0x5

    .line 496
    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 497
    .line 498
    .line 499
    return-object v4

    .line 500
    :pswitch_18
    move-object v8, p2

    .line 501
    new-instance p2, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 502
    .line 503
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 504
    .line 505
    check-cast p0, Landroidx/datastore/core/DataStoreImpl;

    .line 506
    .line 507
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 508
    .line 509
    const/4 v0, 0x4

    .line 510
    invoke-direct {p2, p0, v1, v8, v0}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 511
    .line 512
    .line 513
    iput-object p1, p2, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 514
    .line 515
    return-object p2

    .line 516
    :pswitch_19
    move-object v8, p2

    .line 517
    new-instance p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 518
    .line 519
    check-cast v1, Landroidx/datastore/core/DataStoreImpl;

    .line 520
    .line 521
    const/4 p2, 0x3

    .line 522
    invoke-direct {p0, v1, v8, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 523
    .line 524
    .line 525
    iput-object p1, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 526
    .line 527
    return-object p0

    .line 528
    :pswitch_1a
    move-object v8, p2

    .line 529
    new-instance p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 530
    .line 531
    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 532
    .line 533
    const/4 p1, 0x2

    .line 534
    invoke-direct {p0, v1, v8, p1}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 535
    .line 536
    .line 537
    return-object p0

    .line 538
    :pswitch_1b
    move-object v8, p2

    .line 539
    new-instance p2, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 540
    .line 541
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 542
    .line 543
    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    .line 544
    .line 545
    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 546
    .line 547
    const/4 v0, 0x1

    .line 548
    invoke-direct {p2, p0, v1, v8, v0}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 549
    .line 550
    .line 551
    iput-object p1, p2, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 552
    .line 553
    return-object p2

    .line 554
    :pswitch_1c
    move-object v8, p2

    .line 555
    new-instance p2, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 556
    .line 557
    iget-object p0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 558
    .line 559
    check-cast p0, Lcom/fsck/k9/Preferences;

    .line 560
    .line 561
    check-cast v1, Ljava/lang/String;

    .line 562
    .line 563
    const/4 v0, 0x0

    .line 564
    invoke-direct {p2, p0, v1, v8, v0}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 565
    .line 566
    .line 567
    iput-object p1, p2, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 568
    .line 569
    return-object p2

    .line 570
    nop

    .line 571
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Landroidx/compose/foundation/gestures/DefaultDraggableState$dragScope$1;

    .line 11
    .line 12
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 26
    .line 27
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 41
    .line 42
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 56
    .line 57
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 58
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 64
    .line 65
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    return-object v1

    .line 69
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 70
    .line 71
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 72
    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 78
    .line 79
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :pswitch_4
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 85
    .line 86
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 87
    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 93
    .line 94
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :pswitch_5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 100
    .line 101
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 102
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 108
    .line 109
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :pswitch_6
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 115
    .line 116
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 117
    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 123
    .line 124
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0

    .line 129
    :pswitch_7
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 130
    .line 131
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 132
    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 138
    .line 139
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    :pswitch_8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 145
    .line 146
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 147
    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 153
    .line 154
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    return-object v1

    .line 158
    :pswitch_9
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 159
    .line 160
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 161
    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 167
    .line 168
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0

    .line 173
    :pswitch_a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 174
    .line 175
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 176
    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 182
    .line 183
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    return-object p0

    .line 188
    :pswitch_b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 189
    .line 190
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 191
    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 197
    .line 198
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    return-object v1

    .line 202
    :pswitch_c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 203
    .line 204
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 205
    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 211
    .line 212
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    return-object v2

    .line 216
    :pswitch_d
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 217
    .line 218
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 219
    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 225
    .line 226
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    return-object v1

    .line 230
    :pswitch_e
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 231
    .line 232
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 233
    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 239
    .line 240
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    return-object p0

    .line 245
    :pswitch_f
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 246
    .line 247
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 248
    .line 249
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 254
    .line 255
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    return-object p0

    .line 260
    :pswitch_10
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 261
    .line 262
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 263
    .line 264
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 269
    .line 270
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    return-object p0

    .line 275
    :pswitch_11
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 276
    .line 277
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 278
    .line 279
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 284
    .line 285
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    return-object p0

    .line 290
    :pswitch_12
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 291
    .line 292
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 293
    .line 294
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 299
    .line 300
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    return-object p0

    .line 305
    :pswitch_13
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 306
    .line 307
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 308
    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 310
    .line 311
    .line 312
    move-result-object p0

    .line 313
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 314
    .line 315
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    return-object p0

    .line 320
    :pswitch_14
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 321
    .line 322
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 323
    .line 324
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 329
    .line 330
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    return-object p0

    .line 335
    :pswitch_15
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 336
    .line 337
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 338
    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 344
    .line 345
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object p0

    .line 349
    return-object p0

    .line 350
    :pswitch_16
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 351
    .line 352
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 353
    .line 354
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 355
    .line 356
    .line 357
    move-result-object p0

    .line 358
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 359
    .line 360
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object p0

    .line 364
    return-object p0

    .line 365
    :pswitch_17
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 366
    .line 367
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 368
    .line 369
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 370
    .line 371
    .line 372
    move-result-object p0

    .line 373
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 374
    .line 375
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object p0

    .line 379
    return-object p0

    .line 380
    :pswitch_18
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 381
    .line 382
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 383
    .line 384
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 385
    .line 386
    .line 387
    move-result-object p0

    .line 388
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 389
    .line 390
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object p0

    .line 394
    return-object p0

    .line 395
    :pswitch_19
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 396
    .line 397
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 398
    .line 399
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 400
    .line 401
    .line 402
    move-result-object p0

    .line 403
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 404
    .line 405
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object p0

    .line 409
    return-object p0

    .line 410
    :pswitch_1a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 411
    .line 412
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 413
    .line 414
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 415
    .line 416
    .line 417
    move-result-object p0

    .line 418
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 419
    .line 420
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object p0

    .line 424
    return-object p0

    .line 425
    :pswitch_1b
    check-cast p1, Landroidx/compose/runtime/ProduceStateScope;

    .line 426
    .line 427
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 428
    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 434
    .line 435
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object p0

    .line 439
    return-object p0

    .line 440
    :pswitch_1c
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 441
    .line 442
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 443
    .line 444
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 445
    .line 446
    .line 447
    move-result-object p0

    .line 448
    check-cast p0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 449
    .line 450
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object p0

    .line 454
    return-object p0

    .line 455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    const/16 v3, 0xa

    .line 8
    .line 9
    const/16 v4, 0xb

    .line 10
    .line 11
    const/4 v5, 0x7

    .line 12
    const/16 v6, 0xd

    .line 13
    .line 14
    const/4 v7, 0x3

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x2

    .line 17
    const/4 v10, 0x1

    .line 18
    const/4 v11, 0x0

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    iget-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Landroidx/compose/foundation/gestures/DefaultDraggableState$dragScope$1;

    .line 25
    .line 26
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 27
    .line 28
    iget v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    if-ne v3, v10, :cond_0

    .line 33
    .line 34
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    .line 40
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v3, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;

    .line 50
    .line 51
    iget-object v4, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v4, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;

    .line 54
    .line 55
    new-instance v5, Lkotlinx/serialization/internal/MapEntrySerializer$$ExternalSyntheticLambda0;

    .line 56
    .line 57
    invoke-direct {v5, v9, v0, v4}, Lkotlinx/serialization/internal/MapEntrySerializer$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iput-object v11, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    iput v10, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 63
    .line 64
    invoke-virtual {v3, v5, v1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-ne v0, v2, :cond_2

    .line 69
    .line 70
    move-object v11, v2

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    :goto_0
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 73
    .line 74
    :goto_1
    return-object v11

    .line 75
    :pswitch_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 76
    .line 77
    iget-object v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 80
    .line 81
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 82
    .line 83
    iget v4, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 84
    .line 85
    if-eqz v4, :cond_5

    .line 86
    .line 87
    if-ne v4, v10, :cond_4

    .line 88
    .line 89
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    move-object v11, v0

    .line 93
    goto :goto_3

    .line 94
    :cond_4
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 95
    .line 96
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-object v4, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    .line 106
    .line 107
    iget-object v5, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v5, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    .line 110
    .line 111
    invoke-virtual {v5, v2}, Lkotlinx/coroutines/flow/internal/ChannelFlow;->produceImpl(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/channels/Channel;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    iput-object v11, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 116
    .line 117
    iput v10, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 118
    .line 119
    invoke-static {v4, v2, v10, v1}, Lkotlinx/coroutines/flow/FlowKt;->emitAllImpl$FlowKt__ChannelsKt(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/Channel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-ne v1, v3, :cond_6

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_6
    move-object v1, v0

    .line 127
    :goto_2
    if-ne v1, v3, :cond_3

    .line 128
    .line 129
    move-object v11, v3

    .line 130
    :goto_3
    return-object v11

    .line 131
    :pswitch_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 132
    .line 133
    iget-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 136
    .line 137
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 138
    .line 139
    iget v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 140
    .line 141
    if-eqz v3, :cond_8

    .line 142
    .line 143
    if-ne v3, v10, :cond_7

    .line 144
    .line 145
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .line 147
    .line 148
    goto :goto_4

    .line 149
    :catchall_0
    move-exception v0

    .line 150
    goto :goto_5

    .line 151
    :cond_7
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 152
    .line 153
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_8

    .line 157
    :cond_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    iget-object v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v3, Lkotlinx/coroutines/channels/SendChannel;

    .line 163
    .line 164
    iget-object v4, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 165
    .line 166
    :try_start_1
    iput-object v11, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 167
    .line 168
    iput v10, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 169
    .line 170
    invoke-interface {v3, v4, v1}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    if-ne v1, v0, :cond_9

    .line 175
    .line 176
    move-object v11, v0

    .line 177
    goto :goto_8

    .line 178
    :cond_9
    :goto_4
    move-object v1, v2

    .line 179
    goto :goto_6

    .line 180
    :goto_5
    new-instance v1, Lkotlin/Result$Failure;

    .line 181
    .line 182
    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    :goto_6
    instance-of v0, v1, Lkotlin/Result$Failure;

    .line 186
    .line 187
    if-nez v0, :cond_a

    .line 188
    .line 189
    goto :goto_7

    .line 190
    :cond_a
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    new-instance v2, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    .line 195
    .line 196
    invoke-direct {v2, v0}, Lkotlinx/coroutines/channels/ChannelResult$Closed;-><init>(Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    :goto_7
    new-instance v11, Lkotlinx/coroutines/channels/ChannelResult;

    .line 200
    .line 201
    invoke-direct {v11, v2}, Lkotlinx/coroutines/channels/ChannelResult;-><init>(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :goto_8
    return-object v11

    .line 205
    :pswitch_2
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 206
    .line 207
    iget v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 208
    .line 209
    if-eqz v2, :cond_c

    .line 210
    .line 211
    if-eq v2, v10, :cond_b

    .line 212
    .line 213
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 214
    .line 215
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    goto :goto_9

    .line 219
    :cond_b
    invoke-static/range {p1 .. p1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/Object;)Lorg/jsoup/SerializationException;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    throw v0

    .line 224
    :cond_c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    iget-object v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v2, Lcom/fsck/k9/ui/settings/AboutViewModel;

    .line 230
    .line 231
    iget-object v2, v2, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 232
    .line 233
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;

    .line 234
    .line 235
    iget-object v4, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v4, Lcom/fsck/k9/ui/settings/AboutFragment;

    .line 238
    .line 239
    iget-object v5, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v5, Landroidx/compose/ui/platform/ComposeView;

    .line 242
    .line 243
    invoke-direct {v3, v6, v4, v5}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    iput v10, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 247
    .line 248
    invoke-virtual {v2, v3, v1}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-object v11, v0

    .line 252
    :goto_9
    return-object v11

    .line 253
    :pswitch_3
    iget-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 256
    .line 257
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 258
    .line 259
    iget v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 260
    .line 261
    if-eqz v3, :cond_e

    .line 262
    .line 263
    if-ne v3, v10, :cond_d

    .line 264
    .line 265
    iget-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v0, Landroid/content/Context;

    .line 268
    .line 269
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    move-object v3, v0

    .line 273
    move-object/from16 v0, p1

    .line 274
    .line 275
    goto :goto_a

    .line 276
    :cond_d
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 277
    .line 278
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    goto :goto_b

    .line 282
    :cond_e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    sget-object v5, Lcom/fsck/k9/provider/RawMessageProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 294
    .line 295
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    invoke-virtual {v4}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-virtual {v5, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    iget-object v0, v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageExporter$delegate:Lkotlin/Lazy;

    .line 312
    .line 313
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    check-cast v0, Lnet/thunderbird/feature/mail/message/export/eml/EmlMessageExporter;

    .line 318
    .line 319
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    invoke-static {v4}, Lorg/slf4j/helpers/Util;->toKmpUri(Landroid/net/Uri;)Lcom/eygraber/uri/uris/StringUri;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    iget-object v5, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v5, Landroid/net/Uri;

    .line 329
    .line 330
    invoke-static {v5}, Lorg/slf4j/helpers/Util;->toKmpUri(Landroid/net/Uri;)Lcom/eygraber/uri/uris/StringUri;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    iput-object v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 335
    .line 336
    iput v10, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 337
    .line 338
    invoke-virtual {v0, v4, v5, v1}, Lnet/thunderbird/feature/mail/message/export/eml/EmlMessageExporter;->export(Lcom/eygraber/uri/uris/StringUri;Lcom/eygraber/uri/uris/StringUri;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    if-ne v0, v2, :cond_f

    .line 343
    .line 344
    move-object v11, v2

    .line 345
    goto :goto_b

    .line 346
    :cond_f
    :goto_a
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 347
    .line 348
    invoke-interface {v0}, Lnet/thunderbird/core/outcome/Outcome;->isFailure()Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    if-eqz v0, :cond_10

    .line 353
    .line 354
    const v0, 0x7f12046e

    .line 355
    .line 356
    .line 357
    invoke-static {v3, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 362
    .line 363
    .line 364
    :cond_10
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 365
    .line 366
    :goto_b
    return-object v11

    .line 367
    :pswitch_4
    iget-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 368
    .line 369
    move-object v3, v0

    .line 370
    check-cast v3, Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessageLiveEvent;

    .line 371
    .line 372
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 373
    .line 374
    iget v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 375
    .line 376
    if-eqz v2, :cond_12

    .line 377
    .line 378
    if-ne v2, v10, :cond_11

    .line 379
    .line 380
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    move-object/from16 v1, p1

    .line 384
    .line 385
    goto :goto_c

    .line 386
    :cond_11
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 387
    .line 388
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    goto :goto_d

    .line 392
    :cond_12
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 396
    .line 397
    sget-object v8, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 398
    .line 399
    new-instance v2, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 400
    .line 401
    iget-object v4, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v4, Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 404
    .line 405
    iget-object v5, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 406
    .line 407
    check-cast v5, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 408
    .line 409
    const/4 v6, 0x0

    .line 410
    const/4 v7, 0x3

    .line 411
    invoke-direct/range {v2 .. v7}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 412
    .line 413
    .line 414
    iput v10, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 415
    .line 416
    invoke-static {v8, v2, v1}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    if-ne v1, v0, :cond_13

    .line 421
    .line 422
    move-object v11, v0

    .line 423
    goto :goto_d

    .line 424
    :cond_13
    :goto_c
    check-cast v1, Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessage;

    .line 425
    .line 426
    invoke-virtual {v3, v1}, Lcom/fsck/k9/helper/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 427
    .line 428
    .line 429
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 430
    .line 431
    :goto_d
    return-object v11

    .line 432
    :pswitch_5
    iget-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 433
    .line 434
    check-cast v0, Lcom/fsck/k9/ui/base/AppLanguageManager;

    .line 435
    .line 436
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 437
    .line 438
    iget v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 439
    .line 440
    if-eqz v3, :cond_16

    .line 441
    .line 442
    if-eq v3, v10, :cond_15

    .line 443
    .line 444
    if-ne v3, v9, :cond_14

    .line 445
    .line 446
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    goto :goto_10

    .line 450
    :cond_14
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 451
    .line 452
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    goto :goto_11

    .line 456
    :cond_15
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    goto :goto_e

    .line 460
    :cond_16
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    iget-object v3, v0, Lcom/fsck/k9/ui/base/AppLanguageManager;->_overrideLocale:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 464
    .line 465
    iget-object v4, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 466
    .line 467
    check-cast v4, Ljava/util/Locale;

    .line 468
    .line 469
    iput v10, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 470
    .line 471
    invoke-virtual {v3, v4, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    if-ne v3, v2, :cond_17

    .line 476
    .line 477
    goto :goto_f

    .line 478
    :cond_17
    :goto_e
    iget-object v0, v0, Lcom/fsck/k9/ui/base/AppLanguageManager;->_appLocale:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 479
    .line 480
    iget-object v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast v3, Ljava/util/Locale;

    .line 483
    .line 484
    iput v9, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 485
    .line 486
    invoke-virtual {v0, v3, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    if-ne v0, v2, :cond_18

    .line 491
    .line 492
    :goto_f
    move-object v11, v2

    .line 493
    goto :goto_11

    .line 494
    :cond_18
    :goto_10
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 495
    .line 496
    :goto_11
    return-object v11

    .line 497
    :pswitch_6
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 498
    .line 499
    iget v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 500
    .line 501
    if-eqz v2, :cond_1a

    .line 502
    .line 503
    if-ne v2, v10, :cond_19

    .line 504
    .line 505
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    goto :goto_12

    .line 509
    :cond_19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 510
    .line 511
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    goto :goto_13

    .line 515
    :cond_1a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    iget-object v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 519
    .line 520
    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    .line 521
    .line 522
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 523
    .line 524
    new-instance v4, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 525
    .line 526
    iget-object v6, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 527
    .line 528
    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 529
    .line 530
    iget-object v7, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 531
    .line 532
    check-cast v7, Lkotlinx/coroutines/flow/FlowCollector;

    .line 533
    .line 534
    invoke-direct {v4, v6, v7, v11, v5}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 535
    .line 536
    .line 537
    iput v10, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 538
    .line 539
    invoke-static {v2, v3, v4, v1}, Landroidx/lifecycle/ViewModelKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    if-ne v1, v0, :cond_1b

    .line 544
    .line 545
    move-object v11, v0

    .line 546
    goto :goto_13

    .line 547
    :cond_1b
    :goto_12
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 548
    .line 549
    :goto_13
    return-object v11

    .line 550
    :pswitch_7
    iget-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 551
    .line 552
    check-cast v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 553
    .line 554
    iget-object v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 555
    .line 556
    check-cast v2, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;

    .line 557
    .line 558
    iget-object v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 559
    .line 560
    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    .line 561
    .line 562
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 563
    .line 564
    iget v5, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 565
    .line 566
    if-eqz v5, :cond_1e

    .line 567
    .line 568
    if-eq v5, v10, :cond_1d

    .line 569
    .line 570
    if-ne v5, v9, :cond_1c

    .line 571
    .line 572
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 573
    .line 574
    .line 575
    goto :goto_16

    .line 576
    :cond_1c
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 577
    .line 578
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    goto :goto_17

    .line 582
    :cond_1d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 583
    .line 584
    .line 585
    goto :goto_14

    .line 586
    :cond_1e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v2, v0}, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;->getMessageCounts(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;)Lapp/k9mail/legacy/message/controller/MessageCounts;

    .line 590
    .line 591
    .line 592
    move-result-object v5

    .line 593
    iput-object v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 594
    .line 595
    iput v10, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 596
    .line 597
    move-object v6, v3

    .line 598
    check-cast v6, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 599
    .line 600
    iget-object v6, v6, Lkotlinx/coroutines/channels/ProducerCoroutine;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 601
    .line 602
    invoke-interface {v6, v5, v1}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v5

    .line 606
    if-ne v5, v4, :cond_1f

    .line 607
    .line 608
    goto :goto_15

    .line 609
    :cond_1f
    :goto_14
    new-instance v5, Lcom/fsck/k9/controller/DefaultMessageCountsProvider$getMessageCountsFlow$1$folderStatusChangedListener$1;

    .line 610
    .line 611
    invoke-direct {v5, v3, v2, v0}, Lcom/fsck/k9/controller/DefaultMessageCountsProvider$getMessageCountsFlow$1$folderStatusChangedListener$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/fsck/k9/controller/DefaultMessageCountsProvider;Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;)V

    .line 612
    .line 613
    .line 614
    iget-object v0, v2, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;->messagingControllerRegistry:Lapp/k9mail/legacy/message/controller/MessagingControllerRegistry;

    .line 615
    .line 616
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 617
    .line 618
    invoke-virtual {v0, v5}, Lcom/fsck/k9/controller/MessagingController;->addListener(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V

    .line 619
    .line 620
    .line 621
    new-instance v0, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 622
    .line 623
    const/16 v6, 0x16

    .line 624
    .line 625
    invoke-direct {v0, v6, v2, v5}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 626
    .line 627
    .line 628
    iput-object v11, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 629
    .line 630
    iput v9, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 631
    .line 632
    invoke-static {v3, v0, v1}, Lkotlin/ranges/RangesKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    if-ne v0, v4, :cond_20

    .line 637
    .line 638
    :goto_15
    move-object v11, v4

    .line 639
    goto :goto_17

    .line 640
    :cond_20
    :goto_16
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 641
    .line 642
    :goto_17
    return-object v11

    .line 643
    :pswitch_8
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 644
    .line 645
    iget v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 646
    .line 647
    if-eqz v2, :cond_22

    .line 648
    .line 649
    if-eq v2, v10, :cond_21

    .line 650
    .line 651
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 652
    .line 653
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    goto :goto_18

    .line 657
    :cond_21
    invoke-static/range {p1 .. p1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/Object;)Lorg/jsoup/SerializationException;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    throw v0

    .line 662
    :cond_22
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 663
    .line 664
    .line 665
    iget-object v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 666
    .line 667
    check-cast v2, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;

    .line 668
    .line 669
    iget-object v2, v2, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 670
    .line 671
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;

    .line 672
    .line 673
    iget-object v5, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 674
    .line 675
    check-cast v5, Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    .line 676
    .line 677
    iget-object v6, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 678
    .line 679
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 680
    .line 681
    invoke-direct {v3, v4, v5, v6}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 682
    .line 683
    .line 684
    iput v10, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 685
    .line 686
    invoke-virtual {v2, v3, v1}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-object v11, v0

    .line 690
    :goto_18
    return-object v11

    .line 691
    :pswitch_9
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 692
    .line 693
    iget v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 694
    .line 695
    if-eqz v2, :cond_24

    .line 696
    .line 697
    if-ne v2, v10, :cond_23

    .line 698
    .line 699
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 700
    .line 701
    .line 702
    goto :goto_19

    .line 703
    :cond_23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 704
    .line 705
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    goto :goto_1a

    .line 709
    :cond_24
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 710
    .line 711
    .line 712
    iget-object v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 713
    .line 714
    check-cast v2, Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment;

    .line 715
    .line 716
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 717
    .line 718
    new-instance v4, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 719
    .line 720
    iget-object v5, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 721
    .line 722
    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 723
    .line 724
    iget-object v6, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 725
    .line 726
    check-cast v6, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;

    .line 727
    .line 728
    const/16 v7, 0x1d

    .line 729
    .line 730
    invoke-direct {v4, v5, v6, v11, v7}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 731
    .line 732
    .line 733
    iput v10, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 734
    .line 735
    invoke-static {v2, v3, v4, v1}, Landroidx/lifecycle/ViewModelKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v1

    .line 739
    if-ne v1, v0, :cond_25

    .line 740
    .line 741
    move-object v11, v0

    .line 742
    goto :goto_1a

    .line 743
    :cond_25
    :goto_19
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 744
    .line 745
    :goto_1a
    return-object v11

    .line 746
    :pswitch_a
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 747
    .line 748
    iget v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 749
    .line 750
    if-eqz v2, :cond_27

    .line 751
    .line 752
    if-ne v2, v10, :cond_26

    .line 753
    .line 754
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 755
    .line 756
    .line 757
    goto :goto_1b

    .line 758
    :cond_26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 759
    .line 760
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    goto :goto_1c

    .line 764
    :cond_27
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 765
    .line 766
    .line 767
    iget-object v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 768
    .line 769
    check-cast v2, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;

    .line 770
    .line 771
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 772
    .line 773
    new-instance v4, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 774
    .line 775
    iget-object v5, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 776
    .line 777
    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 778
    .line 779
    iget-object v6, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 780
    .line 781
    check-cast v6, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;

    .line 782
    .line 783
    const/16 v7, 0x1c

    .line 784
    .line 785
    invoke-direct {v4, v5, v6, v11, v7}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 786
    .line 787
    .line 788
    iput v10, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 789
    .line 790
    invoke-static {v2, v3, v4, v1}, Landroidx/lifecycle/ViewModelKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v1

    .line 794
    if-ne v1, v0, :cond_28

    .line 795
    .line 796
    move-object v11, v0

    .line 797
    goto :goto_1c

    .line 798
    :cond_28
    :goto_1b
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 799
    .line 800
    :goto_1c
    return-object v11

    .line 801
    :pswitch_b
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 802
    .line 803
    iget v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 804
    .line 805
    if-eqz v2, :cond_2a

    .line 806
    .line 807
    if-eq v2, v10, :cond_29

    .line 808
    .line 809
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 810
    .line 811
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    goto :goto_1d

    .line 815
    :cond_29
    invoke-static/range {p1 .. p1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/Object;)Lorg/jsoup/SerializationException;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    throw v0

    .line 820
    :cond_2a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 821
    .line 822
    .line 823
    iget-object v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 824
    .line 825
    check-cast v2, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorViewModel;

    .line 826
    .line 827
    iget-object v2, v2, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 828
    .line 829
    new-instance v3, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2$1;

    .line 830
    .line 831
    iget-object v4, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 832
    .line 833
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 834
    .line 835
    iget-object v5, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 836
    .line 837
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 838
    .line 839
    invoke-direct {v3, v4, v5, v9}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 840
    .line 841
    .line 842
    iput v10, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 843
    .line 844
    invoke-virtual {v2, v3, v1}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    move-object v11, v0

    .line 848
    :goto_1d
    return-object v11

    .line 849
    :pswitch_c
    invoke-direct/range {p0 .. p1}, Lcom/fsck/k9/Preferences$getAccountFlow$1;->invokeSuspend$app$k9mail$feature$account$server$certificate$domain$usecase$AddServerCertificateException$addCertificate$2(Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    return-object v0

    .line 854
    :pswitch_d
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 855
    .line 856
    iget v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 857
    .line 858
    if-eqz v2, :cond_2c

    .line 859
    .line 860
    if-eq v2, v10, :cond_2b

    .line 861
    .line 862
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 863
    .line 864
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    goto :goto_1e

    .line 868
    :cond_2b
    invoke-static/range {p1 .. p1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/Object;)Lorg/jsoup/SerializationException;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    throw v0

    .line 873
    :cond_2c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 874
    .line 875
    .line 876
    iget-object v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 877
    .line 878
    check-cast v2, Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;

    .line 879
    .line 880
    invoke-interface {v2}, Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;->getEffect()Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 881
    .line 882
    .line 883
    move-result-object v2

    .line 884
    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;

    .line 885
    .line 886
    iget-object v5, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 887
    .line 888
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 889
    .line 890
    iget-object v6, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 891
    .line 892
    check-cast v6, Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 893
    .line 894
    invoke-direct {v4, v3, v5, v6}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 895
    .line 896
    .line 897
    iput v10, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 898
    .line 899
    invoke-virtual {v2, v4, v1}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 900
    .line 901
    .line 902
    move-object v11, v0

    .line 903
    :goto_1e
    return-object v11

    .line 904
    :pswitch_e
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 905
    .line 906
    iget v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 907
    .line 908
    if-eqz v2, :cond_2e

    .line 909
    .line 910
    if-ne v2, v10, :cond_2d

    .line 911
    .line 912
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 913
    .line 914
    .line 915
    move-object/from16 v2, p1

    .line 916
    .line 917
    goto :goto_1f

    .line 918
    :cond_2d
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 919
    .line 920
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    goto :goto_21

    .line 924
    :cond_2e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 925
    .line 926
    .line 927
    iget-object v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 928
    .line 929
    check-cast v2, Lapp/k9mail/autodiscovery/api/AutoDiscoveryRunnable;

    .line 930
    .line 931
    iput v10, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 932
    .line 933
    invoke-interface {v2, v1}, Lapp/k9mail/autodiscovery/api/AutoDiscoveryRunnable;->run(Lcom/fsck/k9/Preferences$getAccountFlow$1;)Ljava/lang/Object;

    .line 934
    .line 935
    .line 936
    move-result-object v2

    .line 937
    if-ne v2, v0, :cond_2f

    .line 938
    .line 939
    move-object v11, v0

    .line 940
    goto :goto_21

    .line 941
    :cond_2f
    :goto_1f
    iget-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 942
    .line 943
    check-cast v0, Ljava/util/List;

    .line 944
    .line 945
    move-object v1, v2

    .line 946
    check-cast v1, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult;

    .line 947
    .line 948
    instance-of v1, v1, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 949
    .line 950
    if-eqz v1, :cond_30

    .line 951
    .line 952
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 953
    .line 954
    .line 955
    move-result-object v0

    .line 956
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 957
    .line 958
    .line 959
    move-result v1

    .line 960
    if-eqz v1, :cond_30

    .line 961
    .line 962
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v1

    .line 966
    check-cast v1, Lkotlinx/coroutines/Deferred;

    .line 967
    .line 968
    check-cast v1, Lkotlinx/coroutines/JobSupport;

    .line 969
    .line 970
    invoke-virtual {v1, v11}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 971
    .line 972
    .line 973
    goto :goto_20

    .line 974
    :cond_30
    move-object v11, v2

    .line 975
    :goto_21
    return-object v11

    .line 976
    :pswitch_f
    iget-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 977
    .line 978
    check-cast v0, Landroidx/work/impl/model/WorkSpec;

    .line 979
    .line 980
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 981
    .line 982
    iget v4, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 983
    .line 984
    if-eqz v4, :cond_32

    .line 985
    .line 986
    if-ne v4, v10, :cond_31

    .line 987
    .line 988
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 989
    .line 990
    .line 991
    goto :goto_22

    .line 992
    :cond_31
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 993
    .line 994
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 995
    .line 996
    .line 997
    goto :goto_23

    .line 998
    :cond_32
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 999
    .line 1000
    .line 1001
    iget-object v4, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 1002
    .line 1003
    check-cast v4, Lokhttp3/Headers$Builder;

    .line 1004
    .line 1005
    invoke-virtual {v4, v0}, Lokhttp3/Headers$Builder;->track(Landroidx/work/impl/model/WorkSpec;)Lkotlinx/coroutines/flow/Flow;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v4

    .line 1009
    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;

    .line 1010
    .line 1011
    iget-object v6, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 1012
    .line 1013
    check-cast v6, Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;

    .line 1014
    .line 1015
    invoke-direct {v5, v2, v6, v0}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1016
    .line 1017
    .line 1018
    iput v10, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 1019
    .line 1020
    invoke-interface {v4, v5, v1}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    if-ne v0, v3, :cond_33

    .line 1025
    .line 1026
    move-object v11, v3

    .line 1027
    goto :goto_23

    .line 1028
    :cond_33
    :goto_22
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1029
    .line 1030
    :goto_23
    return-object v11

    .line 1031
    :pswitch_10
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1032
    .line 1033
    iget-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 1034
    .line 1035
    check-cast v0, Landroidx/work/Constraints;

    .line 1036
    .line 1037
    iget-object v12, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 1038
    .line 1039
    check-cast v12, Landroidx/work/impl/constraints/NetworkRequestConstraintController;

    .line 1040
    .line 1041
    iget-object v13, v12, Landroidx/work/impl/constraints/NetworkRequestConstraintController;->connManager:Landroid/net/ConnectivityManager;

    .line 1042
    .line 1043
    sget-object v14, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1044
    .line 1045
    iget v15, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 1046
    .line 1047
    if-eqz v15, :cond_36

    .line 1048
    .line 1049
    if-ne v15, v10, :cond_35

    .line 1050
    .line 1051
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1052
    .line 1053
    .line 1054
    :cond_34
    :goto_24
    move-object v11, v3

    .line 1055
    goto/16 :goto_2a

    .line 1056
    .line 1057
    :cond_35
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1058
    .line 1059
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1060
    .line 1061
    .line 1062
    goto/16 :goto_2a

    .line 1063
    .line 1064
    :cond_36
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1065
    .line 1066
    .line 1067
    iget-object v15, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 1068
    .line 1069
    check-cast v15, Lkotlinx/coroutines/channels/ProducerScope;

    .line 1070
    .line 1071
    invoke-virtual {v0}, Landroidx/work/Constraints;->getRequiredNetworkRequest()Landroid/net/NetworkRequest;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v16

    .line 1075
    const/16 v2, 0x12

    .line 1076
    .line 1077
    const/4 v5, 0x4

    .line 1078
    const/16 v10, 0x1e

    .line 1079
    .line 1080
    if-nez v16, :cond_3c

    .line 1081
    .line 1082
    iget-object v0, v0, Landroidx/work/Constraints;->requiredNetworkType:Landroidx/work/NetworkType;

    .line 1083
    .line 1084
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1085
    .line 1086
    .line 1087
    sget-object v11, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    .line 1088
    .line 1089
    if-ne v0, v11, :cond_37

    .line 1090
    .line 1091
    const/16 v16, 0x0

    .line 1092
    .line 1093
    goto :goto_27

    .line 1094
    :cond_37
    new-instance v11, Landroid/net/NetworkRequest$Builder;

    .line 1095
    .line 1096
    invoke-direct {v11}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1097
    .line 1098
    .line 1099
    const/16 v4, 0xc

    .line 1100
    .line 1101
    invoke-virtual {v11, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v4

    .line 1105
    const/16 v11, 0x10

    .line 1106
    .line 1107
    invoke-virtual {v4, v11}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v4

    .line 1111
    const/16 v11, 0xf

    .line 1112
    .line 1113
    invoke-virtual {v4, v11}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v4

    .line 1117
    invoke-virtual {v4, v6}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v4

    .line 1121
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1122
    .line 1123
    if-lt v6, v10, :cond_38

    .line 1124
    .line 1125
    sget-object v6, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    .line 1126
    .line 1127
    if-ne v0, v6, :cond_38

    .line 1128
    .line 1129
    const/16 v0, 0x19

    .line 1130
    .line 1131
    invoke-virtual {v4, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v0

    .line 1135
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v0

    .line 1139
    :goto_25
    move-object/from16 v16, v0

    .line 1140
    .line 1141
    goto :goto_27

    .line 1142
    :cond_38
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 1143
    .line 1144
    .line 1145
    move-result v0

    .line 1146
    if-eq v0, v9, :cond_3b

    .line 1147
    .line 1148
    if-eq v0, v7, :cond_3a

    .line 1149
    .line 1150
    if-eq v0, v5, :cond_39

    .line 1151
    .line 1152
    goto :goto_26

    .line 1153
    :cond_39
    invoke-virtual {v4, v8}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v4

    .line 1157
    goto :goto_26

    .line 1158
    :cond_3a
    invoke-virtual {v4, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v4

    .line 1162
    goto :goto_26

    .line 1163
    :cond_3b
    const/16 v0, 0xb

    .line 1164
    .line 1165
    invoke-virtual {v4, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v4

    .line 1169
    :goto_26
    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v0

    .line 1173
    goto :goto_25

    .line 1174
    :cond_3c
    :goto_27
    move-object/from16 v0, v16

    .line 1175
    .line 1176
    if-nez v0, :cond_3d

    .line 1177
    .line 1178
    check-cast v15, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 1179
    .line 1180
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1181
    .line 1182
    .line 1183
    const/4 v4, 0x0

    .line 1184
    invoke-virtual {v15, v4}, Lkotlinx/coroutines/channels/ProducerCoroutine;->close(Ljava/lang/Throwable;)Z

    .line 1185
    .line 1186
    .line 1187
    goto/16 :goto_24

    .line 1188
    .line 1189
    :cond_3d
    const/4 v4, 0x0

    .line 1190
    new-instance v6, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 1191
    .line 1192
    invoke-direct {v6, v12, v15, v4, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1193
    .line 1194
    .line 1195
    invoke-static {v15, v4, v4, v6, v7}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v2

    .line 1199
    new-instance v4, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 1200
    .line 1201
    const/4 v6, 0x1

    .line 1202
    invoke-direct {v4, v6, v2, v15}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1203
    .line 1204
    .line 1205
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1206
    .line 1207
    if-lt v2, v10, :cond_3e

    .line 1208
    .line 1209
    sget-object v2, Landroidx/work/impl/constraints/SharedNetworkCallback;->INSTANCE:Landroidx/work/impl/constraints/SharedNetworkCallback;

    .line 1210
    .line 1211
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1212
    .line 1213
    .line 1214
    invoke-static {v13, v0, v4}, Landroidx/work/impl/constraints/SharedNetworkCallback;->addCallback(Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest;Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;)Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v0

    .line 1218
    goto :goto_29

    .line 1219
    :cond_3e
    sget v2, Landroidx/work/impl/constraints/IndividualNetworkCallback;->$r8$clinit:I

    .line 1220
    .line 1221
    new-instance v2, Landroidx/work/impl/constraints/IndividualNetworkCallback;

    .line 1222
    .line 1223
    invoke-direct {v2, v4}, Landroidx/work/impl/constraints/IndividualNetworkCallback;-><init>(Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;)V

    .line 1224
    .line 1225
    .line 1226
    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 1227
    .line 1228
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 1229
    .line 1230
    .line 1231
    :try_start_2
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v7

    .line 1235
    sget-object v9, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->TAG:Ljava/lang/String;

    .line 1236
    .line 1237
    const-string v10, "NetworkRequestConstraintController register callback"

    .line 1238
    .line 1239
    invoke-virtual {v7, v9, v10}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual {v13, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1243
    .line 1244
    .line 1245
    const/4 v7, 0x1

    .line 1246
    iput-boolean v7, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1247
    .line 1248
    goto :goto_28

    .line 1249
    :catch_0
    move-exception v0

    .line 1250
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v7

    .line 1254
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v7

    .line 1258
    const-string v9, "TooManyRequestsException"

    .line 1259
    .line 1260
    invoke-static {v7, v9, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1261
    .line 1262
    .line 1263
    move-result v7

    .line 1264
    if-eqz v7, :cond_3f

    .line 1265
    .line 1266
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v7

    .line 1270
    sget-object v8, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->TAG:Ljava/lang/String;

    .line 1271
    .line 1272
    const-string v9, "NetworkRequestConstraintController couldn\'t register callback"

    .line 1273
    .line 1274
    invoke-virtual {v7, v8, v9, v0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1275
    .line 1276
    .line 1277
    new-instance v0, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    .line 1278
    .line 1279
    const/4 v7, 0x7

    .line 1280
    invoke-direct {v0, v7}, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;-><init>(I)V

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual {v4, v0}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    .line 1285
    .line 1286
    :goto_28
    new-instance v0, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;

    .line 1287
    .line 1288
    const/16 v4, 0x9

    .line 1289
    .line 1290
    invoke-direct {v0, v6, v13, v2, v4}, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1291
    .line 1292
    .line 1293
    :goto_29
    new-instance v2, Lokhttp3/Handshake$$ExternalSyntheticLambda0;

    .line 1294
    .line 1295
    invoke-direct {v2, v5, v0}, Lokhttp3/Handshake$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 1296
    .line 1297
    .line 1298
    const/4 v6, 0x1

    .line 1299
    iput v6, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 1300
    .line 1301
    invoke-static {v15, v2, v1}, Lkotlin/ranges/RangesKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v0

    .line 1305
    if-ne v0, v14, :cond_34

    .line 1306
    .line 1307
    move-object v11, v14

    .line 1308
    :goto_2a
    return-object v11

    .line 1309
    :cond_3f
    throw v0

    .line 1310
    :pswitch_11
    iget-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 1311
    .line 1312
    move-object v3, v0

    .line 1313
    check-cast v3, Landroidx/work/ListenableWorker;

    .line 1314
    .line 1315
    iget-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 1316
    .line 1317
    check-cast v0, Landroidx/work/impl/WorkerWrapper;

    .line 1318
    .line 1319
    iget-object v4, v0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 1320
    .line 1321
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1322
    .line 1323
    iget v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 1324
    .line 1325
    if-eqz v2, :cond_42

    .line 1326
    .line 1327
    const/4 v6, 0x1

    .line 1328
    if-eq v2, v6, :cond_41

    .line 1329
    .line 1330
    if-ne v2, v9, :cond_40

    .line 1331
    .line 1332
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1333
    .line 1334
    .line 1335
    move-object/from16 v0, p1

    .line 1336
    .line 1337
    goto/16 :goto_2e

    .line 1338
    .line 1339
    :cond_40
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1340
    .line 1341
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1342
    .line 1343
    .line 1344
    const/4 v0, 0x0

    .line 1345
    goto :goto_2e

    .line 1346
    :cond_41
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1347
    .line 1348
    .line 1349
    goto :goto_2c

    .line 1350
    :cond_42
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1351
    .line 1352
    .line 1353
    iget-object v6, v0, Landroidx/work/impl/WorkerWrapper;->appContext:Landroid/content/Context;

    .line 1354
    .line 1355
    iget-object v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 1356
    .line 1357
    move-object v5, v2

    .line 1358
    check-cast v5, Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 1359
    .line 1360
    iget-object v0, v0, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Lokhttp3/Dispatcher;

    .line 1361
    .line 1362
    const/4 v7, 0x1

    .line 1363
    iput v7, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 1364
    .line 1365
    sget-object v2, Landroidx/work/impl/utils/WorkForegroundKt;->TAG:Ljava/lang/String;

    .line 1366
    .line 1367
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1368
    .line 1369
    iget-boolean v2, v4, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 1370
    .line 1371
    if-eqz v2, :cond_44

    .line 1372
    .line 1373
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1374
    .line 1375
    const/16 v7, 0x1f

    .line 1376
    .line 1377
    if-lt v2, v7, :cond_43

    .line 1378
    .line 1379
    goto :goto_2b

    .line 1380
    :cond_43
    iget-object v0, v0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 1381
    .line 1382
    check-cast v0, Landroidx/camera/core/impl/utils/executor/IoExecutor;

    .line 1383
    .line 1384
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1385
    .line 1386
    .line 1387
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v0

    .line 1391
    new-instance v2, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;

    .line 1392
    .line 1393
    const/4 v7, 0x0

    .line 1394
    const/16 v8, 0x10

    .line 1395
    .line 1396
    invoke-direct/range {v2 .. v8}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1397
    .line 1398
    .line 1399
    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v0

    .line 1403
    if-ne v0, v10, :cond_44

    .line 1404
    .line 1405
    move-object v11, v0

    .line 1406
    :cond_44
    :goto_2b
    if-ne v11, v10, :cond_45

    .line 1407
    .line 1408
    goto :goto_2d

    .line 1409
    :cond_45
    :goto_2c
    sget-object v0, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 1410
    .line 1411
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v2

    .line 1415
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1416
    .line 1417
    const-string v6, "Starting work for "

    .line 1418
    .line 1419
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1420
    .line 1421
    .line 1422
    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 1423
    .line 1424
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    .line 1426
    .line 1427
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v4

    .line 1431
    invoke-virtual {v2, v0, v4}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    .line 1433
    .line 1434
    invoke-virtual {v3}, Landroidx/work/ListenableWorker;->startWork()Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v0

    .line 1438
    iput v9, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 1439
    .line 1440
    invoke-static {v0, v3, v1}, Landroidx/work/impl/WorkerWrapperKt;->awaitWithin(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/ListenableWorker;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v0

    .line 1444
    if-ne v0, v10, :cond_46

    .line 1445
    .line 1446
    :goto_2d
    move-object v0, v10

    .line 1447
    :cond_46
    :goto_2e
    return-object v0

    .line 1448
    :pswitch_12
    iget-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 1449
    .line 1450
    move-object v2, v0

    .line 1451
    check-cast v2, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 1452
    .line 1453
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1454
    .line 1455
    iget v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 1456
    .line 1457
    if-eqz v3, :cond_48

    .line 1458
    .line 1459
    const/4 v6, 0x1

    .line 1460
    if-ne v3, v6, :cond_47

    .line 1461
    .line 1462
    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1463
    .line 1464
    .line 1465
    move-object/from16 v1, p1

    .line 1466
    .line 1467
    goto :goto_2f

    .line 1468
    :catchall_1
    move-exception v0

    .line 1469
    goto :goto_30

    .line 1470
    :cond_47
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1471
    .line 1472
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1473
    .line 1474
    .line 1475
    const/4 v11, 0x0

    .line 1476
    goto :goto_32

    .line 1477
    :cond_48
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1478
    .line 1479
    .line 1480
    iget-object v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 1481
    .line 1482
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 1483
    .line 1484
    :try_start_4
    iget-object v4, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 1485
    .line 1486
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 1487
    .line 1488
    const/4 v6, 0x1

    .line 1489
    iput v6, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 1490
    .line 1491
    invoke-interface {v4, v3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v1

    .line 1495
    if-ne v1, v0, :cond_49

    .line 1496
    .line 1497
    move-object v11, v0

    .line 1498
    goto :goto_32

    .line 1499
    :cond_49
    :goto_2f
    invoke-virtual {v2, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1500
    .line 1501
    .line 1502
    goto :goto_31

    .line 1503
    :goto_30
    invoke-virtual {v2, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 1504
    .line 1505
    .line 1506
    goto :goto_31

    .line 1507
    :catch_1
    invoke-virtual {v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setCancelled()V

    .line 1508
    .line 1509
    .line 1510
    :goto_31
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1511
    .line 1512
    :goto_32
    return-object v11

    .line 1513
    :pswitch_13
    iget-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 1514
    .line 1515
    check-cast v0, Landroidx/window/layout/FoldingFeature$State;

    .line 1516
    .line 1517
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1518
    .line 1519
    iget v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 1520
    .line 1521
    if-eqz v3, :cond_4b

    .line 1522
    .line 1523
    const/4 v6, 0x1

    .line 1524
    if-ne v3, v6, :cond_4a

    .line 1525
    .line 1526
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1527
    .line 1528
    .line 1529
    goto :goto_33

    .line 1530
    :cond_4a
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1531
    .line 1532
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1533
    .line 1534
    .line 1535
    const/4 v11, 0x0

    .line 1536
    goto :goto_34

    .line 1537
    :cond_4b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1538
    .line 1539
    .line 1540
    iget-object v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 1541
    .line 1542
    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    .line 1543
    .line 1544
    new-instance v4, Landroidx/camera/view/TextureViewImplementation$$ExternalSyntheticLambda3;

    .line 1545
    .line 1546
    invoke-direct {v4, v7, v3}, Landroidx/camera/view/TextureViewImplementation$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 1547
    .line 1548
    .line 1549
    iget-object v5, v0, Landroidx/window/layout/FoldingFeature$State;->description:Ljava/lang/Object;

    .line 1550
    .line 1551
    check-cast v5, Landroidx/window/layout/adapter/WindowBackend;

    .line 1552
    .line 1553
    iget-object v6, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 1554
    .line 1555
    check-cast v6, Landroid/app/Activity;

    .line 1556
    .line 1557
    new-instance v7, Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;

    .line 1558
    .line 1559
    const/4 v8, 0x1

    .line 1560
    invoke-direct {v7, v8}, Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1561
    .line 1562
    .line 1563
    invoke-interface {v5, v6, v7, v4}, Landroidx/window/layout/adapter/WindowBackend;->registerLayoutChangeCallback(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 1564
    .line 1565
    .line 1566
    new-instance v5, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 1567
    .line 1568
    invoke-direct {v5, v9, v0, v4}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1569
    .line 1570
    .line 1571
    iput v8, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 1572
    .line 1573
    invoke-static {v3, v5, v1}, Lkotlin/ranges/RangesKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v0

    .line 1577
    if-ne v0, v2, :cond_4c

    .line 1578
    .line 1579
    move-object v11, v2

    .line 1580
    goto :goto_34

    .line 1581
    :cond_4c
    :goto_33
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1582
    .line 1583
    :goto_34
    return-object v11

    .line 1584
    :pswitch_14
    move v8, v10

    .line 1585
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1586
    .line 1587
    iget v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 1588
    .line 1589
    if-eqz v2, :cond_4e

    .line 1590
    .line 1591
    if-ne v2, v8, :cond_4d

    .line 1592
    .line 1593
    iget-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 1594
    .line 1595
    move-object v1, v0

    .line 1596
    check-cast v1, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1597
    .line 1598
    :try_start_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1599
    .line 1600
    .line 1601
    move-object v3, v1

    .line 1602
    move-object/from16 v1, p1

    .line 1603
    .line 1604
    goto :goto_36

    .line 1605
    :catchall_2
    move-exception v0

    .line 1606
    goto :goto_35

    .line 1607
    :cond_4d
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1608
    .line 1609
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1610
    .line 1611
    .line 1612
    const/4 v11, 0x0

    .line 1613
    goto :goto_38

    .line 1614
    :cond_4e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1615
    .line 1616
    .line 1617
    iget-object v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 1618
    .line 1619
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 1620
    .line 1621
    iget-object v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 1622
    .line 1623
    check-cast v3, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1624
    .line 1625
    iget-object v4, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 1626
    .line 1627
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 1628
    .line 1629
    :try_start_6
    iput-object v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 1630
    .line 1631
    const/4 v6, 0x1

    .line 1632
    iput v6, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 1633
    .line 1634
    invoke-interface {v4, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1638
    if-ne v1, v0, :cond_4f

    .line 1639
    .line 1640
    move-object v11, v0

    .line 1641
    goto :goto_38

    .line 1642
    :catchall_3
    move-exception v0

    .line 1643
    move-object v1, v3

    .line 1644
    :goto_35
    new-instance v2, Lkotlin/Result$Failure;

    .line 1645
    .line 1646
    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 1647
    .line 1648
    .line 1649
    move-object v3, v1

    .line 1650
    move-object v1, v2

    .line 1651
    :cond_4f
    :goto_36
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v0

    .line 1655
    if-nez v0, :cond_50

    .line 1656
    .line 1657
    invoke-virtual {v3, v1}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 1658
    .line 1659
    .line 1660
    goto :goto_37

    .line 1661
    :cond_50
    invoke-virtual {v3, v0}, Lkotlinx/coroutines/CompletableDeferredImpl;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 1662
    .line 1663
    .line 1664
    :goto_37
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1665
    .line 1666
    :goto_38
    return-object v11

    .line 1667
    :pswitch_15
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1668
    .line 1669
    iget v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 1670
    .line 1671
    if-eqz v2, :cond_52

    .line 1672
    .line 1673
    const/4 v6, 0x1

    .line 1674
    if-ne v2, v6, :cond_51

    .line 1675
    .line 1676
    iget-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 1677
    .line 1678
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1679
    .line 1680
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1681
    .line 1682
    .line 1683
    move-object/from16 v1, p1

    .line 1684
    .line 1685
    goto :goto_39

    .line 1686
    :cond_51
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1687
    .line 1688
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1689
    .line 1690
    .line 1691
    const/4 v11, 0x0

    .line 1692
    goto :goto_3a

    .line 1693
    :cond_52
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1694
    .line 1695
    .line 1696
    iget-object v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 1697
    .line 1698
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1699
    .line 1700
    iget-object v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 1701
    .line 1702
    check-cast v3, Landroidx/room/coroutines/Pool;

    .line 1703
    .line 1704
    iput-object v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 1705
    .line 1706
    const/4 v6, 0x1

    .line 1707
    iput v6, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 1708
    .line 1709
    invoke-virtual {v3, v1}, Landroidx/room/coroutines/Pool;->acquire(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1710
    .line 1711
    .line 1712
    move-result-object v1

    .line 1713
    if-ne v1, v0, :cond_53

    .line 1714
    .line 1715
    move-object v11, v0

    .line 1716
    goto :goto_3a

    .line 1717
    :cond_53
    move-object v0, v2

    .line 1718
    :goto_39
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1719
    .line 1720
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1721
    .line 1722
    :goto_3a
    return-object v11

    .line 1723
    :pswitch_16
    iget-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 1724
    .line 1725
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 1726
    .line 1727
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1728
    .line 1729
    iget v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 1730
    .line 1731
    const/4 v6, 0x1

    .line 1732
    if-eqz v3, :cond_55

    .line 1733
    .line 1734
    if-ne v3, v6, :cond_54

    .line 1735
    .line 1736
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1737
    .line 1738
    .line 1739
    goto :goto_3b

    .line 1740
    :cond_54
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1741
    .line 1742
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1743
    .line 1744
    .line 1745
    const/4 v11, 0x0

    .line 1746
    goto :goto_3c

    .line 1747
    :cond_55
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1748
    .line 1749
    .line 1750
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1751
    .line 1752
    .line 1753
    move-result-object v3

    .line 1754
    check-cast v3, Ljava/util/List;

    .line 1755
    .line 1756
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1757
    .line 1758
    .line 1759
    move-result v3

    .line 1760
    if-le v3, v6, :cond_56

    .line 1761
    .line 1762
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v3

    .line 1766
    check-cast v3, Ljava/util/List;

    .line 1767
    .line 1768
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1769
    .line 1770
    .line 1771
    move-result-object v0

    .line 1772
    check-cast v0, Ljava/util/List;

    .line 1773
    .line 1774
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1775
    .line 1776
    .line 1777
    move-result v0

    .line 1778
    sub-int/2addr v0, v9

    .line 1779
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v0

    .line 1783
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 1784
    .line 1785
    iget-object v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 1786
    .line 1787
    check-cast v3, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 1788
    .line 1789
    iget-object v4, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 1790
    .line 1791
    check-cast v4, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 1792
    .line 1793
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 1794
    .line 1795
    .line 1796
    move-result v4

    .line 1797
    const/4 v6, 0x1

    .line 1798
    iput v6, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 1799
    .line 1800
    invoke-virtual {v3, v4, v0, v1}, Landroidx/compose/animation/core/SeekableTransitionState;->seekTo(FLjava/lang/Object;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 1801
    .line 1802
    .line 1803
    move-result-object v0

    .line 1804
    if-ne v0, v2, :cond_56

    .line 1805
    .line 1806
    move-object v11, v2

    .line 1807
    goto :goto_3c

    .line 1808
    :cond_56
    :goto_3b
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1809
    .line 1810
    :goto_3c
    return-object v11

    .line 1811
    :pswitch_17
    iget-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 1812
    .line 1813
    check-cast v0, Landroidx/compose/runtime/ProduceStateScope;

    .line 1814
    .line 1815
    iget-object v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 1816
    .line 1817
    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    .line 1818
    .line 1819
    iget-object v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 1820
    .line 1821
    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    .line 1822
    .line 1823
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1824
    .line 1825
    iget v5, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 1826
    .line 1827
    if-eqz v5, :cond_59

    .line 1828
    .line 1829
    const/4 v6, 0x1

    .line 1830
    if-eq v5, v6, :cond_58

    .line 1831
    .line 1832
    if-ne v5, v9, :cond_57

    .line 1833
    .line 1834
    goto :goto_3d

    .line 1835
    :cond_57
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1836
    .line 1837
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1838
    .line 1839
    .line 1840
    const/4 v11, 0x0

    .line 1841
    goto :goto_40

    .line 1842
    :cond_58
    :goto_3d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1843
    .line 1844
    .line 1845
    goto :goto_3f

    .line 1846
    :cond_59
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1847
    .line 1848
    .line 1849
    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 1850
    .line 1851
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1852
    .line 1853
    .line 1854
    move-result v5

    .line 1855
    if-eqz v5, :cond_5a

    .line 1856
    .line 1857
    new-instance v3, Landroidx/lifecycle/compose/FlowExtKt$collectAsStateWithLifecycle$1$1$1$1;

    .line 1858
    .line 1859
    invoke-direct {v3, v0, v8}, Landroidx/lifecycle/compose/FlowExtKt$collectAsStateWithLifecycle$1$1$1$1;-><init>(Landroidx/compose/runtime/ProduceStateScope;I)V

    .line 1860
    .line 1861
    .line 1862
    const/4 v6, 0x1

    .line 1863
    iput v6, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 1864
    .line 1865
    invoke-interface {v2, v3, v1}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1866
    .line 1867
    .line 1868
    move-result-object v0

    .line 1869
    if-ne v0, v4, :cond_5b

    .line 1870
    .line 1871
    goto :goto_3e

    .line 1872
    :cond_5a
    new-instance v5, Landroidx/lifecycle/compose/FlowExtKt$collectAsStateWithLifecycle$1$1$1$2;

    .line 1873
    .line 1874
    const/4 v6, 0x0

    .line 1875
    invoke-direct {v5, v2, v0, v6, v8}, Landroidx/lifecycle/compose/FlowExtKt$collectAsStateWithLifecycle$1$1$1$2;-><init>(Lkotlinx/coroutines/flow/Flow;Landroidx/compose/runtime/ProduceStateScope;Lkotlin/coroutines/Continuation;I)V

    .line 1876
    .line 1877
    .line 1878
    iput v9, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 1879
    .line 1880
    invoke-static {v3, v5, v1}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1881
    .line 1882
    .line 1883
    move-result-object v0

    .line 1884
    if-ne v0, v4, :cond_5b

    .line 1885
    .line 1886
    :goto_3e
    move-object v11, v4

    .line 1887
    goto :goto_40

    .line 1888
    :cond_5b
    :goto_3f
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1889
    .line 1890
    :goto_40
    return-object v11

    .line 1891
    :pswitch_18
    iget-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 1892
    .line 1893
    check-cast v0, Landroidx/datastore/core/DataStoreImpl;

    .line 1894
    .line 1895
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1896
    .line 1897
    iget v4, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 1898
    .line 1899
    if-eqz v4, :cond_5d

    .line 1900
    .line 1901
    const/4 v6, 0x1

    .line 1902
    if-ne v4, v6, :cond_5c

    .line 1903
    .line 1904
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1905
    .line 1906
    .line 1907
    move-object/from16 v17, p1

    .line 1908
    .line 1909
    goto/16 :goto_42

    .line 1910
    .line 1911
    :cond_5c
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1912
    .line 1913
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1914
    .line 1915
    .line 1916
    :goto_41
    const/16 v17, 0x0

    .line 1917
    .line 1918
    goto/16 :goto_42

    .line 1919
    .line 1920
    :cond_5d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1921
    .line 1922
    .line 1923
    iget-object v4, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 1924
    .line 1925
    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    .line 1926
    .line 1927
    new-instance v5, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1928
    .line 1929
    invoke-direct {v5}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>()V

    .line 1930
    .line 1931
    .line 1932
    iget-object v6, v0, Landroidx/datastore/core/DataStoreImpl;->inMemoryCache:Landroidx/room/ObservedTableVersions;

    .line 1933
    .line 1934
    invoke-virtual {v6}, Landroidx/room/ObservedTableVersions;->getCurrentState()Landroidx/datastore/core/State;

    .line 1935
    .line 1936
    .line 1937
    move-result-object v6

    .line 1938
    instance-of v8, v6, Landroidx/datastore/core/Data;

    .line 1939
    .line 1940
    if-eqz v8, :cond_5e

    .line 1941
    .line 1942
    new-instance v8, Landroidx/datastore/core/NoValueDataState;

    .line 1943
    .line 1944
    check-cast v6, Landroidx/datastore/core/Data;

    .line 1945
    .line 1946
    iget v6, v6, Landroidx/datastore/core/State;->version:I

    .line 1947
    .line 1948
    invoke-direct {v8, v6}, Landroidx/datastore/core/State;-><init>(I)V

    .line 1949
    .line 1950
    .line 1951
    move-object v6, v8

    .line 1952
    :cond_5e
    new-instance v8, Landroidx/datastore/core/Message$Update;

    .line 1953
    .line 1954
    iget-object v9, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 1955
    .line 1956
    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 1957
    .line 1958
    invoke-interface {v4}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 1959
    .line 1960
    .line 1961
    move-result-object v4

    .line 1962
    invoke-direct {v8, v9, v5, v6, v4}, Landroidx/datastore/core/Message$Update;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CompletableDeferredImpl;Landroidx/datastore/core/State;Lkotlin/coroutines/CoroutineContext;)V

    .line 1963
    .line 1964
    .line 1965
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl;->writeActor:Lokhttp3/Dispatcher;

    .line 1966
    .line 1967
    iget-object v4, v0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 1968
    .line 1969
    check-cast v4, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1970
    .line 1971
    invoke-interface {v4, v8}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1972
    .line 1973
    .line 1974
    move-result-object v4

    .line 1975
    instance-of v6, v4, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    .line 1976
    .line 1977
    if-eqz v6, :cond_60

    .line 1978
    .line 1979
    check-cast v4, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    .line 1980
    .line 1981
    iget-object v0, v4, Lkotlinx/coroutines/channels/ChannelResult$Closed;->cause:Ljava/lang/Throwable;

    .line 1982
    .line 1983
    if-nez v0, :cond_5f

    .line 1984
    .line 1985
    new-instance v0, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    .line 1986
    .line 1987
    const-string v1, "Channel was closed normally"

    .line 1988
    .line 1989
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1990
    .line 1991
    .line 1992
    :cond_5f
    throw v0

    .line 1993
    :cond_60
    instance-of v4, v4, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 1994
    .line 1995
    if-nez v4, :cond_63

    .line 1996
    .line 1997
    iget-object v4, v0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 1998
    .line 1999
    check-cast v4, Landroidx/fragment/app/Fragment$7;

    .line 2000
    .line 2001
    iget-object v4, v4, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 2002
    .line 2003
    check-cast v4, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2004
    .line 2005
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 2006
    .line 2007
    .line 2008
    move-result v4

    .line 2009
    if-nez v4, :cond_61

    .line 2010
    .line 2011
    iget-object v4, v0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 2012
    .line 2013
    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    .line 2014
    .line 2015
    new-instance v6, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 2016
    .line 2017
    const/4 v8, 0x0

    .line 2018
    invoke-direct {v6, v0, v8, v3}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 2019
    .line 2020
    .line 2021
    invoke-static {v4, v8, v8, v6, v7}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 2022
    .line 2023
    .line 2024
    :cond_61
    const/4 v6, 0x1

    .line 2025
    iput v6, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 2026
    .line 2027
    invoke-virtual {v5, v1}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2028
    .line 2029
    .line 2030
    move-result-object v0

    .line 2031
    if-ne v0, v2, :cond_62

    .line 2032
    .line 2033
    move-object/from16 v17, v2

    .line 2034
    .line 2035
    goto :goto_42

    .line 2036
    :cond_62
    move-object/from16 v17, v0

    .line 2037
    .line 2038
    goto :goto_42

    .line 2039
    :cond_63
    const-string v0, "Check failed."

    .line 2040
    .line 2041
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2042
    .line 2043
    .line 2044
    goto/16 :goto_41

    .line 2045
    .line 2046
    :goto_42
    return-object v17

    .line 2047
    :pswitch_19
    const-string v0, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    .line 2048
    .line 2049
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2050
    .line 2051
    iget-object v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 2052
    .line 2053
    check-cast v3, Landroidx/datastore/core/DataStoreImpl;

    .line 2054
    .line 2055
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2056
    .line 2057
    iget v5, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 2058
    .line 2059
    if-eqz v5, :cond_68

    .line 2060
    .line 2061
    const/4 v6, 0x1

    .line 2062
    if-eq v5, v6, :cond_67

    .line 2063
    .line 2064
    if-eq v5, v9, :cond_66

    .line 2065
    .line 2066
    if-ne v5, v7, :cond_65

    .line 2067
    .line 2068
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2069
    .line 2070
    .line 2071
    :cond_64
    :goto_43
    move-object v11, v2

    .line 2072
    goto/16 :goto_48

    .line 2073
    .line 2074
    :cond_65
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 2075
    .line 2076
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2077
    .line 2078
    .line 2079
    :goto_44
    const/4 v11, 0x0

    .line 2080
    goto/16 :goto_48

    .line 2081
    .line 2082
    :cond_66
    iget-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 2083
    .line 2084
    check-cast v0, Landroidx/datastore/core/Data;

    .line 2085
    .line 2086
    iget-object v5, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 2087
    .line 2088
    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2089
    .line 2090
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2091
    .line 2092
    .line 2093
    goto :goto_46

    .line 2094
    :cond_67
    iget-object v5, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 2095
    .line 2096
    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2097
    .line 2098
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2099
    .line 2100
    .line 2101
    move-object/from16 v6, p1

    .line 2102
    .line 2103
    goto :goto_45

    .line 2104
    :cond_68
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2105
    .line 2106
    .line 2107
    iget-object v5, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 2108
    .line 2109
    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2110
    .line 2111
    iput-object v5, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 2112
    .line 2113
    const/4 v6, 0x1

    .line 2114
    iput v6, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 2115
    .line 2116
    iget-object v6, v3, Landroidx/datastore/core/DataStoreImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 2117
    .line 2118
    invoke-interface {v6}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 2119
    .line 2120
    .line 2121
    move-result-object v6

    .line 2122
    new-instance v10, Landroidx/datastore/core/DataStoreImpl$data$1$1;

    .line 2123
    .line 2124
    const/4 v11, 0x0

    .line 2125
    invoke-direct {v10, v3, v11, v9}, Landroidx/datastore/core/DataStoreImpl$data$1$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;I)V

    .line 2126
    .line 2127
    .line 2128
    invoke-static {v6, v10, v1}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2129
    .line 2130
    .line 2131
    move-result-object v6

    .line 2132
    if-ne v6, v4, :cond_69

    .line 2133
    .line 2134
    goto :goto_47

    .line 2135
    :cond_69
    :goto_45
    check-cast v6, Landroidx/datastore/core/State;

    .line 2136
    .line 2137
    instance-of v10, v6, Landroidx/datastore/core/Data;

    .line 2138
    .line 2139
    if-eqz v10, :cond_6b

    .line 2140
    .line 2141
    move-object v0, v6

    .line 2142
    check-cast v0, Landroidx/datastore/core/Data;

    .line 2143
    .line 2144
    iget-object v10, v0, Landroidx/datastore/core/Data;->value:Ljava/lang/Object;

    .line 2145
    .line 2146
    iput-object v5, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 2147
    .line 2148
    iput-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 2149
    .line 2150
    iput v9, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 2151
    .line 2152
    invoke-interface {v5, v10, v1}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2153
    .line 2154
    .line 2155
    move-result-object v0

    .line 2156
    if-ne v0, v4, :cond_6a

    .line 2157
    .line 2158
    goto :goto_47

    .line 2159
    :cond_6a
    move-object v0, v6

    .line 2160
    :goto_46
    iget-object v6, v3, Landroidx/datastore/core/DataStoreImpl;->inMemoryCache:Landroidx/room/ObservedTableVersions;

    .line 2161
    .line 2162
    iget-object v6, v6, Landroidx/room/ObservedTableVersions;->versions:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2163
    .line 2164
    new-instance v10, Landroidx/datastore/core/DataStoreImpl$data$1$1;

    .line 2165
    .line 2166
    const/4 v11, 0x0

    .line 2167
    invoke-direct {v10, v3, v11, v8}, Landroidx/datastore/core/DataStoreImpl$data$1$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;I)V

    .line 2168
    .line 2169
    .line 2170
    new-instance v12, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;

    .line 2171
    .line 2172
    invoke-direct {v12, v9, v10, v6}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2173
    .line 2174
    .line 2175
    new-instance v6, Landroidx/compose/runtime/Recomposer$join$2;

    .line 2176
    .line 2177
    const/4 v10, 0x5

    .line 2178
    invoke-direct {v6, v9, v11, v10}, Landroidx/compose/runtime/Recomposer$join$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 2179
    .line 2180
    .line 2181
    new-instance v9, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;

    .line 2182
    .line 2183
    invoke-direct {v9, v8, v12, v6}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2184
    .line 2185
    .line 2186
    new-instance v6, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 2187
    .line 2188
    invoke-direct {v6, v0, v11, v8}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 2189
    .line 2190
    .line 2191
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 2192
    .line 2193
    const/4 v8, 0x1

    .line 2194
    invoke-direct {v0, v9, v6, v8}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 2195
    .line 2196
    .line 2197
    new-instance v6, Lkotlinx/coroutines/flow/SafeFlow;

    .line 2198
    .line 2199
    invoke-direct {v6, v8, v0}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 2200
    .line 2201
    .line 2202
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$data$1$5;

    .line 2203
    .line 2204
    invoke-direct {v0, v3, v11}, Landroidx/datastore/core/DataStoreImpl$data$1$5;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 2205
    .line 2206
    .line 2207
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

    .line 2208
    .line 2209
    invoke-direct {v3, v6, v0, v8}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;I)V

    .line 2210
    .line 2211
    .line 2212
    iput-object v11, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 2213
    .line 2214
    iput-object v11, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 2215
    .line 2216
    iput v7, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 2217
    .line 2218
    invoke-static {v1, v3, v5}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/jvm/internal/ContinuationImpl;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    .line 2219
    .line 2220
    .line 2221
    move-result-object v0

    .line 2222
    if-ne v0, v4, :cond_64

    .line 2223
    .line 2224
    :goto_47
    move-object v11, v4

    .line 2225
    goto :goto_48

    .line 2226
    :cond_6b
    instance-of v1, v6, Landroidx/datastore/core/UnInitialized;

    .line 2227
    .line 2228
    if-nez v1, :cond_6f

    .line 2229
    .line 2230
    instance-of v1, v6, Landroidx/datastore/core/ReadException;

    .line 2231
    .line 2232
    if-nez v1, :cond_6e

    .line 2233
    .line 2234
    instance-of v1, v6, Landroidx/datastore/core/Final;

    .line 2235
    .line 2236
    if-eqz v1, :cond_6c

    .line 2237
    .line 2238
    goto/16 :goto_43

    .line 2239
    .line 2240
    :cond_6c
    instance-of v1, v6, Landroidx/datastore/core/NoValueDataState;

    .line 2241
    .line 2242
    if-eqz v1, :cond_6d

    .line 2243
    .line 2244
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2245
    .line 2246
    .line 2247
    goto/16 :goto_44

    .line 2248
    .line 2249
    :cond_6d
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 2250
    .line 2251
    .line 2252
    goto/16 :goto_44

    .line 2253
    .line 2254
    :cond_6e
    check-cast v6, Landroidx/datastore/core/ReadException;

    .line 2255
    .line 2256
    iget-object v0, v6, Landroidx/datastore/core/ReadException;->readException:Ljava/lang/Throwable;

    .line 2257
    .line 2258
    throw v0

    .line 2259
    :cond_6f
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2260
    .line 2261
    .line 2262
    goto/16 :goto_44

    .line 2263
    .line 2264
    :goto_48
    return-object v11

    .line 2265
    :pswitch_1a
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2266
    .line 2267
    iget v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 2268
    .line 2269
    if-eqz v2, :cond_71

    .line 2270
    .line 2271
    const/4 v6, 0x1

    .line 2272
    if-ne v2, v6, :cond_70

    .line 2273
    .line 2274
    iget-object v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 2275
    .line 2276
    check-cast v2, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    .line 2277
    .line 2278
    iget-object v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 2279
    .line 2280
    check-cast v3, Lkotlinx/coroutines/channels/Channel;

    .line 2281
    .line 2282
    :try_start_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2283
    .line 2284
    .line 2285
    move-object/from16 v4, p1

    .line 2286
    .line 2287
    goto :goto_4a

    .line 2288
    :catchall_4
    move-exception v0

    .line 2289
    move-object v1, v0

    .line 2290
    goto :goto_4d

    .line 2291
    :cond_70
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 2292
    .line 2293
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2294
    .line 2295
    .line 2296
    const/4 v11, 0x0

    .line 2297
    goto :goto_4c

    .line 2298
    :cond_71
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2299
    .line 2300
    .line 2301
    iget-object v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 2302
    .line 2303
    move-object v3, v2

    .line 2304
    check-cast v3, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 2305
    .line 2306
    :try_start_8
    new-instance v2, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    .line 2307
    .line 2308
    invoke-direct {v2, v3}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;)V

    .line 2309
    .line 2310
    .line 2311
    :cond_72
    :goto_49
    iput-object v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 2312
    .line 2313
    iput-object v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 2314
    .line 2315
    const/4 v6, 0x1

    .line 2316
    iput v6, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 2317
    .line 2318
    invoke-virtual {v2, v1}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->hasNext(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2319
    .line 2320
    .line 2321
    move-result-object v4

    .line 2322
    if-ne v4, v0, :cond_73

    .line 2323
    .line 2324
    move-object v11, v0

    .line 2325
    goto :goto_4c

    .line 2326
    :cond_73
    :goto_4a
    check-cast v4, Ljava/lang/Boolean;

    .line 2327
    .line 2328
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2329
    .line 2330
    .line 2331
    move-result v4

    .line 2332
    if-eqz v4, :cond_75

    .line 2333
    .line 2334
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->next()Ljava/lang/Object;

    .line 2335
    .line 2336
    .line 2337
    move-result-object v4

    .line 2338
    check-cast v4, Lkotlin/Unit;

    .line 2339
    .line 2340
    sget-object v4, Landroidx/compose/ui/platform/GlobalSnapshotManager;->sent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2341
    .line 2342
    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2343
    .line 2344
    .line 2345
    sget-object v4, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    .line 2346
    .line 2347
    monitor-enter v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 2348
    :try_start_9
    sget-object v5, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalSnapshot:Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 2349
    .line 2350
    iget-object v5, v5, Landroidx/compose/runtime/snapshots/MutableSnapshot;->modified:Landroidx/collection/MutableScatterSet;

    .line 2351
    .line 2352
    if-eqz v5, :cond_74

    .line 2353
    .line 2354
    invoke-virtual {v5}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    .line 2355
    .line 2356
    .line 2357
    move-result v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 2358
    const/4 v6, 0x1

    .line 2359
    if-ne v5, v6, :cond_74

    .line 2360
    .line 2361
    const/4 v5, 0x1

    .line 2362
    goto :goto_4b

    .line 2363
    :cond_74
    move v5, v8

    .line 2364
    :goto_4b
    :try_start_a
    monitor-exit v4

    .line 2365
    if-eqz v5, :cond_72

    .line 2366
    .line 2367
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$advanceGlobalSnapshot()V

    .line 2368
    .line 2369
    .line 2370
    goto :goto_49

    .line 2371
    :catchall_5
    move-exception v0

    .line 2372
    monitor-exit v4

    .line 2373
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 2374
    :cond_75
    const/4 v11, 0x0

    .line 2375
    invoke-interface {v3, v11}, Lkotlinx/coroutines/channels/Channel;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 2376
    .line 2377
    .line 2378
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2379
    .line 2380
    :goto_4c
    return-object v11

    .line 2381
    :goto_4d
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 2382
    :catchall_6
    move-exception v0

    .line 2383
    invoke-static {v3, v1}, Lokhttp3/Handshake$Companion;->cancelConsumed(Lkotlinx/coroutines/channels/Channel;Ljava/lang/Throwable;)V

    .line 2384
    .line 2385
    .line 2386
    throw v0

    .line 2387
    :pswitch_1b
    iget-object v0, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 2388
    .line 2389
    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 2390
    .line 2391
    iget-object v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 2392
    .line 2393
    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    .line 2394
    .line 2395
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2396
    .line 2397
    iget v4, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 2398
    .line 2399
    if-eqz v4, :cond_78

    .line 2400
    .line 2401
    const/4 v6, 0x1

    .line 2402
    if-eq v4, v6, :cond_77

    .line 2403
    .line 2404
    if-ne v4, v9, :cond_76

    .line 2405
    .line 2406
    goto :goto_4e

    .line 2407
    :cond_76
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 2408
    .line 2409
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2410
    .line 2411
    .line 2412
    const/4 v11, 0x0

    .line 2413
    goto :goto_51

    .line 2414
    :cond_77
    :goto_4e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2415
    .line 2416
    .line 2417
    goto :goto_50

    .line 2418
    :cond_78
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2419
    .line 2420
    .line 2421
    iget-object v4, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 2422
    .line 2423
    check-cast v4, Landroidx/compose/runtime/ProduceStateScope;

    .line 2424
    .line 2425
    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 2426
    .line 2427
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2428
    .line 2429
    .line 2430
    move-result v5

    .line 2431
    if-eqz v5, :cond_79

    .line 2432
    .line 2433
    new-instance v2, Landroidx/lifecycle/compose/FlowExtKt$collectAsStateWithLifecycle$1$1$1$1;

    .line 2434
    .line 2435
    const/4 v6, 0x1

    .line 2436
    invoke-direct {v2, v4, v6}, Landroidx/lifecycle/compose/FlowExtKt$collectAsStateWithLifecycle$1$1$1$1;-><init>(Landroidx/compose/runtime/ProduceStateScope;I)V

    .line 2437
    .line 2438
    .line 2439
    iput v6, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 2440
    .line 2441
    invoke-interface {v0, v2, v1}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2442
    .line 2443
    .line 2444
    move-result-object v0

    .line 2445
    if-ne v0, v3, :cond_7a

    .line 2446
    .line 2447
    goto :goto_4f

    .line 2448
    :cond_79
    const/4 v6, 0x1

    .line 2449
    new-instance v5, Landroidx/lifecycle/compose/FlowExtKt$collectAsStateWithLifecycle$1$1$1$2;

    .line 2450
    .line 2451
    const/4 v11, 0x0

    .line 2452
    invoke-direct {v5, v0, v4, v11, v6}, Landroidx/lifecycle/compose/FlowExtKt$collectAsStateWithLifecycle$1$1$1$2;-><init>(Lkotlinx/coroutines/flow/Flow;Landroidx/compose/runtime/ProduceStateScope;Lkotlin/coroutines/Continuation;I)V

    .line 2453
    .line 2454
    .line 2455
    iput v9, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 2456
    .line 2457
    invoke-static {v2, v5, v1}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2458
    .line 2459
    .line 2460
    move-result-object v0

    .line 2461
    if-ne v0, v3, :cond_7a

    .line 2462
    .line 2463
    :goto_4f
    move-object v11, v3

    .line 2464
    goto :goto_51

    .line 2465
    :cond_7a
    :goto_50
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2466
    .line 2467
    :goto_51
    return-object v11

    .line 2468
    :pswitch_1c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2469
    .line 2470
    iget-object v2, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->$accountUuid:Ljava/lang/Object;

    .line 2471
    .line 2472
    check-cast v2, Ljava/lang/String;

    .line 2473
    .line 2474
    iget-object v3, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->this$0:Ljava/lang/Object;

    .line 2475
    .line 2476
    check-cast v3, Lcom/fsck/k9/Preferences;

    .line 2477
    .line 2478
    iget-object v4, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 2479
    .line 2480
    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    .line 2481
    .line 2482
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2483
    .line 2484
    iget v6, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 2485
    .line 2486
    if-eqz v6, :cond_7e

    .line 2487
    .line 2488
    const/4 v7, 0x1

    .line 2489
    if-eq v6, v7, :cond_7d

    .line 2490
    .line 2491
    if-ne v6, v9, :cond_7c

    .line 2492
    .line 2493
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2494
    .line 2495
    .line 2496
    :cond_7b
    :goto_52
    move-object v11, v0

    .line 2497
    goto :goto_55

    .line 2498
    :cond_7c
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 2499
    .line 2500
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2501
    .line 2502
    .line 2503
    const/4 v11, 0x0

    .line 2504
    goto :goto_55

    .line 2505
    :cond_7d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2506
    .line 2507
    .line 2508
    goto :goto_53

    .line 2509
    :cond_7e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2510
    .line 2511
    .line 2512
    invoke-virtual {v3, v2}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 2513
    .line 2514
    .line 2515
    move-result-object v6

    .line 2516
    if-nez v6, :cond_7f

    .line 2517
    .line 2518
    check-cast v4, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 2519
    .line 2520
    const/4 v11, 0x0

    .line 2521
    invoke-virtual {v4, v11}, Lkotlinx/coroutines/channels/ProducerCoroutine;->close(Ljava/lang/Throwable;)Z

    .line 2522
    .line 2523
    .line 2524
    goto :goto_52

    .line 2525
    :cond_7f
    iput-object v4, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 2526
    .line 2527
    const/4 v7, 0x1

    .line 2528
    iput v7, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 2529
    .line 2530
    move-object v7, v4

    .line 2531
    check-cast v7, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 2532
    .line 2533
    iget-object v7, v7, Lkotlinx/coroutines/channels/ProducerCoroutine;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 2534
    .line 2535
    invoke-interface {v7, v6, v1}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2536
    .line 2537
    .line 2538
    move-result-object v6

    .line 2539
    if-ne v6, v5, :cond_80

    .line 2540
    .line 2541
    goto :goto_54

    .line 2542
    :cond_80
    :goto_53
    new-instance v6, Lcom/fsck/k9/Preferences$getAccountFlow$1$$ExternalSyntheticLambda0;

    .line 2543
    .line 2544
    invoke-direct {v6, v3, v2, v4}, Lcom/fsck/k9/Preferences$getAccountFlow$1$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/Preferences;Ljava/lang/String;Lkotlinx/coroutines/channels/ProducerScope;)V

    .line 2545
    .line 2546
    .line 2547
    iget-object v2, v3, Lcom/fsck/k9/Preferences;->accountsChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2548
    .line 2549
    invoke-virtual {v2, v6}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 2550
    .line 2551
    .line 2552
    new-instance v2, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 2553
    .line 2554
    const/16 v7, 0x13

    .line 2555
    .line 2556
    invoke-direct {v2, v7, v3, v6}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2557
    .line 2558
    .line 2559
    const/4 v11, 0x0

    .line 2560
    iput-object v11, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->L$0:Ljava/lang/Object;

    .line 2561
    .line 2562
    iput v9, v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;->label:I

    .line 2563
    .line 2564
    invoke-static {v4, v2, v1}, Lkotlin/ranges/RangesKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2565
    .line 2566
    .line 2567
    move-result-object v1

    .line 2568
    if-ne v1, v5, :cond_7b

    .line 2569
    .line 2570
    :goto_54
    move-object v11, v5

    .line 2571
    :goto_55
    return-object v11

    .line 2572
    nop

    .line 2573
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

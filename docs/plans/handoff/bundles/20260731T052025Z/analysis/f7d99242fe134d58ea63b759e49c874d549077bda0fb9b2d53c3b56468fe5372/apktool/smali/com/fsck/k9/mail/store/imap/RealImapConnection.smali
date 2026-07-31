.class public final Lcom/fsck/k9/mail/store/imap/RealImapConnection;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public capabilities:Ljava/util/Set;

.field public final connectionGeneration:I

.field public final folderNameCodec:Lcom/fsck/k9/mailstore/LocalFolder$12;

.field public imapOutputStream:Ljava/io/BufferedOutputStream;

.field public inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

.field public nextCommandTag:I

.field public final oauthTokenProvider:Lcom/fsck/k9/mailstore/LocalFolder$12;

.field public open:Z

.field public responseParser:Landroidx/compose/material/ripple/StateLayer;

.field public retryOAuthWithNewToken:Z

.field public final settings:Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;

.field public socket:Ljava/net/Socket;

.field public final socketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

.field public stacktraceForClose:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;Lcom/fsck/k9/mailstore/LocalFolder$12;Lcom/fsck/k9/mailstore/LocalFolder$12;I)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->socketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->oauthTokenProvider:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 15
    .line 16
    iput-object p4, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->folderNameCodec:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 17
    .line 18
    iput p5, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->connectionGeneration:I

    .line 19
    .line 20
    sget-object p1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->capabilities:Ljava/util/Set;

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->retryOAuthWithNewToken:Z

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final attemptOAuth(Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "Required value was null."

    .line 3
    .line 4
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->oauthTokenProvider:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 5
    .line 6
    if-eqz v2, :cond_4

    .line 7
    .line 8
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->responseParser:Landroidx/compose/material/ripple/StateLayer;

    .line 9
    .line 10
    if-eqz v3, :cond_3

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalFolder$12;->getToken()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->username:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, v2, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;->buildInitialClientResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;->getCommand()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v4, " "

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->open()V

    .line 34
    .line 35
    .line 36
    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->imapOutputStream:Ljava/io/BufferedOutputStream;

    .line 37
    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    iget v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->nextCommandTag:I

    .line 41
    .line 42
    add-int/lit8 v6, v1, 0x1

    .line 43
    .line 44
    iput v6, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->nextCommandTag:I

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v4, "\r\n"

    .line 71
    .line 72
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 80
    .line 81
    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 92
    .line 93
    .line 94
    sget-object v4, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 95
    .line 96
    invoke-interface {v4}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_1

    .line 101
    .line 102
    sget-object v4, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 103
    .line 104
    invoke-interface {v4}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->debugSensitive()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    const/4 v5, 0x0

    .line 109
    const/4 v6, 0x1

    .line 110
    if-nez v4, :cond_0

    .line 111
    .line 112
    const-string v0, "%s>>> [Command Hidden, Enable Sensitive Debug Logging To Show]"

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    new-array v4, v6, [Ljava/lang/Object;

    .line 119
    .line 120
    aput-object v2, v4, v5

    .line 121
    .line 122
    invoke-static {v0, v4}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :catch_0
    move-exception p1

    .line 127
    goto :goto_1

    .line 128
    :catch_1
    move-exception p1

    .line 129
    goto :goto_2

    .line 130
    :cond_0
    const-string v4, "%s>>> %s %s %s"

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    const/4 v8, 0x4

    .line 137
    new-array v8, v8, [Ljava/lang/Object;

    .line 138
    .line 139
    aput-object v7, v8, v5

    .line 140
    .line 141
    aput-object v1, v8, v6

    .line 142
    .line 143
    const/4 v5, 0x2

    .line 144
    aput-object v2, v8, v5

    .line 145
    .line 146
    const/4 v2, 0x3

    .line 147
    aput-object v0, v8, v2

    .line 148
    .line 149
    invoke-static {v4, v8}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .line 151
    .line 152
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;->getCommand()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    new-instance v2, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 161
    .line 162
    const/16 v4, 0x16

    .line 163
    .line 164
    invoke-direct {v2, v4, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v1, p1, v0, v2}, Landroidx/compose/material/ripple/StateLayer;->readStatusResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;)Ljava/util/ArrayList;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 173
    .line 174
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->close()V

    .line 179
    .line 180
    .line 181
    throw p1

    .line 182
    :goto_2
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->close()V

    .line 183
    .line 184
    .line 185
    throw p1

    .line 186
    :cond_3
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return-object v0

    .line 190
    :cond_4
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    return-object v0
.end method

.method public final authWithOAuthToken(Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;)Ljava/util/ArrayList;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->oauthTokenProvider:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->retryOAuthWithNewToken:Z

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->attemptOAuth(Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p0

    .line 13
    :catch_0
    move-exception v2

    .line 14
    iput-boolean v1, v0, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$value:Z

    .line 15
    .line 16
    iget-boolean v3, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->retryOAuthWithNewToken:Z

    .line 17
    .line 18
    const-string v4, "Authentication failed"

    .line 19
    .line 20
    const-string v5, "Permanent failure during authentication using OAuth token"

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const-string v3, "Temporary failure - retrying with new token"

    .line 26
    .line 27
    new-array v7, v6, [Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {v2, v3, v7}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->attemptOAuth(Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;)Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object p0
    :try_end_1
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    return-object p0

    .line 37
    :catch_1
    move-exception p0

    .line 38
    const-string p1, "Authentication exception for new token, permanent error assumed"

    .line 39
    .line 40
    new-array v3, v6, [Ljava/lang/Object;

    .line 41
    .line 42
    invoke-static {v2, p1, v3}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iput-boolean v1, v0, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$value:Z

    .line 46
    .line 47
    new-array p1, v6, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {p0, v5, p1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Lcom/fsck/k9/mail/AuthenticationFailedException;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->responseText$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 55
    .line 56
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Ljava/lang/String;

    .line 61
    .line 62
    invoke-direct {p1, v4, v0, p0}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_0
    new-array p0, v6, [Ljava/lang/Object;

    .line 67
    .line 68
    invoke-static {v2, v5, p0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    new-instance p0, Lcom/fsck/k9/mail/AuthenticationFailedException;

    .line 72
    .line 73
    iget-object p1, v2, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->responseText$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 74
    .line 75
    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Ljava/lang/String;

    .line 80
    .line 81
    invoke-direct {p0, v4, p1, v2}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_1
    const-string p0, "Required value was null."

    .line 86
    .line 87
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 p0, 0x0

    .line 91
    return-object p0
.end method

.method public final authenticate()Ljava/util/List;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->username:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->authType:Lcom/fsck/k9/mail/AuthType;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_c

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    if-eq v2, v4, :cond_7

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    if-eq v2, v0, :cond_5

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    if-ne v2, v0, :cond_4

    .line 22
    .line 23
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->oauthTokenProvider:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    const-string v0, "SASL-IR"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->hasCapability(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const-string v0, "AUTH=OAUTHBEARER"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->hasCapability(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    sget-object v0, Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;->OAUTHBEARER:Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod$OAUTHBEARER;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->authWithOAuthToken(Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;)Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_0
    const-string v1, "AUTH=XOAUTH2"

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->hasCapability(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    sget-object v0, Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;->XOAUTH2:Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod$XOAUTH2;

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->authWithOAuthToken(Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;)Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_1
    new-instance p0, Lcom/fsck/k9/mail/MissingCapabilityException;

    .line 66
    .line 67
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/MissingCapabilityException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_2
    new-instance p0, Lcom/fsck/k9/mail/MissingCapabilityException;

    .line 72
    .line 73
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/MissingCapabilityException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_3
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 78
    .line 79
    const-string v0, "No OAuthToken Provider available."

    .line 80
    .line 81
    invoke-direct {p0, v0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_4
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 86
    .line 87
    const-string v0, "Unhandled authentication method found in the server settings (bug)."

    .line 88
    .line 89
    invoke-direct {p0, v0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_5
    const-string v0, "AUTH=EXTERNAL"

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->hasCapability(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_6

    .line 100
    .line 101
    const-string v0, "AUTHENTICATE EXTERNAL "

    .line 102
    .line 103
    :try_start_0
    invoke-static {v1}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p0, v0, v3}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 120
    .line 121
    .line 122
    move-result-object p0
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    return-object p0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->handleAuthenticationFailure(Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;)Lnet/thunderbird/core/common/exception/MessagingException;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    throw p0

    .line 130
    :cond_6
    new-instance p0, Lcom/fsck/k9/mail/MissingCapabilityException;

    .line 131
    .line 132
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/MissingCapabilityException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0

    .line 136
    :cond_7
    const-string v2, "AUTH=CRAM-MD5"

    .line 137
    .line 138
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->hasCapability(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-eqz v5, :cond_b

    .line 143
    .line 144
    const-string v2, "AUTHENTICATE CRAM-MD5"

    .line 145
    .line 146
    invoke-virtual {p0, v2, v3}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->imapOutputStream:Ljava/io/BufferedOutputStream;

    .line 151
    .line 152
    const/4 v7, 0x0

    .line 153
    const-string v8, "Required value was null."

    .line 154
    .line 155
    if-eqz v6, :cond_a

    .line 156
    .line 157
    iget-object v9, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->responseParser:Landroidx/compose/material/ripple/StateLayer;

    .line 158
    .line 159
    if-eqz v9, :cond_9

    .line 160
    .line 161
    invoke-virtual {p0, v5}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->readContinuationResponse(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    if-ne v10, v4, :cond_8

    .line 170
    .line 171
    invoke-virtual {v8, v3}, Lcom/fsck/k9/mail/store/imap/ImapList;->isString(I)Z

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    if-eqz v4, :cond_8

    .line 176
    .line 177
    invoke-virtual {v8, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    check-cast v3, Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 187
    .line 188
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->password:Ljava/lang/String;

    .line 196
    .line 197
    invoke-static {v3, v1, v0}, Lcom/fsck/k9/mail/K9MailLib;->computeCramMd5Bytes([BLjava/lang/String;Ljava/lang/String;)[B

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 202
    .line 203
    .line 204
    const/16 v0, 0xd

    .line 205
    .line 206
    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write(I)V

    .line 207
    .line 208
    .line 209
    const/16 v0, 0xa

    .line 210
    .line 211
    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 215
    .line 216
    .line 217
    :try_start_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v9, v5, v2, v0, v7}, Landroidx/compose/material/ripple/StateLayer;->readStatusResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;)Ljava/util/ArrayList;

    .line 222
    .line 223
    .line 224
    move-result-object p0
    :try_end_1
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 225
    return-object p0

    .line 226
    :catch_1
    move-exception v0

    .line 227
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->handleAuthenticationFailure(Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;)Lnet/thunderbird/core/common/exception/MessagingException;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    throw p0

    .line 232
    :cond_8
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 233
    .line 234
    const-string v0, "Invalid Cram-MD5 nonce received"

    .line 235
    .line 236
    invoke-direct {p0, v0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw p0

    .line 240
    :cond_9
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    return-object v7

    .line 244
    :cond_a
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    return-object v7

    .line 248
    :cond_b
    new-instance p0, Lcom/fsck/k9/mail/MissingCapabilityException;

    .line 249
    .line 250
    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/MissingCapabilityException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw p0

    .line 254
    :cond_c
    const-string v0, "AUTH=PLAIN"

    .line 255
    .line 256
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->hasCapability(Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_e

    .line 261
    .line 262
    :try_start_2
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->saslAuthPlain()Ljava/util/ArrayList;

    .line 263
    .line 264
    .line 265
    move-result-object p0
    :try_end_2
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 266
    return-object p0

    .line 267
    :catch_2
    move-exception v0

    .line 268
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->isConnected()Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-eqz v1, :cond_d

    .line 273
    .line 274
    const-string v1, "LOGIN fallback failed"

    .line 275
    .line 276
    :try_start_3
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->login()Ljava/util/List;

    .line 277
    .line 278
    .line 279
    move-result-object p0
    :try_end_3
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 280
    return-object p0

    .line 281
    :catch_3
    move-exception p0

    .line 282
    new-array v2, v3, [Ljava/lang/Object;

    .line 283
    .line 284
    invoke-static {p0, v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    throw v0

    .line 288
    :catch_4
    move-exception p0

    .line 289
    new-array v2, v3, [Ljava/lang/Object;

    .line 290
    .line 291
    invoke-static {p0, v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    throw v0

    .line 295
    :catch_5
    move-exception p0

    .line 296
    throw p0

    .line 297
    :cond_d
    throw v0

    .line 298
    :cond_e
    const-string v1, "LOGINDISABLED"

    .line 299
    .line 300
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->hasCapability(Ljava/lang/String;)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-nez v1, :cond_f

    .line 305
    .line 306
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->login()Ljava/util/List;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    return-object p0

    .line 311
    :cond_f
    new-instance p0, Lcom/fsck/k9/mail/MissingCapabilityException;

    .line 312
    .line 313
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/MissingCapabilityException;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw p0
.end method

.method public final declared-synchronized close()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->open:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->open:Z

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Exception;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->stacktraceForClose:Ljava/lang/Exception;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 19
    .line 20
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQ(Ljava/io/Closeable;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->imapOutputStream:Ljava/io/BufferedOutputStream;

    .line 24
    .line 25
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQ(Ljava/io/Closeable;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->socket:Ljava/net/Socket;

    .line 29
    .line 30
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQ(Ljava/io/Closeable;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->imapOutputStream:Ljava/io/BufferedOutputStream;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->socket:Ljava/net/Socket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    throw v0
.end method

.method public final connect()Ljava/net/Socket;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->host:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    :goto_0
    if-ge v4, v1, :cond_0

    .line 17
    .line 18
    aget-object v2, v0, v4

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->connectToAddress(Ljava/net/InetAddress;)Ljava/net/Socket;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object p0

    .line 28
    :catch_0
    move-exception v5

    .line 29
    const/4 v6, 0x1

    .line 30
    new-array v6, v6, [Ljava/lang/Object;

    .line 31
    .line 32
    aput-object v2, v6, v3

    .line 33
    .line 34
    const-string v2, "Could not connect to %s"

    .line 35
    .line 36
    invoke-static {v5, v2, v6}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    move-object v2, v5

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    if-eqz v2, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance v2, Ljava/net/UnknownHostException;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    .line 49
    .line 50
    .line 51
    :goto_1
    throw v2
.end method

.method public final connectToAddress(Ljava/net/InetAddress;)Ljava/net/Socket;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->host:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->port:I

    .line 6
    .line 7
    iget-object v3, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->clientCertificateAlias:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 10
    .line 11
    invoke-interface {v4}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    new-array v4, v4, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    aput-object v1, v4, v5

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    aput-object p1, v4, v5

    .line 25
    .line 26
    const-string v5, "Connecting to %s as %s"

    .line 27
    .line 28
    invoke-static {v5, v4}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    new-instance v4, Ljava/net/InetSocketAddress;

    .line 32
    .line 33
    invoke-direct {v4, p1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 37
    .line 38
    sget-object v0, Lcom/fsck/k9/mail/ConnectionSecurity;->SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 39
    .line 40
    if-ne p1, v0, :cond_1

    .line 41
    .line 42
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->socketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/String;)Ljava/net/Socket;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance p0, Ljava/net/Socket;

    .line 51
    .line 52
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 53
    .line 54
    .line 55
    :goto_0
    const/16 p1, 0x7530

    .line 56
    .line 57
    invoke-virtual {p0, v4, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 58
    .line 59
    .line 60
    return-object p0
.end method

.method public final enableCapabilitiesIfSupported()V
    .locals 2

    .line 1
    const-string v0, "ENABLE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->hasCapability(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    const-string v0, "ENABLE UTF8=ACCEPT"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroidx/sqlite/SQLite;->parse(Ljava/util/List;)Lokhttp3/internal/connection/RouteDatabase;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, v0, Lokhttp3/internal/connection/RouteDatabase;->_failedRoutes:Ljava/util/LinkedHashSet;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->responseParser:Landroidx/compose/material/ripple/StateLayer;

    .line 26
    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    const-string v1, "UTF8=ACCEPT"

    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput-boolean v0, p0, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    .line 36
    .line 37
    iget-object p0, p0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$value:Z
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception p0

    .line 45
    const/4 v0, 0x0

    .line 46
    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    .line 48
    const-string v1, "Ignoring negative response to ENABLE command"

    .line 49
    .line 50
    invoke-static {p0, v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final enableCompressionIfRequested()V
    .locals 6

    .line 1
    const-string v0, "COMPRESS=DEFLATE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->hasCapability(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;

    .line 10
    .line 11
    iget-boolean v0, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->useCompression:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :try_start_0
    const-string v1, "COMPRESS DEFLATE"

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    .line 20
    .line 21
    :try_start_1
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->socket:Ljava/net/Socket;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    new-instance v2, Ljava/util/zip/InflaterInputStream;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    new-instance v4, Ljava/util/zip/Inflater;

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    invoke-direct {v4, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v3, v4}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Lcom/jcraft/jzlib/ZOutputStream;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v3, v1}, Lcom/jcraft/jzlib/ZOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 47
    .line 48
    .line 49
    iput v5, v3, Lcom/jcraft/jzlib/ZOutputStream;->flush:I

    .line 50
    .line 51
    invoke-virtual {p0, v2, v3}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->setUpStreamsAndParser(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 52
    .line 53
    .line 54
    sget-object v1, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 55
    .line 56
    invoke-interface {v1}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    const-string v1, "Compression enabled for %s"

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    new-array v3, v5, [Ljava/lang/Object;

    .line 69
    .line 70
    aput-object v2, v3, v0

    .line 71
    .line 72
    invoke-static {v1, v3}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :catch_0
    move-exception v1

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const-string v1, "Required value was null."

    .line 79
    .line 80
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->close()V

    .line 87
    .line 88
    .line 89
    const-string p0, "Error enabling compression"

    .line 90
    .line 91
    new-array v0, v0, [Ljava/lang/Object;

    .line 92
    .line 93
    invoke-static {v1, p0, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_1
    move-exception p0

    .line 98
    const-string v1, "Unable to negotiate compression: "

    .line 99
    .line 100
    new-array v0, v0, [Ljava/lang/Object;

    .line 101
    .line 102
    invoke-static {p0, v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    :goto_1
    return-void
.end method

.method public final declared-synchronized executeCommandWithIdSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p3}, Lorg/slf4j/helpers/Util;->groupIds(Ljava/util/Set;)Lcom/google/zxing/BinaryBitmap;

    .line 3
    .line 4
    .line 5
    move-result-object p3

    .line 6
    const-string v0, "CONDSTORE"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->hasCapability(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/16 v0, 0x1fec

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v0, 0x3d4

    .line 18
    .line 19
    :goto_0
    invoke-static {p1, p2, p3, v0}, Landroidx/room/util/DBUtil;->splitCommand(Ljava/lang/String;Ljava/lang/String;Lcom/google/zxing/BinaryBitmap;I)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance p2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-eqz p3, :cond_1

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    check-cast p3, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p0, p3}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-static {p3, p2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    monitor-exit p0

    .line 55
    return-object p2

    .line 56
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p1
.end method

.method public final declared-synchronized executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->debugSensitive()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "*sensitive*"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, p1

    .line 18
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->responseParser:Landroidx/compose/material/ripple/StateLayer;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p2, p1, v0, v2, v1}, Landroidx/compose/material/ripple/StateLayer;->readStatusResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-object p0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->close()V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    const-string p0, "Required value was null."

    .line 42
    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v1
.end method

.method public final extractCapabilities(Ljava/util/List;)Z
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v5, "OK"

    .line 31
    .line 32
    invoke-static {v4, v5}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Lcom/fsck/k9/mail/store/imap/ImapList;->isList(I)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 49
    .line 50
    invoke-static {v0}, Landroidx/work/Configuration$Builder;->parse(Lcom/fsck/k9/mail/store/imap/ImapList;)Landroidx/work/Configuration$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v4, v0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->tag:Ljava/lang/String;

    .line 56
    .line 57
    if-nez v4, :cond_2

    .line 58
    .line 59
    invoke-static {v0}, Landroidx/work/Configuration$Builder;->parse(Lcom/fsck/k9/mail/store/imap/ImapList;)Landroidx/work/Configuration$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :cond_2
    :goto_0
    if-eqz v2, :cond_0

    .line 64
    .line 65
    :cond_3
    if-nez v2, :cond_4

    .line 66
    .line 67
    return v1

    .line 68
    :cond_4
    iget-object p1, v2, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Ljava/util/Set;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/4 v2, 0x2

    .line 77
    new-array v2, v2, [Ljava/lang/Object;

    .line 78
    .line 79
    aput-object p1, v2, v1

    .line 80
    .line 81
    aput-object v0, v2, v3

    .line 82
    .line 83
    const-string v0, "Saving %s capabilities for %s"

    .line 84
    .line 85
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->capabilities:Ljava/util/Set;

    .line 92
    .line 93
    return v3
.end method

.method public final extractOrRequestCapabilities(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->extractCapabilities(Ljava/util/List;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x1

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    aput-object p1, v0, v1

    .line 16
    .line 17
    const-string p1, "Did not get capabilities in post-auth banner, requesting CAPABILITY for %s"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->requestCapabilities()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final getLogId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const-string v0, "conn"

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final handleAuthenticationFailure(Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;)Lnet/thunderbird/core/common/exception/MessagingException;
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->responses:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x2

    .line 17
    const/4 v4, 0x0

    .line 18
    if-lt v2, v3, :cond_2

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/imap/ImapList;->isList(I)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eq v3, v2, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    move-object v4, v1

    .line 47
    check-cast v4, Ljava/lang/String;

    .line 48
    .line 49
    :cond_2
    :goto_0
    if-eqz v4, :cond_4

    .line 50
    .line 51
    const-string v1, "AUTHENTICATIONFAILED"

    .line 52
    .line 53
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->close()V

    .line 61
    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_7

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isTagged()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_6

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-nez v2, :cond_6

    .line 100
    .line 101
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, "BYE"

    .line 106
    .line 107
    invoke-static {v1, v2}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_6

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->close()V

    .line 114
    .line 115
    .line 116
    :cond_7
    :goto_2
    new-instance p0, Lcom/fsck/k9/mail/AuthenticationFailedException;

    .line 117
    .line 118
    iget-object v0, p1, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->responseText$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 119
    .line 120
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Ljava/lang/String;

    .line 125
    .line 126
    const-string v1, "Authentication failed"

    .line 127
    .line 128
    invoke-direct {p0, v1, v0, p1}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    return-object p0
.end method

.method public final hasCapability(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->open:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->open()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->capabilities:Ljava/util/Set;

    .line 9
    .line 10
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final declared-synchronized isConnected()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->imapOutputStream:Ljava/io/BufferedOutputStream;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->socket:Ljava/net/Socket;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 21
    .line 22
    .line 23
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    monitor-exit p0

    .line 32
    return v0

    .line 33
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw v0
.end method

.method public final login()Ljava/util/List;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->password:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v2, "[\\\\\"]"

    .line 8
    .line 9
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->username:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v3, "\\\\$0"

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :try_start_0
    const-string v2, "LOGIN \"%s\" \"%s\""

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    new-array v4, v3, [Ljava/lang/Object;

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    aput-object v0, v4, v5

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    aput-object v1, v4, v0

    .line 43
    .line 44
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p0, v1, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object p0
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-object p0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->handleAuthenticationFailure(Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;)Lnet/thunderbird/core/common/exception/MessagingException;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    throw p0

    .line 63
    :cond_0
    const-string p0, "Required value was null."

    .line 64
    .line 65
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
    return-object p0
.end method

.method public final declared-synchronized open()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->open:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->stacktraceForClose:Ljava/lang/Exception;

    .line 9
    .line 10
    if-nez v0, :cond_4

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->open:Z

    .line 14
    .line 15
    iput v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->nextCommandTag:I

    .line 16
    .line 17
    const-string v1, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :try_start_2
    const-string v3, "networkaddress.cache.ttl"

    .line 21
    .line 22
    invoke-static {v3, v1}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v3

    .line 27
    :try_start_3
    const-string v4, "Could not set DNS ttl to 0 for %s"

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    new-array v6, v0, [Ljava/lang/Object;

    .line 34
    .line 35
    aput-object v5, v6, v2

    .line 36
    .line 37
    invoke-static {v3, v4, v6}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 38
    .line 39
    .line 40
    :goto_0
    :try_start_4
    const-string v3, "networkaddress.cache.negative.ttl"

    .line 41
    .line 42
    invoke-static {v3, v1}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catch_1
    move-exception v1

    .line 47
    :try_start_5
    const-string v3, "Could not set DNS negative ttl to 0 for %s"

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    new-array v5, v0, [Ljava/lang/Object;

    .line 54
    .line 55
    aput-object v4, v5, v2

    .line 56
    .line 57
    invoke-static {v1, v3, v5}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 58
    .line 59
    .line 60
    :goto_1
    :try_start_6
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->connect()Ljava/net/Socket;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iput-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->socket:Ljava/net/Socket;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->setSocketDefaultReadTimeout()V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->socket:Ljava/net/Socket;

    .line 70
    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v3, v1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->setUpStreamsAndParser(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->readInitialResponse()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->requestCapabilitiesIfNecessary()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->upgradeToTlsIfNecessary()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->authenticate()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v1
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 103
    :try_start_7
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->extractOrRequestCapabilities(Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->enableCompressionIfRequested()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->sendClientInfoIfSupported()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->enableCapabilitiesIfSupported()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->retrievePathPrefixIfNecessary()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->retrievePathDelimiterIfNecessary()V
    :try_end_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 119
    .line 120
    .line 121
    monitor-exit p0

    .line 122
    return-void

    .line 123
    :catchall_0
    move-exception v1

    .line 124
    move v3, v0

    .line 125
    goto :goto_4

    .line 126
    :catch_2
    move-exception v1

    .line 127
    move v3, v0

    .line 128
    goto :goto_2

    .line 129
    :catch_3
    move-exception v1

    .line 130
    move v3, v0

    .line 131
    goto :goto_3

    .line 132
    :catchall_1
    move-exception v1

    .line 133
    move v3, v2

    .line 134
    goto :goto_4

    .line 135
    :catch_4
    move-exception v1

    .line 136
    move v3, v2

    .line 137
    goto :goto_2

    .line 138
    :catch_5
    move-exception v1

    .line 139
    move v3, v2

    .line 140
    goto :goto_3

    .line 141
    :cond_1
    :try_start_8
    const-string v1, "Required value was null."

    .line 142
    .line 143
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 144
    .line 145
    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v3
    :try_end_8
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 149
    :goto_2
    :try_start_9
    new-instance v4, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 150
    .line 151
    const-string v5, "Unable to open connection to IMAP server due to security error."

    .line 152
    .line 153
    invoke-direct {v4, v5, v2, v1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    throw v4

    .line 157
    :catchall_2
    move-exception v1

    .line 158
    goto :goto_4

    .line 159
    :goto_3
    invoke-static {v1}, Lcom/fsck/k9/mail/ssl/LocalKeyStoreKt;->extract(Ljavax/net/ssl/SSLException;)Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    if-eqz v4, :cond_2

    .line 164
    .line 165
    new-instance v5, Lcom/fsck/k9/mail/CertificateValidationException;

    .line 166
    .line 167
    invoke-direct {v5, v4, v1}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/util/List;Ljavax/net/ssl/SSLException;)V

    .line 168
    .line 169
    .line 170
    throw v5

    .line 171
    :cond_2
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 172
    :goto_4
    if-nez v3, :cond_3

    .line 173
    .line 174
    :try_start_a
    const-string v3, "Failed to login, closing connection for %s"

    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    new-array v0, v0, [Ljava/lang/Object;

    .line 181
    .line 182
    aput-object v4, v0, v2

    .line 183
    .line 184
    invoke-static {v3, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->close()V

    .line 188
    .line 189
    .line 190
    goto :goto_5

    .line 191
    :catchall_3
    move-exception v0

    .line 192
    goto :goto_6

    .line 193
    :cond_3
    :goto_5
    throw v1

    .line 194
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 195
    .line 196
    const-string v2, "open() called after close(). Check wrapped exception to see where close() was called."

    .line 197
    .line 198
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    .line 200
    .line 201
    throw v1

    .line 202
    :goto_6
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 203
    throw v0
.end method

.method public final readContinuationResponse(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .locals 4

    .line 1
    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->readResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, v0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->tag:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x3

    .line 21
    new-array v2, v2, [Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    aput-object p1, v2, v3

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    aput-object v0, v2, v3

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    aput-object v1, v2, v3

    .line 31
    .line 32
    const-string v1, "After sending tag %s, got tag response from previous command %s for %s"

    .line 33
    .line 34
    invoke-static {v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 39
    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v1, "Command continuation aborted: "

    .line 43
    .line 44
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_2
    :goto_0
    iget-boolean v1, v0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isContinuationRequested:Z

    .line 59
    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    return-object v0
.end method

.method public final readInitialResponse()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->responseParser:Landroidx/compose/material/ripple/StateLayer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroidx/compose/material/ripple/StateLayer;->readResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 11
    .line 12
    invoke-interface {v1}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x2

    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v1, v2, v3

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    aput-object v0, v2, v1

    .line 30
    .line 31
    const-string v1, "%s <<< %s"

    .line 32
    .line 33
    invoke-static {v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->extractCapabilities(Ljava/util/List;)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    const-string p0, "Required value was null."

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final readResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->responseParser:Landroidx/compose/material/ripple/StateLayer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/compose/material/ripple/StateLayer;->readResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "%s<<<%s"

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x2

    .line 24
    new-array v2, v2, [Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    aput-object v1, v2, v3

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    aput-object p1, v2, v1

    .line 31
    .line 32
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_1
    const-string p1, "Required value was null."

    .line 43
    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->close()V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public final requestCapabilities()V
    .locals 1

    .line 1
    const-string v0, "CAPABILITY"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->extractCapabilities(Ljava/util/List;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 15
    .line 16
    const-string v0, "Invalid CAPABILITY response received"

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final requestCapabilitiesIfNecessary()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->capabilities:Ljava/util/Set;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x1

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    aput-object v0, v1, v2

    .line 29
    .line 30
    const-string v0, "Did not get capabilities in banner, requesting CAPABILITY for %s"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->requestCapabilities()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final retrievePathDelimiterIfNecessary()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->this$0:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->pathDelimiter:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    const-string v2, "LIST \"\" \"\""

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object v2
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/4 v5, 0x4

    .line 37
    if-ge v4, v5, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const-string v5, "LIST"

    .line 45
    .line 46
    invoke-static {v4, v5}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const/4 v5, 0x2

    .line 51
    invoke-virtual {v3, v5}, Lcom/fsck/k9/mail/store/imap/ImapList;->isString(I)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    if-eqz v6, :cond_0

    .line 58
    .line 59
    invoke-virtual {v3, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Ljava/lang/String;

    .line 64
    .line 65
    iput-object v2, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->pathDelimiter:Ljava/lang/String;

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    iput-object v3, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->_combinedPrefix:Ljava/lang/String;

    .line 69
    .line 70
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 71
    .line 72
    invoke-interface {v0}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    new-array v0, v5, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object v2, v0, v1

    .line 85
    .line 86
    const/4 v1, 0x1

    .line 87
    aput-object p0, v0, v1

    .line 88
    .line 89
    const-string p0, "Got path delimiter \'%s\' for %s"

    .line 90
    .line 91
    invoke-static {p0, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :catch_0
    move-exception p0

    .line 96
    const-string v0, "Error getting path delimiter using LIST command"

    .line 97
    .line 98
    new-array v1, v1, [Ljava/lang/Object;

    .line 99
    .line 100
    invoke-static {p0, v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    return-void
.end method

.method public final retrievePathPrefixIfNecessary()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->this$0:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->pathPrefix:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v1, "NAMESPACE"

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->hasCapability(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_4

    .line 18
    .line 19
    sget-object v2, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 20
    .line 21
    invoke-interface {v2}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    const-string v2, "pathPrefix is unset and server has NAMESPACE capability"

    .line 28
    .line 29
    new-array v4, v3, [Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {v2, v4}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Lorg/jsoup/parser/ParseError;->parse(Ljava/util/List;)Lorg/jsoup/parser/ParseError;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-nez p0, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object v1, p0, Lorg/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    .line 46
    .line 47
    iget-object p0, p0, Lorg/jsoup/parser/ParseError;->cursorPos:Ljava/lang/String;

    .line 48
    .line 49
    iput-object p0, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->pathPrefix:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v1, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->pathDelimiter:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    iput-object v2, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->_combinedPrefix:Ljava/lang/String;

    .line 55
    .line 56
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 57
    .line 58
    invoke-interface {v0}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    const/4 v0, 0x2

    .line 65
    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    .line 67
    aput-object p0, v0, v3

    .line 68
    .line 69
    const/4 p0, 0x1

    .line 70
    aput-object v1, v0, p0

    .line 71
    .line 72
    const-string p0, "Got path \'%s\' and separator \'%s\'"

    .line 73
    .line 74
    invoke-static {p0, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_0
    return-void

    .line 78
    :cond_4
    sget-object p0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 79
    .line 80
    invoke-interface {p0}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_5

    .line 85
    .line 86
    const-string p0, "pathPrefix is unset but server does not have NAMESPACE capability"

    .line 87
    .line 88
    new-array v1, v3, [Ljava/lang/Object;

    .line 89
    .line 90
    invoke-static {p0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_5
    const-string p0, ""

    .line 94
    .line 95
    iput-object p0, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->pathPrefix:Ljava/lang/String;

    .line 96
    .line 97
    return-void
.end method

.method public final saslAuthPlain()Ljava/util/ArrayList;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "AUTHENTICATE PLAIN"

    .line 3
    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->imapOutputStream:Ljava/io/BufferedOutputStream;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const-string v4, "Required value was null."

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->responseParser:Landroidx/compose/material/ripple/StateLayer;

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->readContinuationResponse(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 20
    .line 21
    .line 22
    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;

    .line 23
    .line 24
    iget-object v6, v4, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->username:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v4, v4, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->password:Ljava/lang/String;

    .line 27
    .line 28
    const-string v7, "\u0000"

    .line 29
    .line 30
    invoke-static {v7, v6, v7, v4}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 35
    .line 36
    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {v4}, Lcom/fsck/k9/mail/filter/Base64;->encodeBase64$1([B)[B

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 48
    .line 49
    .line 50
    const/16 v4, 0xd

    .line 51
    .line 52
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 53
    .line 54
    .line 55
    const/16 v4, 0xa

    .line 56
    .line 57
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 61
    .line 62
    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v5, v0, v1, v2, v3}, Landroidx/compose/material/ripple/StateLayer;->readStatusResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object p0
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-object p0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->handleAuthenticationFailure(Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;)Lnet/thunderbird/core/common/exception/MessagingException;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    throw p0

    .line 78
    :cond_0
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object v3

    .line 82
    :cond_1
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-object v3
.end method

.method public final sendClientInfoIfSupported()V
    .locals 4

    .line 1
    const-string v0, "ID (\"name\" "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->clientInfo:Lcom/fsck/k9/mail/store/imap/ImapClientInfo;

    .line 6
    .line 7
    const-string v2, "ID"

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->hasCapability(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v2, v1, Lcom/fsck/k9/mail/store/imap/ImapClientInfo;->appName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v2}, Landroidx/room/util/RelationUtil;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v1, v1, Lcom/fsck/k9/mail/store/imap/ImapClientInfo;->appVersion:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1}, Landroidx/room/util/RelationUtil;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, " \"version\" "

    .line 38
    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, ")"

    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catch_0
    move-exception p0

    .line 59
    const/4 v0, 0x0

    .line 60
    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    .line 62
    const-string v1, "Ignoring negative response to ID command"

    .line 63
    .line 64
    invoke-static {p0, v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method

.method public final declared-synchronized sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    :try_start_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->open()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->imapOutputStream:Ljava/io/BufferedOutputStream;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->nextCommandTag:I

    .line 13
    .line 14
    add-int/lit8 v2, v1, 0x1

    .line 15
    .line 16
    iput v2, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->nextCommandTag:I

    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v3, " "

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v3, "\r\n"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 60
    .line 61
    .line 62
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 63
    .line 64
    invoke-interface {v0}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    const/4 v2, 0x1

    .line 72
    if-eqz p2, :cond_0

    .line 73
    .line 74
    sget-object p2, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 75
    .line 76
    invoke-interface {p2}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->debugSensitive()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-nez p2, :cond_0

    .line 81
    .line 82
    const-string p1, "%s>>> [Command Hidden, Enable Sensitive Debug Logging To Show]"

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    new-array v2, v2, [Ljava/lang/Object;

    .line 89
    .line 90
    aput-object p2, v2, v0

    .line 91
    .line 92
    invoke-static {p1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p1

    .line 97
    goto :goto_3

    .line 98
    :catch_0
    move-exception p1

    .line 99
    goto :goto_1

    .line 100
    :catch_1
    move-exception p1

    .line 101
    goto :goto_2

    .line 102
    :cond_0
    const-string p2, "%s>>> %s %s"

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    const/4 v4, 0x3

    .line 109
    new-array v4, v4, [Ljava/lang/Object;

    .line 110
    .line 111
    aput-object v3, v4, v0

    .line 112
    .line 113
    aput-object v1, v4, v2

    .line 114
    .line 115
    const/4 v0, 0x2

    .line 116
    aput-object p1, v4, v0

    .line 117
    .line 118
    invoke-static {p2, v4}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    .line 121
    :cond_1
    :goto_0
    monitor-exit p0

    .line 122
    return-object v1

    .line 123
    :cond_2
    :try_start_2
    const-string p1, "Required value was null."

    .line 124
    .line 125
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->close()V

    .line 132
    .line 133
    .line 134
    throw p1

    .line 135
    :goto_2
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->close()V

    .line 136
    .line 137
    .line 138
    throw p1

    .line 139
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    throw p1
.end method

.method public final declared-synchronized sendContinuation()V
    .locals 5

    .line 1
    const-string v0, "DONE"

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->imapOutputStream:Ljava/io/BufferedOutputStream;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 18
    .line 19
    .line 20
    const/16 v2, 0xd

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 23
    .line 24
    .line 25
    const/16 v2, 0xa

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 31
    .line 32
    .line 33
    sget-object v1, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 34
    .line 35
    invoke-interface {v1}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    const-string v1, "%s>>> %s"

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/4 v3, 0x2

    .line 48
    new-array v3, v3, [Ljava/lang/Object;

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    aput-object v2, v3, v4

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    aput-object v0, v3, v2

    .line 55
    .line 56
    invoke-static {v1, v3}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto :goto_2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    :goto_0
    monitor-exit p0

    .line 65
    return-void

    .line 66
    :cond_1
    :try_start_1
    const-string v0, "Required value was null."

    .line 67
    .line 68
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->close()V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    throw v0
.end method

.method public final setSocketDefaultReadTimeout()V
    .locals 1

    .line 1
    const v0, 0xea60

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->setSocketReadTimeout(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final declared-synchronized setSocketReadTimeout(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->socket:Ljava/net/Socket;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method

.method public final setUpStreamsAndParser(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 2
    .line 3
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 4
    .line 5
    const/16 v2, 0x400

    .line 6
    .line 7
    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/filter/PeekableInputStream;-><init>(Ljava/io/BufferedInputStream;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 14
    .line 15
    new-instance p1, Landroidx/compose/material/ripple/StateLayer;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p1, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p1, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    .line 24
    .line 25
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->folderNameCodec:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 26
    .line 27
    iput-object v0, p1, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->responseParser:Landroidx/compose/material/ripple/StateLayer;

    .line 30
    .line 31
    new-instance p1, Ljava/io/BufferedOutputStream;

    .line 32
    .line 33
    invoke-direct {p1, p2, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->imapOutputStream:Ljava/io/BufferedOutputStream;

    .line 37
    .line 38
    return-void
.end method

.method public final upgradeToTlsIfNecessary()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 4
    .line 5
    sget-object v2, Lcom/fsck/k9/mail/ConnectionSecurity;->STARTTLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 6
    .line 7
    if-ne v1, v2, :cond_3

    .line 8
    .line 9
    const-string v1, "STARTTLS"

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->hasCapability(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->host:Ljava/lang/String;

    .line 21
    .line 22
    iget v2, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->port:I

    .line 23
    .line 24
    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->clientCertificateAlias:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->socketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 27
    .line 28
    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->socket:Ljava/net/Socket;

    .line 29
    .line 30
    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/String;)Ljava/net/Socket;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->socket:Ljava/net/Socket;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->setSocketDefaultReadTimeout()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->socket:Ljava/net/Socket;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->setUpStreamsAndParser(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 61
    .line 62
    invoke-interface {v0}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/4 v1, 0x1

    .line 73
    new-array v1, v1, [Ljava/lang/Object;

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    aput-object v0, v1, v2

    .line 77
    .line 78
    const-string v0, "Updating capabilities after STARTTLS for %s"

    .line 79
    .line 80
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->requestCapabilities()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_1
    const-string p0, "Required value was null."

    .line 88
    .line 89
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_2
    new-instance p0, Lcom/fsck/k9/mail/MissingCapabilityException;

    .line 94
    .line 95
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/MissingCapabilityException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p0

    .line 99
    :cond_3
    return-void
.end method

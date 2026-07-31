.class public final Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadValidator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final LINE_BREAK:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "[\\r\\n]"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadValidator;->LINE_BREAK:Lkotlin/text/Regex;

    .line 9
    .line 10
    return-void
.end method

.method public static validateData(Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;->accounts:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_f

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_e

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Account;

    .line 24
    .line 25
    iget-object v1, v0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Account;->incomingServer:Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;

    .line 26
    .line 27
    iget v2, v1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->protocol:I

    .line 28
    .line 29
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->toIncomingServerProtocol(I)Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServerProtocol;

    .line 30
    .line 31
    .line 32
    iget-object v2, v1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->hostname:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v2}, Lokhttp3/Cookie$Companion;->toHostname(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget v2, v1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->port:I

    .line 38
    .line 39
    invoke-static {v2}, Lokhttp3/Handshake$Companion;->toPort(I)V

    .line 40
    .line 41
    .line 42
    iget v2, v1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->connectionSecurity:I

    .line 43
    .line 44
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->toConnectionSecurity(I)Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$ConnectionSecurity;

    .line 45
    .line 46
    .line 47
    iget v2, v1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->authenticationType:I

    .line 48
    .line 49
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->toAuthenticationType(I)Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$AuthenticationType;

    .line 50
    .line 51
    .line 52
    iget-object v2, v1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->username:Ljava/lang/String;

    .line 53
    .line 54
    sget-object v3, Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadValidator;->LINE_BREAK:Lkotlin/text/Regex;

    .line 55
    .line 56
    invoke-virtual {v3, v2}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const-string v4, "Username must not contain line break"

    .line 61
    .line 62
    if-nez v2, :cond_d

    .line 63
    .line 64
    iget-object v2, v1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->accountName:Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-virtual {v3, v2}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const-string p0, "Account name must not contain line break"

    .line 76
    .line 77
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    :goto_0
    iget-object v1, v1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->password:Ljava/lang/String;

    .line 82
    .line 83
    const-string v2, "Password must not contain line break"

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    invoke-virtual {v3, v1}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_3

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-static {v2}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_4
    :goto_1
    iget-object v0, v0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Account;->outgoingServers:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_c

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_0

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$OutgoingServer;

    .line 121
    .line 122
    iget v5, v1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$OutgoingServer;->protocol:I

    .line 123
    .line 124
    if-nez v5, :cond_b

    .line 125
    .line 126
    iget-object v5, v1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$OutgoingServer;->hostname:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v5}, Lokhttp3/Cookie$Companion;->toHostname(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget v5, v1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$OutgoingServer;->port:I

    .line 132
    .line 133
    invoke-static {v5}, Lokhttp3/Handshake$Companion;->toPort(I)V

    .line 134
    .line 135
    .line 136
    iget v5, v1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$OutgoingServer;->connectionSecurity:I

    .line 137
    .line 138
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->toConnectionSecurity(I)Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$ConnectionSecurity;

    .line 139
    .line 140
    .line 141
    iget v5, v1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$OutgoingServer;->authenticationType:I

    .line 142
    .line 143
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->toAuthenticationType(I)Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$AuthenticationType;

    .line 144
    .line 145
    .line 146
    iget-object v5, v1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$OutgoingServer;->username:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v3, v5}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-nez v5, :cond_a

    .line 153
    .line 154
    iget-object v5, v1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$OutgoingServer;->password:Ljava/lang/String;

    .line 155
    .line 156
    if-eqz v5, :cond_7

    .line 157
    .line 158
    invoke-virtual {v3, v5}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-nez v5, :cond_6

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_6
    invoke-static {v2}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_7
    :goto_2
    iget-object v1, v1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$OutgoingServer;->identities:Ljava/util/List;

    .line 170
    .line 171
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-nez v5, :cond_9

    .line 176
    .line 177
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-eqz v5, :cond_5

    .line 186
    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    check-cast v5, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Identity;

    .line 192
    .line 193
    iget-object v6, v5, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Identity;->emailAddress:Ljava/lang/String;

    .line 194
    .line 195
    :try_start_0
    sget-object v7, Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;->LIMITED:Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;

    .line 196
    .line 197
    invoke-static {v6, v7}, Lnet/thunderbird/core/common/mail/TokensKt;->parse(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;)Lnet/thunderbird/core/common/mail/EmailAddress;
    :try_end_0
    .catch Lnet/thunderbird/core/common/mail/EmailAddressParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .line 199
    .line 200
    iget-object v5, v5, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Identity;->displayName:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v3, v5}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-nez v5, :cond_8

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_8
    const-string p0, "Display name must not contain a line break"

    .line 210
    .line 211
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :catch_0
    move-exception p0

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 217
    .line 218
    const-string v1, "Email address failed to parse"

    .line 219
    .line 220
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    .line 222
    .line 223
    throw v0

    .line 224
    :cond_9
    const-string p0, "List of identities must not be empty"

    .line 225
    .line 226
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :cond_a
    invoke-static {v4}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :cond_b
    const-string p0, "Unsupported value: "

    .line 235
    .line 236
    invoke-static {p0, v5}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :cond_c
    const-string p0, "List of outgoing servers must not be empty"

    .line 245
    .line 246
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :cond_d
    invoke-static {v4}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    :cond_e
    return-void

    .line 254
    :cond_f
    const-string p0, "Account array must not be empty"

    .line 255
    .line 256
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    return-void
.end method

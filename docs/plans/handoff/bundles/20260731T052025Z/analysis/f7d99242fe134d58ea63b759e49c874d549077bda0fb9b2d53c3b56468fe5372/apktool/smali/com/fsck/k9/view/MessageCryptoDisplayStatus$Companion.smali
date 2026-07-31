.class public final Lcom/fsck/k9/view/MessageCryptoDisplayStatus$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static fromResultAnnotation(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)Lcom/fsck/k9/view/MessageCryptoDisplayStatus;
    .locals 8

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->errorType:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    const/4 v1, -0x1

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    move v0, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 13
    .line 14
    invoke-static {v0}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    aget v0, v2, v0

    .line 19
    .line 20
    :goto_1
    const/4 v2, 0x0

    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    :pswitch_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 25
    .line 26
    .line 27
    return-object v2

    .line 28
    :pswitch_1
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_NO_PROVIDER:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_2
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_3
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_4
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->CANCELLED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_5
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNSUPPORTED_SIGNED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_6
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNSUPPORTED_ENCRYPTED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_7
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->INCOMPLETE_SIGNED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_8
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->INCOMPLETE_ENCRYPTED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 50
    .line 51
    return-object p0

    .line 52
    :pswitch_9
    iget-object v0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 55
    .line 56
    if-eqz v3, :cond_f

    .line 57
    .line 58
    if-eqz v0, :cond_f

    .line 59
    .line 60
    iget v4, v0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->result:I

    .line 61
    .line 62
    if-ne v4, v1, :cond_3

    .line 63
    .line 64
    iget-object p0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->encapsulatedResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 65
    .line 66
    if-eqz p0, :cond_3

    .line 67
    .line 68
    iget-object v4, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 69
    .line 70
    if-eqz v4, :cond_3

    .line 71
    .line 72
    iget-object p0, p0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 73
    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    if-eqz p0, :cond_2

    .line 77
    .line 78
    move-object v0, p0

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    const-string p0, "OpenPGP must contain signature result at this point!"

    .line 81
    .line 82
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return-object v2

    .line 86
    :cond_3
    :goto_2
    iget-object p0, v0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->senderStatusResult:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 87
    .line 88
    iget v0, v0, Lorg/openintents/openpgp/OpenPgpSignatureResult;->result:I

    .line 89
    .line 90
    iget v3, v3, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->result:I

    .line 91
    .line 92
    const/4 v4, 0x3

    .line 93
    const/4 v5, 0x2

    .line 94
    const-string v6, "unhandled encrypted result case!"

    .line 95
    .line 96
    const/4 v7, 0x1

    .line 97
    if-eq v3, v1, :cond_a

    .line 98
    .line 99
    if-eqz v3, :cond_9

    .line 100
    .line 101
    if-ne v3, v7, :cond_8

    .line 102
    .line 103
    packed-switch v0, :pswitch_data_1

    .line 104
    .line 105
    .line 106
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-object v2

    .line 110
    :pswitch_a
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_INSECURE:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 111
    .line 112
    return-object p0

    .line 113
    :pswitch_b
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_EXPIRED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 114
    .line 115
    return-object p0

    .line 116
    :pswitch_c
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_REVOKED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 117
    .line 118
    return-object p0

    .line 119
    :pswitch_d
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_UNKNOWN:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 120
    .line 121
    return-object p0

    .line 122
    :pswitch_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-eqz p0, :cond_7

    .line 130
    .line 131
    if-eq p0, v7, :cond_6

    .line 132
    .line 133
    if-eq p0, v5, :cond_5

    .line 134
    .line 135
    if-ne p0, v4, :cond_4

    .line 136
    .line 137
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_MISMATCH:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 138
    .line 139
    return-object p0

    .line 140
    :cond_4
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 141
    .line 142
    .line 143
    return-object v2

    .line 144
    :cond_5
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_UNVERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 145
    .line 146
    return-object p0

    .line 147
    :cond_6
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_VERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 148
    .line 149
    return-object p0

    .line 150
    :cond_7
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_UNVERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 151
    .line 152
    return-object p0

    .line 153
    :pswitch_f
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 154
    .line 155
    return-object p0

    .line 156
    :pswitch_10
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_UNSIGNED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 157
    .line 158
    return-object p0

    .line 159
    :cond_8
    const-string p0, "all cases must be handled, this is a bug!"

    .line 160
    .line 161
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    return-object v2

    .line 165
    :cond_9
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_INSECURE:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 166
    .line 167
    return-object p0

    .line 168
    :cond_a
    packed-switch v0, :pswitch_data_2

    .line 169
    .line 170
    .line 171
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    return-object v2

    .line 175
    :pswitch_11
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_INSECURE:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 176
    .line 177
    return-object p0

    .line 178
    :pswitch_12
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_EXPIRED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 179
    .line 180
    return-object p0

    .line 181
    :pswitch_13
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_REVOKED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 182
    .line 183
    return-object p0

    .line 184
    :pswitch_14
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_UNKNOWN:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 185
    .line 186
    return-object p0

    .line 187
    :pswitch_15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    if-eqz p0, :cond_e

    .line 195
    .line 196
    if-eq p0, v7, :cond_d

    .line 197
    .line 198
    if-eq p0, v5, :cond_c

    .line 199
    .line 200
    if-ne p0, v4, :cond_b

    .line 201
    .line 202
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_MISMATCH:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 203
    .line 204
    return-object p0

    .line 205
    :cond_b
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 206
    .line 207
    .line 208
    return-object v2

    .line 209
    :cond_c
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_UNVERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 210
    .line 211
    return-object p0

    .line 212
    :cond_d
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_VERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 213
    .line 214
    return-object p0

    .line 215
    :cond_e
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_UNVERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 216
    .line 217
    return-object p0

    .line 218
    :pswitch_16
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 219
    .line 220
    return-object p0

    .line 221
    :pswitch_17
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->DISABLED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 222
    .line 223
    return-object p0

    .line 224
    :cond_f
    const-string p0, "Both OpenPGP results must be non-null at this point!"

    .line 225
    .line 226
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    return-object v2

    .line 230
    :pswitch_18
    sget-object p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->DISABLED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 231
    .line 232
    return-object p0

    .line 233
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_18
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_15
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

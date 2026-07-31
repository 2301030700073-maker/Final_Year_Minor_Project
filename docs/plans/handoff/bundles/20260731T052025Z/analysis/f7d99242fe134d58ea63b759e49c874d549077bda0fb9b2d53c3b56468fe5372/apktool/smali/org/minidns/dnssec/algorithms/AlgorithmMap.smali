.class public final Lorg/minidns/dnssec/algorithms/AlgorithmMap;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final INSTANCE:Lorg/minidns/dnssec/algorithms/AlgorithmMap;


# instance fields
.field public final LOGGER:Ljava/util/logging/Logger;

.field public final dsDigestMap:Ljava/util/HashMap;

.field public final nsecDigestMap:Ljava/util/HashMap;

.field public final signatureMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/minidns/dnssec/algorithms/AlgorithmMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->INSTANCE:Lorg/minidns/dnssec/algorithms/AlgorithmMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const-string v0, "SHA-1"

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lorg/minidns/dnssec/algorithms/AlgorithmMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->LOGGER:Ljava/util/logging/Logger;

    .line 17
    .line 18
    new-instance v1, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->dsDigestMap:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v2, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/HashMap;

    .line 31
    .line 32
    new-instance v2, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->nsecDigestMap:Ljava/util/HashMap;

    .line 38
    .line 39
    :try_start_0
    sget-object v3, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->SHA1:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 40
    .line 41
    new-instance v4, Lorg/minidns/dnssec/algorithms/JavaSecDigestCalculator;

    .line 42
    .line 43
    invoke-direct {v4, v0}, Lorg/minidns/dnssec/algorithms/JavaSecDigestCalculator;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    sget-object v3, Lorg/minidns/record/NSEC3$HashAlgorithm;->SHA1:Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 50
    .line 51
    new-instance v4, Lorg/minidns/dnssec/algorithms/JavaSecDigestCalculator;

    .line 52
    .line 53
    invoke-direct {v4, v0}, Lorg/minidns/dnssec/algorithms/JavaSecDigestCalculator;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_a

    .line 57
    .line 58
    .line 59
    :try_start_1
    sget-object v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->SHA256:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 60
    .line 61
    new-instance v2, Lorg/minidns/dnssec/algorithms/JavaSecDigestCalculator;

    .line 62
    .line 63
    const-string v3, "SHA-256"

    .line 64
    .line 65
    invoke-direct {v2, v3}, Lorg/minidns/dnssec/algorithms/JavaSecDigestCalculator;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_9

    .line 69
    .line 70
    .line 71
    :try_start_2
    sget-object v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->SHA384:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 72
    .line 73
    new-instance v2, Lorg/minidns/dnssec/algorithms/JavaSecDigestCalculator;

    .line 74
    .line 75
    const-string v3, "SHA-384"

    .line 76
    .line 77
    invoke-direct {v2, v3}, Lorg/minidns/dnssec/algorithms/JavaSecDigestCalculator;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->LOGGER:Ljava/util/logging/Logger;

    .line 86
    .line 87
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 88
    .line 89
    const-string v3, "Platform does not support SHA-384"

    .line 90
    .line 91
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    :try_start_3
    iget-object v0, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/HashMap;

    .line 95
    .line 96
    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSAMD5:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 97
    .line 98
    new-instance v2, Lorg/minidns/dnssec/algorithms/DsaSignatureVerifier;

    .line 99
    .line 100
    const-string v3, "MD5withRSA"

    .line 101
    .line 102
    invoke-direct {v2, v3}, Lorg/minidns/dnssec/algorithms/DsaSignatureVerifier;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catch_1
    move-exception v0

    .line 110
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->LOGGER:Ljava/util/logging/Logger;

    .line 111
    .line 112
    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 113
    .line 114
    const-string v3, "Platform does not support RSA/MD5"

    .line 115
    .line 116
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    :goto_1
    :try_start_4
    new-instance v0, Lorg/minidns/dnssec/algorithms/DsaSignatureVerifier;

    .line 120
    .line 121
    const-string v1, "SHA1withDSA"

    .line 122
    .line 123
    const-string v2, "DSA"

    .line 124
    .line 125
    invoke-direct {v0, v2, v1}, Lorg/minidns/dnssec/algorithms/DsaSignatureVerifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/HashMap;

    .line 129
    .line 130
    sget-object v2, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->DSA:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 131
    .line 132
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/HashMap;

    .line 136
    .line 137
    sget-object v2, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->DSA_NSEC3_SHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 138
    .line 139
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_2

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :catch_2
    move-exception v0

    .line 144
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->LOGGER:Ljava/util/logging/Logger;

    .line 145
    .line 146
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 147
    .line 148
    const-string v3, "Platform does not support DSA/SHA-1"

    .line 149
    .line 150
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    :goto_2
    :try_start_5
    new-instance v0, Lorg/minidns/dnssec/algorithms/DsaSignatureVerifier;

    .line 154
    .line 155
    const-string v1, "SHA1withRSA"

    .line 156
    .line 157
    invoke-direct {v0, v1}, Lorg/minidns/dnssec/algorithms/DsaSignatureVerifier;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/HashMap;

    .line 161
    .line 162
    sget-object v2, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 163
    .line 164
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/HashMap;

    .line 168
    .line 169
    sget-object v2, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA1_NSEC3_SHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 170
    .line 171
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_8

    .line 172
    .line 173
    .line 174
    :try_start_6
    iget-object v0, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/HashMap;

    .line 175
    .line 176
    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA256:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 177
    .line 178
    new-instance v2, Lorg/minidns/dnssec/algorithms/DsaSignatureVerifier;

    .line 179
    .line 180
    const-string v3, "SHA256withRSA"

    .line 181
    .line 182
    invoke-direct {v2, v3}, Lorg/minidns/dnssec/algorithms/DsaSignatureVerifier;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_3

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :catch_3
    move-exception v0

    .line 190
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->LOGGER:Ljava/util/logging/Logger;

    .line 191
    .line 192
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 193
    .line 194
    const-string v3, "Platform does not support RSA/SHA-256"

    .line 195
    .line 196
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    :goto_3
    :try_start_7
    iget-object v0, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/HashMap;

    .line 200
    .line 201
    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA512:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 202
    .line 203
    new-instance v2, Lorg/minidns/dnssec/algorithms/DsaSignatureVerifier;

    .line 204
    .line 205
    const-string v3, "SHA512withRSA"

    .line 206
    .line 207
    invoke-direct {v2, v3}, Lorg/minidns/dnssec/algorithms/DsaSignatureVerifier;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_4

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :catch_4
    move-exception v0

    .line 215
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->LOGGER:Ljava/util/logging/Logger;

    .line 216
    .line 217
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 218
    .line 219
    const-string v3, "Platform does not support RSA/SHA-512"

    .line 220
    .line 221
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    .line 223
    .line 224
    :goto_4
    :try_start_8
    iget-object v0, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/HashMap;

    .line 225
    .line 226
    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->ECC_GOST:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 227
    .line 228
    new-instance v2, Lorg/minidns/dnssec/algorithms/EcgostSignatureVerifier;

    .line 229
    .line 230
    const-string v3, "ECGOST3410"

    .line 231
    .line 232
    const-string v4, "GOST3411withECGOST3410"

    .line 233
    .line 234
    invoke-direct {v2, v3, v4}, Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_5

    .line 238
    .line 239
    .line 240
    goto :goto_5

    .line 241
    :catch_5
    move-exception v0

    .line 242
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->LOGGER:Ljava/util/logging/Logger;

    .line 243
    .line 244
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 245
    .line 246
    const-string v3, "Platform does not support GOST R 34.10-2001"

    .line 247
    .line 248
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    .line 250
    .line 251
    :goto_5
    :try_start_9
    iget-object v0, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/HashMap;

    .line 252
    .line 253
    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->ECDSAP256SHA256:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 254
    .line 255
    new-instance v2, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier$P256SHA256;

    .line 256
    .line 257
    sget-object v3, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier$P256SHA256;->SPEC:[Ljava/math/BigInteger;

    .line 258
    .line 259
    const-string v4, "SHA256withECDSA"

    .line 260
    .line 261
    const/16 v5, 0x20

    .line 262
    .line 263
    invoke-direct {v2, v3, v5, v4}, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;-><init>([Ljava/math/BigInteger;ILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_6

    .line 267
    .line 268
    .line 269
    goto :goto_6

    .line 270
    :catch_6
    move-exception v0

    .line 271
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->LOGGER:Ljava/util/logging/Logger;

    .line 272
    .line 273
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 274
    .line 275
    const-string v3, "Platform does not support ECDSA/SHA-256"

    .line 276
    .line 277
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    .line 279
    .line 280
    :goto_6
    :try_start_a
    iget-object v0, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/HashMap;

    .line 281
    .line 282
    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->ECDSAP384SHA384:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 283
    .line 284
    new-instance v2, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier$P384SHA284;

    .line 285
    .line 286
    sget-object v3, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier$P384SHA284;->SPEC:[Ljava/math/BigInteger;

    .line 287
    .line 288
    const-string v4, "SHA384withECDSA"

    .line 289
    .line 290
    const/16 v5, 0x30

    .line 291
    .line 292
    invoke-direct {v2, v3, v5, v4}, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;-><init>([Ljava/math/BigInteger;ILjava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_7

    .line 296
    .line 297
    .line 298
    goto :goto_7

    .line 299
    :catch_7
    move-exception v0

    .line 300
    iget-object p0, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->LOGGER:Ljava/util/logging/Logger;

    .line 301
    .line 302
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 303
    .line 304
    const-string v2, "Platform does not support ECDSA/SHA-384"

    .line 305
    .line 306
    invoke-virtual {p0, v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    .line 308
    .line 309
    :goto_7
    return-void

    .line 310
    :catch_8
    move-exception p0

    .line 311
    new-instance v0, Lorg/jsoup/SerializationException;

    .line 312
    .line 313
    const-string v1, "Platform does not support RSA/SHA-1"

    .line 314
    .line 315
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    .line 317
    .line 318
    throw v0

    .line 319
    :catch_9
    move-exception p0

    .line 320
    new-instance v0, Lorg/jsoup/SerializationException;

    .line 321
    .line 322
    const-string v1, "SHA-256 is mandatory"

    .line 323
    .line 324
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    .line 326
    .line 327
    throw v0

    .line 328
    :catch_a
    move-exception p0

    .line 329
    new-instance v0, Lorg/jsoup/SerializationException;

    .line 330
    .line 331
    const-string v1, "SHA-1 is mandatory"

    .line 332
    .line 333
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 334
    .line 335
    .line 336
    throw v0
.end method

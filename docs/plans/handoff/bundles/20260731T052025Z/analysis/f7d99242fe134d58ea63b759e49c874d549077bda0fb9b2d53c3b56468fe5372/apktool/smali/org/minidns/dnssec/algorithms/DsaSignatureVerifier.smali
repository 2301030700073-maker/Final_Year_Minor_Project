.class public final Lorg/minidns/dnssec/algorithms/DsaSignatureVerifier;
.super Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/minidns/dnssec/algorithms/DsaSignatureVerifier;->$r8$classId:I

    .line 3
    .line 4
    const-string v0, "RSA"

    .line 5
    .line 6
    invoke-direct {p0, v0, p1}, Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lorg/minidns/dnssec/algorithms/DsaSignatureVerifier;->$r8$classId:I

    invoke-direct {p0, p1, p2}, Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getPublicKey(Lorg/minidns/record/DNSKEY;)Ljava/security/PublicKey;
    .locals 7

    .line 1
    iget v0, p0, Lorg/minidns/dnssec/algorithms/DsaSignatureVerifier;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;->keyFactory:Ljava/security/KeyFactory;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Lorg/minidns/record/DNSKEY;->key:[B

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/minidns/record/DNSKEY;->getKeyAsDataInputStream()Ljava/io/DataInputStream;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x3

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    move v3, v1

    .line 30
    :goto_0
    new-array v4, v2, [B

    .line 31
    .line 32
    invoke-virtual {p1, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 33
    .line 34
    .line 35
    add-int/2addr v3, v2

    .line 36
    new-instance v2, Ljava/math/BigInteger;

    .line 37
    .line 38
    invoke-direct {v2, v1, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 39
    .line 40
    .line 41
    array-length v4, v0

    .line 42
    sub-int/2addr v4, v3

    .line 43
    new-array v3, v4, [B

    .line 44
    .line 45
    invoke-virtual {p1, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Ljava/math/BigInteger;

    .line 49
    .line 50
    invoke-direct {p1, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :try_start_1
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    .line 54
    .line 55
    invoke-direct {v0, p1, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 59
    .line 60
    .line 61
    move-result-object p0
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    return-object p0

    .line 63
    :catch_1
    move-exception p0

    .line 64
    new-instance p1, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;

    .line 65
    .line 66
    invoke-direct {p1, p0}, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;-><init>(Ljava/security/spec/InvalidKeySpecException;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :goto_1
    new-instance p1, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;

    .line 71
    .line 72
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, p0}, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;-><init>(Ljava/io/IOException;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :pswitch_0
    invoke-virtual {p1}, Lorg/minidns/record/DNSKEY;->getKeyAsDataInputStream()Ljava/io/DataInputStream;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    const/16 v3, 0x14

    .line 88
    .line 89
    new-array v3, v3, [B

    .line 90
    .line 91
    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 92
    .line 93
    .line 94
    new-instance v4, Ljava/math/BigInteger;

    .line 95
    .line 96
    invoke-direct {v4, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 97
    .line 98
    .line 99
    mul-int/lit8 v2, v2, 0x8

    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x40

    .line 102
    .line 103
    new-array v3, v2, [B

    .line 104
    .line 105
    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 106
    .line 107
    .line 108
    new-instance v5, Ljava/math/BigInteger;

    .line 109
    .line 110
    invoke-direct {v5, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 111
    .line 112
    .line 113
    new-array v3, v2, [B

    .line 114
    .line 115
    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 116
    .line 117
    .line 118
    new-instance v6, Ljava/math/BigInteger;

    .line 119
    .line 120
    invoke-direct {v6, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 121
    .line 122
    .line 123
    new-array v2, v2, [B

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 126
    .line 127
    .line 128
    new-instance v0, Ljava/math/BigInteger;

    .line 129
    .line 130
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 131
    .line 132
    .line 133
    :try_start_3
    new-instance p1, Ljava/security/spec/DSAPublicKeySpec;

    .line 134
    .line 135
    invoke-direct {p1, v0, v5, v4, v6}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 139
    .line 140
    .line 141
    move-result-object p0
    :try_end_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_2

    .line 142
    return-object p0

    .line 143
    :catch_2
    move-exception p0

    .line 144
    new-instance p1, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;

    .line 145
    .line 146
    invoke-direct {p1, p0}, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;-><init>(Ljava/security/spec/InvalidKeySpecException;)V

    .line 147
    .line 148
    .line 149
    throw p1

    .line 150
    :catch_3
    move-exception p0

    .line 151
    new-instance v0, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;

    .line 152
    .line 153
    iget-object p1, p1, Lorg/minidns/record/DNSKEY;->key:[B

    .line 154
    .line 155
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    invoke-direct {v0, p0}, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;-><init>(Ljava/io/IOException;)V

    .line 159
    .line 160
    .line 161
    throw v0

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getSignature(Lorg/minidns/record/RRSIG;)[B
    .locals 10

    .line 1
    iget p0, p0, Lorg/minidns/dnssec/algorithms/DsaSignatureVerifier;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lorg/minidns/record/RRSIG;->signature:[B

    .line 7
    .line 8
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, [B

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance p0, Ljava/io/DataInputStream;

    .line 19
    .line 20
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 21
    .line 22
    iget-object p1, p1, Lorg/minidns/record/RRSIG;->signature:[B

    .line 23
    .line 24
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    .line 31
    .line 32
    .line 33
    const/16 v0, 0x14

    .line 34
    .line 35
    new-array v1, v0, [B

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    aget-byte v3, v1, v2

    .line 42
    .line 43
    const/16 v4, 0x15

    .line 44
    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    move v3, v2

    .line 48
    :goto_0
    if-ge v3, v0, :cond_0

    .line 49
    .line 50
    aget-byte v5, v1, v3

    .line 51
    .line 52
    if-nez v5, :cond_0

    .line 53
    .line 54
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    goto/16 :goto_5

    .line 59
    .line 60
    :cond_0
    rsub-int/lit8 v5, v3, 0x14

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    if-gez v3, :cond_2

    .line 64
    .line 65
    move v3, v2

    .line 66
    move v5, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move v5, v0

    .line 69
    move v3, v2

    .line 70
    :goto_1
    new-array v6, v0, [B

    .line 71
    .line 72
    invoke-virtual {p0, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 73
    .line 74
    .line 75
    aget-byte p0, v6, v2

    .line 76
    .line 77
    if-nez p0, :cond_4

    .line 78
    .line 79
    move p0, v2

    .line 80
    :goto_2
    if-ge p0, v0, :cond_3

    .line 81
    .line 82
    aget-byte v4, v6, p0

    .line 83
    .line 84
    if-nez v4, :cond_3

    .line 85
    .line 86
    add-int/lit8 p0, p0, 0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    rsub-int/lit8 v4, p0, 0x14

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_4
    if-gez p0, :cond_5

    .line 93
    .line 94
    :goto_3
    move p0, v2

    .line 95
    goto :goto_4

    .line 96
    :cond_5
    move v4, v0

    .line 97
    goto :goto_3

    .line 98
    :goto_4
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 99
    .line 100
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v8, Ljava/io/DataOutputStream;

    .line 104
    .line 105
    invoke-direct {v8, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 106
    .line 107
    .line 108
    const/16 v9, 0x30

    .line 109
    .line 110
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 111
    .line 112
    .line 113
    add-int v9, v5, v4

    .line 114
    .line 115
    add-int/lit8 v9, v9, 0x4

    .line 116
    .line 117
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 118
    .line 119
    .line 120
    const/4 v9, 0x2

    .line 121
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 125
    .line 126
    .line 127
    if-le v5, v0, :cond_6

    .line 128
    .line 129
    invoke-virtual {v8, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 130
    .line 131
    .line 132
    :cond_6
    rsub-int/lit8 v5, v3, 0x14

    .line 133
    .line 134
    invoke-virtual {v8, v1, v3, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 141
    .line 142
    .line 143
    if-le v4, v0, :cond_7

    .line 144
    .line 145
    invoke-virtual {v8, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 146
    .line 147
    .line 148
    :cond_7
    rsub-int/lit8 v0, p0, 0x14

    .line 149
    .line 150
    invoke-virtual {v8, v6, p0, v0}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :goto_5
    new-instance v0, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;

    .line 159
    .line 160
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    invoke-direct {v0, p0}, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;-><init>(Ljava/io/IOException;)V

    .line 164
    .line 165
    .line 166
    throw v0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

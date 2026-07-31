.class public abstract Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;
.super Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final length:I

.field public final spec:Ljava/security/spec/ECParameterSpec;


# direct methods
.method public constructor <init>([Ljava/math/BigInteger;ILjava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    .line 2
    .line 3
    new-instance v1, Ljava/security/spec/EllipticCurve;

    .line 4
    .line 5
    new-instance v2, Ljava/security/spec/ECFieldFp;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    aget-object v3, p1, v3

    .line 9
    .line 10
    invoke-direct {v2, v3}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    aget-object v4, p1, v3

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    aget-object v5, p1, v5

    .line 18
    .line 19
    invoke-direct {v1, v2, v4, v5}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Ljava/security/spec/ECPoint;

    .line 23
    .line 24
    const/4 v4, 0x3

    .line 25
    aget-object v4, p1, v4

    .line 26
    .line 27
    const/4 v5, 0x4

    .line 28
    aget-object v5, p1, v5

    .line 29
    .line 30
    invoke-direct {v2, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x5

    .line 34
    aget-object p1, p1, v4

    .line 35
    .line 36
    invoke-direct {v0, v1, v2, p1, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 37
    .line 38
    .line 39
    const-string p1, "EC"

    .line 40
    .line 41
    invoke-direct {p0, p1, p3}, Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iput p2, p0, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;->length:I

    .line 45
    .line 46
    iput-object v0, p0, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;->spec:Ljava/security/spec/ECParameterSpec;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final getPublicKey(Lorg/minidns/record/DNSKEY;)Ljava/security/PublicKey;
    .locals 5

    .line 1
    iget v0, p0, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;->length:I

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/minidns/record/DNSKEY;->getKeyAsDataInputStream()Ljava/io/DataInputStream;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :try_start_0
    new-array v2, v0, [B

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Ljava/math/BigInteger;

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 16
    .line 17
    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Ljava/math/BigInteger;

    .line 24
    .line 25
    invoke-direct {v1, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 26
    .line 27
    .line 28
    :try_start_1
    iget-object p1, p0, Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;->keyFactory:Ljava/security/KeyFactory;

    .line 29
    .line 30
    new-instance v0, Ljava/security/spec/ECPublicKeySpec;

    .line 31
    .line 32
    new-instance v2, Ljava/security/spec/ECPoint;

    .line 33
    .line 34
    invoke-direct {v2, v3, v1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;->spec:Ljava/security/spec/ECParameterSpec;

    .line 38
    .line 39
    invoke-direct {v0, v2, p0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 43
    .line 44
    .line 45
    move-result-object p0
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    return-object p0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    new-instance p1, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;-><init>(Ljava/security/spec/InvalidKeySpecException;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :catch_1
    move-exception p0

    .line 55
    new-instance v0, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;

    .line 56
    .line 57
    iget-object p1, p1, Lorg/minidns/record/DNSKEY;->key:[B

    .line 58
    .line 59
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, p0}, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;-><init>(Ljava/io/IOException;)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method public final getSignature(Lorg/minidns/record/RRSIG;)[B
    .locals 8

    .line 1
    iget p0, p0, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;->length:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/io/DataInputStream;

    .line 7
    .line 8
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 9
    .line 10
    iget-object p1, p1, Lorg/minidns/record/RRSIG;->signature:[B

    .line 11
    .line 12
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v2, Ljava/io/DataOutputStream;

    .line 24
    .line 25
    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    new-array v3, p0, [B

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    aget-byte v5, v3, v4

    .line 35
    .line 36
    if-gez v5, :cond_0

    .line 37
    .line 38
    add-int/lit8 v5, p0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v5, p0

    .line 42
    :goto_0
    new-array v6, p0, [B

    .line 43
    .line 44
    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 45
    .line 46
    .line 47
    aget-byte v0, v6, v4

    .line 48
    .line 49
    if-gez v0, :cond_1

    .line 50
    .line 51
    add-int/lit8 v0, p0, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move v0, p0

    .line 55
    :goto_1
    const/16 v7, 0x30

    .line 56
    .line 57
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 58
    .line 59
    .line 60
    add-int v7, v5, v0

    .line 61
    .line 62
    add-int/lit8 v7, v7, 0x4

    .line 63
    .line 64
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 65
    .line 66
    .line 67
    const/4 v7, 0x2

    .line 68
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 72
    .line 73
    .line 74
    if-le v5, p0, :cond_2

    .line 75
    .line 76
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catch_0
    move-exception p0

    .line 81
    goto :goto_3

    .line 82
    :cond_2
    :goto_2
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 89
    .line 90
    .line 91
    if-le v0, p0, :cond_3

    .line 92
    .line 93
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :goto_3
    new-instance v0, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;

    .line 105
    .line 106
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    invoke-direct {v0, p0}, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;-><init>(Ljava/io/IOException;)V

    .line 110
    .line 111
    .line 112
    throw v0
.end method

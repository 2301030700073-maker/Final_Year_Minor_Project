.class public final Lorg/minidns/dnssec/algorithms/EcgostSignatureVerifier;
.super Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final SPEC:Ljava/security/spec/ECParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 7

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
    new-instance v3, Ljava/math/BigInteger;

    .line 8
    .line 9
    const-string v4, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD97"

    .line 10
    .line 11
    const/16 v5, 0x10

    .line 12
    .line 13
    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Ljava/math/BigInteger;

    .line 20
    .line 21
    const-string v4, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD94"

    .line 22
    .line 23
    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Ljava/math/BigInteger;

    .line 27
    .line 28
    const-string v6, "A6"

    .line 29
    .line 30
    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2, v3, v4}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Ljava/security/spec/ECPoint;

    .line 37
    .line 38
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 39
    .line 40
    new-instance v4, Ljava/math/BigInteger;

    .line 41
    .line 42
    const-string v6, "8D91E471E0989CDA27DF505A453F2B7635294F2DDF23E3B122ACC99C9E9F1E14"

    .line 43
    .line 44
    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 48
    .line 49
    .line 50
    new-instance v3, Ljava/math/BigInteger;

    .line 51
    .line 52
    const-string v4, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C611070995AD10045841B09B761B893"

    .line 53
    .line 54
    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    const/4 v4, 0x1

    .line 58
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lorg/minidns/dnssec/algorithms/EcgostSignatureVerifier;->SPEC:Ljava/security/spec/ECParameterSpec;

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final getPublicKey(Lorg/minidns/record/DNSKEY;)Ljava/security/PublicKey;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lorg/minidns/record/DNSKEY;->getKeyAsDataInputStream()Ljava/io/DataInputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    :try_start_0
    new-array v2, v1, [B

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_0
    const/16 v5, 0x10

    .line 15
    .line 16
    if-ge v4, v5, :cond_0

    .line 17
    .line 18
    rsub-int/lit8 v5, v4, 0x1f

    .line 19
    .line 20
    aget-byte v6, v2, v4

    .line 21
    .line 22
    aget-byte v7, v2, v5

    .line 23
    .line 24
    aput-byte v7, v2, v4

    .line 25
    .line 26
    aput-byte v6, v2, v5

    .line 27
    .line 28
    add-int/lit8 v4, v4, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v4, Ljava/math/BigInteger;

    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    invoke-direct {v4, v6, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 35
    .line 36
    .line 37
    new-array v1, v1, [B

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 40
    .line 41
    .line 42
    :goto_1
    if-ge v3, v5, :cond_1

    .line 43
    .line 44
    rsub-int/lit8 v0, v3, 0x1f

    .line 45
    .line 46
    aget-byte v2, v1, v3

    .line 47
    .line 48
    aget-byte v7, v1, v0

    .line 49
    .line 50
    aput-byte v7, v1, v3

    .line 51
    .line 52
    aput-byte v2, v1, v0

    .line 53
    .line 54
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    .line 58
    .line 59
    invoke-direct {v0, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    .line 61
    .line 62
    :try_start_1
    iget-object p0, p0, Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;->keyFactory:Ljava/security/KeyFactory;

    .line 63
    .line 64
    new-instance p1, Ljava/security/spec/ECPublicKeySpec;

    .line 65
    .line 66
    new-instance v1, Ljava/security/spec/ECPoint;

    .line 67
    .line 68
    invoke-direct {v1, v4, v0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 69
    .line 70
    .line 71
    sget-object v0, Lorg/minidns/dnssec/algorithms/EcgostSignatureVerifier;->SPEC:Ljava/security/spec/ECParameterSpec;

    .line 72
    .line 73
    invoke-direct {p1, v1, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 77
    .line 78
    .line 79
    move-result-object p0
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    return-object p0

    .line 81
    :catch_0
    move-exception p0

    .line 82
    new-instance p1, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;

    .line 83
    .line 84
    invoke-direct {p1, p0}, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;-><init>(Ljava/security/spec/InvalidKeySpecException;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :catch_1
    move-exception p0

    .line 89
    new-instance v0, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;

    .line 90
    .line 91
    iget-object p1, p1, Lorg/minidns/record/DNSKEY;->key:[B

    .line 92
    .line 93
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, p0}, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;-><init>(Ljava/io/IOException;)V

    .line 97
    .line 98
    .line 99
    throw v0
.end method

.method public final getSignature(Lorg/minidns/record/RRSIG;)[B
    .locals 0

    .line 1
    iget-object p0, p1, Lorg/minidns/record/RRSIG;->signature:[B

    .line 2
    .line 3
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, [B

    .line 8
    .line 9
    return-object p0
.end method

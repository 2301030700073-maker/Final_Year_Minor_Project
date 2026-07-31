.class public final Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier$P256SHA256;
.super Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final SPEC:[Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    .line 2
    .line 3
    const-string v1, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/math/BigInteger;

    .line 11
    .line 12
    const-string v3, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC"

    .line 13
    .line 14
    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Ljava/math/BigInteger;

    .line 18
    .line 19
    const-string v4, "5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B"

    .line 20
    .line 21
    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Ljava/math/BigInteger;

    .line 25
    .line 26
    const-string v5, "6B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C296"

    .line 27
    .line 28
    invoke-direct {v4, v5, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Ljava/math/BigInteger;

    .line 32
    .line 33
    const-string v6, "4FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5"

    .line 34
    .line 35
    invoke-direct {v5, v6, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    new-instance v6, Ljava/math/BigInteger;

    .line 39
    .line 40
    const-string v7, "FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551"

    .line 41
    .line 42
    invoke-direct {v6, v7, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x6

    .line 46
    new-array v2, v2, [Ljava/math/BigInteger;

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    aput-object v0, v2, v7

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    aput-object v1, v2, v0

    .line 53
    .line 54
    const/4 v0, 0x2

    .line 55
    aput-object v3, v2, v0

    .line 56
    .line 57
    const/4 v0, 0x3

    .line 58
    aput-object v4, v2, v0

    .line 59
    .line 60
    const/4 v0, 0x4

    .line 61
    aput-object v5, v2, v0

    .line 62
    .line 63
    const/4 v0, 0x5

    .line 64
    aput-object v6, v2, v0

    .line 65
    .line 66
    sput-object v2, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier$P256SHA256;->SPEC:[Ljava/math/BigInteger;

    .line 67
    .line 68
    return-void
.end method

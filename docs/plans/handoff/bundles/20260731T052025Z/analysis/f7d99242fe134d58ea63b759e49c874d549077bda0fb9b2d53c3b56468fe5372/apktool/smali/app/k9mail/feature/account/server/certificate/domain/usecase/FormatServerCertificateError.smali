.class public final Lapp/k9mail/feature/account/server/certificate/domain/usecase/FormatServerCertificateError;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final dateFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lapp/k9mail/feature/account/server/certificate/domain/usecase/FormatServerCertificateError;->dateFormat:Ljava/text/DateFormat;

    .line 14
    .line 15
    return-void
.end method

.method public static computeFingerprint(Ljava/security/cert/X509Certificate;Lapp/k9mail/feature/account/server/certificate/domain/usecase/HashAlgorithm;)Lokio/ByteString;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    new-instance p1, Lokio/BlackholeSink;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lokio/HashingSink;

    .line 19
    .line 20
    const-string v1, "SHA-512"

    .line 21
    .line 22
    invoke-direct {v0, p1, v1}, Lokio/HashingSink;-><init>(Lokio/BlackholeSink;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :cond_1
    new-instance p1, Lokio/BlackholeSink;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lokio/HashingSink;

    .line 37
    .line 38
    const-string v1, "SHA-256"

    .line 39
    .line 40
    invoke-direct {v0, p1, v1}, Lokio/HashingSink;-><init>(Lokio/BlackholeSink;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    new-instance p1, Lokio/BlackholeSink;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lokio/HashingSink;

    .line 50
    .line 51
    const-string v1, "SHA-1"

    .line 52
    .line 53
    invoke-direct {v0, p1, v1}, Lokio/HashingSink;-><init>(Lokio/BlackholeSink;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    new-instance p1, Lokio/RealBufferedSink;

    .line 57
    .line 58
    invoke-direct {p1, v0}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p0}, Lokio/RealBufferedSink;->write([B)Lokio/BufferedSink;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lokio/RealBufferedSink;->flush()V

    .line 72
    .line 73
    .line 74
    iget-object p0, v0, Lokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    new-instance p1, Lokio/ByteString;

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-direct {p1, p0}, Lokio/ByteString;-><init>([B)V

    .line 89
    .line 90
    .line 91
    return-object p1
.end method

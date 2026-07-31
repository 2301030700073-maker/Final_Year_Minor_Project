.class public final Lorg/minidns/record/RRSIG;
.super Lorg/minidns/record/Data;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final algorithm:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public final algorithmByte:B

.field public transient base64SignatureCache:Ljava/lang/String;

.field public final keyTag:I

.field public final labels:B

.field public final originalTtl:J

.field public final signature:[B

.field public final signatureExpiration:Ljava/util/Date;

.field public final signatureInception:Ljava/util/Date;

.field public final signerName:Lorg/minidns/dnsname/DnsName;

.field public final typeCovered:Lorg/minidns/record/Record$TYPE;


# direct methods
.method public constructor <init>(Lorg/minidns/record/Record$TYPE;BBJLjava/util/Date;Ljava/util/Date;ILorg/minidns/dnsname/DnsName;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/minidns/record/RRSIG;->typeCovered:Lorg/minidns/record/Record$TYPE;

    .line 5
    .line 6
    iput-byte p2, p0, Lorg/minidns/record/RRSIG;->algorithmByte:B

    .line 7
    .line 8
    invoke-static {p2}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->forByte(B)Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lorg/minidns/record/RRSIG;->algorithm:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 13
    .line 14
    iput-byte p3, p0, Lorg/minidns/record/RRSIG;->labels:B

    .line 15
    .line 16
    iput-wide p4, p0, Lorg/minidns/record/RRSIG;->originalTtl:J

    .line 17
    .line 18
    iput-object p6, p0, Lorg/minidns/record/RRSIG;->signatureExpiration:Ljava/util/Date;

    .line 19
    .line 20
    iput-object p7, p0, Lorg/minidns/record/RRSIG;->signatureInception:Ljava/util/Date;

    .line 21
    .line 22
    iput p8, p0, Lorg/minidns/record/RRSIG;->keyTag:I

    .line 23
    .line 24
    iput-object p9, p0, Lorg/minidns/record/RRSIG;->signerName:Lorg/minidns/dnsname/DnsName;

    .line 25
    .line 26
    iput-object p10, p0, Lorg/minidns/record/RRSIG;->signature:[B

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final serialize(Ljava/io/DataOutputStream;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/minidns/record/RRSIG;->writePartialSignature(Ljava/io/DataOutputStream;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/minidns/record/RRSIG;->signature:[B

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string/jumbo v1, "yyyyMMddHHmmss"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v1, "UTC"

    .line 10
    .line 11
    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lorg/minidns/record/RRSIG;->typeCovered:Lorg/minidns/record/Record$TYPE;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v2, 0x20

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Lorg/minidns/record/RRSIG;->algorithm:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-byte v3, p0, Lorg/minidns/record/RRSIG;->labels:B

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-wide v3, p0, Lorg/minidns/record/RRSIG;->originalTtl:J

    .line 50
    .line 51
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lorg/minidns/record/RRSIG;->signatureExpiration:Ljava/util/Date;

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v3, p0, Lorg/minidns/record/RRSIG;->signatureInception:Ljava/util/Date;

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget v0, p0, Lorg/minidns/record/RRSIG;->keyTag:I

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lorg/minidns/record/RRSIG;->signerName:Lorg/minidns/dnsname/DnsName;

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, ". "

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lorg/minidns/record/RRSIG;->base64SignatureCache:Ljava/lang/String;

    .line 100
    .line 101
    if-nez v0, :cond_0

    .line 102
    .line 103
    iget-object v0, p0, Lorg/minidns/record/RRSIG;->signature:[B

    .line 104
    .line 105
    invoke-static {v0}, Lorg/minidns/util/Base64;->encodeToString([B)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Lorg/minidns/record/RRSIG;->base64SignatureCache:Ljava/lang/String;

    .line 110
    .line 111
    :cond_0
    iget-object p0, p0, Lorg/minidns/record/RRSIG;->base64SignatureCache:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    return-object p0
.end method

.method public final writePartialSignature(Ljava/io/DataOutputStream;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/minidns/record/RRSIG;->typeCovered:Lorg/minidns/record/Record$TYPE;

    .line 2
    .line 3
    iget v0, v0, Lorg/minidns/record/Record$TYPE;->value:I

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 6
    .line 7
    .line 8
    iget-byte v0, p0, Lorg/minidns/record/RRSIG;->algorithmByte:B

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 11
    .line 12
    .line 13
    iget-byte v0, p0, Lorg/minidns/record/RRSIG;->labels:B

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 16
    .line 17
    .line 18
    iget-wide v0, p0, Lorg/minidns/record/RRSIG;->originalTtl:J

    .line 19
    .line 20
    long-to-int v0, v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lorg/minidns/record/RRSIG;->signatureExpiration:Ljava/util/Date;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    const-wide/16 v2, 0x3e8

    .line 31
    .line 32
    div-long/2addr v0, v2

    .line 33
    long-to-int v0, v0

    .line 34
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lorg/minidns/record/RRSIG;->signatureInception:Ljava/util/Date;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    div-long/2addr v0, v2

    .line 44
    long-to-int v0, v0

    .line 45
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 46
    .line 47
    .line 48
    iget v0, p0, Lorg/minidns/record/RRSIG;->keyTag:I

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lorg/minidns/record/RRSIG;->signerName:Lorg/minidns/dnsname/DnsName;

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lorg/minidns/dnsname/DnsName;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

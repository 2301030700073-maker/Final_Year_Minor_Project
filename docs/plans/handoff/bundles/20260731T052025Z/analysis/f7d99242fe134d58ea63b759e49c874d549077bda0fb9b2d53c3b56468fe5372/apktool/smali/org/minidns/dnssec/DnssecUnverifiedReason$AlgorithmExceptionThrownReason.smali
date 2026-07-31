.class public final Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmExceptionThrownReason;
.super Lorg/minidns/dnssec/DnssecUnverifiedReason;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final algorithmNumber:I

.field public final reason:Ljava/lang/Exception;

.field public final record:Lorg/minidns/record/Record;


# direct methods
.method public constructor <init>(Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;Lorg/minidns/record/Record;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-byte p1, p1, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->value:B

    .line 5
    .line 6
    iput p1, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmExceptionThrownReason;->algorithmNumber:I

    .line 7
    .line 8
    iput-object p2, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmExceptionThrownReason;->record:Lorg/minidns/record/Record;

    .line 9
    .line 10
    iput-object p3, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmExceptionThrownReason;->reason:Ljava/lang/Exception;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getReasonString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmExceptionThrownReason;->record:Lorg/minidns/record/Record;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmExceptionThrownReason;->reason:Ljava/lang/Exception;

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "DS algorithm "

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget p0, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmExceptionThrownReason;->algorithmNumber:I

    .line 23
    .line 24
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p0, " threw exception while verifying "

    .line 28
    .line 29
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, ": "

    .line 36
    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.class public final Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;
.super Lorg/minidns/dnssec/DnssecUnverifiedReason;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final algorithm:Ljava/lang/String;

.field public final record:Lorg/minidns/record/Record;

.field public final type:Lorg/minidns/record/Record$TYPE;


# direct methods
.method public constructor <init>(BLorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit16 p1, p1, 0xff

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;->algorithm:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;->type:Lorg/minidns/record/Record$TYPE;

    .line 13
    .line 14
    iput-object p3, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;->record:Lorg/minidns/record/Record;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getReasonString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;->type:Lorg/minidns/record/Record$TYPE;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;->record:Lorg/minidns/record/Record;

    .line 8
    .line 9
    iget-object v1, v1, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

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
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, " algorithm "

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;->algorithm:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, " required to verify "

    .line 34
    .line 35
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p0, " is unknown or not supported by platform"

    .line 42
    .line 43
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.class public final Lorg/minidns/dnssec/DnssecUnverifiedReason$NSECDoesNotMatchReason;
.super Lorg/minidns/dnssec/DnssecUnverifiedReason;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final question:Lorg/minidns/dnsmessage/Question;

.field public final record:Lorg/minidns/record/Record;


# direct methods
.method public constructor <init>(Lorg/minidns/dnsmessage/Question;Lorg/minidns/record/Record;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$NSECDoesNotMatchReason;->question:Lorg/minidns/dnsmessage/Question;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$NSECDoesNotMatchReason;->record:Lorg/minidns/record/Record;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getReasonString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$NSECDoesNotMatchReason;->record:Lorg/minidns/record/Record;

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
    iget-object p0, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$NSECDoesNotMatchReason;->question:Lorg/minidns/dnsmessage/Question;

    .line 10
    .line 11
    iget-object v1, p0, Lorg/minidns/dnsmessage/Question;->type:Lorg/minidns/record/Record$TYPE;

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object p0, p0, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v2, " does nat match question for "

    .line 24
    .line 25
    const-string v3, " at "

    .line 26
    .line 27
    const-string v4, "NSEC "

    .line 28
    .line 29
    invoke-static {v4, v0, v2, v1, v3}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

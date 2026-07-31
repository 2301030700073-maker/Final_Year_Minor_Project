.class public final Lorg/minidns/dnssec/DnssecUnverifiedReason$ConflictsWithSep;
.super Lorg/minidns/dnssec/DnssecUnverifiedReason;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final record:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 13
    iput p1, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$ConflictsWithSep;->$r8$classId:I

    iput-object p2, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$ConflictsWithSep;->record:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsmessage/Question;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$ConflictsWithSep;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$ConflictsWithSep;->record:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getReasonString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$ConflictsWithSep;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, " at "

    .line 4
    .line 5
    iget-object p0, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$ConflictsWithSep;->record:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lorg/minidns/dnsmessage/Question;

    .line 11
    .line 12
    iget-object v0, p0, Lorg/minidns/dnsmessage/Question;->type:Lorg/minidns/record/Record$TYPE;

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object p0, p0, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    .line 19
    .line 20
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string v2, "No signatures were attached to answer on question for "

    .line 25
    .line 26
    invoke-static {v2, v0, v1, p0}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :pswitch_0
    check-cast p0, Lorg/minidns/dnsmessage/Question;

    .line 32
    .line 33
    iget-object v0, p0, Lorg/minidns/dnsmessage/Question;->type:Lorg/minidns/record/Record$TYPE;

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object p0, p0, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    .line 40
    .line 41
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v2, "No currently active signatures were attached to answer on question for "

    .line 46
    .line 47
    invoke-static {v2, v0, v1, p0}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :pswitch_1
    check-cast p0, Lorg/minidns/record/Record;

    .line 53
    .line 54
    iget-object p0, p0, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 55
    .line 56
    iget-object p0, p0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    .line 57
    .line 58
    const-string v0, "Zone "

    .line 59
    .line 60
    const-string v1, " is in list of known SEPs, but DNSKEY from response mismatches!"

    .line 61
    .line 62
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

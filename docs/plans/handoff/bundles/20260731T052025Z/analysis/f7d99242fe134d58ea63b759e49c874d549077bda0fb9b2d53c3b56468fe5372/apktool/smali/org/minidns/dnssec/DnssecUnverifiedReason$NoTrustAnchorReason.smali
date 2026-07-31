.class public final Lorg/minidns/dnssec/DnssecUnverifiedReason$NoTrustAnchorReason;
.super Lorg/minidns/dnssec/DnssecUnverifiedReason;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final zone:Lorg/minidns/dnsname/DnsName;


# direct methods
.method public synthetic constructor <init>(ILorg/minidns/dnsname/DnsName;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoTrustAnchorReason;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoTrustAnchorReason;->zone:Lorg/minidns/dnsname/DnsName;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getReasonString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoTrustAnchorReason;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoTrustAnchorReason;->zone:Lorg/minidns/dnsname/DnsName;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "No secure entry point was found for zone "

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :pswitch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v0, "No trust anchor was found for zone "

    .line 24
    .line 25
    const-string v1, ". Try enabling DLV"

    .line 26
    .line 27
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

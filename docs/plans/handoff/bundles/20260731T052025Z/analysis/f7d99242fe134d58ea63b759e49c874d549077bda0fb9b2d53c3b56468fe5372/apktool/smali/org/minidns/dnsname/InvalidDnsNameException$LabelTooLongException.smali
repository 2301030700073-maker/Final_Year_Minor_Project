.class public final Lorg/minidns/dnsname/InvalidDnsNameException$LabelTooLongException;
.super Ljava/lang/IllegalStateException;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final ace:Ljava/lang/String;

.field public final label:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(ILjava/io/Serializable;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/minidns/dnsname/InvalidDnsNameException$LabelTooLongException;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lorg/minidns/dnsname/InvalidDnsNameException$LabelTooLongException;->ace:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, p0, Lorg/minidns/dnsname/InvalidDnsNameException$LabelTooLongException;->label:Ljava/io/Serializable;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lorg/minidns/dnsname/InvalidDnsNameException$LabelTooLongException;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, " octets."

    .line 4
    .line 5
    const-string v2, "The DNS name \'"

    .line 6
    .line 7
    iget-object v3, p0, Lorg/minidns/dnsname/InvalidDnsNameException$LabelTooLongException;->label:Ljava/io/Serializable;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/minidns/dnsname/InvalidDnsNameException$LabelTooLongException;->ace:Ljava/lang/String;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v3, [B

    .line 15
    .line 16
    array-length v0, v3

    .line 17
    add-int/lit16 v0, v0, -0xff

    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p0, "\' exceeds the maximum name length of 255 octets by "

    .line 28
    .line 29
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_0
    check-cast v3, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    add-int/lit8 v0, v0, -0x3f

    .line 50
    .line 51
    const-string v4, "\' contains the label \'"

    .line 52
    .line 53
    const-string v5, "\' which exceeds the maximum label length of 63 octets by "

    .line 54
    .line 55
    invoke-static {v2, p0, v4, v3, v5}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

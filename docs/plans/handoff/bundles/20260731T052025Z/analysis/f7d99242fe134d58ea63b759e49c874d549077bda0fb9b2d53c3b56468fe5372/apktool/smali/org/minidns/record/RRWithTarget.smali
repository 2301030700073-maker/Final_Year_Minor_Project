.class public abstract Lorg/minidns/record/RRWithTarget;
.super Lorg/minidns/record/Data;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final target:Lorg/minidns/dnsname/DnsName;


# direct methods
.method public constructor <init>(Lorg/minidns/dnsname/DnsName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/minidns/record/RRWithTarget;->target:Lorg/minidns/dnsname/DnsName;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public serialize(Ljava/io/DataOutputStream;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/minidns/record/RRWithTarget;->target:Lorg/minidns/dnsname/DnsName;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/minidns/dnsname/DnsName;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/minidns/record/RRWithTarget;->target:Lorg/minidns/dnsname/DnsName;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "."

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

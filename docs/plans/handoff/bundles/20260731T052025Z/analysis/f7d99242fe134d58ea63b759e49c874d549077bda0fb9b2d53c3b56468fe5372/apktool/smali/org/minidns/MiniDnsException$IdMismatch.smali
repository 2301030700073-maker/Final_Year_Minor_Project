.class public final Lorg/minidns/MiniDnsException$IdMismatch;
.super Lorg/minidns/MiniDnsException;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public constructor <init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V
    .locals 2

    .line 1
    iget p1, p1, Lorg/minidns/dnsmessage/DnsMessage;->id:I

    .line 2
    .line 3
    iget p2, p2, Lorg/minidns/dnsmessage/DnsMessage;->id:I

    .line 4
    .line 5
    const-string v0, "The response\'s ID doesn\'t matches the request ID. Request: "

    .line 6
    .line 7
    const-string v1, ". Response: "

    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

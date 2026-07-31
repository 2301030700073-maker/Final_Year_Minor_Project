.class public abstract Lorg/minidns/record/InternetAddressRR;
.super Lorg/minidns/record/Data;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public transient inetAddress:Ljava/net/InetAddress;

.field public final ip:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/minidns/record/InternetAddressRR;->ip:[B

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/minidns/record/InternetAddressRR;->inetAddress:Ljava/net/InetAddress;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lorg/minidns/record/InternetAddressRR;->ip:[B

    .line 6
    .line 7
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lorg/minidns/record/InternetAddressRR;->inetAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/minidns/record/InternetAddressRR;->inetAddress:Ljava/net/InetAddress;

    .line 22
    .line 23
    return-object p0
.end method

.method public final serialize(Ljava/io/DataOutputStream;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/minidns/record/InternetAddressRR;->ip:[B

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.class public final Lorg/minidns/source/NetworkDataSource;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field public queryMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/minidns/source/NetworkDataSource;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/minidns/source/NetworkDataSource;->LOGGER:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final query(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;
    .locals 7

    .line 1
    iget v0, p0, Lorg/minidns/source/NetworkDataSource;->queryMode:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    if-eq v1, v5, :cond_4

    .line 14
    .line 15
    if-ne v1, v4, :cond_0

    .line 16
    .line 17
    move v0, v3

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    if-eq v0, v5, :cond_3

    .line 20
    .line 21
    if-eq v0, v4, :cond_2

    .line 22
    .line 23
    const/4 p0, 0x3

    .line 24
    if-eq v0, p0, :cond_1

    .line 25
    .line 26
    const-string p0, "null"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string p0, "tcp"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const-string p0, "udpTcp"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    const-string p0, "dontCare"

    .line 36
    .line 37
    :goto_0
    const-string p1, "Unsupported query mode: "

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_4
    move v0, v5

    .line 48
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    if-eqz v0, :cond_7

    .line 54
    .line 55
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/minidns/source/NetworkDataSource;->queryUdp(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/dnsmessage/DnsMessage;

    .line 56
    .line 57
    .line 58
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :goto_2
    if-eqz v2, :cond_5

    .line 65
    .line 66
    iget-boolean v0, v2, Lorg/minidns/dnsmessage/DnsMessage;->truncated:Z

    .line 67
    .line 68
    if-nez v0, :cond_5

    .line 69
    .line 70
    new-instance p0, Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;

    .line 71
    .line 72
    invoke-direct {p0, v3, v2}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_5
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 77
    .line 78
    if-eqz v2, :cond_6

    .line 79
    .line 80
    const-string v4, "response is truncated"

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    :goto_3
    new-array v5, v5, [Ljava/lang/Object;

    .line 88
    .line 89
    aput-object v4, v5, v3

    .line 90
    .line 91
    sget-object v4, Lorg/minidns/source/NetworkDataSource;->LOGGER:Ljava/util/logging/Logger;

    .line 92
    .line 93
    const-string v6, "Fallback to TCP because {0}"

    .line 94
    .line 95
    invoke-virtual {v4, v0, v6, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_7
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/minidns/source/NetworkDataSource;->queryTcp(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/dnsmessage/DnsMessage;

    .line 99
    .line 100
    .line 101
    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    goto :goto_4

    .line 103
    :catch_1
    move-exception p0

    .line 104
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    invoke-static {v1}, Lkotlin/io/FileSystemException;->throwIfRequired(Ljava/util/ArrayList;)V

    .line 108
    .line 109
    .line 110
    :goto_4
    new-instance p0, Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;

    .line 111
    .line 112
    invoke-direct {p0, v3, v2}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :goto_5
    return-object p0
.end method

.method public final queryTcp(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 4

    .line 1
    :try_start_0
    new-instance p0, Ljava/net/Socket;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    .line 5
    .line 6
    :try_start_1
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 7
    .line 8
    const/16 v1, 0x35

    .line 9
    .line 10
    invoke-direct {v0, p2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 11
    .line 12
    .line 13
    const/16 p2, 0x1388

    .line 14
    .line 15
    invoke-virtual {p0, v0, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 19
    .line 20
    .line 21
    new-instance p2, Ljava/io/DataOutputStream;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->serialize()[B

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Ljava/io/DataOutputStream;

    .line 35
    .line 36
    invoke-direct {v1, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 37
    .line 38
    .line 39
    array-length v2, v0

    .line 40
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V

    .line 47
    .line 48
    .line 49
    new-instance p2, Ljava/io/DataInputStream;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    new-array v1, v0, [B

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    :goto_0
    if-ge v2, v0, :cond_0

    .line 66
    .line 67
    sub-int v3, v0, v2

    .line 68
    .line 69
    invoke-virtual {p2, v1, v2, v3}, Ljava/io/DataInputStream;->read([BII)I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    add-int/2addr v2, v3

    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    new-instance p2, Lorg/minidns/dnsmessage/DnsMessage;

    .line 78
    .line 79
    invoke-direct {p2, v1}, Lorg/minidns/dnsmessage/DnsMessage;-><init>([B)V

    .line 80
    .line 81
    .line 82
    iget v0, p2, Lorg/minidns/dnsmessage/DnsMessage;->id:I

    .line 83
    .line 84
    iget v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->id:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    if-ne v0, v1, :cond_1

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    .line 89
    .line 90
    .line 91
    return-object p2

    .line 92
    :cond_1
    :try_start_2
    new-instance v0, Lorg/minidns/MiniDnsException$IdMismatch;

    .line 93
    .line 94
    invoke-direct {v0, p1, p2}, Lorg/minidns/MiniDnsException$IdMismatch;-><init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V

    .line 95
    .line 96
    .line 97
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :catchall_1
    move-exception p0

    .line 99
    move-object p1, p0

    .line 100
    const/4 p0, 0x0

    .line 101
    :goto_1
    if-eqz p0, :cond_2

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    .line 104
    .line 105
    .line 106
    :cond_2
    throw p1
.end method

.method public final queryUdp(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->serialize()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/net/DatagramPacket;

    .line 6
    .line 7
    array-length v1, p0

    .line 8
    const/16 v2, 0x35

    .line 9
    .line 10
    invoke-direct {v0, p0, v1, p2, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x4d0

    .line 14
    .line 15
    new-array p2, p0, [B

    .line 16
    .line 17
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x1388

    .line 23
    .line 24
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/net/DatagramPacket;

    .line 31
    .line 32
    invoke-direct {v0, p2, p0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 36
    .line 37
    .line 38
    new-instance p0, Lorg/minidns/dnsmessage/DnsMessage;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p0, p2}, Lorg/minidns/dnsmessage/DnsMessage;-><init>([B)V

    .line 45
    .line 46
    .line 47
    iget p2, p0, Lorg/minidns/dnsmessage/DnsMessage;->id:I

    .line 48
    .line 49
    iget v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->id:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    if-ne p2, v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_0
    :try_start_2
    new-instance p2, Lorg/minidns/MiniDnsException$IdMismatch;

    .line 58
    .line 59
    invoke-direct {p2, p1, p0}, Lorg/minidns/MiniDnsException$IdMismatch;-><init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V

    .line 60
    .line 61
    .line 62
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_0

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    const/4 v1, 0x0

    .line 67
    :goto_0
    if-eqz v1, :cond_1

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 70
    .line 71
    .line 72
    :cond_1
    throw p0
.end method

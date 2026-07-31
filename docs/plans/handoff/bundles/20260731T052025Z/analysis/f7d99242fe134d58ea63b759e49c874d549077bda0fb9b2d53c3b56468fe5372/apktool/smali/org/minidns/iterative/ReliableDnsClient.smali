.class public Lorg/minidns/iterative/ReliableDnsClient;
.super Lorg/minidns/AbstractDnsClient;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final dnsClient:Lorg/minidns/iterative/ReliableDnsClient$2;

.field public mode:I

.field public final recursiveDnsClient:Lorg/minidns/iterative/ReliableDnsClient$1;


# direct methods
.method public constructor <init>(Lorg/minidns/cache/LruCache;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/minidns/AbstractDnsClient;-><init>(Lorg/minidns/cache/LruCache;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lorg/minidns/iterative/ReliableDnsClient;->mode:I

    .line 6
    .line 7
    new-instance v0, Lorg/minidns/iterative/ReliableDnsClient$1;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lorg/minidns/iterative/ReliableDnsClient$1;-><init>(Lorg/minidns/iterative/ReliableDnsClient;Lorg/minidns/cache/LruCache;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/minidns/iterative/ReliableDnsClient;->recursiveDnsClient:Lorg/minidns/iterative/ReliableDnsClient$1;

    .line 13
    .line 14
    new-instance v0, Lorg/minidns/iterative/ReliableDnsClient$2;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lorg/minidns/iterative/ReliableDnsClient$2;-><init>(Lorg/minidns/iterative/ReliableDnsClient;Lorg/minidns/cache/LruCache;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lorg/minidns/iterative/ReliableDnsClient;->dnsClient:Lorg/minidns/iterative/ReliableDnsClient$2;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public isResponseAcceptable(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final isResponseCacheable(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lorg/minidns/dnsmessage/DnsMessage;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/minidns/iterative/ReliableDnsClient;->isResponseAcceptable(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final query(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lorg/minidns/iterative/ReliableDnsClient;->mode:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x3

    .line 10
    if-eq v1, v3, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lorg/minidns/iterative/ReliableDnsClient;->dnsClient:Lorg/minidns/iterative/ReliableDnsClient$2;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lorg/minidns/DnsClient;->query(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 15
    .line 16
    .line 17
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    :try_start_1
    iget-object v4, v1, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v4, Lorg/minidns/dnsmessage/DnsMessage;

    .line 21
    .line 22
    invoke-virtual {p0, v4}, Lorg/minidns/iterative/ReliableDnsClient;->isResponseAcceptable(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    return-object v1

    .line 29
    :catch_0
    move-exception v4

    .line 30
    goto :goto_0

    .line 31
    :catch_1
    move-exception v4

    .line 32
    move-object v1, v2

    .line 33
    :goto_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-object v4, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    move-object v1, v2

    .line 39
    move-object v4, v1

    .line 40
    :cond_1
    :goto_1
    iget v5, p0, Lorg/minidns/iterative/ReliableDnsClient;->mode:I

    .line 41
    .line 42
    const/4 v6, 0x2

    .line 43
    if-ne v5, v6, :cond_2

    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_2
    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 47
    .line 48
    sget-object v6, Lorg/minidns/AbstractDnsClient;->LOGGER:Ljava/util/logging/Logger;

    .line 49
    .line 50
    invoke-virtual {v6, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-eqz v7, :cond_6

    .line 55
    .line 56
    iget v7, p0, Lorg/minidns/iterative/ReliableDnsClient;->mode:I

    .line 57
    .line 58
    if-eq v7, v3, :cond_6

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const-string v7, "Resolution fall back to iterative mode because: "

    .line 65
    .line 66
    if-nez v3, :cond_3

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    if-nez v1, :cond_4

    .line 83
    .line 84
    const-string v2, "Resolution fall back to iterative mode because:  DnsClient did not return a response"

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    if-eqz v4, :cond_5

    .line 88
    .line 89
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const-string v3, ". Response:\n"

    .line 94
    .line 95
    invoke-static {v7, v4, v3, v2}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    :goto_2
    invoke-virtual {v6, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_5
    const-string p0, "This should never been reached"

    .line 104
    .line 105
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    return-object v2

    .line 109
    :cond_6
    :goto_3
    :try_start_2
    iget-object p0, p0, Lorg/minidns/iterative/ReliableDnsClient;->recursiveDnsClient:Lorg/minidns/iterative/ReliableDnsClient$1;

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Lorg/minidns/iterative/ReliableDnsClient$1;->query(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 112
    .line 113
    .line 114
    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 115
    goto :goto_4

    .line 116
    :catch_2
    move-exception p0

    .line 117
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :goto_4
    if-nez v1, :cond_7

    .line 121
    .line 122
    invoke-static {v0}, Lkotlin/io/FileSystemException;->throwIfRequired(Ljava/util/ArrayList;)V

    .line 123
    .line 124
    .line 125
    :cond_7
    return-object v1
.end method

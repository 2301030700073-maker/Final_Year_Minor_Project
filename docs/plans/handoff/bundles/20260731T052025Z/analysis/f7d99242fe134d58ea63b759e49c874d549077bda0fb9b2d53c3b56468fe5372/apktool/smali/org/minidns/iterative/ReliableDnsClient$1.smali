.class public final Lorg/minidns/iterative/ReliableDnsClient$1;
.super Lorg/minidns/AbstractDnsClient;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final maxSteps:I

.field public final synthetic this$0:Lorg/minidns/iterative/ReliableDnsClient;


# direct methods
.method public constructor <init>(Lorg/minidns/iterative/ReliableDnsClient;Lorg/minidns/cache/LruCache;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/minidns/iterative/ReliableDnsClient$1;->this$0:Lorg/minidns/iterative/ReliableDnsClient;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lorg/minidns/AbstractDnsClient;-><init>(Lorg/minidns/cache/LruCache;)V

    .line 4
    .line 5
    .line 6
    const/16 p1, 0x80

    .line 7
    .line 8
    iput p1, p0, Lorg/minidns/iterative/ReliableDnsClient$1;->maxSteps:I

    .line 9
    .line 10
    return-void
.end method

.method public static getTargets(Ljava/util/Set;Ljava/util/Set;)[Ljava/net/InetAddress;
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/net/InetAddress;

    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lorg/minidns/record/InternetAddressRR;

    .line 21
    .line 22
    aget-object v4, v0, v3

    .line 23
    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lorg/minidns/record/InternetAddressRR;->getInetAddress()Ljava/net/InetAddress;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    aput-object v4, v0, v3

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    aget-object p0, v0, v2

    .line 40
    .line 41
    if-nez p0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Lorg/minidns/record/InternetAddressRR;->getInetAddress()Ljava/net/InetAddress;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    aput-object p0, v0, v2

    .line 48
    .line 49
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lorg/minidns/record/InternetAddressRR;

    .line 64
    .line 65
    aget-object v1, v0, v3

    .line 66
    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1}, Lorg/minidns/record/InternetAddressRR;->getInetAddress()Ljava/net/InetAddress;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    aput-object p1, v0, v3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    aget-object p0, v0, v2

    .line 77
    .line 78
    if-nez p0, :cond_3

    .line 79
    .line 80
    invoke-virtual {p1}, Lorg/minidns/record/InternetAddressRR;->getInetAddress()Ljava/net/InetAddress;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    aput-object p0, v0, v2

    .line 85
    .line 86
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final isResponseCacheable(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lorg/minidns/dnsmessage/DnsMessage;

    .line 4
    .line 5
    iget-boolean p2, p1, Lorg/minidns/dnsmessage/DnsMessage;->authoritativeAnswer:Z

    .line 6
    .line 7
    iget-object p0, p0, Lorg/minidns/iterative/ReliableDnsClient$1;->this$0:Lorg/minidns/iterative/ReliableDnsClient;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/minidns/iterative/ReliableDnsClient;->isResponseAcceptable(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->recursionDesired:Z

    .line 3
    .line 4
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->ednsBuilder:Lorg/minidns/edns/Edns$Builder;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lorg/minidns/edns/Edns$Builder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->ednsBuilder:Lorg/minidns/edns/Edns$Builder;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->ednsBuilder:Lorg/minidns/edns/Edns$Builder;

    .line 16
    .line 17
    iget-object v1, p0, Lorg/minidns/AbstractDnsClient;->dataSource:Lorg/minidns/source/NetworkDataSource;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x4d0

    .line 23
    .line 24
    iput v1, v0, Lorg/minidns/edns/Edns$Builder;->udpPayloadSize:I

    .line 25
    .line 26
    iget-object p0, p0, Lorg/minidns/iterative/ReliableDnsClient$1;->this$0:Lorg/minidns/iterative/ReliableDnsClient;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lorg/minidns/iterative/ReliableDnsClient;->newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final query(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lorg/minidns/dnsmessage/DnsMessage;-><init>(Lorg/minidns/dnsmessage/DnsMessage$Builder;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lde/cketti/changelog/XmlParser;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lde/cketti/changelog/XmlParser;-><init>(Lorg/minidns/iterative/ReliableDnsClient$1;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lorg/minidns/iterative/ReliableDnsClient$1;->queryRecursive(Lde/cketti/changelog/XmlParser;Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final queryRecursive(Lde/cketti/changelog/XmlParser;Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 9

    .line 490
    invoke-virtual {p2}, Lorg/minidns/dnsmessage/DnsMessage;->getQuestion()Lorg/minidns/dnsmessage/Question;

    move-result-object v0

    .line 491
    iget-object v0, v0, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    .line 492
    invoke-virtual {v0}, Lorg/minidns/dnsname/DnsName;->isRootLabel()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object v0, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    goto :goto_0

    .line 493
    :cond_0
    invoke-virtual {v0}, Lorg/minidns/dnsname/DnsName;->getLabelCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/minidns/dnsname/DnsName;->stripToLabels(I)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    .line 494
    :goto_0
    iget v1, p0, Lorg/minidns/AbstractDnsClient;->ipVersionSetting:I

    invoke-static {v1}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_6

    if-eq v3, v2, :cond_3

    const/4 v7, 0x0

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    .line 495
    sget-object v3, Lorg/minidns/record/Record$TYPE;->AAAA:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {p0, v0, v3}, Lorg/minidns/AbstractDnsClient;->getCachedIPNameserverAddressesFor(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;

    move-result-object v3

    .line 496
    sget-object v8, Lorg/minidns/record/Record$TYPE;->A:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {p0, v0, v8}, Lorg/minidns/AbstractDnsClient;->getCachedIPNameserverAddressesFor(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;

    move-result-object v0

    .line 497
    check-cast v3, Ljava/util/Set;

    check-cast v0, Ljava/util/Set;

    invoke-static {v3, v0}, Lorg/minidns/iterative/ReliableDnsClient$1;->getTargets(Ljava/util/Set;Ljava/util/Set;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 498
    aget-object v3, v0, v7

    .line 499
    aget-object v0, v0, v2

    goto :goto_3

    .line 500
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 501
    :cond_2
    sget-object v3, Lorg/minidns/record/Record$TYPE;->A:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {p0, v0, v3}, Lorg/minidns/AbstractDnsClient;->getCachedIPNameserverAddressesFor(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;

    move-result-object v3

    .line 502
    sget-object v8, Lorg/minidns/record/Record$TYPE;->AAAA:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {p0, v0, v8}, Lorg/minidns/AbstractDnsClient;->getCachedIPNameserverAddressesFor(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;

    move-result-object v0

    .line 503
    check-cast v3, Ljava/util/Set;

    check-cast v0, Ljava/util/Set;

    invoke-static {v3, v0}, Lorg/minidns/iterative/ReliableDnsClient$1;->getTargets(Ljava/util/Set;Ljava/util/Set;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 504
    aget-object v3, v0, v7

    .line 505
    aget-object v0, v0, v2

    goto :goto_3

    .line 506
    :cond_3
    sget-object v3, Lorg/minidns/record/Record$TYPE;->AAAA:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {p0, v0, v3}, Lorg/minidns/AbstractDnsClient;->getCachedIPNameserverAddressesFor(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;

    move-result-object v0

    .line 507
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v3, v6

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/minidns/record/AAAA;

    if-nez v3, :cond_4

    .line 508
    invoke-virtual {v7}, Lorg/minidns/record/InternetAddressRR;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    goto :goto_1

    .line 509
    :cond_4
    invoke-virtual {v7}, Lorg/minidns/record/InternetAddressRR;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v6

    goto :goto_3

    .line 510
    :cond_6
    sget-object v3, Lorg/minidns/record/Record$TYPE;->A:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {p0, v0, v3}, Lorg/minidns/AbstractDnsClient;->getCachedIPNameserverAddressesFor(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;

    move-result-object v0

    .line 511
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v3, v6

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/minidns/record/A;

    if-nez v3, :cond_7

    .line 512
    invoke-virtual {v7}, Lorg/minidns/record/InternetAddressRR;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    goto :goto_2

    .line 513
    :cond_7
    invoke-virtual {v7}, Lorg/minidns/record/InternetAddressRR;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_3
    if-nez v3, :cond_c

    .line 514
    sget-object v7, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    .line 515
    invoke-static {v1}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    move-result v1

    iget-object v7, p0, Lorg/minidns/AbstractDnsClient;->insecureRandom:Ljava/util/Random;

    if-eqz v1, :cond_b

    if-eq v1, v2, :cond_a

    if-eq v1, v5, :cond_9

    if-eq v1, v4, :cond_8

    goto :goto_4

    .line 516
    :cond_8
    sget-object v0, Lorg/minidns/constants/DnsRootServer;->IPV6_ROOT_SERVERS:[Ljava/net/Inet6Address;

    array-length v1, v0

    invoke-virtual {v7, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v3, v0, v1

    .line 517
    sget-object v0, Lorg/minidns/constants/DnsRootServer;->IPV4_ROOT_SERVERS:[Ljava/net/Inet4Address;

    array-length v1, v0

    invoke-virtual {v7, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_4

    .line 518
    :cond_9
    sget-object v0, Lorg/minidns/constants/DnsRootServer;->IPV4_ROOT_SERVERS:[Ljava/net/Inet4Address;

    array-length v1, v0

    invoke-virtual {v7, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v3, v0, v1

    .line 519
    sget-object v0, Lorg/minidns/constants/DnsRootServer;->IPV6_ROOT_SERVERS:[Ljava/net/Inet6Address;

    array-length v1, v0

    invoke-virtual {v7, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_4

    .line 520
    :cond_a
    sget-object v1, Lorg/minidns/constants/DnsRootServer;->IPV6_ROOT_SERVERS:[Ljava/net/Inet6Address;

    array-length v2, v1

    invoke-virtual {v7, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v3, v1, v2

    goto :goto_4

    .line 521
    :cond_b
    sget-object v1, Lorg/minidns/constants/DnsRootServer;->IPV4_ROOT_SERVERS:[Ljava/net/Inet4Address;

    array-length v2, v1

    invoke-virtual {v7, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v3, v1, v2

    .line 522
    :cond_c
    :goto_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 523
    :try_start_0
    invoke-virtual {p0, p1, p2, v3}, Lorg/minidns/iterative/ReliableDnsClient$1;->queryRecursive(Lde/cketti/changelog/XmlParser;Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    .line 524
    instance-of v3, v2, Lorg/minidns/iterative/IterativeClientException$LoopDetected;

    if-nez v3, :cond_e

    .line 525
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_d

    .line 526
    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lorg/minidns/iterative/ReliableDnsClient$1;->queryRecursive(Lde/cketti/changelog/XmlParser;Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 527
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_d
    invoke-static {v1}, Lkotlin/io/FileSystemException;->throwIfRequired(Ljava/util/ArrayList;)V

    return-object v6

    .line 529
    :cond_e
    throw v2
.end method

.method public final queryRecursive(Lde/cketti/changelog/XmlParser;Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 12

    .line 1
    invoke-virtual {p2}, Lorg/minidns/dnsmessage/DnsMessage;->getQuestion()Lorg/minidns/dnsmessage/Question;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p1, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    new-instance v2, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/Set;

    .line 29
    .line 30
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_15

    .line 35
    .line 36
    :goto_0
    iget v2, p1, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    add-int/2addr v2, v3

    .line 40
    iput v2, p1, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 41
    .line 42
    iget-object v4, p1, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v4, Lorg/minidns/iterative/ReliableDnsClient$1;

    .line 45
    .line 46
    iget v4, v4, Lorg/minidns/iterative/ReliableDnsClient$1;->maxSteps:I

    .line 47
    .line 48
    if-gt v2, v4, :cond_14

    .line 49
    .line 50
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/util/Set;

    .line 55
    .line 56
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p2, p3}, Lorg/minidns/AbstractDnsClient;->query(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    iget-object v0, p3, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Lorg/minidns/dnsmessage/DnsMessage;

    .line 66
    .line 67
    iget-boolean v1, v0, Lorg/minidns/dnsmessage/DnsMessage;->authoritativeAnswer:Z

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    return-object p3

    .line 72
    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    .line 73
    .line 74
    iget-object v1, v0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-direct {p3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 84
    .line 85
    .line 86
    new-instance v1, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    const/4 v5, 0x0

    .line 100
    if-eqz v4, :cond_f

    .line 101
    .line 102
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Lorg/minidns/record/Record;

    .line 107
    .line 108
    const-class v6, Lorg/minidns/record/NS;

    .line 109
    .line 110
    invoke-virtual {v4, v6}, Lorg/minidns/record/Record;->ifPossibleAs(Ljava/lang/Class;)Lorg/minidns/record/Record;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    if-nez v4, :cond_3

    .line 115
    .line 116
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    iget-object v4, v4, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 121
    .line 122
    check-cast v4, Lorg/minidns/record/NS;

    .line 123
    .line 124
    iget-object v4, v4, Lorg/minidns/record/RRWithTarget;->target:Lorg/minidns/dnsname/DnsName;

    .line 125
    .line 126
    new-instance v6, Ljava/util/ArrayList;

    .line 127
    .line 128
    const/16 v7, 0x8

    .line 129
    .line 130
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    .line 132
    .line 133
    new-instance v8, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .line 137
    .line 138
    iget-object v7, v0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    .line 139
    .line 140
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-eqz v9, :cond_7

    .line 149
    .line 150
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    check-cast v9, Lorg/minidns/record/Record;

    .line 155
    .line 156
    iget-object v10, v9, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 157
    .line 158
    iget-object v11, v9, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 159
    .line 160
    invoke-virtual {v10, v4}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v10

    .line 164
    if-nez v10, :cond_4

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_4
    iget-object v9, v9, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    .line 168
    .line 169
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    if-eq v9, v3, :cond_6

    .line 174
    .line 175
    const/16 v10, 0x1c

    .line 176
    .line 177
    if-eq v9, v10, :cond_5

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_5
    iget-object v9, v4, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    .line 181
    .line 182
    check-cast v11, Lorg/minidns/record/AAAA;

    .line 183
    .line 184
    :try_start_0
    iget-object v10, v11, Lorg/minidns/record/InternetAddressRR;->ip:[B

    .line 185
    .line 186
    invoke-virtual {v10}, [B->clone()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v10

    .line 190
    check-cast v10, [B

    .line 191
    .line 192
    invoke-static {v9, v10}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    .line 193
    .line 194
    .line 195
    move-result-object v9
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :catch_0
    move-exception p0

    .line 201
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 202
    .line 203
    .line 204
    return-object v5

    .line 205
    :cond_6
    iget-object v9, v4, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    .line 206
    .line 207
    check-cast v11, Lorg/minidns/record/A;

    .line 208
    .line 209
    :try_start_1
    iget-object v10, v11, Lorg/minidns/record/InternetAddressRR;->ip:[B

    .line 210
    .line 211
    invoke-virtual {v10}, [B->clone()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    check-cast v10, [B

    .line 216
    .line 217
    invoke-static {v9, v10}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    .line 218
    .line 219
    .line 220
    move-result-object v9
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :catch_1
    move-exception p0

    .line 226
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 227
    .line 228
    .line 229
    return-object v5

    .line 230
    :cond_7
    sget v4, Lorg/minidns/AbstractDnsClient;->DEFAULT_IP_VERSION_SETTING:I

    .line 231
    .line 232
    invoke-static {v4}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    if-eqz v5, :cond_9

    .line 237
    .line 238
    if-eq v5, v3, :cond_8

    .line 239
    .line 240
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    add-int/2addr v7, v5

    .line 249
    goto :goto_3

    .line 250
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    goto :goto_3

    .line 255
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 256
    .line 257
    .line 258
    move-result v7

    .line 259
    :goto_3
    if-nez v7, :cond_a

    .line 260
    .line 261
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_a
    invoke-static {v4}, Lkotlinx/io/Sink$-CC;->getV4(I)Z

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    iget-object v9, p0, Lorg/minidns/AbstractDnsClient;->insecureRandom:Ljava/util/Random;

    .line 269
    .line 270
    if-eqz v5, :cond_b

    .line 271
    .line 272
    invoke-static {v6, v9}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 273
    .line 274
    .line 275
    :cond_b
    invoke-static {v4}, Lkotlinx/io/Sink$-CC;->getV6(I)Z

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    if-eqz v4, :cond_c

    .line 280
    .line 281
    invoke-static {v8, v9}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 282
    .line 283
    .line 284
    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 290
    .line 291
    .line 292
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 293
    .line 294
    .line 295
    invoke-static {v4}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    :cond_d
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    if-eqz v5, :cond_2

    .line 308
    .line 309
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    check-cast v5, Ljava/net/InetAddress;

    .line 314
    .line 315
    :try_start_2
    invoke-virtual {p0, p1, p2, v5}, Lorg/minidns/iterative/ReliableDnsClient$1;->queryRecursive(Lde/cketti/changelog/XmlParser;Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 316
    .line 317
    .line 318
    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 319
    return-object p0

    .line 320
    :catch_2
    move-exception v5

    .line 321
    instance-of v6, v5, Lorg/minidns/iterative/IterativeClientException$LoopDetected;

    .line 322
    .line 323
    if-nez v6, :cond_e

    .line 324
    .line 325
    sget-object v6, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 326
    .line 327
    const-string v7, "Exception while recursing"

    .line 328
    .line 329
    sget-object v8, Lorg/minidns/AbstractDnsClient;->LOGGER:Ljava/util/logging/Logger;

    .line 330
    .line 331
    invoke-virtual {v8, v6, v7, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    .line 333
    .line 334
    iget v6, p1, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 335
    .line 336
    sub-int/2addr v6, v3

    .line 337
    iput v6, p1, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 338
    .line 339
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 343
    .line 344
    .line 345
    move-result v5

    .line 346
    if-nez v5, :cond_d

    .line 347
    .line 348
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 349
    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_e
    throw v5

    .line 353
    :cond_f
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 354
    .line 355
    .line 356
    move-result-object p3

    .line 357
    :cond_10
    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-eqz v0, :cond_13

    .line 362
    .line 363
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    check-cast v0, Lorg/minidns/record/Record;

    .line 368
    .line 369
    invoke-virtual {p2}, Lorg/minidns/dnsmessage/DnsMessage;->getQuestion()Lorg/minidns/dnsmessage/Question;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    iget-object v0, v0, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 374
    .line 375
    check-cast v0, Lorg/minidns/record/NS;

    .line 376
    .line 377
    iget-object v0, v0, Lorg/minidns/record/RRWithTarget;->target:Lorg/minidns/dnsname/DnsName;

    .line 378
    .line 379
    iget-object v4, v2, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    .line 380
    .line 381
    invoke-virtual {v4, v0}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    if-eqz v4, :cond_11

    .line 386
    .line 387
    iget-object v2, v2, Lorg/minidns/dnsmessage/Question;->type:Lorg/minidns/record/Record$TYPE;

    .line 388
    .line 389
    sget-object v4, Lorg/minidns/record/Record$TYPE;->A:Lorg/minidns/record/Record$TYPE;

    .line 390
    .line 391
    if-eq v2, v4, :cond_10

    .line 392
    .line 393
    sget-object v4, Lorg/minidns/record/Record$TYPE;->AAAA:Lorg/minidns/record/Record$TYPE;

    .line 394
    .line 395
    if-ne v2, v4, :cond_11

    .line 396
    .line 397
    goto :goto_6

    .line 398
    :cond_11
    :try_start_3
    invoke-virtual {p0, p1, v0}, Lorg/minidns/iterative/ReliableDnsClient$1;->resolveIpRecursive(Lde/cketti/changelog/XmlParser;Lorg/minidns/dnsname/DnsName;)Lcom/fsck/k9/mailstore/LocalFolder$9;

    .line 399
    .line 400
    .line 401
    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 402
    goto :goto_7

    .line 403
    :catch_3
    move-exception v0

    .line 404
    iget v2, p1, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 405
    .line 406
    sub-int/2addr v2, v3

    .line 407
    iput v2, p1, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 408
    .line 409
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-object v0, v5

    .line 413
    :goto_7
    if-nez v0, :cond_12

    .line 414
    .line 415
    goto :goto_6

    .line 416
    :cond_12
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalFolder$9;->val$messages:Ljava/util/List;

    .line 417
    .line 418
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    if-eqz v2, :cond_10

    .line 427
    .line 428
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    check-cast v2, Ljava/net/InetAddress;

    .line 433
    .line 434
    :try_start_4
    invoke-virtual {p0, p1, p2, v2}, Lorg/minidns/iterative/ReliableDnsClient$1;->queryRecursive(Lde/cketti/changelog/XmlParser;Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 435
    .line 436
    .line 437
    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 438
    return-object p0

    .line 439
    :catch_4
    move-exception v2

    .line 440
    iget v4, p1, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 441
    .line 442
    sub-int/2addr v4, v3

    .line 443
    iput v4, p1, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 444
    .line 445
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    goto :goto_8

    .line 449
    :cond_13
    invoke-static {v1}, Lkotlin/io/FileSystemException;->throwIfRequired(Ljava/util/ArrayList;)V

    .line 450
    .line 451
    .line 452
    new-instance p0, Lorg/minidns/iterative/IterativeClientException$MaxIterativeStepsReached;

    .line 453
    .line 454
    const-string p1, "Did not receive an authoritative answer, nor did the result contain any glue records"

    .line 455
    .line 456
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    throw p0

    .line 460
    :cond_14
    new-instance p0, Lorg/minidns/iterative/IterativeClientException$MaxIterativeStepsReached;

    .line 461
    .line 462
    const-string p1, "Maxmimum steps reached"

    .line 463
    .line 464
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    throw p0

    .line 468
    :cond_15
    new-instance p0, Lorg/minidns/iterative/IterativeClientException$LoopDetected;

    .line 469
    .line 470
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object p2

    .line 478
    const-string p3, "Resolution loop detected: We already asked "

    .line 479
    .line 480
    const-string v0, " about "

    .line 481
    .line 482
    invoke-static {p3, p1, v0, p2}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    throw p0
.end method

.method public final resolveIpRecursive(Lde/cketti/changelog/XmlParser;Lorg/minidns/dnsname/DnsName;)Lcom/fsck/k9/mailstore/LocalFolder$9;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    const/16 v4, 0x8

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v5, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iget v4, v0, Lorg/minidns/AbstractDnsClient;->ipVersionSetting:I

    .line 20
    .line 21
    invoke-static {v4}, Lkotlinx/io/Sink$-CC;->getV4(I)Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    const v7, 0xffff

    .line 26
    .line 27
    .line 28
    iget-object v8, v0, Lorg/minidns/AbstractDnsClient;->random:Ljava/security/SecureRandom;

    .line 29
    .line 30
    const/4 v9, 0x1

    .line 31
    const-wide/16 v10, -0x1

    .line 32
    .line 33
    const/4 v12, 0x0

    .line 34
    if-eqz v6, :cond_3

    .line 35
    .line 36
    new-instance v6, Lorg/minidns/dnsmessage/Question;

    .line 37
    .line 38
    sget-object v13, Lorg/minidns/record/Record$TYPE;->A:Lorg/minidns/record/Record$TYPE;

    .line 39
    .line 40
    invoke-direct {v6, v2, v13}, Lorg/minidns/dnsmessage/Question;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)V

    .line 41
    .line 42
    .line 43
    sget-object v13, Lorg/minidns/dnsmessage/DnsMessage;->LOGGER:Ljava/util/logging/Logger;

    .line 44
    .line 45
    new-instance v13, Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 46
    .line 47
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    sget-object v14, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->QUERY:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 51
    .line 52
    iput-object v14, v13, Lorg/minidns/dnsmessage/DnsMessage$Builder;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 53
    .line 54
    sget-object v14, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 55
    .line 56
    iput-object v14, v13, Lorg/minidns/dnsmessage/DnsMessage$Builder;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 57
    .line 58
    iput-wide v10, v13, Lorg/minidns/dnsmessage/DnsMessage$Builder;->receiveTimestamp:J

    .line 59
    .line 60
    new-instance v14, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v14, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .line 64
    .line 65
    iput-object v14, v13, Lorg/minidns/dnsmessage/DnsMessage$Builder;->questions:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8}, Ljava/util/Random;->nextInt()I

    .line 71
    .line 72
    .line 73
    move-result v14

    .line 74
    and-int/2addr v14, v7

    .line 75
    iput v14, v13, Lorg/minidns/dnsmessage/DnsMessage$Builder;->id:I

    .line 76
    .line 77
    invoke-virtual {v0, v13}, Lorg/minidns/iterative/ReliableDnsClient$1;->newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    new-instance v14, Lorg/minidns/dnsmessage/DnsMessage;

    .line 85
    .line 86
    invoke-direct {v14, v13}, Lorg/minidns/dnsmessage/DnsMessage;-><init>(Lorg/minidns/dnsmessage/DnsMessage$Builder;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1, v14}, Lorg/minidns/iterative/ReliableDnsClient$1;->queryRecursive(Lde/cketti/changelog/XmlParser;Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    if-eqz v13, :cond_0

    .line 94
    .line 95
    iget-object v13, v13, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v13, Lorg/minidns/dnsmessage/DnsMessage;

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    move-object v13, v12

    .line 101
    :goto_0
    if-eqz v13, :cond_3

    .line 102
    .line 103
    iget-object v13, v13, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v13

    .line 109
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v14

    .line 113
    if-eqz v14, :cond_3

    .line 114
    .line 115
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v14

    .line 119
    check-cast v14, Lorg/minidns/record/Record;

    .line 120
    .line 121
    invoke-virtual {v14, v6}, Lorg/minidns/record/Record;->isAnswer(Lorg/minidns/dnsmessage/Question;)Z

    .line 122
    .line 123
    .line 124
    move-result v15

    .line 125
    move/from16 v16, v7

    .line 126
    .line 127
    iget-object v7, v14, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 128
    .line 129
    if-eqz v15, :cond_1

    .line 130
    .line 131
    iget-object v14, v2, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    .line 132
    .line 133
    check-cast v7, Lorg/minidns/record/A;

    .line 134
    .line 135
    :try_start_0
    iget-object v7, v7, Lorg/minidns/record/InternetAddressRR;->ip:[B

    .line 136
    .line 137
    invoke-virtual {v7}, [B->clone()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    check-cast v7, [B

    .line 142
    .line 143
    invoke-static {v14, v7}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    .line 144
    .line 145
    .line 146
    move-result-object v7
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-object/from16 v17, v12

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    return-object v12

    .line 158
    :cond_1
    iget-object v15, v14, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    .line 159
    .line 160
    move-object/from16 v17, v12

    .line 161
    .line 162
    sget-object v12, Lorg/minidns/record/Record$TYPE;->CNAME:Lorg/minidns/record/Record$TYPE;

    .line 163
    .line 164
    if-ne v15, v12, :cond_2

    .line 165
    .line 166
    iget-object v12, v14, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 167
    .line 168
    invoke-virtual {v12, v2}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v12

    .line 172
    if-eqz v12, :cond_2

    .line 173
    .line 174
    check-cast v7, Lorg/minidns/record/RRWithTarget;

    .line 175
    .line 176
    iget-object v2, v7, Lorg/minidns/record/RRWithTarget;->target:Lorg/minidns/dnsname/DnsName;

    .line 177
    .line 178
    invoke-virtual {v0, v1, v2}, Lorg/minidns/iterative/ReliableDnsClient$1;->resolveIpRecursive(Lde/cketti/changelog/XmlParser;Lorg/minidns/dnsname/DnsName;)Lcom/fsck/k9/mailstore/LocalFolder$9;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    return-object v0

    .line 183
    :cond_2
    :goto_2
    move/from16 v7, v16

    .line 184
    .line 185
    move-object/from16 v12, v17

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_3
    move/from16 v16, v7

    .line 189
    .line 190
    move-object/from16 v17, v12

    .line 191
    .line 192
    invoke-static {v4}, Lkotlinx/io/Sink$-CC;->getV6(I)Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_7

    .line 197
    .line 198
    new-instance v4, Lorg/minidns/dnsmessage/Question;

    .line 199
    .line 200
    sget-object v6, Lorg/minidns/record/Record$TYPE;->AAAA:Lorg/minidns/record/Record$TYPE;

    .line 201
    .line 202
    invoke-direct {v4, v2, v6}, Lorg/minidns/dnsmessage/Question;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)V

    .line 203
    .line 204
    .line 205
    sget-object v6, Lorg/minidns/dnsmessage/DnsMessage;->LOGGER:Ljava/util/logging/Logger;

    .line 206
    .line 207
    new-instance v6, Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 208
    .line 209
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 210
    .line 211
    .line 212
    sget-object v7, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->QUERY:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 213
    .line 214
    iput-object v7, v6, Lorg/minidns/dnsmessage/DnsMessage$Builder;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 215
    .line 216
    sget-object v7, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 217
    .line 218
    iput-object v7, v6, Lorg/minidns/dnsmessage/DnsMessage$Builder;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 219
    .line 220
    iput-wide v10, v6, Lorg/minidns/dnsmessage/DnsMessage$Builder;->receiveTimestamp:J

    .line 221
    .line 222
    new-instance v7, Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    .line 226
    .line 227
    iput-object v7, v6, Lorg/minidns/dnsmessage/DnsMessage$Builder;->questions:Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    invoke-virtual {v8}, Ljava/util/Random;->nextInt()I

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    and-int v7, v7, v16

    .line 237
    .line 238
    iput v7, v6, Lorg/minidns/dnsmessage/DnsMessage$Builder;->id:I

    .line 239
    .line 240
    invoke-virtual {v0, v6}, Lorg/minidns/iterative/ReliableDnsClient$1;->newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    new-instance v7, Lorg/minidns/dnsmessage/DnsMessage;

    .line 248
    .line 249
    invoke-direct {v7, v6}, Lorg/minidns/dnsmessage/DnsMessage;-><init>(Lorg/minidns/dnsmessage/DnsMessage$Builder;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v1, v7}, Lorg/minidns/iterative/ReliableDnsClient$1;->queryRecursive(Lde/cketti/changelog/XmlParser;Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    if-eqz v6, :cond_4

    .line 257
    .line 258
    iget-object v6, v6, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v6, Lorg/minidns/dnsmessage/DnsMessage;

    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_4
    move-object/from16 v6, v17

    .line 264
    .line 265
    :goto_3
    if-eqz v6, :cond_7

    .line 266
    .line 267
    iget-object v6, v6, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    .line 268
    .line 269
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    :cond_5
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    if-eqz v7, :cond_7

    .line 278
    .line 279
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    check-cast v7, Lorg/minidns/record/Record;

    .line 284
    .line 285
    invoke-virtual {v7, v4}, Lorg/minidns/record/Record;->isAnswer(Lorg/minidns/dnsmessage/Question;)Z

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    iget-object v10, v7, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 290
    .line 291
    if-eqz v8, :cond_6

    .line 292
    .line 293
    iget-object v7, v2, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    .line 294
    .line 295
    check-cast v10, Lorg/minidns/record/AAAA;

    .line 296
    .line 297
    :try_start_1
    iget-object v8, v10, Lorg/minidns/record/InternetAddressRR;->ip:[B

    .line 298
    .line 299
    invoke-virtual {v8}, [B->clone()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    check-cast v8, [B

    .line 304
    .line 305
    invoke-static {v7, v8}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    .line 306
    .line 307
    .line 308
    move-result-object v7
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 309
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    goto :goto_4

    .line 313
    :catch_1
    move-exception v0

    .line 314
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 315
    .line 316
    .line 317
    return-object v17

    .line 318
    :cond_6
    iget-object v8, v7, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    .line 319
    .line 320
    sget-object v11, Lorg/minidns/record/Record$TYPE;->CNAME:Lorg/minidns/record/Record$TYPE;

    .line 321
    .line 322
    if-ne v8, v11, :cond_5

    .line 323
    .line 324
    iget-object v7, v7, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 325
    .line 326
    invoke-virtual {v7, v2}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v7

    .line 330
    if-eqz v7, :cond_5

    .line 331
    .line 332
    check-cast v10, Lorg/minidns/record/RRWithTarget;

    .line 333
    .line 334
    iget-object v2, v10, Lorg/minidns/record/RRWithTarget;->target:Lorg/minidns/dnsname/DnsName;

    .line 335
    .line 336
    invoke-virtual {v0, v1, v2}, Lorg/minidns/iterative/ReliableDnsClient$1;->resolveIpRecursive(Lde/cketti/changelog/XmlParser;Lorg/minidns/dnsname/DnsName;)Lcom/fsck/k9/mailstore/LocalFolder$9;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    return-object v0

    .line 341
    :cond_7
    new-instance v1, Lcom/fsck/k9/mailstore/LocalFolder$9;

    .line 342
    .line 343
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 344
    .line 345
    .line 346
    sget v2, Lorg/minidns/AbstractDnsClient;->DEFAULT_IP_VERSION_SETTING:I

    .line 347
    .line 348
    invoke-static {v2}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    if-eqz v4, :cond_9

    .line 353
    .line 354
    if-eq v4, v9, :cond_8

    .line 355
    .line 356
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 357
    .line 358
    .line 359
    move-result v4

    .line 360
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 361
    .line 362
    .line 363
    move-result v6

    .line 364
    add-int/2addr v6, v4

    .line 365
    goto :goto_5

    .line 366
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 367
    .line 368
    .line 369
    move-result v6

    .line 370
    goto :goto_5

    .line 371
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    :goto_5
    if-nez v6, :cond_a

    .line 376
    .line 377
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 378
    .line 379
    iput-object v0, v1, Lcom/fsck/k9/mailstore/LocalFolder$9;->val$messages:Ljava/util/List;

    .line 380
    .line 381
    goto :goto_6

    .line 382
    :cond_a
    invoke-static {v2}, Lkotlinx/io/Sink$-CC;->getV4(I)Z

    .line 383
    .line 384
    .line 385
    move-result v4

    .line 386
    iget-object v0, v0, Lorg/minidns/AbstractDnsClient;->insecureRandom:Ljava/util/Random;

    .line 387
    .line 388
    if-eqz v4, :cond_b

    .line 389
    .line 390
    invoke-static {v3, v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 391
    .line 392
    .line 393
    :cond_b
    invoke-static {v2}, Lkotlinx/io/Sink$-CC;->getV6(I)Z

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    if-eqz v2, :cond_c

    .line 398
    .line 399
    invoke-static {v5, v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 400
    .line 401
    .line 402
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    .line 403
    .line 404
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 411
    .line 412
    .line 413
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    iput-object v0, v1, Lcom/fsck/k9/mailstore/LocalFolder$9;->val$messages:Ljava/util/List;

    .line 418
    .line 419
    :goto_6
    return-object v1
.end method

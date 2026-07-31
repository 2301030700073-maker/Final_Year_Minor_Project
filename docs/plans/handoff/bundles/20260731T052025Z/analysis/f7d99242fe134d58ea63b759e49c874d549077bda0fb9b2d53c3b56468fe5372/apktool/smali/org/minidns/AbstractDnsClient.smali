.class public abstract Lorg/minidns/AbstractDnsClient;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final DEFAULT_CACHE:Lorg/minidns/cache/LruCache;

.field public static final DEFAULT_IP_VERSION_SETTING:I

.field public static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field public final cache:Lorg/minidns/cache/LruCache;

.field public final dataSource:Lorg/minidns/source/NetworkDataSource;

.field public final insecureRandom:Ljava/util/Random;

.field public final ipVersionSetting:I

.field public final onResponseCallback:Lorg/jsoup/safety/Cleaner;

.field public final random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/minidns/cache/LruCache;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/minidns/cache/LruCache;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/minidns/AbstractDnsClient;->DEFAULT_CACHE:Lorg/minidns/cache/LruCache;

    .line 7
    .line 8
    const-class v0, Lorg/minidns/AbstractDnsClient;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lorg/minidns/AbstractDnsClient;->LOGGER:Ljava/util/logging/Logger;

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    sput v0, Lorg/minidns/AbstractDnsClient;->DEFAULT_IP_VERSION_SETTING:I

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/minidns/cache/LruCache;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/jsoup/safety/Cleaner;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/jsoup/safety/Cleaner;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/minidns/AbstractDnsClient;->onResponseCallback:Lorg/jsoup/safety/Cleaner;

    .line 10
    .line 11
    new-instance v0, Ljava/util/Random;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/minidns/AbstractDnsClient;->insecureRandom:Ljava/util/Random;

    .line 17
    .line 18
    new-instance v0, Lorg/minidns/source/NetworkDataSource;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    iput v1, v0, Lorg/minidns/source/NetworkDataSource;->queryMode:I

    .line 25
    .line 26
    iput-object v0, p0, Lorg/minidns/AbstractDnsClient;->dataSource:Lorg/minidns/source/NetworkDataSource;

    .line 27
    .line 28
    sget v0, Lorg/minidns/AbstractDnsClient;->DEFAULT_IP_VERSION_SETTING:I

    .line 29
    .line 30
    iput v0, p0, Lorg/minidns/AbstractDnsClient;->ipVersionSetting:I

    .line 31
    .line 32
    :try_start_0
    const-string v0, "SHA1PRNG"

    .line 33
    .line 34
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    .line 35
    .line 36
    .line 37
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    new-instance v0, Ljava/security/SecureRandom;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 42
    .line 43
    .line 44
    :goto_0
    iput-object v0, p0, Lorg/minidns/AbstractDnsClient;->random:Ljava/security/SecureRandom;

    .line 45
    .line 46
    iput-object p1, p0, Lorg/minidns/AbstractDnsClient;->cache:Lorg/minidns/cache/LruCache;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final getCachedIPNameserverAddressesFor(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;
    .locals 4

    .line 1
    sget-object v0, Lorg/minidns/record/Record$TYPE;->NS:Lorg/minidns/record/Record$TYPE;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/minidns/AbstractDnsClient;->getCachedRecordsFor(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    mul-int/lit8 v1, v1, 0x3

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lorg/minidns/record/NS;

    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x1

    .line 48
    if-eq v2, v3, :cond_2

    .line 49
    .line 50
    const/16 v3, 0x1c

    .line 51
    .line 52
    if-ne v2, v3, :cond_1

    .line 53
    .line 54
    iget-object v1, v1, Lorg/minidns/record/RRWithTarget;->target:Lorg/minidns/dnsname/DnsName;

    .line 55
    .line 56
    sget-object v2, Lorg/minidns/record/Record$TYPE;->AAAA:Lorg/minidns/record/Record$TYPE;

    .line 57
    .line 58
    invoke-virtual {p0, v1, v2}, Lorg/minidns/AbstractDnsClient;->getCachedRecordsFor(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    .line 64
    .line 65
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_2
    iget-object v1, v1, Lorg/minidns/record/RRWithTarget;->target:Lorg/minidns/dnsname/DnsName;

    .line 70
    .line 71
    sget-object v2, Lorg/minidns/record/Record$TYPE;->A:Lorg/minidns/record/Record$TYPE;

    .line 72
    .line 73
    invoke-virtual {p0, v1, v2}, Lorg/minidns/AbstractDnsClient;->getCachedRecordsFor(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    return-object v0
.end method

.method public final getCachedRecordsFor(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/minidns/AbstractDnsClient;->cache:Lorg/minidns/cache/LruCache;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v1, Lorg/minidns/dnsmessage/Question;

    .line 9
    .line 10
    invoke-direct {v1, p1, p2}, Lorg/minidns/dnsmessage/Question;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lorg/minidns/dnsmessage/DnsMessage;->LOGGER:Ljava/util/logging/Logger;

    .line 14
    .line 15
    new-instance p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-object p2, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->QUERY:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 21
    .line 22
    iput-object p2, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 23
    .line 24
    sget-object p2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 25
    .line 26
    iput-object p2, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 27
    .line 28
    const-wide/16 v2, -0x1

    .line 29
    .line 30
    iput-wide v2, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->receiveTimestamp:J

    .line 31
    .line 32
    new-instance p2, Ljava/util/ArrayList;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->questions:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lorg/minidns/AbstractDnsClient;->random:Ljava/security/SecureRandom;

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    const v2, 0xffff

    .line 50
    .line 51
    .line 52
    and-int/2addr p2, v2

    .line 53
    iput p2, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->id:I

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lorg/minidns/AbstractDnsClient;->newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    new-instance p1, Lorg/minidns/dnsmessage/DnsMessage;

    .line 63
    .line 64
    invoke-direct {p1, p0}, Lorg/minidns/dnsmessage/DnsMessage;-><init>(Lorg/minidns/dnsmessage/DnsMessage$Builder;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lorg/minidns/cache/LruCache;->get(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsqueryresult/DirectCachedDnsQueryResult;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    if-nez p0, :cond_1

    .line 72
    .line 73
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_1
    iget-object p0, p0, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p0, Lorg/minidns/dnsmessage/DnsMessage;

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Lorg/minidns/dnsmessage/DnsMessage;->getAnswersFor(Lorg/minidns/dnsmessage/Question;)Ljava/util/HashSet;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method

.method public abstract isResponseCacheable(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;)Z
.end method

.method public abstract newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
.end method

.method public abstract query(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
.end method

.method public final query(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 11

    .line 1
    const/16 v0, 0x35

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/minidns/AbstractDnsClient;->cache:Lorg/minidns/cache/LruCache;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1, p1}, Lorg/minidns/cache/LruCache;->get(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsqueryresult/DirectCachedDnsQueryResult;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    if-eqz v1, :cond_1

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_1
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->getQuestion()Lorg/minidns/dnsmessage/Question;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 25
    .line 26
    sget-object v3, Lorg/minidns/AbstractDnsClient;->LOGGER:Ljava/util/logging/Logger;

    .line 27
    .line 28
    const-string v4, "Asking {0} on {1} for {2} with:\n{3}"

    .line 29
    .line 30
    const/4 v5, 0x4

    .line 31
    new-array v6, v5, [Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    aput-object p2, v6, v7

    .line 35
    .line 36
    const/4 v8, 0x1

    .line 37
    aput-object v0, v6, v8

    .line 38
    .line 39
    const/4 v9, 0x2

    .line 40
    aput-object v1, v6, v9

    .line 41
    .line 42
    const/4 v10, 0x3

    .line 43
    aput-object p1, v6, v10

    .line 44
    .line 45
    invoke-virtual {v3, v2, v4, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :try_start_0
    iget-object v4, p0, Lorg/minidns/AbstractDnsClient;->dataSource:Lorg/minidns/source/NetworkDataSource;

    .line 49
    .line 50
    invoke-virtual {v4, p1, p2}, Lorg/minidns/source/NetworkDataSource;->query(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;

    .line 51
    .line 52
    .line 53
    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const-string v6, "Response from {0} on {1} for {2}:\n{3}"

    .line 55
    .line 56
    new-array v5, v5, [Ljava/lang/Object;

    .line 57
    .line 58
    aput-object p2, v5, v7

    .line 59
    .line 60
    aput-object v0, v5, v8

    .line 61
    .line 62
    aput-object v1, v5, v9

    .line 63
    .line 64
    aput-object v4, v5, v10

    .line 65
    .line 66
    invoke-virtual {v3, v2, v6, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lorg/minidns/AbstractDnsClient;->onResponseCallback:Lorg/jsoup/safety/Cleaner;

    .line 70
    .line 71
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->getQuestion()Lorg/minidns/dnsmessage/Question;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iget-object v0, p0, Lorg/jsoup/safety/Cleaner;->safelist:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v0, Lorg/minidns/AbstractDnsClient;

    .line 78
    .line 79
    iget-object v1, v0, Lorg/minidns/AbstractDnsClient;->cache:Lorg/minidns/cache/LruCache;

    .line 80
    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    invoke-virtual {v0, p2, v4}, Lorg/minidns/AbstractDnsClient;->isResponseCacheable(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_5

    .line 88
    .line 89
    iget-object p0, p0, Lorg/jsoup/safety/Cleaner;->safelist:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p0, Lorg/minidns/AbstractDnsClient;

    .line 92
    .line 93
    iget-object p0, p0, Lorg/minidns/AbstractDnsClient;->cache:Lorg/minidns/cache/LruCache;

    .line 94
    .line 95
    iget-object p2, p1, Lorg/minidns/dnsmessage/DnsMessage;->normalizedVersionCache:Lorg/minidns/dnsmessage/DnsMessage;

    .line 96
    .line 97
    if-nez p2, :cond_2

    .line 98
    .line 99
    new-instance p2, Lorg/minidns/dnsmessage/DnsMessage;

    .line 100
    .line 101
    invoke-direct {p2, p1}, Lorg/minidns/dnsmessage/DnsMessage;-><init>(Lorg/minidns/dnsmessage/DnsMessage;)V

    .line 102
    .line 103
    .line 104
    iput-object p2, p1, Lorg/minidns/dnsmessage/DnsMessage;->normalizedVersionCache:Lorg/minidns/dnsmessage/DnsMessage;

    .line 105
    .line 106
    :cond_2
    iget-object p1, p1, Lorg/minidns/dnsmessage/DnsMessage;->normalizedVersionCache:Lorg/minidns/dnsmessage/DnsMessage;

    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    iget-object p2, p1, Lorg/minidns/dnsmessage/DnsMessage;->normalizedVersionCache:Lorg/minidns/dnsmessage/DnsMessage;

    .line 112
    .line 113
    if-nez p2, :cond_3

    .line 114
    .line 115
    new-instance p2, Lorg/minidns/dnsmessage/DnsMessage;

    .line 116
    .line 117
    invoke-direct {p2, p1}, Lorg/minidns/dnsmessage/DnsMessage;-><init>(Lorg/minidns/dnsmessage/DnsMessage;)V

    .line 118
    .line 119
    .line 120
    iput-object p2, p1, Lorg/minidns/dnsmessage/DnsMessage;->normalizedVersionCache:Lorg/minidns/dnsmessage/DnsMessage;

    .line 121
    .line 122
    :cond_3
    iget-object p1, p1, Lorg/minidns/dnsmessage/DnsMessage;->normalizedVersionCache:Lorg/minidns/dnsmessage/DnsMessage;

    .line 123
    .line 124
    monitor-enter p0

    .line 125
    :try_start_1
    iget-object p2, v4, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast p2, Lorg/minidns/dnsmessage/DnsMessage;

    .line 128
    .line 129
    iget-wide v0, p2, Lorg/minidns/dnsmessage/DnsMessage;->receiveTimestamp:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .line 131
    const-wide/16 v2, 0x0

    .line 132
    .line 133
    cmp-long v0, v0, v2

    .line 134
    .line 135
    if-gtz v0, :cond_4

    .line 136
    .line 137
    monitor-exit p0

    .line 138
    return-object v4

    .line 139
    :cond_4
    :try_start_2
    iget-object v0, p0, Lorg/minidns/cache/LruCache;->backend:Lorg/minidns/cache/LruCache$1;

    .line 140
    .line 141
    new-instance v1, Lorg/minidns/dnsqueryresult/DirectCachedDnsQueryResult;

    .line 142
    .line 143
    invoke-direct {v1, v7, p2}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    .line 148
    .line 149
    monitor-exit p0

    .line 150
    return-object v4

    .line 151
    :catchall_0
    move-exception p1

    .line 152
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    throw p1

    .line 154
    :cond_5
    return-object v4

    .line 155
    :catch_0
    move-exception p0

    .line 156
    sget-object p1, Lorg/minidns/AbstractDnsClient;->LOGGER:Ljava/util/logging/Logger;

    .line 157
    .line 158
    const-string v3, "IOException {0} on {1} while resolving {2}: {3}"

    .line 159
    .line 160
    new-array v4, v5, [Ljava/lang/Object;

    .line 161
    .line 162
    aput-object p2, v4, v7

    .line 163
    .line 164
    aput-object v0, v4, v8

    .line 165
    .line 166
    aput-object v1, v4, v9

    .line 167
    .line 168
    aput-object p0, v4, v10

    .line 169
    .line 170
    invoke-virtual {p1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    throw p0
.end method

.class public final Lorg/minidns/cache/LruCache;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final backend:Lorg/minidns/cache/LruCache$1;

.field public expireCount:J

.field public hitCount:J

.field public missCount:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/minidns/cache/LruCache;->missCount:J

    .line 7
    .line 8
    iput-wide v0, p0, Lorg/minidns/cache/LruCache;->expireCount:J

    .line 9
    .line 10
    iput-wide v0, p0, Lorg/minidns/cache/LruCache;->hitCount:J

    .line 11
    .line 12
    new-instance v0, Lorg/minidns/cache/LruCache$1;

    .line 13
    .line 14
    const/16 v1, 0x282

    .line 15
    .line 16
    const/16 v2, 0xb

    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/high16 v2, 0x3f400000    # 0.75f

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/minidns/cache/LruCache;->backend:Lorg/minidns/cache/LruCache$1;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final get(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsqueryresult/DirectCachedDnsQueryResult;
    .locals 12

    .line 1
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->normalizedVersionCache:Lorg/minidns/dnsmessage/DnsMessage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lorg/minidns/dnsmessage/DnsMessage;-><init>(Lorg/minidns/dnsmessage/DnsMessage;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->normalizedVersionCache:Lorg/minidns/dnsmessage/DnsMessage;

    .line 11
    .line 12
    :cond_0
    iget-object p1, p1, Lorg/minidns/dnsmessage/DnsMessage;->normalizedVersionCache:Lorg/minidns/dnsmessage/DnsMessage;

    .line 13
    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lorg/minidns/cache/LruCache;->backend:Lorg/minidns/cache/LruCache$1;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/minidns/dnsqueryresult/DirectCachedDnsQueryResult;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const-wide/16 v2, 0x1

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-wide v4, p0, Lorg/minidns/cache/LruCache;->missCount:J

    .line 29
    .line 30
    add-long/2addr v4, v2

    .line 31
    iput-wide v4, p0, Lorg/minidns/cache/LruCache;->missCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-object v1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    :try_start_1
    iget-object v4, v0, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v4, Lorg/minidns/dnsmessage/DnsMessage;

    .line 40
    .line 41
    iget-wide v5, v4, Lorg/minidns/dnsmessage/DnsMessage;->answersMinTtlCache:J

    .line 42
    .line 43
    const-wide/16 v7, 0x0

    .line 44
    .line 45
    cmp-long v7, v5, v7

    .line 46
    .line 47
    const-wide v8, 0x7fffffffffffffffL

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    if-ltz v7, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iput-wide v8, v4, Lorg/minidns/dnsmessage/DnsMessage;->answersMinTtlCache:J

    .line 56
    .line 57
    iget-object v5, v4, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_3

    .line 68
    .line 69
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Lorg/minidns/record/Record;

    .line 74
    .line 75
    iget-wide v10, v4, Lorg/minidns/dnsmessage/DnsMessage;->answersMinTtlCache:J

    .line 76
    .line 77
    iget-wide v6, v6, Lorg/minidns/record/Record;->ttl:J

    .line 78
    .line 79
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 80
    .line 81
    .line 82
    move-result-wide v6

    .line 83
    iput-wide v6, v4, Lorg/minidns/dnsmessage/DnsMessage;->answersMinTtlCache:J

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    iget-wide v5, v4, Lorg/minidns/dnsmessage/DnsMessage;->answersMinTtlCache:J

    .line 87
    .line 88
    :goto_1
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 89
    .line 90
    .line 91
    move-result-wide v5

    .line 92
    iget-wide v7, v4, Lorg/minidns/dnsmessage/DnsMessage;->receiveTimestamp:J

    .line 93
    .line 94
    const-wide/16 v9, 0x3e8

    .line 95
    .line 96
    mul-long/2addr v5, v9

    .line 97
    add-long/2addr v5, v7

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v7

    .line 102
    cmp-long v4, v5, v7

    .line 103
    .line 104
    if-gez v4, :cond_4

    .line 105
    .line 106
    iget-wide v4, p0, Lorg/minidns/cache/LruCache;->missCount:J

    .line 107
    .line 108
    add-long/2addr v4, v2

    .line 109
    iput-wide v4, p0, Lorg/minidns/cache/LruCache;->missCount:J

    .line 110
    .line 111
    iget-wide v4, p0, Lorg/minidns/cache/LruCache;->expireCount:J

    .line 112
    .line 113
    add-long/2addr v4, v2

    .line 114
    iput-wide v4, p0, Lorg/minidns/cache/LruCache;->expireCount:J

    .line 115
    .line 116
    iget-object v0, p0, Lorg/minidns/cache/LruCache;->backend:Lorg/minidns/cache/LruCache$1;

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    .line 121
    monitor-exit p0

    .line 122
    return-object v1

    .line 123
    :cond_4
    :try_start_2
    iget-wide v4, p0, Lorg/minidns/cache/LruCache;->hitCount:J

    .line 124
    .line 125
    add-long/2addr v4, v2

    .line 126
    iput-wide v4, p0, Lorg/minidns/cache/LruCache;->hitCount:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    .line 128
    monitor-exit p0

    .line 129
    return-object v0

    .line 130
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/minidns/cache/LruCache;->backend:Lorg/minidns/cache/LruCache$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-wide v1, p0, Lorg/minidns/cache/LruCache;->hitCount:J

    .line 8
    .line 9
    iget-wide v3, p0, Lorg/minidns/cache/LruCache;->missCount:J

    .line 10
    .line 11
    iget-wide v5, p0, Lorg/minidns/cache/LruCache;->expireCount:J

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v7, "LRUCache{usage="

    .line 16
    .line 17
    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, "/512, hits="

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, ", misses="

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ", expires="

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string/jumbo v0, "}"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

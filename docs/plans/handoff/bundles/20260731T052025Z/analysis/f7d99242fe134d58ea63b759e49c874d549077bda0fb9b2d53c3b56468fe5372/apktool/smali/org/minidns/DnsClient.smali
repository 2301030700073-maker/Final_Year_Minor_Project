.class public abstract Lorg/minidns/DnsClient;
.super Lorg/minidns/AbstractDnsClient;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final LOOKUP_MECHANISMS:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static final STATIC_IPV4_DNS_SERVERS:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public static final STATIC_IPV6_DNS_SERVERS:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public static final blacklistedDnsServers:Ljava/util/Set;


# instance fields
.field public final nonRaServers:Ljava/util/Set;

.field public final useHardcodedDnsServers:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lorg/minidns/AbstractDnsClient;->LOGGER:Ljava/util/logging/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    sput-object v1, Lorg/minidns/DnsClient;->LOOKUP_MECHANISMS:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lorg/minidns/DnsClient;->STATIC_IPV4_DNS_SERVERS:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 16
    .line 17
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v2, Lorg/minidns/DnsClient;->STATIC_IPV6_DNS_SERVERS:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 23
    .line 24
    sget-object v2, Lorg/minidns/dnsserverlookup/AndroidUsingExec;->INSTANCE:Lorg/minidns/dnsserverlookup/AndroidUsingExec;

    .line 25
    .line 26
    invoke-static {v2}, Lorg/minidns/DnsClient;->addDnsServerLookupMechanism(Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;)V

    .line 27
    .line 28
    .line 29
    sget-object v2, Lorg/minidns/dnsserverlookup/AndroidUsingReflection;->INSTANCE:Lorg/minidns/dnsserverlookup/AndroidUsingReflection;

    .line 30
    .line 31
    invoke-static {v2}, Lorg/minidns/DnsClient;->addDnsServerLookupMechanism(Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;)V

    .line 32
    .line 33
    .line 34
    sget-object v2, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->INSTANCE:Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;

    .line 35
    .line 36
    invoke-static {v2}, Lorg/minidns/DnsClient;->addDnsServerLookupMechanism(Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;)V

    .line 37
    .line 38
    .line 39
    :try_start_0
    const-string v2, "8.8.8.8"

    .line 40
    .line 41
    sget-object v3, Lorg/minidns/util/InetAddressUtil;->IPV4_PATTERN:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    :try_start_1
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 44
    .line 45
    .line 46
    move-result-object v2
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    :try_start_2
    instance-of v3, v2, Ljava/net/Inet4Address;

    .line 48
    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    check-cast v2, Ljava/net/Inet4Address;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception v1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 62
    .line 63
    .line 64
    throw v1

    .line 65
    :catch_1
    move-exception v1

    .line 66
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 72
    :goto_0
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 73
    .line 74
    const-string v3, "Could not add static IPv4 DNS Server"

    .line 75
    .line 76
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    :try_start_3
    const-string v1, "[2001:4860:4860::8888]"

    .line 80
    .line 81
    sget-object v2, Lorg/minidns/util/InetAddressUtil;->IPV4_PATTERN:Ljava/util/regex/Pattern;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 82
    .line 83
    :try_start_4
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 84
    .line 85
    .line 86
    move-result-object v1
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 87
    :try_start_5
    instance-of v2, v1, Ljava/net/Inet6Address;

    .line 88
    .line 89
    if-eqz v2, :cond_1

    .line 90
    .line 91
    check-cast v1, Ljava/net/Inet6Address;

    .line 92
    .line 93
    sget-object v2, Lorg/minidns/DnsClient;->STATIC_IPV6_DNS_SERVERS:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 94
    .line 95
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :catch_2
    move-exception v1

    .line 100
    goto :goto_2

    .line 101
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 104
    .line 105
    .line 106
    throw v1

    .line 107
    :catch_3
    move-exception v1

    .line 108
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    throw v2
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    .line 114
    :goto_2
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 115
    .line 116
    const-string v3, "Could not add static IPv6 DNS Server"

    .line 117
    .line 118
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    :goto_3
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 122
    .line 123
    const/4 v1, 0x4

    .line 124
    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 125
    .line 126
    .line 127
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sput-object v0, Lorg/minidns/DnsClient;->blacklistedDnsServers:Ljava/util/Set;

    .line 132
    .line 133
    return-void
.end method

.method public constructor <init>(Lorg/minidns/cache/LruCache;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/minidns/AbstractDnsClient;-><init>(Lorg/minidns/cache/LruCache;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    invoke-direct {p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lorg/minidns/DnsClient;->nonRaServers:Ljava/util/Set;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lorg/minidns/DnsClient;->useHardcodedDnsServers:Z

    .line 18
    .line 19
    return-void
.end method

.method public static addDnsServerLookupMechanism(Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;->isAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lorg/minidns/AbstractDnsClient;->LOGGER:Ljava/util/logging/Logger;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;->name:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "Not adding "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, " as it is not available."

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    sget-object v0, Lorg/minidns/DnsClient;->LOOKUP_MECHANISMS:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    .line 36
    monitor-enter v0

    .line 37
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 61
    .line 62
    .line 63
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method


# virtual methods
.method public final query(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p1}, Lorg/minidns/AbstractDnsClient;->newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v2, Lorg/minidns/dnsmessage/DnsMessage;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Lorg/minidns/dnsmessage/DnsMessage;-><init>(Lorg/minidns/dnsmessage/DnsMessage$Builder;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lorg/minidns/AbstractDnsClient;->cache:Lorg/minidns/cache/LruCache;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0, v2}, Lorg/minidns/cache/LruCache;->get(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsqueryresult/DirectCachedDnsQueryResult;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    if-eqz v0, :cond_1

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 29
    .line 30
    sget-object v0, Lorg/minidns/DnsClient;->LOOKUP_MECHANISMS:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const/4 v6, 0x0

    .line 37
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v7, 0x2

    .line 42
    const/4 v8, 0x1

    .line 43
    const/4 v9, 0x0

    .line 44
    sget-object v10, Lorg/minidns/AbstractDnsClient;->LOGGER:Ljava/util/logging/Logger;

    .line 45
    .line 46
    if-eqz v0, :cond_d

    .line 47
    .line 48
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v11, v0

    .line 53
    check-cast v11, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;

    .line 54
    .line 55
    :try_start_0
    invoke-virtual {v11}, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;->getDnsServerAddresses()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    sget-object v12, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 62
    .line 63
    const-string v13, "Could not lookup DNS server"

    .line 64
    .line 65
    invoke-virtual {v10, v12, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    :goto_2
    if-nez v6, :cond_2

    .line 69
    .line 70
    iget-object v0, v11, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;->name:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v7, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v8, "DnsServerLookupMechanism \'"

    .line 75
    .line 76
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, "\' did not return any DNS server"

    .line 83
    .line 84
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v10, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {v10, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    :cond_3
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v13

    .line 114
    if-eqz v13, :cond_4

    .line 115
    .line 116
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    check-cast v13, Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v13

    .line 129
    if-eqz v13, :cond_3

    .line 130
    .line 131
    const-string v13, ", "

    .line 132
    .line 133
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget-object v12, v11, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;->name:Ljava/lang/String;

    .line 142
    .line 143
    new-array v13, v7, [Ljava/lang/Object;

    .line 144
    .line 145
    aput-object v12, v13, v9

    .line 146
    .line 147
    aput-object v0, v13, v8

    .line 148
    .line 149
    const-string v0, "DnsServerLookupMechanism {0} returned the following DNS servers: {1}"

    .line 150
    .line 151
    invoke-virtual {v10, v4, v0, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v12

    .line 162
    const-string v13, "The DNS server lookup mechanism \'"

    .line 163
    .line 164
    if-eqz v12, :cond_b

    .line 165
    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    check-cast v12, Ljava/lang/String;

    .line 171
    .line 172
    sget-object v14, Lorg/minidns/util/InetAddressUtil;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    .line 173
    .line 174
    if-nez v12, :cond_7

    .line 175
    .line 176
    move v14, v9

    .line 177
    goto :goto_5

    .line 178
    :cond_7
    sget-object v14, Lorg/minidns/util/InetAddressUtil;->IPV6_PATTERN:Ljava/util/regex/Pattern;

    .line 179
    .line 180
    invoke-virtual {v14, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 181
    .line 182
    .line 183
    move-result-object v14

    .line 184
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    .line 185
    .line 186
    .line 187
    move-result v14

    .line 188
    :goto_5
    const-string v15, "\'"

    .line 189
    .line 190
    if-nez v14, :cond_9

    .line 191
    .line 192
    if-nez v12, :cond_8

    .line 193
    .line 194
    move v14, v9

    .line 195
    goto :goto_6

    .line 196
    :cond_8
    sget-object v14, Lorg/minidns/util/InetAddressUtil;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    .line 197
    .line 198
    invoke-virtual {v14, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 199
    .line 200
    .line 201
    move-result-object v14

    .line 202
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    .line 203
    .line 204
    .line 205
    move-result v14

    .line 206
    :goto_6
    if-eqz v14, :cond_a

    .line 207
    .line 208
    :cond_9
    const/16 p1, 0x0

    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_a
    iget-object v14, v11, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;->name:Ljava/lang/String;

    .line 212
    .line 213
    const/16 p1, 0x0

    .line 214
    .line 215
    const-string v3, "\' returned an invalid non-IP address result: \'"

    .line 216
    .line 217
    invoke-static {v13, v14, v3, v12, v15}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v10, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 225
    .line 226
    .line 227
    goto :goto_4

    .line 228
    :goto_7
    sget-object v3, Lorg/minidns/DnsClient;->blacklistedDnsServers:Ljava/util/Set;

    .line 229
    .line 230
    invoke-interface {v3, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    if-eqz v3, :cond_6

    .line 235
    .line 236
    iget-object v3, v11, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;->name:Ljava/lang/String;

    .line 237
    .line 238
    const-string v14, "\' returned a blacklisted result: \'"

    .line 239
    .line 240
    invoke-static {v13, v3, v14, v12, v15}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    invoke-virtual {v10, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 248
    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_b
    const/16 p1, 0x0

    .line 252
    .line 253
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-nez v0, :cond_c

    .line 258
    .line 259
    goto :goto_8

    .line 260
    :cond_c
    iget-object v0, v11, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;->name:Ljava/lang/String;

    .line 261
    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v0, "\' returned not a single valid IP address after sanitazion"

    .line 271
    .line 272
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {v10, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    move-object/from16 v6, p1

    .line 283
    .line 284
    goto/16 :goto_1

    .line 285
    .line 286
    :cond_d
    const/16 p1, 0x0

    .line 287
    .line 288
    :goto_8
    if-nez v6, :cond_e

    .line 289
    .line 290
    new-instance v0, Ljava/util/ArrayList;

    .line 291
    .line 292
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_d

    .line 296
    .line 297
    :cond_e
    sget v3, Lorg/minidns/AbstractDnsClient;->DEFAULT_IP_VERSION_SETTING:I

    .line 298
    .line 299
    invoke-static {v3}, Lkotlinx/io/Sink$-CC;->getV4(I)Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    invoke-static {v3}, Lkotlinx/io/Sink$-CC;->getV6(I)Z

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    if-eqz v0, :cond_f

    .line 308
    .line 309
    new-instance v0, Ljava/util/ArrayList;

    .line 310
    .line 311
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 316
    .line 317
    .line 318
    move-object v5, v0

    .line 319
    goto :goto_9

    .line 320
    :cond_f
    move-object/from16 v5, p1

    .line 321
    .line 322
    :goto_9
    if-eqz v4, :cond_10

    .line 323
    .line 324
    new-instance v0, Ljava/util/ArrayList;

    .line 325
    .line 326
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 327
    .line 328
    .line 329
    move-result v11

    .line 330
    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    .line 332
    .line 333
    move-object v11, v0

    .line 334
    goto :goto_a

    .line 335
    :cond_10
    move-object/from16 v11, p1

    .line 336
    .line 337
    :goto_a
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    if-eqz v0, :cond_15

    .line 346
    .line 347
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    move-object v12, v0

    .line 352
    check-cast v12, Ljava/lang/String;

    .line 353
    .line 354
    :try_start_1
    invoke-static {v12}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 355
    .line 356
    .line 357
    move-result-object v0
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 358
    instance-of v12, v0, Ljava/net/Inet4Address;

    .line 359
    .line 360
    if-eqz v12, :cond_12

    .line 361
    .line 362
    invoke-static {v3}, Lkotlinx/io/Sink$-CC;->getV4(I)Z

    .line 363
    .line 364
    .line 365
    move-result v12

    .line 366
    if-nez v12, :cond_11

    .line 367
    .line 368
    goto :goto_b

    .line 369
    :cond_11
    check-cast v0, Ljava/net/Inet4Address;

    .line 370
    .line 371
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    goto :goto_c

    .line 375
    :cond_12
    instance-of v12, v0, Ljava/net/Inet6Address;

    .line 376
    .line 377
    if-eqz v12, :cond_14

    .line 378
    .line 379
    if-nez v4, :cond_13

    .line 380
    .line 381
    goto :goto_b

    .line 382
    :cond_13
    check-cast v0, Ljava/net/Inet6Address;

    .line 383
    .line 384
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    :goto_c
    add-int/lit8 v9, v9, 0x1

    .line 388
    .line 389
    goto :goto_b

    .line 390
    :cond_14
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    const-string v1, "The address \'"

    .line 395
    .line 396
    const-string v2, "\' is neither of type Inet(4|6)Address"

    .line 397
    .line 398
    invoke-static {v1, v0, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    return-object p1

    .line 406
    :catch_1
    move-exception v0

    .line 407
    sget-object v13, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 408
    .line 409
    const-string v14, "Could not transform \'"

    .line 410
    .line 411
    const-string v15, "\' to InetAddress"

    .line 412
    .line 413
    invoke-static {v14, v12, v15}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v12

    .line 417
    invoke-virtual {v10, v13, v12, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 418
    .line 419
    .line 420
    goto :goto_b

    .line 421
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    .line 422
    .line 423
    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 430
    .line 431
    .line 432
    :goto_d
    iget-boolean v3, v1, Lorg/minidns/DnsClient;->useHardcodedDnsServers:Z

    .line 433
    .line 434
    const/4 v4, 0x3

    .line 435
    if-eqz v3, :cond_1e

    .line 436
    .line 437
    iget v3, v1, Lorg/minidns/AbstractDnsClient;->ipVersionSetting:I

    .line 438
    .line 439
    invoke-static {v3}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 440
    .line 441
    .line 442
    move-result v5

    .line 443
    sget-object v6, Lorg/minidns/DnsClient;->STATIC_IPV4_DNS_SERVERS:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 444
    .line 445
    iget-object v9, v1, Lorg/minidns/AbstractDnsClient;->insecureRandom:Ljava/util/Random;

    .line 446
    .line 447
    if-eqz v5, :cond_1d

    .line 448
    .line 449
    sget-object v11, Lorg/minidns/DnsClient;->STATIC_IPV6_DNS_SERVERS:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 450
    .line 451
    if-eq v5, v8, :cond_1c

    .line 452
    .line 453
    if-eq v5, v7, :cond_1b

    .line 454
    .line 455
    if-ne v5, v4, :cond_16

    .line 456
    .line 457
    invoke-static {v11, v9}, Lkotlin/text/CharsKt__CharKt;->getRandomFrom(Ljava/util/Set;Ljava/util/Random;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    check-cast v3, Ljava/net/InetAddress;

    .line 462
    .line 463
    invoke-static {v6, v9}, Lkotlin/text/CharsKt__CharKt;->getRandomFrom(Ljava/util/Set;Ljava/util/Random;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v5

    .line 467
    check-cast v5, Ljava/net/InetAddress;

    .line 468
    .line 469
    goto :goto_10

    .line 470
    :cond_16
    if-eq v3, v8, :cond_1a

    .line 471
    .line 472
    if-eq v3, v7, :cond_19

    .line 473
    .line 474
    if-eq v3, v4, :cond_18

    .line 475
    .line 476
    const/4 v0, 0x4

    .line 477
    if-eq v3, v0, :cond_17

    .line 478
    .line 479
    const-string v0, "null"

    .line 480
    .line 481
    goto :goto_e

    .line 482
    :cond_17
    const-string/jumbo v0, "v6v4"

    .line 483
    .line 484
    .line 485
    goto :goto_e

    .line 486
    :cond_18
    const-string/jumbo v0, "v4v6"

    .line 487
    .line 488
    .line 489
    goto :goto_e

    .line 490
    :cond_19
    const-string/jumbo v0, "v6only"

    .line 491
    .line 492
    .line 493
    goto :goto_e

    .line 494
    :cond_1a
    const-string/jumbo v0, "v4only"

    .line 495
    .line 496
    .line 497
    :goto_e
    const-string v1, "Unknown ipVersionSetting: "

    .line 498
    .line 499
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    return-object p1

    .line 507
    :cond_1b
    invoke-static {v6, v9}, Lkotlin/text/CharsKt__CharKt;->getRandomFrom(Ljava/util/Set;Ljava/util/Random;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v3

    .line 511
    check-cast v3, Ljava/net/InetAddress;

    .line 512
    .line 513
    invoke-static {v11, v9}, Lkotlin/text/CharsKt__CharKt;->getRandomFrom(Ljava/util/Set;Ljava/util/Random;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v5

    .line 517
    check-cast v5, Ljava/net/InetAddress;

    .line 518
    .line 519
    goto :goto_10

    .line 520
    :cond_1c
    invoke-static {v11, v9}, Lkotlin/text/CharsKt__CharKt;->getRandomFrom(Ljava/util/Set;Ljava/util/Random;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    check-cast v3, Ljava/net/InetAddress;

    .line 525
    .line 526
    :goto_f
    move-object/from16 v5, p1

    .line 527
    .line 528
    goto :goto_10

    .line 529
    :cond_1d
    invoke-static {v6, v9}, Lkotlin/text/CharsKt__CharKt;->getRandomFrom(Ljava/util/Set;Ljava/util/Random;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    check-cast v3, Ljava/net/InetAddress;

    .line 534
    .line 535
    goto :goto_f

    .line 536
    :goto_10
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    if-eqz v5, :cond_1e

    .line 540
    .line 541
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    :cond_1e
    new-instance v3, Ljava/util/ArrayList;

    .line 545
    .line 546
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 547
    .line 548
    .line 549
    move-result v5

    .line 550
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 551
    .line 552
    .line 553
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 554
    .line 555
    .line 556
    move-result-object v5

    .line 557
    :cond_1f
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 558
    .line 559
    .line 560
    move-result v0

    .line 561
    if-eqz v0, :cond_24

    .line 562
    .line 563
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    check-cast v0, Ljava/net/InetAddress;

    .line 568
    .line 569
    iget-object v6, v1, Lorg/minidns/DnsClient;->nonRaServers:Ljava/util/Set;

    .line 570
    .line 571
    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result v7

    .line 575
    if-eqz v7, :cond_20

    .line 576
    .line 577
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    new-instance v6, Ljava/lang/StringBuilder;

    .line 582
    .line 583
    const-string v7, "Skipping "

    .line 584
    .line 585
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    const-string v0, " because it was marked as \"recursion not available\""

    .line 592
    .line 593
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    invoke-virtual {v10, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    goto :goto_11

    .line 604
    :cond_20
    :try_start_2
    invoke-virtual {v1, v2, v0}, Lorg/minidns/AbstractDnsClient;->query(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 605
    .line 606
    .line 607
    move-result-object v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 608
    iget-object v8, v7, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Ljava/lang/Object;

    .line 609
    .line 610
    check-cast v8, Lorg/minidns/dnsmessage/DnsMessage;

    .line 611
    .line 612
    iget-boolean v9, v8, Lorg/minidns/dnsmessage/DnsMessage;->recursionAvailable:Z

    .line 613
    .line 614
    iget-object v11, v8, Lorg/minidns/dnsmessage/DnsMessage;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 615
    .line 616
    if-nez v9, :cond_21

    .line 617
    .line 618
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    move-result v6

    .line 622
    if-eqz v6, :cond_1f

    .line 623
    .line 624
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    new-instance v6, Ljava/lang/StringBuilder;

    .line 629
    .line 630
    const-string v7, "The DNS server "

    .line 631
    .line 632
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    const-string v0, " returned a response without the \"recursion available\" (RA) flag set. This likely indicates a misconfiguration because the server is not suitable for DNS resolution"

    .line 639
    .line 640
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    invoke-virtual {v10, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    goto :goto_11

    .line 651
    :cond_21
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 652
    .line 653
    .line 654
    move-result v6

    .line 655
    if-eqz v6, :cond_23

    .line 656
    .line 657
    if-eq v6, v4, :cond_23

    .line 658
    .line 659
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    invoke-virtual {v2}, Lorg/minidns/dnsmessage/DnsMessage;->getQuestion()Lorg/minidns/dnsmessage/Question;

    .line 664
    .line 665
    .line 666
    move-result-object v6

    .line 667
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v6

    .line 671
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v9

    .line 675
    const-string v12, " asked for "

    .line 676
    .line 677
    const-string v13, " with error code: "

    .line 678
    .line 679
    const-string v14, "Response from "

    .line 680
    .line 681
    invoke-static {v14, v0, v12, v6, v13}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    const-string v6, "."

    .line 686
    .line 687
    invoke-static {v0, v9, v6}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 692
    .line 693
    invoke-virtual {v10, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 694
    .line 695
    .line 696
    move-result v6

    .line 697
    if-nez v6, :cond_22

    .line 698
    .line 699
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v6

    .line 703
    const-string v8, "\n"

    .line 704
    .line 705
    invoke-static {v0, v8, v6}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    :cond_22
    invoke-virtual {v10, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 710
    .line 711
    .line 712
    new-instance v0, Lorg/minidns/MiniDnsException$IdMismatch;

    .line 713
    .line 714
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v6

    .line 718
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v7

    .line 722
    const-string v8, "Received "

    .line 723
    .line 724
    const-string v9, " error response\n"

    .line 725
    .line 726
    invoke-static {v8, v6, v9, v7}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v6

    .line 730
    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    goto/16 :goto_11

    .line 737
    .line 738
    :cond_23
    return-object v7

    .line 739
    :catch_2
    move-exception v0

    .line 740
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    .line 742
    .line 743
    goto/16 :goto_11

    .line 744
    .line 745
    :cond_24
    invoke-static {v3}, Lkotlin/io/FileSystemException;->throwIfRequired(Ljava/util/ArrayList;)V

    .line 746
    .line 747
    .line 748
    new-instance v0, Lorg/minidns/MiniDnsException$IdMismatch;

    .line 749
    .line 750
    const-string v1, "No DNS server could be queried"

    .line 751
    .line 752
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    throw v0
.end method

.class public final Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;
.super Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final INSTANCE:Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;

.field public static final LOGGER:Ljava/util/logging/Logger;

.field public static final NAMESERVER_PATTERN:Ljava/util/regex/Pattern;

.field public static cached:Ljava/util/ArrayList;

.field public static lastModified:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;

    .line 2
    .line 3
    const-string v1, "UnixUsingEtcResolvConf"

    .line 4
    .line 5
    const/16 v2, 0x7d0

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->INSTANCE:Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;

    .line 11
    .line 12
    const-class v0, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->LOGGER:Ljava/util/logging/Logger;

    .line 23
    .line 24
    const-string v0, "^nameserver\\s+(.*)$"

    .line 25
    .line 26
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->NAMESERVER_PATTERN:Ljava/util/regex/Pattern;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final getDnsServerAddresses()Ljava/util/List;
    .locals 9

    .line 1
    const-string p0, "Could not close reader"

    .line 2
    .line 3
    sget-object v0, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->LOGGER:Ljava/util/logging/Logger;

    .line 4
    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    const-string v2, "/etc/resolv.conf"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    sget-wide v6, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->lastModified:J

    .line 26
    .line 27
    cmp-long v2, v4, v6

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    sget-object v2, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->cached:Ljava/util/ArrayList;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    return-object v2

    .line 36
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    .line 42
    .line 43
    new-instance v7, Ljava/io/InputStreamReader;

    .line 44
    .line 45
    new-instance v8, Ljava/io/FileInputStream;

    .line 46
    .line 47
    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 48
    .line 49
    .line 50
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 51
    .line 52
    invoke-direct {v7, v8, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    sget-object v7, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->NAMESERVER_PATTERN:Ljava/util/regex/Pattern;

    .line 65
    .line 66
    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_2

    .line 75
    .line 76
    const/4 v7, 0x1

    .line 77
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v1

    .line 90
    move-object v3, v6

    .line 91
    goto :goto_4

    .line 92
    :catch_0
    move-exception v1

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catch_1
    move-exception v1

    .line 99
    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 100
    .line 101
    invoke-virtual {v0, v6, p0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-eqz p0, :cond_4

    .line 109
    .line 110
    const-string p0, "Could not find any nameservers in /etc/resolv.conf"

    .line 111
    .line 112
    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-object v3

    .line 116
    :cond_4
    sput-object v2, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->cached:Ljava/util/ArrayList;

    .line 117
    .line 118
    sput-wide v4, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->lastModified:J

    .line 119
    .line 120
    return-object v2

    .line 121
    :catchall_1
    move-exception v1

    .line 122
    goto :goto_4

    .line 123
    :catch_2
    move-exception v1

    .line 124
    move-object v6, v3

    .line 125
    :goto_2
    :try_start_3
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 126
    .line 127
    const-string v4, "Could not read from /etc/resolv.conf"

    .line 128
    .line 129
    invoke-virtual {v0, v2, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    .line 131
    .line 132
    if-eqz v6, :cond_5

    .line 133
    .line 134
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :catch_3
    move-exception v1

    .line 139
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 140
    .line 141
    invoke-virtual {v0, v2, p0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    :cond_5
    :goto_3
    return-object v3

    .line 145
    :goto_4
    if-eqz v3, :cond_6

    .line 146
    .line 147
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 148
    .line 149
    .line 150
    goto :goto_5

    .line 151
    :catch_4
    move-exception v2

    .line 152
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 153
    .line 154
    invoke-virtual {v0, v3, p0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    :cond_6
    :goto_5
    throw v1
.end method

.method public final isAvailable()Z
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/text/StringsKt__IndentKt;->isAndroid()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    new-instance p0, Ljava/io/File;

    .line 10
    .line 11
    const-string v1, "/etc/resolv.conf"

    .line 12
    .line 13
    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return p0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 23
    .line 24
    const-string v2, "Access to /etc/resolv.conf not possible"

    .line 25
    .line 26
    sget-object v3, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->LOGGER:Ljava/util/logging/Logger;

    .line 27
    .line 28
    invoke-virtual {v3, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    return v0
.end method

.class public abstract Lorg/jsoup/helper/DataUtil;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final UTF_8:Ljava/nio/charset/Charset;

.field public static final defaultCharsetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(?i)\\bcharset=\\s*(?:[\"\'])?([^\\s,;\"\']*)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    const-string v0, "UTF-8"

    .line 7
    .line 8
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lorg/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "meta[http-equiv=content-type], meta[charset]"

    .line 21
    .line 22
    invoke-static {v0}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static detectCharset(Lorg/jsoup/internal/ControllableInputStream;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Printer;
    .locals 10

    .line 1
    const/4 p1, 0x4

    .line 2
    new-array v0, p1, [B

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lorg/jsoup/internal/ControllableInputStream;->mark(I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1, p1}, Lorg/jsoup/internal/ControllableInputStream;->read([BII)I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/jsoup/internal/ControllableInputStream;->reset()V

    .line 12
    .line 13
    .line 14
    aget-byte p1, v0, v1

    .line 15
    .line 16
    const-string v2, "UTF-8"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x3

    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, -0x1

    .line 22
    const/4 v7, -0x2

    .line 23
    const/4 v8, 0x1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    aget-byte v9, v0, v8

    .line 27
    .line 28
    if-nez v9, :cond_0

    .line 29
    .line 30
    aget-byte v9, v0, v5

    .line 31
    .line 32
    if-ne v9, v7, :cond_0

    .line 33
    .line 34
    aget-byte v9, v0, v4

    .line 35
    .line 36
    if-eq v9, v6, :cond_1

    .line 37
    .line 38
    :cond_0
    if-ne p1, v6, :cond_2

    .line 39
    .line 40
    aget-byte v9, v0, v8

    .line 41
    .line 42
    if-ne v9, v7, :cond_2

    .line 43
    .line 44
    aget-byte v9, v0, v5

    .line 45
    .line 46
    if-nez v9, :cond_2

    .line 47
    .line 48
    aget-byte v9, v0, v4

    .line 49
    .line 50
    if-nez v9, :cond_2

    .line 51
    .line 52
    :cond_1
    const-string p1, "UTF-32"

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    if-ne p1, v7, :cond_3

    .line 56
    .line 57
    aget-byte v9, v0, v8

    .line 58
    .line 59
    if-eq v9, v6, :cond_4

    .line 60
    .line 61
    :cond_3
    if-ne p1, v6, :cond_5

    .line 62
    .line 63
    aget-byte v6, v0, v8

    .line 64
    .line 65
    if-ne v6, v7, :cond_5

    .line 66
    .line 67
    :cond_4
    const-string p1, "UTF-16"

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    const/16 v6, -0x11

    .line 71
    .line 72
    if-ne p1, v6, :cond_6

    .line 73
    .line 74
    aget-byte p1, v0, v8

    .line 75
    .line 76
    const/16 v6, -0x45

    .line 77
    .line 78
    if-ne p1, v6, :cond_6

    .line 79
    .line 80
    aget-byte p1, v0, v5

    .line 81
    .line 82
    const/16 v5, -0x41

    .line 83
    .line 84
    if-ne p1, v5, :cond_6

    .line 85
    .line 86
    invoke-virtual {p0, v0, v1, v4}, Lorg/jsoup/internal/ControllableInputStream;->read([BII)I

    .line 87
    .line 88
    .line 89
    move-object p1, v2

    .line 90
    goto :goto_0

    .line 91
    :cond_6
    move-object p1, v3

    .line 92
    :goto_0
    if-eqz p1, :cond_7

    .line 93
    .line 94
    move-object v2, p1

    .line 95
    :cond_7
    const-string p1, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML"

    .line 96
    .line 97
    invoke-static {v2, p1}, Landroidx/sqlite/SQLite;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    sget-object p1, Lorg/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_8

    .line 107
    .line 108
    sget-object p1, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_8
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    :goto_1
    new-instance v0, Lorg/jsoup/nodes/Printer;

    .line 116
    .line 117
    invoke-direct {v0, v8}, Lorg/jsoup/nodes/Printer;-><init>(I)V

    .line 118
    .line 119
    .line 120
    iput-object p1, v0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object p0, v0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 123
    .line 124
    iput-object v3, v0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 125
    .line 126
    return-object v0
.end method

.method public static parseInputStream(Lorg/jsoup/nodes/Printer;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/jsoup/nodes/Document;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lorg/jsoup/internal/ControllableInputStream;

    .line 11
    .line 12
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Ljava/nio/charset/Charset;

    .line 15
    .line 16
    new-instance v1, Lorg/jsoup/internal/SimpleStreamReader;

    .line 17
    .line 18
    invoke-direct {v1, v0, p0}, Lorg/jsoup/internal/SimpleStreamReader;-><init>(Lorg/jsoup/internal/ControllableInputStream;Ljava/nio/charset/Charset;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-object v0, p1, Lorg/jsoup/parser/Parser;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    :try_end_0
    .catch Ljava/io/UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 24
    .line 25
    .line 26
    iget-object v2, p1, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    .line 27
    .line 28
    invoke-virtual {v2, v1, p1}, Lorg/jsoup/parser/TreeBuilder;->initialiseParse(Ljava/io/Reader;Lorg/jsoup/parser/Parser;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->runParser()V

    .line 32
    .line 33
    .line 34
    iget-object p1, v2, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    .line 36
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/io/UncheckedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .line 38
    .line 39
    :try_start_3
    iget-object v0, p1, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 40
    .line 41
    iput-object p0, v0, Lorg/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->canEncode()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_1

    .line 48
    .line 49
    sget-object p0, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/Document;->charset(Ljava/nio/charset/Charset;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lorg/jsoup/internal/SimpleStreamReader;->close()V

    .line 58
    .line 59
    .line 60
    return-object p1

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    :try_start_4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 63
    .line 64
    .line 65
    throw p0
    :try_end_4
    .catch Ljava/io/UncheckedIOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    :try_start_5
    invoke-virtual {p0}, Ljava/io/UncheckedIOException;->getCause()Ljava/io/IOException;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 72
    :goto_1
    :try_start_6
    invoke-virtual {v1}, Lorg/jsoup/internal/SimpleStreamReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catchall_2
    move-exception p1

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    :goto_2
    throw p0
.end method

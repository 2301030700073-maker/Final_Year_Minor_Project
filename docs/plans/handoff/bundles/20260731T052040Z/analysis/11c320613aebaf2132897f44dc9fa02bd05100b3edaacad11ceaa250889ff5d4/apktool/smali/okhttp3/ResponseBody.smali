.class public abstract Lokhttp3/ResponseBody;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final EMPTY:Lokhttp3/ResponseBody$Companion$asResponseBody$1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lokio/Buffer;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lokio/Buffer;->write(Lokio/ByteString;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lokio/ByteString;->getSize$okio()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    int-to-long v2, v0

    .line 19
    new-instance v0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    .line 20
    .line 21
    invoke-direct {v0, v2, v3, v1}, Lokhttp3/ResponseBody$Companion$asResponseBody$1;-><init>(JLokio/Buffer;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lokhttp3/ResponseBody;->EMPTY:Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public abstract contentLength()J
.end method

.method public abstract contentType()Lokhttp3/MediaType;
.end method

.method public abstract source()Lokio/BufferedSource;
.end method

.method public final string()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_3

    .line 11
    .line 12
    sget-object v2, Lokhttp3/MediaType;->TYPE_SUBTYPE:Lkotlin/text/Regex;

    .line 13
    .line 14
    const-string v2, "charset"

    .line 15
    .line 16
    iget-object p0, p0, Lokhttp3/MediaType;->parameterNamesAndValues:[Ljava/lang/String;

    .line 17
    .line 18
    array-length v3, p0

    .line 19
    add-int/lit8 v3, v3, -0x1

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-static {v5, v3, v4}, Lokio/Options$Companion;->getProgressionLastElement(III)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ltz v3, :cond_1

    .line 28
    .line 29
    :goto_0
    aget-object v4, p0, v5

    .line 30
    .line 31
    invoke-static {v4, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    add-int/lit8 v5, v5, 0x1

    .line 38
    .line 39
    aget-object p0, p0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    if-eq v5, v3, :cond_1

    .line 43
    .line 44
    add-int/lit8 v5, v5, 0x2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move-object p0, v1

    .line 48
    :goto_1
    if-nez p0, :cond_2

    .line 49
    .line 50
    :catch_0
    move-object p0, v1

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    :try_start_1
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 53
    .line 54
    .line 55
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    :goto_2
    if-nez p0, :cond_4

    .line 57
    .line 58
    :cond_3
    :try_start_2
    sget-object p0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 59
    .line 60
    :cond_4
    invoke-static {v0, p0}, Lokhttp3/internal/_UtilJvmKt;->readBomAsCharset(Lokio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-interface {v0, p0}, Lokio/BufferedSource;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_3

    .line 72
    :catchall_0
    move-exception v1

    .line 73
    :goto_3
    move-object v6, v1

    .line 74
    move-object v1, p0

    .line 75
    move-object p0, v6

    .line 76
    goto :goto_4

    .line 77
    :catchall_1
    move-exception p0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    :try_start_4
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 81
    .line 82
    .line 83
    goto :goto_4

    .line 84
    :catchall_2
    move-exception v0

    .line 85
    invoke-static {p0, v0}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    :cond_5
    :goto_4
    if-nez p0, :cond_6

    .line 89
    .line 90
    return-object v1

    .line 91
    :cond_6
    throw p0
.end method

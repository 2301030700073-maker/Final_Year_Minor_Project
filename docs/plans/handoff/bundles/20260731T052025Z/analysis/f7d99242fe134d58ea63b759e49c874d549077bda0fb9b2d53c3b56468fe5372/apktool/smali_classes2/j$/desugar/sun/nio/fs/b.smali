.class public final Lj$/desugar/sun/nio/fs/b;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lj$/nio/file/attribute/d;


# static fields
.field public static final b:Ljava/util/Set;


# instance fields
.field public final a:Lj$/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v7, "isSymbolicLink"

    .line 2
    .line 3
    const-string v8, "isOther"

    .line 4
    .line 5
    const-string v0, "size"

    .line 6
    .line 7
    const-string v1, "creationTime"

    .line 8
    .line 9
    const-string v2, "lastAccessTime"

    .line 10
    .line 11
    const-string v3, "lastModifiedTime"

    .line 12
    .line 13
    const-string v4, "fileKey"

    .line 14
    .line 15
    const-string v5, "isDirectory"

    .line 16
    .line 17
    const-string v6, "isRegularFile"

    .line 18
    .line 19
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lj$/desugar/sun/nio/fs/p;->a:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    new-instance v1, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    :goto_0
    const/16 v3, 0x9

    .line 32
    .line 33
    if-ge v2, v3, :cond_0

    .line 34
    .line 35
    aget-object v3, v0, v2

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sput-object v1, Lj$/desugar/sun/nio/fs/b;->b:Ljava/util/Set;

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>(Lj$/nio/file/Path;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/desugar/sun/nio/fs/b;->a:Lj$/nio/file/Path;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;)V
    .locals 12

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/b;->a:Lj$/nio/file/Path;

    .line 8
    .line 9
    invoke-interface {p0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/FileSystem;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Lj$/nio/file/FileSystem;->B()Lj$/nio/file/spi/c;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 p3, 0x1

    .line 18
    new-array p3, p3, [Lj$/nio/file/a;

    .line 19
    .line 20
    sget-object v0, Lj$/nio/file/a;->WRITE:Lj$/nio/file/a;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    aput-object v0, p3, v1

    .line 24
    .line 25
    invoke-virtual {p2, p0, p3}, Lj$/nio/file/spi/c;->a(Lj$/nio/file/Path;[Lj$/nio/file/a;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string p3, "unit"

    .line 36
    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 38
    .line 39
    invoke-static {v0, p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-wide v0, p1, Lj$/nio/file/attribute/FileTime;->a:J

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p3, p1, Lj$/nio/file/attribute/FileTime;->b:Lj$/time/Instant;

    .line 48
    .line 49
    invoke-virtual {p3}, Lj$/time/Instant;->getEpochSecond()J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    const-wide/high16 v2, -0x8000000000000000L

    .line 60
    .line 61
    cmp-long p3, v0, v2

    .line 62
    .line 63
    if-eqz p3, :cond_5

    .line 64
    .line 65
    const-wide v4, 0x7fffffffffffffffL

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    cmp-long p3, v0, v4

    .line 71
    .line 72
    if-nez p3, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object p1, p1, Lj$/nio/file/attribute/FileTime;->b:Lj$/time/Instant;

    .line 76
    .line 77
    invoke-virtual {p1}, Lj$/time/Instant;->getNano()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    int-to-long v6, p1

    .line 82
    const-wide/32 v8, 0xf4240

    .line 83
    .line 84
    .line 85
    div-long/2addr v6, v8

    .line 86
    add-long v8, v0, v6

    .line 87
    .line 88
    xor-long v10, v0, v8

    .line 89
    .line 90
    xor-long/2addr v6, v8

    .line 91
    and-long/2addr v6, v10

    .line 92
    const-wide/16 v10, 0x0

    .line 93
    .line 94
    cmp-long p1, v6, v10

    .line 95
    .line 96
    if-gez p1, :cond_4

    .line 97
    .line 98
    cmp-long p1, v0, v10

    .line 99
    .line 100
    if-gez p1, :cond_3

    .line 101
    .line 102
    move-wide v0, v2

    .line 103
    goto :goto_0

    .line 104
    :cond_3
    move-wide v0, v4

    .line 105
    goto :goto_0

    .line 106
    :cond_4
    move-wide v0, v8

    .line 107
    :cond_5
    :goto_0
    invoke-virtual {p2, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_6

    .line 112
    .line 113
    :goto_1
    return-void

    .line 114
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 115
    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string p3, "File.setLastModified did not succeed on "

    .line 119
    .line 120
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1
.end method

.method public final name()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "basic"

    .line 2
    .line 3
    return-object p0
.end method

.method public final readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lj$/desugar/sun/nio/fs/b;->a:Lj$/nio/file/Path;

    .line 4
    .line 5
    invoke-interface {v0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/FileSystem;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lj$/nio/file/FileSystem;->B()Lj$/nio/file/spi/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    new-array v3, v2, [Lj$/nio/file/a;

    .line 15
    .line 16
    invoke-virtual {v1, v0, v3}, Lj$/nio/file/spi/c;->a(Lj$/nio/file/Path;[Lj$/nio/file/a;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    .line 29
    const-string v5, "unit"

    .line 30
    .line 31
    invoke-static {v1, v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    new-instance v7, Lj$/nio/file/attribute/FileTime;

    .line 35
    .line 36
    invoke-direct {v7, v3, v4}, Lj$/nio/file/attribute/FileTime;-><init>(J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 44
    .line 45
    .line 46
    move-result v11

    .line 47
    const/4 v1, 0x1

    .line 48
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-nez v3, :cond_0

    .line 53
    .line 54
    move-object v4, v0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    new-instance v4, Ljava/io/File;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    xor-int/2addr v3, v1

    .line 86
    move v12, v3

    .line 87
    goto :goto_1

    .line 88
    :catch_0
    move v12, v2

    .line 89
    :goto_1
    new-instance v6, Lj$/desugar/sun/nio/fs/c;

    .line 90
    .line 91
    if-nez v10, :cond_1

    .line 92
    .line 93
    if-nez v11, :cond_1

    .line 94
    .line 95
    if-nez v12, :cond_1

    .line 96
    .line 97
    move v13, v1

    .line 98
    goto :goto_2

    .line 99
    :cond_1
    move v13, v2

    .line 100
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 101
    .line 102
    .line 103
    move-result-wide v14

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v16

    .line 112
    move-object v8, v7

    .line 113
    move-object v9, v7

    .line 114
    invoke-direct/range {v6 .. v16}, Lj$/desugar/sun/nio/fs/c;-><init>(Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;ZZZZJLjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    return-object v6
.end method

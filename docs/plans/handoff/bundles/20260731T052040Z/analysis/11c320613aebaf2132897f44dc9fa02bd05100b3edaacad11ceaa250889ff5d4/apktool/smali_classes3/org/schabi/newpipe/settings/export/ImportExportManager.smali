.class public final Lorg/schabi/newpipe/settings/export/ImportExportManager;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/settings/export/ImportExportManager$Companion;


# instance fields
.field public final fileLocator:Lorg/schabi/newpipe/settings/export/BackupFileLocator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/settings/export/ImportExportManager$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/settings/export/ImportExportManager;->Companion:Lorg/schabi/newpipe/settings/export/ImportExportManager$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/settings/export/ImportExportManager;->fileLocator:Lorg/schabi/newpipe/settings/export/BackupFileLocator;

    .line 5
    .line 6
    return-void
.end method

.method public static loadJsonPrefs(Landroid/content/SharedPreferences;Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/SharedPreferences;I)V

    .line 8
    .line 9
    .line 10
    const-string p0, "preferences.json"

    .line 11
    .line 12
    invoke-static {p1, p0, v0}, Lorg/schabi/newpipe/util/ZipHelper;->extractFileFromZip(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Ljava/lang/String;Lorg/schabi/newpipe/util/ZipHelper$InputStreamConsumer;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public static loadSerializedPrefs(Landroid/content/SharedPreferences;Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/SharedPreferences;I)V

    .line 8
    .line 9
    .line 10
    const-string p0, "newpipe.settings"

    .line 11
    .line 12
    invoke-static {p1, p0, v0}, Lorg/schabi/newpipe/util/ZipHelper;->extractFileFromZip(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Ljava/lang/String;Lorg/schabi/newpipe/util/ZipHelper$InputStreamConsumer;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method


# virtual methods
.method public final ensureDbDirectoryExists()V
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/export/ImportExportManager;->fileLocator:Lorg/schabi/newpipe/settings/export/BackupFileLocator;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->db:Lj$/nio/file/Path;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v1, v0, [Lj$/nio/file/attribute/FileAttribute;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lj$/nio/file/Path;->getParent()Lj$/nio/file/Path;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    new-array v2, v0, [Lj$/nio/file/LinkOption;

    .line 18
    .line 19
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, [Lj$/nio/file/LinkOption;

    .line 24
    .line 25
    invoke-static {p0, v2}, Lj$/nio/file/Files;->isDirectory(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    :try_start_0
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, [Lj$/nio/file/attribute/FileAttribute;

    .line 36
    .line 37
    array-length v2, v1

    .line 38
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, [Lj$/nio/file/attribute/FileAttribute;

    .line 43
    .line 44
    invoke-static {p0, v1}, Lj$/nio/file/Files;->createDirectories(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catch_0
    move-exception v1

    .line 53
    new-array v2, v0, [Lj$/nio/file/LinkOption;

    .line 54
    .line 55
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, [Lj$/nio/file/LinkOption;

    .line 60
    .line 61
    invoke-static {p0, v0}, Lj$/nio/file/Files;->isDirectory(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    throw v1

    .line 69
    :cond_1
    :goto_0
    return-void
.end method

.method public final exportDatabase(Landroid/content/SharedPreferences;Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    .line 5
    .line 6
    new-instance v1, Lorg/schabi/newpipe/streams/io/SharpOutputStream;

    .line 7
    .line 8
    invoke-virtual {p2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p2, v2, v3}, Lorg/schabi/newpipe/streams/io/SharpStream;->setLength(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p2}, Lorg/schabi/newpipe/streams/io/SharpOutputStream;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 18
    .line 19
    .line 20
    new-instance p2, Ljava/io/BufferedOutputStream;

    .line 21
    .line 22
    const/16 v2, 0x2000

    .line 23
    .line 24
    invoke-direct {p2, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    .line 29
    .line 30
    :try_start_1
    const-string p2, "newpipe.db"

    .line 31
    .line 32
    iget-object p0, p0, Lorg/schabi/newpipe/settings/export/ImportExportManager;->fileLocator:Lorg/schabi/newpipe/settings/export/BackupFileLocator;

    .line 33
    .line 34
    iget-object p0, p0, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->db:Lj$/nio/file/Path;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    new-array v2, v1, [Lj$/nio/file/OpenOption;

    .line 38
    .line 39
    invoke-static {p0, v2}, Lj$/nio/file/Files;->newInputStream(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 40
    .line 41
    .line 42
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    invoke-static {v0, p2, p0}, Lorg/schabi/newpipe/util/ZipHelper;->addFileToZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    .line 45
    .line 46
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 47
    .line 48
    .line 49
    const-string p0, "newpipe.settings"

    .line 50
    .line 51
    new-instance p2, Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    invoke-direct {p2, p1, v1}, Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/SharedPreferences;I)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0, p0, p2}, Lorg/schabi/newpipe/util/ZipHelper;->addFileToZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda0;)V

    .line 57
    .line 58
    .line 59
    const-string p0, "preferences.json"

    .line 60
    .line 61
    new-instance p2, Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    invoke-direct {p2, p1, v1}, Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/SharedPreferences;I)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0, p0, p2}, Lorg/schabi/newpipe/util/ZipHelper;->addFileToZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda0;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_1

    .line 76
    :catchall_1
    move-exception p1

    .line 77
    if-eqz p0, :cond_0

    .line 78
    .line 79
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_2
    move-exception p0

    .line 84
    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :cond_0
    :goto_0
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 88
    :goto_1
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 89
    :catchall_3
    move-exception p1

    .line 90
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :catchall_4
    move-exception p0

    .line 95
    invoke-virtual {p2}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 96
    .line 97
    .line 98
    throw p0
.end method

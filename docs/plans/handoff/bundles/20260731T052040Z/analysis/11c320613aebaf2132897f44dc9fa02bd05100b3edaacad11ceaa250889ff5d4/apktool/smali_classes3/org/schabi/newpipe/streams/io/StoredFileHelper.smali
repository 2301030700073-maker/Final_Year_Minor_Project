.class public final Lorg/schabi/newpipe/streams/io/StoredFileHelper;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J


# instance fields
.field public transient context:Landroid/content/Context;

.field public transient docFile:Lorg/koin/core/logger/Logger;

.field public transient docTree:Lorg/koin/core/logger/Logger;

.field public transient ioPath:Lj$/nio/file/Path;

.field protected source:Ljava/lang/String;

.field private sourceTree:Ljava/lang/String;

.field private srcName:Ljava/lang/String;

.field private srcType:Ljava/lang/String;

.field protected tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 2
    .line 3
    const-string v0, "StoredFileHelper"

    .line 4
    .line 5
    sput-object v0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p4

    .line 10
    iput-object p4, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    const-string v0, "file"

    .line 17
    .line 18
    if-eqz p4, :cond_3

    .line 19
    .line 20
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p4

    .line 28
    if-eqz p4, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p4, Landroidx/documentfile/provider/TreeDocumentFile;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-direct {p4, v1}, Landroidx/documentfile/provider/TreeDocumentFile;-><init>(Lorg/koin/core/logger/Logger;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p4, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    iput-object p3, p4, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    .line 40
    .line 41
    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {p4}, Landroidx/documentfile/provider/TreeDocumentFile;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    if-nez p3, :cond_1

    .line 48
    .line 49
    iput-object v1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    iput-object p4, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 53
    .line 54
    :try_start_0
    iget-object p3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    iget-object p4, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 61
    .line 62
    invoke-virtual {p4}, Lorg/koin/core/logger/Logger;->getUri()Landroid/net/Uri;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    const/4 v1, 0x3

    .line 67
    invoke-virtual {p3, p4, v1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catch_0
    move-exception p3

    .line 72
    iget-object p4, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 73
    .line 74
    invoke-virtual {p4}, Lorg/koin/core/logger/Logger;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p4

    .line 78
    if-eqz p4, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 82
    .line 83
    invoke-direct {p0, p3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_3
    :goto_0
    iget-object p3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    invoke-static {p3}, Lj$/nio/file/Paths;->get(Ljava/net/URI;)Lj$/nio/file/Path;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    iput-object p3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 98
    .line 99
    :goto_1
    if-eqz p2, :cond_5

    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    if-nez p3, :cond_4

    .line 110
    .line 111
    invoke-static {p1, p2}, Lorg/koin/core/logger/Logger;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/TreeDocumentFile;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docTree:Lorg/koin/core/logger/Logger;

    .line 116
    .line 117
    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    .line 122
    .line 123
    :cond_5
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    .line 134
    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    invoke-static {p1, p2}, Lorg/schabi/newpipe/util/FilePickerActivityHelper;->isOwnFileUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {p2}, Lkotlin/ranges/RangesKt;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p2

    .line 164
    invoke-static {p2}, Lj$/io/FileRetargetClass;->toPath(Ljava/io/File;)Lj$/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 165
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    goto :goto_0

    .line 166
    :cond_0
    new-instance v0, Landroidx/documentfile/provider/TreeDocumentFile;

    const/4 v1, 0x0

    .line 167
    invoke-direct {v0, v1}, Landroidx/documentfile/provider/TreeDocumentFile;-><init>(Lorg/koin/core/logger/Logger;)V

    .line 168
    iput-object p1, v0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    .line 169
    iput-object p2, v0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    .line 170
    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 171
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 172
    :goto_0
    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    .line 173
    iput-object p3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/documentfile/provider/TreeDocumentFile;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docTree:Lorg/koin/core/logger/Logger;

    .line 144
    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    if-eqz p5, :cond_1

    .line 145
    invoke-virtual {p2, p4, p3}, Landroidx/documentfile/provider/TreeDocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Lorg/koin/core/logger/Logger;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    const-string p0, "Cannot create the file"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 147
    :cond_1
    invoke-virtual {p0, p1, p4, p3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->createSAF(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/koin/core/logger/Logger;

    move-result-object p1

    .line 148
    :goto_0
    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 149
    invoke-virtual {p1}, Lorg/koin/core/logger/Logger;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 150
    iget-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docTree:Lorg/koin/core/logger/Logger;

    invoke-virtual {p1}, Lorg/koin/core/logger/Logger;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    .line 151
    iget-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    invoke-virtual {p1}, Lorg/koin/core/logger/Logger;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 152
    iget-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    invoke-virtual {p1}, Lorg/koin/core/logger/Logger;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 139
    const-string p3, "application/octet-stream"

    :cond_0
    iput-object p3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    .line 141
    :cond_1
    iput-object p4, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lj$/nio/file/Path;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-interface {p1, p2}, Lj$/nio/file/Path;->resolve(Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 155
    invoke-static {p2}, Lj$/nio/file/Files;->deleteIfExists(Lj$/nio/file/Path;)Z

    .line 156
    iget-object p2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    const/4 v0, 0x0

    new-array v0, v0, [Lj$/nio/file/attribute/FileAttribute;

    invoke-static {p2, v0}, Lj$/nio/file/Files;->createFile(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;

    .line 157
    iget-object p2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    invoke-interface {p2}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 158
    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    .line 159
    iget-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    invoke-interface {p1}, Lj$/nio/file/Path;->getFileName()Lj$/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 160
    iput-object p3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    return-void
.end method

.method public static applyInitialPathToPickerIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-static {p0}, Lokio/Options$Companion;->useStorageAccessFramework(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 p3, 0x1a

    .line 13
    .line 14
    if-lt p0, p3, :cond_2

    .line 15
    .line 16
    const-string p0, "android.provider.extra.INITIAL_URI"

    .line 17
    .line 18
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    if-nez p2, :cond_3

    .line 24
    .line 25
    if-nez p3, :cond_3

    .line 26
    .line 27
    :cond_2
    :goto_0
    return-object p1

    .line 28
    :cond_3
    if-nez p2, :cond_4

    .line 29
    .line 30
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    goto :goto_1

    .line 35
    :cond_4
    :try_start_0
    invoke-static {p2}, Lkotlin/ranges/RangesKt;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    new-instance p0, Ljava/io/File;

    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_5

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-nez p2, :cond_7

    .line 60
    .line 61
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_6

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-nez p2, :cond_7

    .line 72
    .line 73
    :cond_6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    :cond_7
    if-eqz p3, :cond_8

    .line 78
    .line 79
    new-instance p2, Ljava/io/File;

    .line 80
    .line 81
    invoke-direct {p2, p0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    move-object p0, p2

    .line 85
    :cond_8
    const-string p2, "nononsense.intent.START_PATH"

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0
.end method

.method public static deserialize(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Lus/shandian/giga/service/DownloadManagerService;)Lorg/schabi/newpipe/streams/io/StoredFileHelper;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->isInvalid()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    new-instance p1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {p1, v0, v1, v2, p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_1
    new-instance v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 30
    .line 31
    iget-object v2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct {v1, p1, v0, v2, v3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 43
    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 47
    .line 48
    iput-object p1, v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 49
    .line 50
    :cond_2
    iget-object p1, v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    .line 55
    .line 56
    iput-object p0, v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    .line 57
    .line 58
    :cond_3
    return-object v1
.end method

.method public static getNewPicker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3

    .line 1
    invoke-static {p0}, Lokio/Options$Companion;->useStorageAccessFramework(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/content/Intent;

    .line 9
    .line 10
    const-string v2, "android.intent.action.CREATE_DOCUMENT"

    .line 11
    .line 12
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "android.content.extra.SHOW_ADVANCED"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const-string v0, "android.intent.category.OPENABLE"

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const/16 v0, 0x43

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const-string v0, "android.intent.extra.TITLE"

    .line 40
    .line 41
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p2, Landroid/content/Intent;

    .line 46
    .line 47
    const-class v0, Lorg/schabi/newpipe/util/FilePickerActivityHelper;

    .line 48
    .line 49
    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .line 51
    .line 52
    const-string v0, "android.intent.extra.ALLOW_MULTIPLE"

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const-string v0, "nononsense.intent.ALLOW_CREATE_DIR"

    .line 60
    .line 61
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const-string v0, "android.intent.extra.ALLOW_EXISTING_FILE"

    .line 66
    .line 67
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    const-string v0, "nononsense.intent.MODE"

    .line 72
    .line 73
    const/4 v1, 0x3

    .line 74
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    :cond_1
    :goto_0
    invoke-static {p0, p2, p3, p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->applyInitialPathToPickerIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method

.method public static getPicker(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    invoke-static {p0}, Lokio/Options$Companion;->useStorageAccessFramework(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance p0, Landroid/content/Intent;

    .line 9
    .line 10
    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "android.content.extra.SHOW_ADVANCED"

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string p1, "android.intent.category.OPENABLE"

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/16 p1, 0x43

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 39
    .line 40
    const-class v0, Lorg/schabi/newpipe/util/FilePickerActivityHelper;

    .line 41
    .line 42
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .line 44
    .line 45
    const-string p0, "android.intent.extra.ALLOW_MULTIPLE"

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string p1, "nononsense.intent.ALLOW_CREATE_DIR"

    .line 53
    .line 54
    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string p1, "nononsense.intent.SINGLE_CLICK"

    .line 59
    .line 60
    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string p1, "nononsense.intent.MODE"

    .line 65
    .line 66
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method


# virtual methods
.method public final assertValid()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "In invalid state"

    .line 7
    .line 8
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final canWrite()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 12
    .line 13
    invoke-static {p0}, Lj$/nio/file/Files;->isWritable(Lj$/nio/file/Path;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_1
    invoke-virtual {v0}, Lorg/koin/core/logger/Logger;->canWrite()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public final create()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->assertValid()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 11
    .line 12
    new-array v3, v2, [Lj$/nio/file/attribute/FileAttribute;

    .line 13
    .line 14
    invoke-static {v0, v3}, Lj$/nio/file/Files;->createFile(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "Exception while creating "

    .line 22
    .line 23
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    sget-object v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    return v2

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docTree:Lorg/koin/core/logger/Logger;

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    move v1, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0}, Lorg/koin/core/logger/Logger;->canRead()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_6

    .line 52
    .line 53
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docTree:Lorg/koin/core/logger/Logger;

    .line 54
    .line 55
    invoke-virtual {v0}, Lorg/koin/core/logger/Logger;->canWrite()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    .line 63
    .line 64
    iget-object v3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v4, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p0, v0, v3, v4}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->createSAF(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/koin/core/logger/Logger;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 73
    .line 74
    invoke-virtual {v0}, Lorg/koin/core/logger/Logger;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    .line 82
    .line 83
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 84
    .line 85
    if-nez v0, :cond_4

    .line 86
    .line 87
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 88
    .line 89
    invoke-interface {v0}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    invoke-virtual {v0}, Lorg/koin/core/logger/Logger;->getUri()Landroid/net/Uri;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :goto_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    .line 119
    .line 120
    :cond_5
    return v1

    .line 121
    :catch_1
    :cond_6
    :goto_2
    return v2
.end method

.method public final createSAF(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/koin/core/logger/Logger;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docTree:Lorg/koin/core/logger/Logger;

    .line 2
    .line 3
    invoke-static {p1, v0, p3}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->findFileSAFHelper(Landroid/content/Context;Lorg/koin/core/logger/Logger;Ljava/lang/String;)Lorg/koin/core/logger/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/koin/core/logger/Logger;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/koin/core/logger/Logger;->isDirectory()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/koin/core/logger/Logger;->delete()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    move-object p1, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p0, "Directory with the same name found but cannot delete"

    .line 31
    .line 32
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_1
    :goto_0
    if-nez p1, :cond_4

    .line 37
    .line 38
    iget-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docTree:Lorg/koin/core/logger/Logger;

    .line 39
    .line 40
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    .line 41
    .line 42
    if-nez p0, :cond_2

    .line 43
    .line 44
    const-string p2, "application/octet-stream"

    .line 45
    .line 46
    :cond_2
    invoke-virtual {p1, p2, p3}, Lorg/koin/core/logger/Logger;->createFile(Ljava/lang/String;Ljava/lang/String;)Lorg/koin/core/logger/Logger;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_3
    const-string p0, "Cannot create the file"

    .line 54
    .line 55
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_4
    return-object p1
.end method

.method public final delete()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 12
    .line 13
    invoke-static {v0}, Lj$/nio/file/Files;->deleteIfExists(Lj$/nio/file/Path;)Z

    .line 14
    .line 15
    .line 16
    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "Exception while deleting "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    sget-object v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    return p0

    .line 42
    :cond_1
    invoke-virtual {v0}, Lorg/koin/core/logger/Logger;->delete()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    :try_start_1
    iget-object v1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/koin/core/logger/Logger;->getUri()Landroid/net/Uri;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const/4 v2, 0x3

    .line 59
    invoke-virtual {v1, p0, v2}, Landroid/content/ContentResolver;->releasePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    .line 61
    .line 62
    :catch_1
    return v0
.end method

.method public final equals(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    goto/16 :goto_8

    .line 5
    .line 6
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    move-object v1, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    iget-object v3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v3, :cond_2

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :goto_1
    const/4 v3, 0x0

    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    if-nez v2, :cond_3

    .line 30
    .line 31
    move v1, v3

    .line 32
    goto :goto_4

    .line 33
    :cond_3
    if-nez v1, :cond_4

    .line 34
    .line 35
    move v4, v0

    .line 36
    goto :goto_2

    .line 37
    :cond_4
    move v4, v3

    .line 38
    :goto_2
    if-nez v2, :cond_5

    .line 39
    .line 40
    move v5, v0

    .line 41
    goto :goto_3

    .line 42
    :cond_5
    move v5, v3

    .line 43
    :goto_3
    if-eq v4, v5, :cond_6

    .line 44
    .line 45
    move v1, v0

    .line 46
    goto :goto_4

    .line 47
    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    xor-int/2addr v1, v0

    .line 52
    :goto_4
    if-eqz v1, :cond_7

    .line 53
    .line 54
    goto/16 :goto_9

    .line 55
    .line 56
    :cond_7
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->isInvalid()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_d

    .line 61
    .line 62
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->isInvalid()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_8

    .line 67
    .line 68
    goto :goto_7

    .line 69
    :cond_8
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->assertValid()V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 73
    .line 74
    if-nez v1, :cond_9

    .line 75
    .line 76
    move v1, v0

    .line 77
    goto :goto_5

    .line 78
    :cond_9
    move v1, v3

    .line 79
    :goto_5
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->assertValid()V

    .line 80
    .line 81
    .line 82
    iget-object v2, p1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 83
    .line 84
    if-nez v2, :cond_a

    .line 85
    .line 86
    goto :goto_6

    .line 87
    :cond_a
    move v0, v3

    .line 88
    :goto_6
    if-eq v1, v0, :cond_b

    .line 89
    .line 90
    goto :goto_9

    .line 91
    :cond_b
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->assertValid()V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 95
    .line 96
    if-nez v0, :cond_c

    .line 97
    .line 98
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 99
    .line 100
    iget-object p1, p1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 101
    .line 102
    invoke-interface {p0, p1}, Lj$/nio/file/Path;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    return p0

    .line 107
    :cond_c
    invoke-virtual {v0}, Lorg/koin/core/logger/Logger;->getUri()Landroid/net/Uri;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    iget-object p1, p1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 116
    .line 117
    invoke-virtual {p1}, Lorg/koin/core/logger/Logger;->getUri()Landroid/net/Uri;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    return p0

    .line 130
    :cond_d
    :goto_7
    iget-object v1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 131
    .line 132
    if-eqz v1, :cond_f

    .line 133
    .line 134
    iget-object v2, p1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 135
    .line 136
    if-eqz v2, :cond_f

    .line 137
    .line 138
    iget-object v4, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    .line 139
    .line 140
    if-eqz v4, :cond_f

    .line 141
    .line 142
    iget-object v4, p1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    .line 143
    .line 144
    if-nez v4, :cond_e

    .line 145
    .line 146
    goto :goto_9

    .line 147
    :cond_e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_f

    .line 152
    .line 153
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    .line 154
    .line 155
    iget-object p1, p1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    if-eqz p0, :cond_f

    .line 162
    .line 163
    :goto_8
    return v0

    .line 164
    :cond_f
    :goto_9
    return v3
.end method

.method public final existsAsFile()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 18
    .line 19
    new-array v0, v1, [Lj$/nio/file/LinkOption;

    .line 20
    .line 21
    invoke-static {p0, v0}, Lj$/nio/file/Files;->isRegularFile(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_1
    invoke-virtual {v0}, Lorg/koin/core/logger/Logger;->exists()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/koin/core/logger/Logger;->isFile()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_2
    :goto_0
    return v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 13
    .line 14
    invoke-interface {p0}, Lj$/nio/file/Path;->getFileName()Lj$/nio/file/Path;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-virtual {v0}, Lorg/koin/core/logger/Logger;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_2
    return-object v0
.end method

.method public final getParentUri()Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->assertValid()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final getStream()Lorg/schabi/newpipe/streams/io/SharpStream;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->assertValid()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lus/shandian/giga/io/FileStream;

    .line 9
    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 11
    .line 12
    invoke-interface {p0}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v0, p0}, Lus/shandian/giga/io/FileStream;-><init>(Ljava/io/File;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance v0, Lus/shandian/giga/io/FileStreamSAF;

    .line 21
    .line 22
    iget-object v1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/koin/core/logger/Logger;->getUri()Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {v0, v1, p0}, Lus/shandian/giga/io/FileStreamSAF;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lorg/koin/core/logger/Logger;->getType()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    return-object v0

    .line 20
    :cond_2
    :goto_0
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    .line 21
    .line 22
    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->assertValid()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 9
    .line 10
    invoke-interface {p0}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-virtual {v0}, Lorg/koin/core/logger/Logger;->getUri()Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docTree:Lorg/koin/core/logger/Logger;

    .line 22
    .line 23
    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 24
    .line 25
    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 26
    .line 27
    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    .line 28
    .line 29
    return-void
.end method

.method public final isInvalid()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final length()J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->assertValid()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 9
    .line 10
    invoke-static {v0}, Lj$/nio/file/Files;->size(Lj$/nio/file/Path;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-wide v0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "Exception while getting the size of "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    sget-object v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    const-wide/16 v0, 0x0

    .line 38
    .line 39
    return-wide v0

    .line 40
    :cond_0
    invoke-virtual {v0}, Lorg/koin/core/logger/Logger;->length()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "  tag="

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "[Invalid state] name="

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, "  type="

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "sourceFile="

    .line 45
    .line 46
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, "  treeSource="

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    .line 60
    .line 61
    if-nez v2, :cond_1

    .line 62
    .line 63
    const-string v2, ""

    .line 64
    .line 65
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method

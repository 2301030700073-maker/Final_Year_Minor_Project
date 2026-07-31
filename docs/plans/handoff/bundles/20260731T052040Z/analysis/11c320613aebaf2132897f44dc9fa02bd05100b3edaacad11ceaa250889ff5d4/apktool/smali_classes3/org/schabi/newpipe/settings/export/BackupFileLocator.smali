.class public final Lorg/schabi/newpipe/settings/export/BackupFileLocator;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/settings/export/BackupFileLocator$Companion;


# instance fields
.field public final db:Lj$/nio/file/Path;

.field public final dbJournal:Lj$/nio/file/Path;

.field public final dbShm:Lj$/nio/file/Path;

.field public final dbWal:Lj$/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/settings/export/BackupFileLocator$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->Companion:Lorg/schabi/newpipe/settings/export/BackupFileLocator$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v0, "newpipe.db"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lj$/io/FileRetargetClass;->toPath(Ljava/io/File;)Lj$/nio/file/Path;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->db:Lj$/nio/file/Path;

    .line 21
    .line 22
    const-string v0, "newpipe.db-journal"

    .line 23
    .line 24
    invoke-interface {p1, v0}, Lj$/nio/file/Path;->resolveSibling(Ljava/lang/String;)Lj$/nio/file/Path;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->dbJournal:Lj$/nio/file/Path;

    .line 32
    .line 33
    const-string v0, "newpipe.db-shm"

    .line 34
    .line 35
    invoke-interface {p1, v0}, Lj$/nio/file/Path;->resolveSibling(Ljava/lang/String;)Lj$/nio/file/Path;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->dbShm:Lj$/nio/file/Path;

    .line 43
    .line 44
    const-string v0, "newpipe.db-wal"

    .line 45
    .line 46
    invoke-interface {p1, v0}, Lj$/nio/file/Path;->resolveSibling(Ljava/lang/String;)Lj$/nio/file/Path;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->dbWal:Lj$/nio/file/Path;

    .line 54
    .line 55
    return-void
.end method

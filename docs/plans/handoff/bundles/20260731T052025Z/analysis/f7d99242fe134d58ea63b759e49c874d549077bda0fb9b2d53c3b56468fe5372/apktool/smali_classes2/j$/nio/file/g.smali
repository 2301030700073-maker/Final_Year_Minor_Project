.class public final synthetic Lj$/nio/file/g;
.super Ljava/nio/file/FileSystem;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic a:Lj$/nio/file/FileSystem;


# direct methods
.method public synthetic constructor <init>(Lj$/nio/file/FileSystem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/nio/file/FileSystem;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/nio/file/g;->a:Lj$/nio/file/FileSystem;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic f(Lj$/nio/file/FileSystem;)Ljava/nio/file/FileSystem;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    instance-of v0, p0, Lj$/nio/file/f;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lj$/nio/file/f;

    .line 10
    .line 11
    iget-object p0, p0, Lj$/nio/file/f;->a:Ljava/nio/file/FileSystem;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    new-instance v0, Lj$/nio/file/g;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lj$/nio/file/g;-><init>(Lj$/nio/file/FileSystem;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public final synthetic close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0}, Lj$/nio/file/FileSystem;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/FileSystem;

    .line 2
    .line 3
    instance-of v0, p1, Lj$/nio/file/g;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lj$/nio/file/g;

    .line 8
    .line 9
    iget-object p1, p1, Lj$/nio/file/g;->a:Lj$/nio/file/FileSystem;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final synthetic getFileStores()Ljava/lang/Iterable;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0}, Lj$/nio/file/FileSystem;->f()Ljava/lang/Iterable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final synthetic getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lj$/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/nio/file/p;->k(Lj$/nio/file/Path;)Ljava/nio/file/Path;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lj$/nio/file/FileSystem;->j(Ljava/lang/String;)Lj$/nio/file/w;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    instance-of p1, p0, Lj$/nio/file/u;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    check-cast p0, Lj$/nio/file/u;

    .line 16
    .line 17
    iget-object p0, p0, Lj$/nio/file/u;->a:Ljava/nio/file/PathMatcher;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    new-instance p1, Lj$/nio/file/v;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lj$/nio/file/v;-><init>(Lj$/nio/file/w;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method public final getRootDirectories()Ljava/lang/Iterable;
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0}, Lj$/nio/file/FileSystem;->l()Ljava/lang/Iterable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lj$/nio/file/s;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lj$/nio/file/s;-><init>(Ljava/lang/Iterable;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final synthetic getSeparator()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0}, Lj$/nio/file/FileSystem;->o()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final synthetic getUserPrincipalLookupService()Ljava/nio/file/attribute/UserPrincipalLookupService;
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0}, Lj$/nio/file/FileSystem;->q()Lj$/nio/file/attribute/a0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget v0, Lj$/nio/file/attribute/b0;->a:I

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object p0, p0, Lj$/nio/file/attribute/a0;->a:Ljava/nio/file/attribute/UserPrincipalLookupService;

    .line 14
    .line 15
    return-object p0
.end method

.method public final synthetic hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic isOpen()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0}, Lj$/nio/file/FileSystem;->isOpen()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic isReadOnly()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0}, Lj$/nio/file/FileSystem;->t()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic newWatchService()Ljava/nio/file/WatchService;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0}, Lj$/nio/file/FileSystem;->v()Lj$/nio/file/e0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    iget-object p0, p0, Lj$/nio/file/e0;->a:Ljava/nio/file/WatchService;

    .line 12
    .line 13
    return-object p0
.end method

.method public final synthetic provider()Ljava/nio/file/spi/FileSystemProvider;
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0}, Lj$/nio/file/FileSystem;->B()Lj$/nio/file/spi/c;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget v0, Lj$/nio/file/spi/b;->b:I

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    instance-of v0, p0, Lj$/nio/file/spi/a;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    check-cast p0, Lj$/nio/file/spi/a;

    .line 18
    .line 19
    iget-object p0, p0, Lj$/nio/file/spi/a;->b:Ljava/nio/file/spi/FileSystemProvider;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    new-instance v0, Lj$/nio/file/spi/b;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lj$/nio/file/spi/b;-><init>(Lj$/nio/file/spi/c;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public final synthetic supportedFileAttributeViews()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0}, Lj$/nio/file/FileSystem;->G()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

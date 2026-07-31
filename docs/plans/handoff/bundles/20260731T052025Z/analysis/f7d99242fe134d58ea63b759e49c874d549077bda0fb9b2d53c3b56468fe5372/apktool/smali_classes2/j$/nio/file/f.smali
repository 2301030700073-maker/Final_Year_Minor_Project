.class public final synthetic Lj$/nio/file/f;
.super Lj$/nio/file/FileSystem;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic a:Ljava/nio/file/FileSystem;


# direct methods
.method public constructor <init>(Ljava/nio/file/FileSystem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/nio/file/f;->a:Ljava/nio/file/FileSystem;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic H(Ljava/nio/file/FileSystem;)Lj$/nio/file/FileSystem;
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
    instance-of v0, p0, Lj$/nio/file/g;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lj$/nio/file/g;

    .line 10
    .line 11
    iget-object p0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/FileSystem;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    new-instance v0, Lj$/nio/file/f;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lj$/nio/file/f;-><init>(Ljava/nio/file/FileSystem;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public final synthetic B()Lj$/nio/file/spi/c;
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/nio/file/f;->a:Ljava/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget v0, Lj$/nio/file/spi/a;->c:I

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
    instance-of v0, p0, Lj$/nio/file/spi/b;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    check-cast p0, Lj$/nio/file/spi/b;

    .line 18
    .line 19
    iget-object p0, p0, Lj$/nio/file/spi/b;->a:Lj$/nio/file/spi/c;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    new-instance v0, Lj$/nio/file/spi/a;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lj$/nio/file/spi/a;-><init>(Ljava/nio/file/spi/FileSystemProvider;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public final synthetic G()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/f;->a:Ljava/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->supportedFileAttributeViews()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final synthetic close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/f;->a:Ljava/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/nio/file/f;->a:Ljava/nio/file/FileSystem;

    .line 2
    .line 3
    instance-of v0, p1, Lj$/nio/file/f;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lj$/nio/file/f;

    .line 8
    .line 9
    iget-object p1, p1, Lj$/nio/file/f;->a:Ljava/nio/file/FileSystem;

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

.method public final synthetic f()Ljava/lang/Iterable;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/f;->a:Ljava/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->getFileStores()Ljava/lang/Iterable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final synthetic getPath(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/f;->a:Ljava/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/nio/file/o;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/f;->a:Ljava/nio/file/FileSystem;

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
    iget-object p0, p0, Lj$/nio/file/f;->a:Ljava/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->isOpen()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic j(Ljava/lang/String;)Lj$/nio/file/w;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/f;->a:Ljava/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

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
    instance-of p1, p0, Lj$/nio/file/v;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    check-cast p0, Lj$/nio/file/v;

    .line 16
    .line 17
    iget-object p0, p0, Lj$/nio/file/v;->a:Lj$/nio/file/w;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    new-instance p1, Lj$/nio/file/u;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lj$/nio/file/u;-><init>(Ljava/nio/file/PathMatcher;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method public final l()Ljava/lang/Iterable;
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/nio/file/f;->a:Ljava/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->getRootDirectories()Ljava/lang/Iterable;

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

.method public final synthetic o()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/f;->a:Ljava/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->getSeparator()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final synthetic q()Lj$/nio/file/attribute/a0;
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/nio/file/f;->a:Ljava/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->getUserPrincipalLookupService()Ljava/nio/file/attribute/UserPrincipalLookupService;

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
    new-instance v0, Lj$/nio/file/attribute/a0;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lj$/nio/file/attribute/a0;-><init>(Ljava/nio/file/attribute/UserPrincipalLookupService;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final synthetic t()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/f;->a:Ljava/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->isReadOnly()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic v()Lj$/nio/file/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/f;->a:Ljava/nio/file/FileSystem;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->newWatchService()Ljava/nio/file/WatchService;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/nio/file/e0;->f(Ljava/nio/file/WatchService;)Lj$/nio/file/e0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

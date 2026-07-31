.class public final synthetic Lj$/nio/file/o;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lj$/nio/file/Path;
.implements Lj$/lang/Iterable;


# instance fields
.field public final synthetic a:Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic k(Ljava/nio/file/Path;)Lj$/nio/file/Path;
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
    instance-of v0, p0, Lj$/nio/file/p;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lj$/nio/file/p;

    .line 10
    .line 11
    iget-object p0, p0, Lj$/nio/file/p;->a:Lj$/nio/file/Path;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    new-instance v0, Lj$/nio/file/o;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lj$/nio/file/o;-><init>(Ljava/nio/file/Path;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public final synthetic B(Lj$/nio/file/Path;)Lj$/nio/file/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-static {p1}, Lj$/nio/file/p;->k(Lj$/nio/file/Path;)Ljava/nio/file/Path;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lj$/nio/file/o;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final synthetic O(Lj$/nio/file/e0;[Lj$/nio/file/b0;)Lj$/nio/file/d0;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p1, Lj$/nio/file/e0;->a:Ljava/nio/file/WatchService;

    .line 8
    .line 9
    :goto_0
    invoke-static {p2}, Lj$/com/android/tools/r8/a;->N([Lj$/nio/file/b0;)[Ljava/nio/file/WatchEvent$Kind;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-interface {p0, p1, p2}, Ljava/nio/file/Path;->register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchKey;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lj$/nio/file/d0;->a(Ljava/nio/file/WatchKey;)Lj$/nio/file/d0;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-static {p1}, Lj$/com/android/tools/r8/a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->compareTo(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final synthetic endsWith(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->endsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    instance-of v0, p1, Lj$/nio/file/o;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lj$/nio/file/o;

    .line 8
    .line 9
    iget-object p1, p1, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

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

.method public final synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->z(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic getFileName()Lj$/nio/file/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

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

.method public final synthetic getFileSystem()Lj$/nio/file/FileSystem;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/nio/file/f;->H(Ljava/nio/file/FileSystem;)Lj$/nio/file/FileSystem;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic getName(I)Lj$/nio/file/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

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

.method public final synthetic getNameCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/nio/file/Path;->getNameCount()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic getParent()Lj$/nio/file/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

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

.method public final synthetic getRoot()Lj$/nio/file/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/nio/file/Path;->getRoot()Ljava/nio/file/Path;

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
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

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

.method public final synthetic isAbsolute()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/nio/file/Path;->isAbsolute()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/nio/file/Path;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lj$/nio/file/t;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lj$/nio/file/t;-><init>(Ljava/util/Iterator;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final synthetic j(Lj$/nio/file/e0;[Lj$/nio/file/b0;[Lj$/nio/file/c0;)Lj$/nio/file/d0;
    .locals 5

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p1, Lj$/nio/file/e0;->a:Ljava/nio/file/WatchService;

    .line 9
    .line 10
    :goto_0
    invoke-static {p2}, Lj$/com/android/tools/r8/a;->N([Lj$/nio/file/b0;)[Ljava/nio/file/WatchEvent$Kind;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-nez p3, :cond_1

    .line 15
    .line 16
    goto :goto_3

    .line 17
    :cond_1
    array-length v1, p3

    .line 18
    new-array v2, v1, [Ljava/nio/file/WatchEvent$Modifier;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_1
    if-ge v3, v1, :cond_3

    .line 22
    .line 23
    aget-object v4, p3, v3

    .line 24
    .line 25
    if-nez v4, :cond_2

    .line 26
    .line 27
    move-object v4, v0

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    iget-object v4, v4, Lj$/nio/file/c0;->a:Ljava/nio/file/WatchEvent$Modifier;

    .line 30
    .line 31
    :goto_2
    aput-object v4, v2, v3

    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    move-object v0, v2

    .line 37
    :goto_3
    invoke-interface {p0, p1, p2, v0}, Ljava/nio/file/Path;->register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lj$/nio/file/d0;->a(Ljava/nio/file/WatchKey;)Lj$/nio/file/d0;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public final synthetic l(Lj$/nio/file/Path;)Lj$/nio/file/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-static {p1}, Lj$/nio/file/p;->k(Lj$/nio/file/Path;)Ljava/nio/file/Path;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lj$/nio/file/o;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final synthetic normalize()Lj$/nio/file/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

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

.method public final synthetic o(Lj$/nio/file/Path;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-static {p1}, Lj$/nio/file/p;->k(Lj$/nio/file/Path;)Ljava/nio/file/Path;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->compareTo(Ljava/nio/file/Path;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final synthetic q(Lj$/nio/file/Path;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-static {p1}, Lj$/nio/file/p;->k(Lj$/nio/file/Path;)Ljava/nio/file/Path;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final synthetic resolve(Ljava/lang/String;)Lj$/nio/file/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

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

.method public final synthetic resolveSibling(Ljava/lang/String;)Lj$/nio/file/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;

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

.method public final synthetic spliterator()Lj$/util/Spliterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/c1;->a(Ljava/util/Spliterator;)Lj$/util/Spliterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic spliterator()Ljava/util/Spliterator;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lj$/nio/file/o;->spliterator()Lj$/util/Spliterator;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic startsWith(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic subpath(II)Lj$/nio/file/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

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

.method public final synthetic t(Lj$/nio/file/Path;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-static {p1}, Lj$/nio/file/p;->k(Lj$/nio/file/Path;)Ljava/nio/file/Path;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->endsWith(Ljava/nio/file/Path;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final synthetic toAbsolutePath()Lj$/nio/file/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

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

.method public final synthetic toFile()Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final synthetic toRealPath([Lj$/nio/file/LinkOption;)Lj$/nio/file/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-static {p1}, Lj$/com/android/tools/r8/a;->M([Lj$/nio/file/LinkOption;)[Ljava/nio/file/LinkOption;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lj$/nio/file/o;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final synthetic toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final synthetic toUri()Ljava/net/URI;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final synthetic v(Lj$/nio/file/Path;)Lj$/nio/file/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/Path;

    .line 2
    .line 3
    invoke-static {p1}, Lj$/nio/file/p;->k(Lj$/nio/file/Path;)Ljava/nio/file/Path;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->resolveSibling(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lj$/nio/file/o;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

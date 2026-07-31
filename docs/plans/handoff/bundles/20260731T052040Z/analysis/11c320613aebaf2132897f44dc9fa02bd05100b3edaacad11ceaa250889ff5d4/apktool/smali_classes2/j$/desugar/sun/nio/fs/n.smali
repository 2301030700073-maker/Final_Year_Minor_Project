.class public final Lj$/desugar/sun/nio/fs/n;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/nio/file/Path;


# static fields
.field public static final h:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lj$/nio/file/h;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public volatile g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "/+"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lj$/desugar/sun/nio/fs/n;->h:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lj$/nio/file/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v3

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string p2, ""

    .line 14
    .line 15
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :goto_0
    move-object v1, p0

    .line 20
    move-object v2, p1

    .line 21
    move-object v4, p2

    .line 22
    move-object v5, p3

    .line 23
    move-object v6, p4

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    sget-object v0, Lj$/desugar/sun/nio/fs/n;->h:Ljava/util/regex/Pattern;

    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p2}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    new-instance v0, Lj$/desugar/sun/nio/fs/m;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-direct {v0, v1}, Lj$/desugar/sun/nio/fs/m;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p2, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {}, Lj$/util/stream/Collectors;->toUnmodifiableList()Lj$/util/stream/Collector;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {p2, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    check-cast p2, Ljava/util/List;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :goto_1
    invoke-direct/range {v1 .. v6}, Lj$/desugar/sun/nio/fs/n;-><init>(Lj$/nio/file/h;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public constructor <init>(Lj$/nio/file/h;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lj$/desugar/sun/nio/fs/n;->a:Lj$/nio/file/h;

    .line 62
    iput-boolean p2, p0, Lj$/desugar/sun/nio/fs/n;->d:Z

    .line 63
    iput-object p3, p0, Lj$/desugar/sun/nio/fs/n;->c:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 64
    const-string p1, "/"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {p3}, Lj$/com/android/tools/r8/a;->F(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    iput-object p1, p0, Lj$/desugar/sun/nio/fs/n;->b:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lj$/desugar/sun/nio/fs/n;->e:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lj$/desugar/sun/nio/fs/n;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final C(Lj$/nio/file/Path;)Lj$/nio/file/Path;
    .locals 9

    .line 1
    instance-of v0, p1, Lj$/desugar/sun/nio/fs/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-boolean v0, p0, Lj$/desugar/sun/nio/fs/n;->d:Z

    .line 7
    .line 8
    move-object v2, p1

    .line 9
    check-cast v2, Lj$/desugar/sun/nio/fs/n;

    .line 10
    .line 11
    iget-boolean v2, v2, Lj$/desugar/sun/nio/fs/n;->d:Z

    .line 12
    .line 13
    if-ne v0, v2, :cond_3

    .line 14
    .line 15
    check-cast p1, Lj$/desugar/sun/nio/fs/n;

    .line 16
    .line 17
    iget-object p1, p1, Lj$/desugar/sun/nio/fs/n;->c:Ljava/util/List;

    .line 18
    .line 19
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/n;->c:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    :goto_0
    if-ge v1, v0, :cond_0

    .line 30
    .line 31
    if-ge v1, v2, :cond_0

    .line 32
    .line 33
    iget-object v3, p0, Lj$/desugar/sun/nio/fs/n;->c:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    move v3, v1

    .line 60
    :goto_1
    if-ge v3, v0, :cond_1

    .line 61
    .line 62
    const-string v4, ".."

    .line 63
    .line 64
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_2
    if-ge v1, v2, :cond_2

    .line 71
    .line 72
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    new-instance v3, Lj$/desugar/sun/nio/fs/n;

    .line 85
    .line 86
    iget-object v4, p0, Lj$/desugar/sun/nio/fs/n;->a:Lj$/nio/file/h;

    .line 87
    .line 88
    iget-object v7, p0, Lj$/desugar/sun/nio/fs/n;->e:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v8, p0, Lj$/desugar/sun/nio/fs/n;->f:Ljava/lang/String;

    .line 91
    .line 92
    const/4 v5, 0x0

    .line 93
    invoke-direct/range {v3 .. v8}, Lj$/desugar/sun/nio/fs/n;-><init>(Lj$/nio/file/h;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-object v3

    .line 97
    :cond_3
    const-string p0, "\'other\' is different type of Path in absolute property."

    .line 98
    .line 99
    invoke-static {p0}, Lj$/nio/file/m;->c(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const/4 p0, 0x0

    .line 103
    return-object p0

    .line 104
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    invoke-interface {p1}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/h;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const/4 v2, 0x2

    .line 111
    new-array v2, v2, [Ljava/lang/Object;

    .line 112
    .line 113
    aput-object p1, v2, v1

    .line 114
    .line 115
    const/4 p1, 0x1

    .line 116
    aput-object v0, v2, p1

    .line 117
    .line 118
    const-string p1, "Expected to resolve paths on the same file system as DesugarUnixPath, but gets %s (%s)."

    .line 119
    .line 120
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p0
.end method

.method public final F()Lj$/desugar/sun/nio/fs/n;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lj$/desugar/sun/nio/fs/n;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lj$/desugar/sun/nio/fs/n;

    .line 7
    .line 8
    iget-object v1, p0, Lj$/desugar/sun/nio/fs/n;->a:Lj$/nio/file/h;

    .line 9
    .line 10
    iget-object v2, p0, Lj$/desugar/sun/nio/fs/n;->e:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, p0, Lj$/desugar/sun/nio/fs/n;->f:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2, v2, v3}, Lj$/desugar/sun/nio/fs/n;-><init>(Lj$/nio/file/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lj$/desugar/sun/nio/fs/n;->o(Lj$/nio/file/Path;)Lj$/desugar/sun/nio/fs/n;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final varargs Q(Lj$/nio/file/i0;[Lj$/nio/file/f0;)Lj$/nio/file/h0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lj$/nio/file/g0;

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lj$/desugar/sun/nio/fs/n;->j(Lj$/nio/file/i0;[Lj$/nio/file/f0;[Lj$/nio/file/g0;)Lj$/nio/file/h0;

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    throw p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lj$/nio/file/Path;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lj$/desugar/sun/nio/fs/n;->p(Lj$/nio/file/Path;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final endsWith(Ljava/lang/String;)Z
    .locals 4

    .line 1
    new-instance v0, Lj$/desugar/sun/nio/fs/n;

    .line 2
    .line 3
    iget-object v1, p0, Lj$/desugar/sun/nio/fs/n;->a:Lj$/nio/file/h;

    .line 4
    .line 5
    iget-object v2, p0, Lj$/desugar/sun/nio/fs/n;->e:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lj$/desugar/sun/nio/fs/n;->f:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1, p1, v2, v3}, Lj$/desugar/sun/nio/fs/n;-><init>(Lj$/nio/file/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lj$/desugar/sun/nio/fs/n;->t(Lj$/nio/file/Path;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lj$/desugar/sun/nio/fs/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lj$/desugar/sun/nio/fs/n;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lj$/desugar/sun/nio/fs/n;->p(Lj$/nio/file/Path;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_1
    return v1
.end method

.method public final getFileName()Lj$/nio/file/Path;
    .locals 4

    .line 1
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/n;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lj$/desugar/sun/nio/fs/n;->d:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    :cond_0
    return-object p0

    .line 15
    :cond_1
    new-instance v0, Lj$/desugar/sun/nio/fs/n;

    .line 16
    .line 17
    iget-object v1, p0, Lj$/desugar/sun/nio/fs/n;->a:Lj$/nio/file/h;

    .line 18
    .line 19
    iget-object v2, p0, Lj$/desugar/sun/nio/fs/n;->c:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    add-int/lit8 v3, v3, -0x1

    .line 26
    .line 27
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p0, Lj$/desugar/sun/nio/fs/n;->e:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/n;->f:Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {v0, v1, v2, v3, p0}, Lj$/desugar/sun/nio/fs/n;-><init>(Lj$/nio/file/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method public final getFileSystem()Lj$/nio/file/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/n;->a:Lj$/nio/file/h;

    .line 2
    .line 3
    return-object p0
.end method

.method public final bridge synthetic getName(I)Lj$/nio/file/Path;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lj$/desugar/sun/nio/fs/n;->k(I)Lj$/desugar/sun/nio/fs/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getNameCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/n;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final bridge synthetic getParent()Lj$/nio/file/Path;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/n;->n()Lj$/desugar/sun/nio/fs/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getRoot()Lj$/nio/file/Path;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lj$/desugar/sun/nio/fs/n;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lj$/desugar/sun/nio/fs/n;

    .line 6
    .line 7
    iget-object v1, p0, Lj$/desugar/sun/nio/fs/n;->a:Lj$/nio/file/h;

    .line 8
    .line 9
    iget-object v2, p0, Lj$/desugar/sun/nio/fs/n;->f:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/n;->e:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, p0, v2}, Lj$/desugar/sun/nio/fs/n;-><init>(Lj$/nio/file/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/n;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isAbsolute()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lj$/desugar/sun/nio/fs/n;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lj$/nio/file/q;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lj$/nio/file/q;-><init>(Lj$/desugar/sun/nio/fs/n;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final varargs j(Lj$/nio/file/i0;[Lj$/nio/file/f0;[Lj$/nio/file/g0;)Lj$/nio/file/h0;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p1, "Watch Service is not supported"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final k(I)Lj$/desugar/sun/nio/fs/n;
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/n;->c:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lj$/desugar/sun/nio/fs/n;

    .line 12
    .line 13
    iget-object v1, p0, Lj$/desugar/sun/nio/fs/n;->a:Lj$/nio/file/h;

    .line 14
    .line 15
    iget-object v2, p0, Lj$/desugar/sun/nio/fs/n;->c:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Lj$/desugar/sun/nio/fs/n;->e:Ljava/lang/String;

    .line 24
    .line 25
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/n;->f:Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {v0, v1, p1, v2, p0}, Lj$/desugar/sun/nio/fs/n;-><init>(Lj$/nio/file/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v1, 0x2

    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    aput-object p1, v1, v2

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    aput-object p0, v1, p1

    .line 45
    .line 46
    const-string p0, "Requested name for index (%d) is out of bound in \n%s."

    .line 47
    .line 48
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method public final bridge synthetic l(Lj$/nio/file/Path;)Lj$/nio/file/Path;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lj$/desugar/sun/nio/fs/n;->o(Lj$/nio/file/Path;)Lj$/desugar/sun/nio/fs/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final m([Lj$/nio/file/LinkOption;)Lj$/nio/file/Path;
    .locals 4

    .line 1
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/n;->a:Lj$/nio/file/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj$/nio/file/h;->C()Lj$/nio/file/spi/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Lj$/nio/file/a;

    .line 9
    .line 10
    sget-object v2, Lj$/nio/file/a;->READ:Lj$/nio/file/a;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 14
    .line 15
    invoke-virtual {v0, p0, v1}, Lj$/nio/file/spi/d;->a(Lj$/nio/file/Path;[Lj$/nio/file/a;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object v0, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    .line 23
    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/n;->F()Lj$/desugar/sun/nio/fs/n;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_0
    new-instance p1, Lj$/desugar/sun/nio/fs/n;

    .line 36
    .line 37
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/n;->a:Lj$/nio/file/h;

    .line 38
    .line 39
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/n;->toFile()Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Lj$/desugar/sun/nio/fs/n;->e:Ljava/lang/String;

    .line 48
    .line 49
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/n;->f:Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {p1, v0, v1, v2, p0}, Lj$/desugar/sun/nio/fs/n;-><init>(Lj$/nio/file/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object p1
.end method

.method public final n()Lj$/desugar/sun/nio/fs/n;
    .locals 4

    .line 1
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/n;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-boolean v2, p0, Lj$/desugar/sun/nio/fs/n;->d:Z

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-boolean v3, p0, Lj$/desugar/sun/nio/fs/n;->d:Z

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    const-string v3, "/"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :cond_1
    sub-int/2addr v0, v1

    .line 32
    iget-object v1, p0, Lj$/desugar/sun/nio/fs/n;->c:Ljava/util/List;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-interface {v1, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lj$/com/android/tools/r8/a;->F(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Lj$/desugar/sun/nio/fs/n;

    .line 51
    .line 52
    iget-object v2, p0, Lj$/desugar/sun/nio/fs/n;->a:Lj$/nio/file/h;

    .line 53
    .line 54
    iget-object v3, p0, Lj$/desugar/sun/nio/fs/n;->e:Ljava/lang/String;

    .line 55
    .line 56
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/n;->f:Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {v1, v2, v0, v3, p0}, Lj$/desugar/sun/nio/fs/n;-><init>(Lj$/nio/file/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 63
    return-object p0
.end method

.method public final normalize()Lj$/nio/file/Path;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lj$/desugar/sun/nio/fs/n;->c:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const-string v3, "."

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    const-string v3, ".."

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    new-instance v1, Lj$/desugar/sun/nio/fs/n;

    .line 52
    .line 53
    iget-object v2, p0, Lj$/desugar/sun/nio/fs/n;->a:Lj$/nio/file/h;

    .line 54
    .line 55
    iget-boolean v3, p0, Lj$/desugar/sun/nio/fs/n;->d:Z

    .line 56
    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    const-string v3, "/"

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const-string v3, ""

    .line 63
    .line 64
    :goto_1
    invoke-static {v0}, Lj$/com/android/tools/r8/a;->F(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v3, p0, Lj$/desugar/sun/nio/fs/n;->e:Ljava/lang/String;

    .line 73
    .line 74
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/n;->f:Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {v1, v2, v0, v3, p0}, Lj$/desugar/sun/nio/fs/n;-><init>(Lj$/nio/file/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object v1
.end method

.method public final o(Lj$/nio/file/Path;)Lj$/desugar/sun/nio/fs/n;
    .locals 4

    .line 1
    instance-of v0, p1, Lj$/desugar/sun/nio/fs/n;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lj$/desugar/sun/nio/fs/n;

    .line 7
    .line 8
    iget-boolean v0, v0, Lj$/desugar/sun/nio/fs/n;->d:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p1, Lj$/desugar/sun/nio/fs/n;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance v0, Lj$/desugar/sun/nio/fs/n;

    .line 16
    .line 17
    iget-object v1, p0, Lj$/desugar/sun/nio/fs/n;->a:Lj$/nio/file/h;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lj$/desugar/sun/nio/fs/n;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, "/"

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v2, p0, Lj$/desugar/sun/nio/fs/n;->e:Ljava/lang/String;

    .line 42
    .line 43
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/n;->f:Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {v0, v1, p1, v2, p0}, Lj$/desugar/sun/nio/fs/n;-><init>(Lj$/nio/file/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    invoke-interface {p1}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/h;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x2

    .line 56
    new-array v1, v1, [Ljava/lang/Object;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    aput-object p1, v1, v2

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    aput-object v0, v1, p1

    .line 63
    .line 64
    const-string p1, "Expected to resolve paths on the same file system as DesugarUnixPath, but gets %s (%s)."

    .line 65
    .line 66
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0
.end method

.method public final p(Lj$/nio/file/Path;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/n;->b:Ljava/lang/String;

    .line 2
    .line 3
    check-cast p1, Lj$/desugar/sun/nio/fs/n;

    .line 4
    .line 5
    iget-object p1, p1, Lj$/desugar/sun/nio/fs/n;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final r(Lj$/nio/file/Path;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lj$/desugar/sun/nio/fs/n;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    iget-boolean v0, p0, Lj$/desugar/sun/nio/fs/n;->d:Z

    .line 11
    .line 12
    check-cast p1, Lj$/desugar/sun/nio/fs/n;

    .line 13
    .line 14
    iget-boolean v2, p1, Lj$/desugar/sun/nio/fs/n;->d:Z

    .line 15
    .line 16
    if-eq v0, v2, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    iget-object v0, p1, Lj$/desugar/sun/nio/fs/n;->c:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v2, p0, Lj$/desugar/sun/nio/fs/n;->c:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ge v2, v0, :cond_2

    .line 32
    .line 33
    return v1

    .line 34
    :cond_2
    move v2, v1

    .line 35
    :goto_0
    if-ge v2, v0, :cond_4

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Lj$/desugar/sun/nio/fs/n;->k(I)Lj$/desugar/sun/nio/fs/n;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {p1, v2}, Lj$/desugar/sun/nio/fs/n;->k(I)Lj$/desugar/sun/nio/fs/n;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v4}, Lj$/desugar/sun/nio/fs/n;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_3

    .line 50
    .line 51
    return v1

    .line 52
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    const/4 p0, 0x1

    .line 56
    return p0
.end method

.method public final resolve(Ljava/lang/String;)Lj$/nio/file/Path;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/n;->getFileSystem()Lj$/nio/file/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v1, v1, [Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Lj$/nio/file/h;->j(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lj$/desugar/sun/nio/fs/n;->l(Lj$/nio/file/Path;)Lj$/nio/file/Path;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final resolveSibling(Ljava/lang/String;)Lj$/nio/file/Path;
    .locals 4

    .line 1
    new-instance v0, Lj$/desugar/sun/nio/fs/n;

    .line 2
    .line 3
    iget-object v1, p0, Lj$/desugar/sun/nio/fs/n;->a:Lj$/nio/file/h;

    .line 4
    .line 5
    iget-object v2, p0, Lj$/desugar/sun/nio/fs/n;->e:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lj$/desugar/sun/nio/fs/n;->f:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1, p1, v2, v3}, Lj$/desugar/sun/nio/fs/n;-><init>(Lj$/nio/file/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lj$/desugar/sun/nio/fs/n;->u(Lj$/nio/file/Path;)Lj$/desugar/sun/nio/fs/n;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final startsWith(Ljava/lang/String;)Z
    .locals 4

    .line 1
    new-instance v0, Lj$/desugar/sun/nio/fs/n;

    .line 2
    .line 3
    iget-object v1, p0, Lj$/desugar/sun/nio/fs/n;->a:Lj$/nio/file/h;

    .line 4
    .line 5
    iget-object v2, p0, Lj$/desugar/sun/nio/fs/n;->e:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lj$/desugar/sun/nio/fs/n;->f:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1, p1, v2, v3}, Lj$/desugar/sun/nio/fs/n;-><init>(Lj$/nio/file/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lj$/desugar/sun/nio/fs/n;->r(Lj$/nio/file/Path;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final subpath(II)Lj$/nio/file/Path;
    .locals 3

    .line 1
    new-instance v0, Lj$/desugar/sun/nio/fs/n;

    .line 2
    .line 3
    iget-object v1, p0, Lj$/desugar/sun/nio/fs/n;->a:Lj$/nio/file/h;

    .line 4
    .line 5
    iget-object v2, p0, Lj$/desugar/sun/nio/fs/n;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lj$/com/android/tools/r8/a;->F(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lj$/desugar/sun/nio/fs/n;->e:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/n;->f:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v0, v1, p1, p2, p0}, Lj$/desugar/sun/nio/fs/n;-><init>(Lj$/nio/file/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final t(Lj$/nio/file/Path;)Z
    .locals 6

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lj$/desugar/sun/nio/fs/n;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    move-object v0, p1

    .line 11
    check-cast v0, Lj$/desugar/sun/nio/fs/n;

    .line 12
    .line 13
    iget-boolean v2, v0, Lj$/desugar/sun/nio/fs/n;->d:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lj$/desugar/sun/nio/fs/n;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_1
    iget-object p1, v0, Lj$/desugar/sun/nio/fs/n;->c:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iget-object v2, p0, Lj$/desugar/sun/nio/fs/n;->c:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ge v2, p1, :cond_2

    .line 35
    .line 36
    return v1

    .line 37
    :cond_2
    iget-object v2, p0, Lj$/desugar/sun/nio/fs/n;->c:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    add-int/lit8 v3, p1, -0x1

    .line 44
    .line 45
    :goto_0
    if-ltz v3, :cond_4

    .line 46
    .line 47
    sub-int v4, v3, p1

    .line 48
    .line 49
    add-int/2addr v4, v2

    .line 50
    invoke-virtual {p0, v4}, Lj$/desugar/sun/nio/fs/n;->k(I)Lj$/desugar/sun/nio/fs/n;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v0, v3}, Lj$/desugar/sun/nio/fs/n;->k(I)Lj$/desugar/sun/nio/fs/n;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v4, v5}, Lj$/desugar/sun/nio/fs/n;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_3

    .line 63
    .line 64
    return v1

    .line 65
    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const/4 p0, 0x1

    .line 69
    return p0
.end method

.method public final bridge synthetic toAbsolutePath()Lj$/nio/file/Path;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/n;->F()Lj$/desugar/sun/nio/fs/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final toFile()Ljava/io/File;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/n;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/n;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toUri()Ljava/net/URI;
    .locals 14

    .line 1
    sget-object v0, Lj$/desugar/sun/nio/fs/o;->c:[C

    .line 2
    .line 3
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/n;->F()Lj$/desugar/sun/nio/fs/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Lj$/desugar/sun/nio/fs/n;->g:[B

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Lj$/desugar/sun/nio/fs/n;->b:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v2, Lj$/desugar/sun/nio/fs/p;->a:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, v0, Lj$/desugar/sun/nio/fs/n;->g:[B

    .line 20
    .line 21
    :cond_0
    iget-object v0, v0, Lj$/desugar/sun/nio/fs/n;->g:[B

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "file:///"

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    move v3, v2

    .line 32
    :goto_0
    array-length v4, v0

    .line 33
    if-ge v3, v4, :cond_3

    .line 34
    .line 35
    aget-byte v4, v0, v3

    .line 36
    .line 37
    and-int/lit16 v4, v4, 0xff

    .line 38
    .line 39
    int-to-char v4, v4

    .line 40
    sget-wide v5, Lj$/desugar/sun/nio/fs/o;->a:J

    .line 41
    .line 42
    sget-wide v7, Lj$/desugar/sun/nio/fs/o;->b:J

    .line 43
    .line 44
    const/16 v9, 0x40

    .line 45
    .line 46
    const-wide/16 v10, 0x0

    .line 47
    .line 48
    const-wide/16 v12, 0x1

    .line 49
    .line 50
    if-ge v4, v9, :cond_1

    .line 51
    .line 52
    shl-long v7, v12, v4

    .line 53
    .line 54
    and-long/2addr v5, v7

    .line 55
    cmp-long v5, v5, v10

    .line 56
    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/16 v5, 0x80

    .line 61
    .line 62
    if-ge v4, v5, :cond_2

    .line 63
    .line 64
    add-int/lit8 v5, v4, -0x40

    .line 65
    .line 66
    shl-long v5, v12, v5

    .line 67
    .line 68
    and-long/2addr v5, v7

    .line 69
    cmp-long v5, v5, v10

    .line 70
    .line 71
    if-eqz v5, :cond_2

    .line 72
    .line 73
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    const/16 v5, 0x25

    .line 78
    .line 79
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    sget-object v5, Lj$/desugar/sun/nio/fs/o;->c:[C

    .line 83
    .line 84
    shr-int/lit8 v6, v4, 0x4

    .line 85
    .line 86
    and-int/lit8 v6, v6, 0xf

    .line 87
    .line 88
    aget-char v6, v5, v6

    .line 89
    .line 90
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    and-int/lit8 v4, v4, 0xf

    .line 94
    .line 95
    aget-char v4, v5, v4

    .line 96
    .line 97
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    sub-int/2addr v0, v2

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    const/16 v2, 0x2f

    .line 113
    .line 114
    if-eq v0, v2, :cond_4

    .line 115
    .line 116
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/n;->toFile()Ljava/io/File;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-eqz p0, :cond_4

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    :cond_4
    :try_start_0
    new-instance p0, Ljava/net/URI;

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-direct {p0, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    .line 138
    return-object p0

    .line 139
    :catch_0
    move-exception p0

    .line 140
    new-instance v0, Ljava/lang/AssertionError;

    .line 141
    .line 142
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    throw v0
.end method

.method public final u(Lj$/nio/file/Path;)Lj$/desugar/sun/nio/fs/n;
    .locals 3

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lj$/desugar/sun/nio/fs/n;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/n;->n()Lj$/desugar/sun/nio/fs/n;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    check-cast p1, Lj$/desugar/sun/nio/fs/n;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lj$/desugar/sun/nio/fs/n;->o(Lj$/nio/file/Path;)Lj$/desugar/sun/nio/fs/n;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    invoke-interface {p1}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/h;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x2

    .line 30
    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    aput-object p1, v1, v2

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    aput-object v0, v1, p1

    .line 37
    .line 38
    const-string p1, "Expected to resolve paths on the same file system as DesugarUnixPath, but gets %s (%s)."

    .line 39
    .line 40
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final bridge synthetic v(Lj$/nio/file/Path;)Lj$/nio/file/Path;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lj$/desugar/sun/nio/fs/n;->u(Lj$/nio/file/Path;)Lj$/desugar/sun/nio/fs/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

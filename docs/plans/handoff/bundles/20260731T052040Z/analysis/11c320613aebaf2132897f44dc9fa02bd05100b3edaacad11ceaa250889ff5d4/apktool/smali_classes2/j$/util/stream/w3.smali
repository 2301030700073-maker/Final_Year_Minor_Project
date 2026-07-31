.class public abstract Lj$/util/stream/w3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/util/stream/l8;


# static fields
.field public static final a:Lj$/util/stream/y2;

.field public static final b:Lj$/util/stream/w2;

.field public static final c:Lj$/util/stream/x2;

.field public static final d:Lj$/util/stream/v2;

.field public static final e:[I

.field public static final f:[J

.field public static final g:[D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lj$/util/stream/y2;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lj$/util/stream/w3;->a:Lj$/util/stream/y2;

    .line 7
    .line 8
    new-instance v0, Lj$/util/stream/w2;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lj$/util/stream/w3;->b:Lj$/util/stream/w2;

    .line 14
    .line 15
    new-instance v0, Lj$/util/stream/x2;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lj$/util/stream/w3;->c:Lj$/util/stream/x2;

    .line 21
    .line 22
    new-instance v0, Lj$/util/stream/v2;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lj$/util/stream/w3;->d:Lj$/util/stream/v2;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    new-array v1, v0, [I

    .line 31
    .line 32
    sput-object v1, Lj$/util/stream/w3;->e:[I

    .line 33
    .line 34
    new-array v1, v0, [J

    .line 35
    .line 36
    sput-object v1, Lj$/util/stream/w3;->f:[J

    .line 37
    .line 38
    new-array v0, v0, [D

    .line 39
    .line 40
    sput-object v0, Lj$/util/stream/w3;->g:[D

    .line 41
    .line 42
    return-void
.end method

.method public static A(Lj$/util/stream/a;Lj$/util/Spliterator;Z)Lj$/util/stream/c2;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lj$/util/stream/a;->v(Lj$/util/Spliterator;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-ltz v2, :cond_1

    .line 10
    .line 11
    const/16 v2, 0x4000

    .line 12
    .line 13
    invoke-interface {p1, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    const-wide/32 v2, 0x7ffffff7

    .line 20
    .line 21
    .line 22
    cmp-long p2, v0, v2

    .line 23
    .line 24
    if-gez p2, :cond_0

    .line 25
    .line 26
    long-to-int p2, v0

    .line 27
    new-array p2, p2, [I

    .line 28
    .line 29
    new-instance v0, Lj$/util/stream/o3;

    .line 30
    .line 31
    invoke-direct {v0, p1, p0, p2}, Lj$/util/stream/o3;-><init>(Lj$/util/Spliterator;Lj$/util/stream/a;[I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    new-instance p0, Lj$/util/stream/b3;

    .line 38
    .line 39
    invoke-direct {p0, p2}, Lj$/util/stream/b3;-><init>([I)V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_0
    const-string p0, "Stream size exceeds max array size"

    .line 44
    .line 45
    invoke-static {p0}, Lj$/nio/file/m;->c(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0

    .line 50
    :cond_1
    new-instance v0, Lj$/util/stream/l2;

    .line 51
    .line 52
    new-instance v3, Lj$/util/stream/d1;

    .line 53
    .line 54
    const/4 v1, 0x7

    .line 55
    invoke-direct {v3, v1}, Lj$/util/stream/d1;-><init>(I)V

    .line 56
    .line 57
    .line 58
    new-instance v4, Lj$/util/stream/d1;

    .line 59
    .line 60
    const/16 v1, 0x8

    .line 61
    .line 62
    invoke-direct {v4, v1}, Lj$/util/stream/d1;-><init>(I)V

    .line 63
    .line 64
    .line 65
    const/4 v5, 0x1

    .line 66
    move-object v1, p0

    .line 67
    move-object v2, p1

    .line 68
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/l2;-><init>(Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Lj$/util/stream/c2;

    .line 76
    .line 77
    if-eqz p2, :cond_2

    .line 78
    .line 79
    invoke-static {p0}, Lj$/util/stream/w3;->H(Lj$/util/stream/c2;)Lj$/util/stream/c2;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    :cond_2
    return-object p0
.end method

.method public static B(Lj$/util/stream/a;Lj$/util/Spliterator;Z)Lj$/util/stream/e2;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lj$/util/stream/a;->v(Lj$/util/Spliterator;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-ltz v2, :cond_1

    .line 10
    .line 11
    const/16 v2, 0x4000

    .line 12
    .line 13
    invoke-interface {p1, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    const-wide/32 v2, 0x7ffffff7

    .line 20
    .line 21
    .line 22
    cmp-long p2, v0, v2

    .line 23
    .line 24
    if-gez p2, :cond_0

    .line 25
    .line 26
    long-to-int p2, v0

    .line 27
    new-array p2, p2, [J

    .line 28
    .line 29
    new-instance v0, Lj$/util/stream/p3;

    .line 30
    .line 31
    invoke-direct {v0, p1, p0, p2}, Lj$/util/stream/p3;-><init>(Lj$/util/Spliterator;Lj$/util/stream/a;[J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    new-instance p0, Lj$/util/stream/k3;

    .line 38
    .line 39
    invoke-direct {p0, p2}, Lj$/util/stream/k3;-><init>([J)V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_0
    const-string p0, "Stream size exceeds max array size"

    .line 44
    .line 45
    invoke-static {p0}, Lj$/nio/file/m;->c(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0

    .line 50
    :cond_1
    new-instance v0, Lj$/util/stream/l2;

    .line 51
    .line 52
    new-instance v3, Lj$/util/stream/d1;

    .line 53
    .line 54
    const/16 v1, 0x9

    .line 55
    .line 56
    invoke-direct {v3, v1}, Lj$/util/stream/d1;-><init>(I)V

    .line 57
    .line 58
    .line 59
    new-instance v4, Lj$/util/stream/d1;

    .line 60
    .line 61
    const/16 v1, 0xa

    .line 62
    .line 63
    invoke-direct {v4, v1}, Lj$/util/stream/d1;-><init>(I)V

    .line 64
    .line 65
    .line 66
    const/4 v5, 0x2

    .line 67
    move-object v1, p0

    .line 68
    move-object v2, p1

    .line 69
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/l2;-><init>(Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lj$/util/stream/e2;

    .line 77
    .line 78
    if-eqz p2, :cond_2

    .line 79
    .line 80
    invoke-static {p0}, Lj$/util/stream/w3;->I(Lj$/util/stream/e2;)Lj$/util/stream/e2;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    :cond_2
    return-object p0
.end method

.method public static C(Lj$/util/stream/e7;Lj$/util/stream/g2;Lj$/util/stream/g2;)Lj$/util/stream/i2;
    .locals 2

    .line 1
    sget-object v0, Lj$/util/stream/h2;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    new-instance p0, Lj$/util/stream/n2;

    .line 22
    .line 23
    check-cast p1, Lj$/util/stream/a2;

    .line 24
    .line 25
    check-cast p2, Lj$/util/stream/a2;

    .line 26
    .line 27
    invoke-direct {p0, p1, p2}, Lj$/util/stream/i2;-><init>(Lj$/util/stream/g2;Lj$/util/stream/g2;)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v0, "Unknown shape "

    .line 36
    .line 37
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    new-instance p0, Lj$/util/stream/p2;

    .line 52
    .line 53
    check-cast p1, Lj$/util/stream/e2;

    .line 54
    .line 55
    check-cast p2, Lj$/util/stream/e2;

    .line 56
    .line 57
    invoke-direct {p0, p1, p2}, Lj$/util/stream/i2;-><init>(Lj$/util/stream/g2;Lj$/util/stream/g2;)V

    .line 58
    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_2
    new-instance p0, Lj$/util/stream/o2;

    .line 62
    .line 63
    check-cast p1, Lj$/util/stream/c2;

    .line 64
    .line 65
    check-cast p2, Lj$/util/stream/c2;

    .line 66
    .line 67
    invoke-direct {p0, p1, p2}, Lj$/util/stream/i2;-><init>(Lj$/util/stream/g2;Lj$/util/stream/g2;)V

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_3
    new-instance p0, Lj$/util/stream/r2;

    .line 72
    .line 73
    invoke-direct {p0, p1, p2}, Lj$/util/stream/i2;-><init>(Lj$/util/stream/g2;Lj$/util/stream/g2;)V

    .line 74
    .line 75
    .line 76
    return-object p0
.end method

.method public static D(J)Lj$/util/stream/v1;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const-wide/32 v0, 0x7ffffff7

    .line 8
    .line 9
    .line 10
    cmp-long v0, p0, v0

    .line 11
    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lj$/util/stream/t2;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lj$/util/stream/s2;-><init>(J)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance p0, Lj$/util/stream/u2;

    .line 21
    .line 22
    invoke-direct {p0}, Lj$/util/stream/y6;-><init>()V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public static E(Lj$/util/stream/e7;)Lj$/util/stream/z2;
    .locals 3

    .line 1
    sget-object v0, Lj$/util/stream/h2;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    sget-object p0, Lj$/util/stream/w3;->d:Lj$/util/stream/v2;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "Unknown shape "

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    sget-object p0, Lj$/util/stream/w3;->c:Lj$/util/stream/x2;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_2
    sget-object p0, Lj$/util/stream/w3;->b:Lj$/util/stream/w2;

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_3
    sget-object p0, Lj$/util/stream/w3;->a:Lj$/util/stream/y2;

    .line 51
    .line 52
    return-object p0
.end method

.method public static F(Lj$/util/stream/g2;Ljava/util/function/IntFunction;)Lj$/util/stream/g2;
    .locals 4

    .line 1
    invoke-interface {p0}, Lj$/util/stream/g2;->u()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p0}, Lj$/util/stream/g2;->count()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/32 v2, 0x7ffffff7

    .line 12
    .line 13
    .line 14
    cmp-long v2, v0, v2

    .line 15
    .line 16
    if-gez v2, :cond_0

    .line 17
    .line 18
    long-to-int v0, v0

    .line 19
    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, [Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v0, Lj$/util/stream/v3;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-direct {v0, p0, p1, v1}, Lj$/util/stream/v3;-><init>(Lj$/util/stream/g2;Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    new-instance p0, Lj$/util/stream/j2;

    .line 35
    .line 36
    invoke-direct {p0, p1}, Lj$/util/stream/j2;-><init>([Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_0
    const-string p0, "Stream size exceeds max array size"

    .line 41
    .line 42
    invoke-static {p0}, Lj$/nio/file/m;->c(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    :cond_1
    return-object p0
.end method

.method public static G(Lj$/util/stream/a2;)Lj$/util/stream/a2;
    .locals 4

    .line 1
    invoke-interface {p0}, Lj$/util/stream/g2;->u()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p0}, Lj$/util/stream/g2;->count()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/32 v2, 0x7ffffff7

    .line 12
    .line 13
    .line 14
    cmp-long v2, v0, v2

    .line 15
    .line 16
    if-gez v2, :cond_0

    .line 17
    .line 18
    long-to-int v0, v0

    .line 19
    new-array v0, v0, [D

    .line 20
    .line 21
    new-instance v1, Lj$/util/stream/t3;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, p0, v0, v2}, Lj$/util/stream/v3;-><init>(Lj$/util/stream/g2;Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    new-instance p0, Lj$/util/stream/s2;

    .line 31
    .line 32
    invoke-direct {p0, v0}, Lj$/util/stream/s2;-><init>([D)V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_0
    const-string p0, "Stream size exceeds max array size"

    .line 37
    .line 38
    invoke-static {p0}, Lj$/nio/file/m;->c(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    :cond_1
    return-object p0
.end method

.method public static H(Lj$/util/stream/c2;)Lj$/util/stream/c2;
    .locals 4

    .line 1
    invoke-interface {p0}, Lj$/util/stream/g2;->u()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p0}, Lj$/util/stream/g2;->count()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/32 v2, 0x7ffffff7

    .line 12
    .line 13
    .line 14
    cmp-long v2, v0, v2

    .line 15
    .line 16
    if-gez v2, :cond_0

    .line 17
    .line 18
    long-to-int v0, v0

    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    new-instance v1, Lj$/util/stream/u3;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, p0, v0, v2}, Lj$/util/stream/v3;-><init>(Lj$/util/stream/g2;Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    new-instance p0, Lj$/util/stream/b3;

    .line 31
    .line 32
    invoke-direct {p0, v0}, Lj$/util/stream/b3;-><init>([I)V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_0
    const-string p0, "Stream size exceeds max array size"

    .line 37
    .line 38
    invoke-static {p0}, Lj$/nio/file/m;->c(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    :cond_1
    return-object p0
.end method

.method public static I(Lj$/util/stream/e2;)Lj$/util/stream/e2;
    .locals 4

    .line 1
    invoke-interface {p0}, Lj$/util/stream/g2;->u()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p0}, Lj$/util/stream/g2;->count()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/32 v2, 0x7ffffff7

    .line 12
    .line 13
    .line 14
    cmp-long v2, v0, v2

    .line 15
    .line 16
    if-gez v2, :cond_0

    .line 17
    .line 18
    long-to-int v0, v0

    .line 19
    new-array v0, v0, [J

    .line 20
    .line 21
    new-instance v1, Lj$/util/stream/t3;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, p0, v0, v2}, Lj$/util/stream/v3;-><init>(Lj$/util/stream/g2;Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    new-instance p0, Lj$/util/stream/k3;

    .line 31
    .line 32
    invoke-direct {p0, v0}, Lj$/util/stream/k3;-><init>([J)V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_0
    const-string p0, "Stream size exceeds max array size"

    .line 37
    .line 38
    invoke-static {p0}, Lj$/nio/file/m;->c(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    :cond_1
    return-object p0
.end method

.method public static J(Ljava/util/function/Function;)Lj$/desugar/sun/nio/fs/g;
    .locals 2

    .line 1
    new-instance v0, Lj$/desugar/sun/nio/fs/g;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lj$/desugar/sun/nio/fs/g;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iput-object p0, v0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public static K(J)Lj$/util/stream/w1;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const-wide/32 v0, 0x7ffffff7

    .line 8
    .line 9
    .line 10
    cmp-long v0, p0, v0

    .line 11
    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lj$/util/stream/c3;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lj$/util/stream/b3;-><init>(J)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance p0, Lj$/util/stream/d3;

    .line 21
    .line 22
    invoke-direct {p0}, Lj$/util/stream/y6;-><init>()V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public static L(J)Lj$/util/stream/x1;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const-wide/32 v0, 0x7ffffff7

    .line 8
    .line 9
    .line 10
    cmp-long v0, p0, v0

    .line 11
    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lj$/util/stream/l3;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lj$/util/stream/k3;-><init>(J)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance p0, Lj$/util/stream/m3;

    .line 21
    .line 22
    invoke-direct {p0}, Lj$/util/stream/y6;-><init>()V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public static M(Lj$/util/stream/t1;)Lj$/nio/file/b0;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lj$/nio/file/b0;

    .line 9
    .line 10
    sget-object v1, Lj$/util/stream/e7;->DOUBLE_VALUE:Lj$/util/stream/e7;

    .line 11
    .line 12
    new-instance v2, Lj$/util/stream/n1;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-direct {v2, p0, v3}, Lj$/util/stream/n1;-><init>(Lj$/util/stream/t1;I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, p0, v2}, Lj$/nio/file/b0;-><init>(Lj$/util/stream/e7;Lj$/util/stream/t1;Ljava/util/function/Supplier;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static N(Lj$/util/stream/t1;Ljava/util/function/IntPredicate;)Lj$/nio/file/b0;
    .locals 4

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lj$/nio/file/b0;

    .line 8
    .line 9
    sget-object v1, Lj$/util/stream/e7;->INT_VALUE:Lj$/util/stream/e7;

    .line 10
    .line 11
    new-instance v2, Lj$/nio/file/b0;

    .line 12
    .line 13
    const/4 v3, 0x6

    .line 14
    invoke-direct {v2, v3, p0, p1}, Lj$/nio/file/b0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, p0, v2}, Lj$/nio/file/b0;-><init>(Lj$/util/stream/e7;Lj$/util/stream/t1;Ljava/util/function/Supplier;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static O(Lj$/util/stream/t1;)Lj$/nio/file/b0;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lj$/nio/file/b0;

    .line 9
    .line 10
    sget-object v1, Lj$/util/stream/e7;->LONG_VALUE:Lj$/util/stream/e7;

    .line 11
    .line 12
    new-instance v2, Lj$/util/stream/n1;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v2, p0, v3}, Lj$/util/stream/n1;-><init>(Lj$/util/stream/t1;I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, p0, v2}, Lj$/nio/file/b0;-><init>(Lj$/util/stream/e7;Lj$/util/stream/t1;Ljava/util/function/Supplier;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static P(Lj$/util/stream/t1;Ljava/util/function/Predicate;)Lj$/nio/file/b0;
    .locals 4

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lj$/nio/file/b0;

    .line 8
    .line 9
    sget-object v1, Lj$/util/stream/e7;->REFERENCE:Lj$/util/stream/e7;

    .line 10
    .line 11
    new-instance v2, Lj$/nio/file/b0;

    .line 12
    .line 13
    const/4 v3, 0x7

    .line 14
    invoke-direct {v2, v3, p0, p1}, Lj$/nio/file/b0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, p0, v2}, Lj$/nio/file/b0;-><init>(Lj$/util/stream/e7;Lj$/util/stream/t1;Ljava/util/function/Supplier;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static c()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "called wrong accept method"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public static d(Lj$/util/stream/l5;Ljava/lang/Double;)V
    .locals 2

    .line 1
    sget-boolean v0, Lj$/util/stream/n8;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-interface {p0, v0, v1}, Lj$/util/stream/l5;->accept(D)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string p1, "{0} calling Sink.OfDouble.accept(Double)"

    .line 18
    .line 19
    invoke-static {p0, p1}, Lj$/util/stream/n8;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    throw p0
.end method

.method public static bridge synthetic e(Lj$/util/stream/l5;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Double;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lj$/util/stream/l5;->s(Ljava/lang/Double;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static g(Lj$/util/stream/m5;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    sget-boolean v0, Lj$/util/stream/n8;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-interface {p0, p1}, Lj$/util/stream/m5;->accept(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string p1, "{0} calling Sink.OfInt.accept(Integer)"

    .line 18
    .line 19
    invoke-static {p0, p1}, Lj$/util/stream/n8;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    throw p0
.end method

.method public static bridge synthetic h(Lj$/util/stream/m5;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lj$/util/stream/m5;->d(Ljava/lang/Integer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static i(Lj$/util/stream/n5;Ljava/lang/Long;)V
    .locals 2

    .line 1
    sget-boolean v0, Lj$/util/stream/n8;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-interface {p0, v0, v1}, Lj$/util/stream/n5;->accept(J)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string p1, "{0} calling Sink.OfLong.accept(Long)"

    .line 18
    .line 19
    invoke-static {p0, p1}, Lj$/util/stream/n8;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    throw p0
.end method

.method public static bridge synthetic j(Lj$/util/stream/n5;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lj$/util/stream/n5;->o(Ljava/lang/Long;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static k()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "called wrong accept method"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public static l()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "called wrong accept method"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public static m(Lj$/util/stream/f2;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 6

    .line 1
    sget-boolean v0, Lj$/util/stream/n8;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    invoke-interface {p0}, Lj$/util/stream/g2;->count()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const-wide/32 v4, 0x7ffffff7

    .line 11
    .line 12
    .line 13
    cmp-long v0, v2, v4

    .line 14
    .line 15
    if-gez v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Lj$/util/stream/g2;->count()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    long-to-int v0, v0

    .line 22
    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-interface {p0, p1, v0}, Lj$/util/stream/g2;->n([Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_0
    const-string p0, "Stream size exceeds max array size"

    .line 34
    .line 35
    invoke-static {p0}, Lj$/nio/file/m;->c(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p1, "{0} calling Node.OfPrimitive.asArray"

    .line 44
    .line 45
    invoke-static {p0, p1}, Lj$/util/stream/n8;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1
.end method

.method public static n(Lj$/util/stream/a2;[Ljava/lang/Double;I)V
    .locals 4

    .line 1
    sget-boolean v0, Lj$/util/stream/n8;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-interface {p0}, Lj$/util/stream/f2;->b()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, [D

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    array-length v1, p0

    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    add-int v1, p2, v0

    .line 16
    .line 17
    aget-wide v2, p0, v0

    .line 18
    .line 19
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    aput-object v2, p1, v1

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "{0} calling Node.OfDouble.copyInto(Double[], int)"

    .line 34
    .line 35
    invoke-static {p0, p1}, Lj$/util/stream/n8;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    throw p0
.end method

.method public static o(Lj$/util/stream/c2;[Ljava/lang/Integer;I)V
    .locals 3

    .line 1
    sget-boolean v0, Lj$/util/stream/n8;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-interface {p0}, Lj$/util/stream/f2;->b()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, [I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    array-length v1, p0

    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    add-int v1, p2, v0

    .line 16
    .line 17
    aget v2, p0, v0

    .line 18
    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    aput-object v2, p1, v1

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "{0} calling Node.OfInt.copyInto(Integer[], int)"

    .line 34
    .line 35
    invoke-static {p0, p1}, Lj$/util/stream/n8;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    throw p0
.end method

.method public static p(Lj$/util/stream/e2;[Ljava/lang/Long;I)V
    .locals 4

    .line 1
    sget-boolean v0, Lj$/util/stream/n8;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-interface {p0}, Lj$/util/stream/f2;->b()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, [J

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    array-length v1, p0

    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    add-int v1, p2, v0

    .line 16
    .line 17
    aget-wide v2, p0, v0

    .line 18
    .line 19
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    aput-object v2, p1, v1

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "{0} calling Node.OfInt.copyInto(Long[], int)"

    .line 34
    .line 35
    invoke-static {p0, p1}, Lj$/util/stream/n8;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    throw p0
.end method

.method public static q(Lj$/util/stream/a2;Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/util/function/DoubleConsumer;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lj$/util/stream/f2;->g(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-boolean v0, Lj$/util/stream/n8;->a:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Lj$/util/stream/f2;->spliterator()Lj$/util/b1;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lj$/util/t0;

    .line 20
    .line 21
    invoke-interface {p0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "{0} calling Node.OfLong.forEachRemaining(Consumer)"

    .line 30
    .line 31
    invoke-static {p0, p1}, Lj$/util/stream/n8;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    throw p0
.end method

.method public static r(Lj$/util/stream/c2;Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/function/IntConsumer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/util/function/IntConsumer;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lj$/util/stream/f2;->g(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-boolean v0, Lj$/util/stream/n8;->a:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Lj$/util/stream/f2;->spliterator()Lj$/util/b1;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lj$/util/Spliterator$OfInt;

    .line 20
    .line 21
    invoke-interface {p0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "{0} calling Node.OfInt.forEachRemaining(Consumer)"

    .line 30
    .line 31
    invoke-static {p0, p1}, Lj$/util/stream/n8;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    throw p0
.end method

.method public static s(Lj$/util/stream/e2;Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/function/LongConsumer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/util/function/LongConsumer;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lj$/util/stream/f2;->g(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-boolean v0, Lj$/util/stream/n8;->a:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Lj$/util/stream/f2;->spliterator()Lj$/util/b1;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lj$/util/y0;

    .line 20
    .line 21
    invoke-interface {p0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "{0} calling Node.OfLong.forEachRemaining(Consumer)"

    .line 30
    .line 31
    invoke-static {p0, p1}, Lj$/util/stream/n8;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    throw p0
.end method

.method public static t(Lj$/util/stream/a2;JJ)Lj$/util/stream/a2;
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lj$/util/stream/g2;->count()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    cmp-long v0, p3, v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    sub-long v0, p3, p1

    .line 17
    .line 18
    invoke-interface {p0}, Lj$/util/stream/f2;->spliterator()Lj$/util/b1;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lj$/util/t0;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lj$/util/stream/w3;->D(J)Lj$/util/stream/v1;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v3, v0, v1}, Lj$/util/stream/o5;->c(J)V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    move v5, v4

    .line 33
    :goto_0
    int-to-long v6, v5

    .line 34
    cmp-long v6, v6, p1

    .line 35
    .line 36
    if-gez v6, :cond_1

    .line 37
    .line 38
    new-instance v6, Lj$/util/stream/z1;

    .line 39
    .line 40
    invoke-direct {v6, v4}, Lj$/util/stream/z1;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v2, v6}, Lj$/util/t0;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_1

    .line 48
    .line 49
    add-int/lit8 v5, v5, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-interface {p0}, Lj$/util/stream/g2;->count()J

    .line 53
    .line 54
    .line 55
    move-result-wide p0

    .line 56
    cmp-long p0, p3, p0

    .line 57
    .line 58
    if-nez p0, :cond_2

    .line 59
    .line 60
    invoke-interface {v2, v3}, Lj$/util/t0;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    :goto_1
    int-to-long p0, v4

    .line 65
    cmp-long p0, p0, v0

    .line 66
    .line 67
    if-gez p0, :cond_3

    .line 68
    .line 69
    invoke-interface {v2, v3}, Lj$/util/t0;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    :goto_2
    invoke-interface {v3}, Lj$/util/stream/o5;->end()V

    .line 79
    .line 80
    .line 81
    invoke-interface {v3}, Lj$/util/stream/v1;->build()Lj$/util/stream/a2;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method public static u(Lj$/util/stream/c2;JJ)Lj$/util/stream/c2;
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lj$/util/stream/g2;->count()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    cmp-long v0, p3, v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    sub-long v0, p3, p1

    .line 17
    .line 18
    invoke-interface {p0}, Lj$/util/stream/f2;->spliterator()Lj$/util/b1;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lj$/util/Spliterator$OfInt;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lj$/util/stream/w3;->K(J)Lj$/util/stream/w1;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v3, v0, v1}, Lj$/util/stream/o5;->c(J)V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    move v5, v4

    .line 33
    :goto_0
    int-to-long v6, v5

    .line 34
    cmp-long v6, v6, p1

    .line 35
    .line 36
    if-gez v6, :cond_1

    .line 37
    .line 38
    new-instance v6, Lj$/util/stream/b2;

    .line 39
    .line 40
    invoke-direct {v6, v4}, Lj$/util/stream/b2;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v2, v6}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_1

    .line 48
    .line 49
    add-int/lit8 v5, v5, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-interface {p0}, Lj$/util/stream/g2;->count()J

    .line 53
    .line 54
    .line 55
    move-result-wide p0

    .line 56
    cmp-long p0, p3, p0

    .line 57
    .line 58
    if-nez p0, :cond_2

    .line 59
    .line 60
    invoke-interface {v2, v3}, Lj$/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    :goto_1
    int-to-long p0, v4

    .line 65
    cmp-long p0, p0, v0

    .line 66
    .line 67
    if-gez p0, :cond_3

    .line 68
    .line 69
    invoke-interface {v2, v3}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    :goto_2
    invoke-interface {v3}, Lj$/util/stream/o5;->end()V

    .line 79
    .line 80
    .line 81
    invoke-interface {v3}, Lj$/util/stream/w1;->build()Lj$/util/stream/c2;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method public static v(Lj$/util/stream/e2;JJ)Lj$/util/stream/e2;
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lj$/util/stream/g2;->count()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    cmp-long v0, p3, v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    sub-long v0, p3, p1

    .line 17
    .line 18
    invoke-interface {p0}, Lj$/util/stream/f2;->spliterator()Lj$/util/b1;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lj$/util/y0;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lj$/util/stream/w3;->L(J)Lj$/util/stream/x1;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v3, v0, v1}, Lj$/util/stream/o5;->c(J)V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    move v5, v4

    .line 33
    :goto_0
    int-to-long v6, v5

    .line 34
    cmp-long v6, v6, p1

    .line 35
    .line 36
    if-gez v6, :cond_1

    .line 37
    .line 38
    new-instance v6, Lj$/util/stream/d2;

    .line 39
    .line 40
    invoke-direct {v6, v4}, Lj$/util/stream/d2;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v2, v6}, Lj$/util/y0;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_1

    .line 48
    .line 49
    add-int/lit8 v5, v5, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-interface {p0}, Lj$/util/stream/g2;->count()J

    .line 53
    .line 54
    .line 55
    move-result-wide p0

    .line 56
    cmp-long p0, p3, p0

    .line 57
    .line 58
    if-nez p0, :cond_2

    .line 59
    .line 60
    invoke-interface {v2, v3}, Lj$/util/y0;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    :goto_1
    int-to-long p0, v4

    .line 65
    cmp-long p0, p0, v0

    .line 66
    .line 67
    if-gez p0, :cond_3

    .line 68
    .line 69
    invoke-interface {v2, v3}, Lj$/util/y0;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    :goto_2
    invoke-interface {v3}, Lj$/util/stream/o5;->end()V

    .line 79
    .line 80
    .line 81
    invoke-interface {v3}, Lj$/util/stream/x1;->build()Lj$/util/stream/e2;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method public static w(Lj$/util/stream/g2;JJLjava/util/function/IntFunction;)Lj$/util/stream/g2;
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lj$/util/stream/g2;->count()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    cmp-long v0, p3, v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Lj$/util/stream/g2;->spliterator()Lj$/util/Spliterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sub-long v1, p3, p1

    .line 21
    .line 22
    invoke-static {v1, v2, p5}, Lj$/util/stream/w3;->x(JLjava/util/function/IntFunction;)Lj$/util/stream/y1;

    .line 23
    .line 24
    .line 25
    move-result-object p5

    .line 26
    invoke-interface {p5, v1, v2}, Lj$/util/stream/o5;->c(J)V

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    move v4, v3

    .line 31
    :goto_0
    int-to-long v5, v4

    .line 32
    cmp-long v5, v5, p1

    .line 33
    .line 34
    if-gez v5, :cond_1

    .line 35
    .line 36
    new-instance v5, Lj$/util/stream/d1;

    .line 37
    .line 38
    const/4 v6, 0x3

    .line 39
    invoke-direct {v5, v6}, Lj$/util/stream/d1;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v5}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {p0}, Lj$/util/stream/g2;->count()J

    .line 52
    .line 53
    .line 54
    move-result-wide p0

    .line 55
    cmp-long p0, p3, p0

    .line 56
    .line 57
    if-nez p0, :cond_2

    .line 58
    .line 59
    invoke-interface {v0, p5}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    :goto_1
    int-to-long p0, v3

    .line 64
    cmp-long p0, p0, v1

    .line 65
    .line 66
    if-gez p0, :cond_3

    .line 67
    .line 68
    invoke-interface {v0, p5}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_3

    .line 73
    .line 74
    add-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    :goto_2
    invoke-interface {p5}, Lj$/util/stream/o5;->end()V

    .line 78
    .line 79
    .line 80
    invoke-interface {p5}, Lj$/util/stream/y1;->build()Lj$/util/stream/g2;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method

.method public static x(JLjava/util/function/IntFunction;)Lj$/util/stream/y1;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const-wide/32 v0, 0x7ffffff7

    .line 8
    .line 9
    .line 10
    cmp-long v0, p0, v0

    .line 11
    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lj$/util/stream/a3;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/j2;-><init>(JLjava/util/function/IntFunction;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance p0, Lj$/util/stream/s3;

    .line 21
    .line 22
    invoke-direct {p0}, Lj$/util/stream/z6;-><init>()V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public static y(Lj$/util/stream/a;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/g2;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lj$/util/stream/a;->v(Lj$/util/Spliterator;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-ltz v2, :cond_1

    .line 10
    .line 11
    const/16 v2, 0x4000

    .line 12
    .line 13
    invoke-interface {p1, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    const-wide/32 v2, 0x7ffffff7

    .line 20
    .line 21
    .line 22
    cmp-long p2, v0, v2

    .line 23
    .line 24
    if-gez p2, :cond_0

    .line 25
    .line 26
    long-to-int p2, v0

    .line 27
    invoke-interface {p3, p2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, [Ljava/lang/Object;

    .line 32
    .line 33
    new-instance p3, Lj$/util/stream/q3;

    .line 34
    .line 35
    invoke-direct {p3, p1, p0, p2}, Lj$/util/stream/q3;-><init>(Lj$/util/Spliterator;Lj$/util/stream/a;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    new-instance p0, Lj$/util/stream/j2;

    .line 42
    .line 43
    invoke-direct {p0, p2}, Lj$/util/stream/j2;-><init>([Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_0
    const-string p0, "Stream size exceeds max array size"

    .line 48
    .line 49
    invoke-static {p0}, Lj$/nio/file/m;->c(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0

    .line 54
    :cond_1
    new-instance v0, Lj$/util/stream/l2;

    .line 55
    .line 56
    new-instance v3, Lj$/util/stream/m0;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p3, v3, Lj$/util/stream/m0;->a:Ljava/util/function/IntFunction;

    .line 62
    .line 63
    new-instance v4, Lj$/util/stream/d1;

    .line 64
    .line 65
    const/16 v1, 0xb

    .line 66
    .line 67
    invoke-direct {v4, v1}, Lj$/util/stream/d1;-><init>(I)V

    .line 68
    .line 69
    .line 70
    const/4 v5, 0x3

    .line 71
    move-object v1, p0

    .line 72
    move-object v2, p1

    .line 73
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/l2;-><init>(Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Lj$/util/stream/g2;

    .line 81
    .line 82
    if-eqz p2, :cond_2

    .line 83
    .line 84
    invoke-static {p0, p3}, Lj$/util/stream/w3;->F(Lj$/util/stream/g2;Ljava/util/function/IntFunction;)Lj$/util/stream/g2;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    :cond_2
    return-object p0
.end method

.method public static z(Lj$/util/stream/a;Lj$/util/Spliterator;Z)Lj$/util/stream/a2;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lj$/util/stream/a;->v(Lj$/util/Spliterator;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-ltz v2, :cond_1

    .line 10
    .line 11
    const/16 v2, 0x4000

    .line 12
    .line 13
    invoke-interface {p1, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    const-wide/32 v2, 0x7ffffff7

    .line 20
    .line 21
    .line 22
    cmp-long p2, v0, v2

    .line 23
    .line 24
    if-gez p2, :cond_0

    .line 25
    .line 26
    long-to-int p2, v0

    .line 27
    new-array p2, p2, [D

    .line 28
    .line 29
    new-instance v0, Lj$/util/stream/n3;

    .line 30
    .line 31
    invoke-direct {v0, p1, p0, p2}, Lj$/util/stream/n3;-><init>(Lj$/util/Spliterator;Lj$/util/stream/a;[D)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    new-instance p0, Lj$/util/stream/s2;

    .line 38
    .line 39
    invoke-direct {p0, p2}, Lj$/util/stream/s2;-><init>([D)V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_0
    const-string p0, "Stream size exceeds max array size"

    .line 44
    .line 45
    invoke-static {p0}, Lj$/nio/file/m;->c(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0

    .line 50
    :cond_1
    new-instance v0, Lj$/util/stream/l2;

    .line 51
    .line 52
    new-instance v3, Lj$/util/stream/d1;

    .line 53
    .line 54
    const/4 v1, 0x5

    .line 55
    invoke-direct {v3, v1}, Lj$/util/stream/d1;-><init>(I)V

    .line 56
    .line 57
    .line 58
    new-instance v4, Lj$/util/stream/d1;

    .line 59
    .line 60
    const/4 v1, 0x6

    .line 61
    invoke-direct {v4, v1}, Lj$/util/stream/d1;-><init>(I)V

    .line 62
    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    move-object v1, p0

    .line 66
    move-object v2, p1

    .line 67
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/l2;-><init>(Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Lj$/util/stream/a2;

    .line 75
    .line 76
    if-eqz p2, :cond_2

    .line 77
    .line 78
    invoke-static {p0}, Lj$/util/stream/w3;->G(Lj$/util/stream/a2;)Lj$/util/stream/a2;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    :cond_2
    return-object p0
.end method


# virtual methods
.method public abstract Q()Lj$/util/stream/r4;
.end method

.method public a(Lj$/util/stream/a;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lj$/util/stream/w3;->Q()Lj$/util/stream/r4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1, p2, p0}, Lj$/util/stream/a;->N(Lj$/util/Spliterator;Lj$/util/stream/o5;)Lj$/util/stream/o5;

    .line 6
    .line 7
    .line 8
    check-cast p0, Lj$/util/stream/r4;

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public b(Lj$/util/stream/a;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lj$/util/stream/y4;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/y4;-><init>(Lj$/util/stream/w3;Lj$/util/stream/a;Lj$/util/Spliterator;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lj$/util/stream/r4;

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public synthetic f()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

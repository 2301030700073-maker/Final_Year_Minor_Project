.class public Lj$/util/n1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lj$/util/Spliterator;


# instance fields
.field public final a:Ljava/util/Collection;

.field public b:Ljava/util/Iterator;

.field public final c:I

.field public d:J

.field public e:I


# direct methods
.method public constructor <init>(ILjava/util/Collection;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lj$/util/n1;->a:Ljava/util/Collection;

    const/4 p2, 0x0

    .line 23
    iput-object p2, p0, Lj$/util/n1;->b:Ljava/util/Iterator;

    or-int/lit16 p1, p1, 0x4040

    .line 24
    iput p1, p0, Lj$/util/n1;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lj$/util/n1;->a:Ljava/util/Collection;

    .line 6
    .line 7
    iput-object p1, p0, Lj$/util/n1;->b:Ljava/util/Iterator;

    .line 8
    .line 9
    const-wide v0, 0x7fffffffffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    iput-wide v0, p0, Lj$/util/n1;->d:J

    .line 15
    .line 16
    and-int/lit16 p1, p2, -0x4041

    .line 17
    .line 18
    iput p1, p0, Lj$/util/n1;->c:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 0

    .line 1
    iget p0, p0, Lj$/util/n1;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public final estimateSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lj$/util/n1;->b:Ljava/util/Iterator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lj$/util/n1;->a:Ljava/util/Collection;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lj$/util/n1;->b:Ljava/util/Iterator;

    .line 12
    .line 13
    iget-object v0, p0, Lj$/util/n1;->a:Ljava/util/Collection;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-long v0, v0

    .line 20
    iput-wide v0, p0, Lj$/util/n1;->d:J

    .line 21
    .line 22
    return-wide v0

    .line 23
    :cond_0
    iget-wide v0, p0, Lj$/util/n1;->d:J

    .line 24
    .line 25
    return-wide v0
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lj$/util/n1;->b:Ljava/util/Iterator;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lj$/util/n1;->a:Ljava/util/Collection;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lj$/util/n1;->b:Ljava/util/Iterator;

    .line 15
    .line 16
    iget-object v1, p0, Lj$/util/n1;->a:Ljava/util/Collection;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    int-to-long v1, v1

    .line 23
    iput-wide v1, p0, Lj$/util/n1;->d:J

    .line 24
    .line 25
    :cond_0
    invoke-static {v0, p1}, Lj$/time/a;->M(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p0, v0}, Lj$/time/a;->p(Lj$/util/Spliterator;I)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method public final synthetic getExactSizeIfKnown()J
    .locals 2

    .line 1
    invoke-static {p0}, Lj$/time/a;->n(Lj$/util/Spliterator;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final synthetic hasCharacteristics(I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/time/a;->p(Lj$/util/Spliterator;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lj$/util/n1;->b:Ljava/util/Iterator;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lj$/util/n1;->a:Ljava/util/Collection;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lj$/util/n1;->b:Ljava/util/Iterator;

    .line 15
    .line 16
    iget-object v0, p0, Lj$/util/n1;->a:Ljava/util/Collection;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    int-to-long v0, v0

    .line 23
    iput-wide v0, p0, Lj$/util/n1;->d:J

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lj$/util/n1;->b:Ljava/util/Iterator;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object p0, p0, Lj$/util/n1;->b:Ljava/util/Iterator;

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method public final trySplit()Lj$/util/Spliterator;
    .locals 9

    .line 1
    iget-object v0, p0, Lj$/util/n1;->b:Ljava/util/Iterator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lj$/util/n1;->a:Ljava/util/Collection;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lj$/util/n1;->b:Ljava/util/Iterator;

    .line 12
    .line 13
    iget-object v1, p0, Lj$/util/n1;->a:Ljava/util/Collection;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-long v1, v1

    .line 20
    iput-wide v1, p0, Lj$/util/n1;->d:J

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-wide v1, p0, Lj$/util/n1;->d:J

    .line 24
    .line 25
    :goto_0
    const-wide/16 v3, 0x1

    .line 26
    .line 27
    cmp-long v3, v1, v3

    .line 28
    .line 29
    if-lez v3, :cond_6

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_6

    .line 36
    .line 37
    iget v3, p0, Lj$/util/n1;->e:I

    .line 38
    .line 39
    add-int/lit16 v3, v3, 0x400

    .line 40
    .line 41
    int-to-long v4, v3

    .line 42
    cmp-long v4, v4, v1

    .line 43
    .line 44
    if-lez v4, :cond_1

    .line 45
    .line 46
    long-to-int v3, v1

    .line 47
    :cond_1
    const/high16 v1, 0x2000000

    .line 48
    .line 49
    if-le v3, v1, :cond_2

    .line 50
    .line 51
    move v3, v1

    .line 52
    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    move v4, v2

    .line 56
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    aput-object v5, v1, v4

    .line 61
    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    if-ge v4, v3, :cond_4

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_3

    .line 71
    .line 72
    :cond_4
    iput v4, p0, Lj$/util/n1;->e:I

    .line 73
    .line 74
    iget-wide v5, p0, Lj$/util/n1;->d:J

    .line 75
    .line 76
    const-wide v7, 0x7fffffffffffffffL

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    cmp-long v0, v5, v7

    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    int-to-long v7, v4

    .line 86
    sub-long/2addr v5, v7

    .line 87
    iput-wide v5, p0, Lj$/util/n1;->d:J

    .line 88
    .line 89
    :cond_5
    new-instance v0, Lj$/util/g1;

    .line 90
    .line 91
    iget p0, p0, Lj$/util/n1;->c:I

    .line 92
    .line 93
    invoke-direct {v0, v1, v2, v4, p0}, Lj$/util/g1;-><init>([Ljava/lang/Object;III)V

    .line 94
    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_6
    const/4 p0, 0x0

    .line 98
    return-object p0
.end method

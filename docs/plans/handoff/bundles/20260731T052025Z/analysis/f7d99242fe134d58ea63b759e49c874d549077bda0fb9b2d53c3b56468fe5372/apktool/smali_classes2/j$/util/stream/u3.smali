.class public Lj$/util/stream/u3;
.super Ljava/util/concurrent/CountedCompleter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final a:Lj$/util/stream/g2;

.field public final b:I

.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj$/util/stream/g2;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lj$/util/stream/u3;->c:I

    .line 18
    invoke-direct {p0}, Ljava/util/concurrent/CountedCompleter;-><init>()V

    .line 19
    iput-object p1, p0, Lj$/util/stream/u3;->a:Lj$/util/stream/g2;

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lj$/util/stream/u3;->b:I

    .line 21
    iput-object p2, p0, Lj$/util/stream/u3;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/u3;Lj$/util/stream/f2;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/u3;->c:I

    .line 22
    invoke-direct {p0, p1, p2, p3, v0}, Lj$/util/stream/u3;-><init>(Lj$/util/stream/u3;Lj$/util/stream/g2;IB)V

    .line 23
    iget-object p1, p1, Lj$/util/stream/u3;->d:Ljava/lang/Object;

    iput-object p1, p0, Lj$/util/stream/u3;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/u3;Lj$/util/stream/g2;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lj$/util/stream/u3;->c:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Lj$/util/stream/u3;-><init>(Lj$/util/stream/u3;Lj$/util/stream/g2;IB)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Lj$/util/stream/u3;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, [Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p1, p0, Lj$/util/stream/u3;->d:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lj$/util/stream/u3;Lj$/util/stream/g2;IB)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 16
    iput-object p2, p0, Lj$/util/stream/u3;->a:Lj$/util/stream/g2;

    .line 17
    iput p3, p0, Lj$/util/stream/u3;->b:I

    return-void
.end method


# virtual methods
.method public final a(II)Lj$/util/stream/u3;
    .locals 2

    .line 1
    iget v0, p0, Lj$/util/stream/u3;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lj$/util/stream/u3;

    .line 7
    .line 8
    iget-object v1, p0, Lj$/util/stream/u3;->a:Lj$/util/stream/g2;

    .line 9
    .line 10
    invoke-interface {v1, p1}, Lj$/util/stream/g2;->a(I)Lj$/util/stream/g2;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/u3;-><init>(Lj$/util/stream/u3;Lj$/util/stream/g2;I)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_0
    new-instance v0, Lj$/util/stream/u3;

    .line 19
    .line 20
    iget-object v1, p0, Lj$/util/stream/u3;->a:Lj$/util/stream/g2;

    .line 21
    .line 22
    check-cast v1, Lj$/util/stream/f2;

    .line 23
    .line 24
    invoke-interface {v1, p1}, Lj$/util/stream/f2;->a(I)Lj$/util/stream/f2;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/u3;-><init>(Lj$/util/stream/u3;Lj$/util/stream/f2;I)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final compute()V
    .locals 7

    .line 1
    :goto_0
    iget-object v0, p0, Lj$/util/stream/u3;->a:Lj$/util/stream/g2;

    .line 2
    .line 3
    invoke-interface {v0}, Lj$/util/stream/g2;->s()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lj$/util/stream/u3;->c:I

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lj$/util/stream/u3;->a:Lj$/util/stream/g2;

    .line 15
    .line 16
    iget-object v1, p0, Lj$/util/stream/u3;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, [Ljava/lang/Object;

    .line 19
    .line 20
    iget v2, p0, Lj$/util/stream/u3;->b:I

    .line 21
    .line 22
    invoke-interface {v0, v1, v2}, Lj$/util/stream/g2;->m([Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/u3;->a:Lj$/util/stream/g2;

    .line 27
    .line 28
    check-cast v0, Lj$/util/stream/f2;

    .line 29
    .line 30
    iget-object v1, p0, Lj$/util/stream/u3;->d:Ljava/lang/Object;

    .line 31
    .line 32
    iget v2, p0, Lj$/util/stream/u3;->b:I

    .line 33
    .line 34
    invoke-interface {v0, v2, v1}, Lj$/util/stream/f2;->f(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->propagateCompletion()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lj$/util/stream/u3;->a:Lj$/util/stream/g2;

    .line 42
    .line 43
    invoke-interface {v0}, Lj$/util/stream/g2;->s()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/lit8 v0, v0, -0x1

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CountedCompleter;->setPendingCount(I)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    move v1, v0

    .line 54
    :goto_2
    iget-object v2, p0, Lj$/util/stream/u3;->a:Lj$/util/stream/g2;

    .line 55
    .line 56
    invoke-interface {v2}, Lj$/util/stream/g2;->s()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    add-int/lit8 v2, v2, -0x1

    .line 61
    .line 62
    iget v3, p0, Lj$/util/stream/u3;->b:I

    .line 63
    .line 64
    if-ge v0, v2, :cond_1

    .line 65
    .line 66
    add-int/2addr v3, v1

    .line 67
    invoke-virtual {p0, v0, v3}, Lj$/util/stream/u3;->a(II)Lj$/util/stream/u3;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    int-to-long v3, v1

    .line 72
    iget-object v1, v2, Lj$/util/stream/u3;->a:Lj$/util/stream/g2;

    .line 73
    .line 74
    invoke-interface {v1}, Lj$/util/stream/g2;->count()J

    .line 75
    .line 76
    .line 77
    move-result-wide v5

    .line 78
    add-long/2addr v5, v3

    .line 79
    long-to-int v1, v5

    .line 80
    invoke-virtual {v2}, Ljava/util/concurrent/CountedCompleter;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 81
    .line 82
    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_1
    add-int/2addr v3, v1

    .line 87
    invoke-virtual {p0, v0, v3}, Lj$/util/stream/u3;->a(II)Lj$/util/stream/u3;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    goto :goto_0

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

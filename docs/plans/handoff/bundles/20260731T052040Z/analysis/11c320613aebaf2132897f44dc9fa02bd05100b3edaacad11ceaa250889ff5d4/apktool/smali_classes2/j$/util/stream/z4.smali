.class public final Lj$/util/stream/z4;
.super Lj$/util/stream/k5;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic b:I

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final synthetic e:Lj$/util/stream/a;


# direct methods
.method public constructor <init>(Lj$/util/stream/g1;Lj$/util/stream/o5;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lj$/util/stream/z4;->b:I

    .line 3
    .line 4
    iput-object p1, p0, Lj$/util/stream/z4;->e:Lj$/util/stream/a;

    .line 5
    .line 6
    invoke-direct {p0, p2}, Lj$/util/stream/k5;-><init>(Lj$/util/stream/o5;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lj$/util/stream/k5;->a:Lj$/util/stream/o5;

    .line 10
    .line 11
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    new-instance p2, Lj$/util/l0;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-direct {p2, p1, v0}, Lj$/util/l0;-><init>(Ljava/util/function/Consumer;I)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lj$/util/stream/z4;->d:Ljava/lang/Object;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lj$/util/stream/s;Lj$/util/stream/o5;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj$/util/stream/z4;->b:I

    .line 23
    iput-object p1, p0, Lj$/util/stream/z4;->e:Lj$/util/stream/a;

    invoke-direct {p0, p2}, Lj$/util/stream/k5;-><init>(Lj$/util/stream/o5;)V

    .line 24
    iget-object p1, p0, Lj$/util/stream/k5;->a:Lj$/util/stream/o5;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lj$/util/d0;

    invoke-direct {p2, p1, v0}, Lj$/util/d0;-><init>(Ljava/util/function/Consumer;I)V

    iput-object p2, p0, Lj$/util/stream/z4;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lj$/util/stream/z4;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lj$/util/stream/k5;->a:Lj$/util/stream/o5;

    .line 4
    .line 5
    iget-object v2, p0, Lj$/util/stream/z4;->e:Lj$/util/stream/a;

    .line 6
    .line 7
    iget-object v3, p0, Lj$/util/stream/z4;->d:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v3, Lj$/util/d0;

    .line 13
    .line 14
    check-cast v2, Lj$/util/stream/s;

    .line 15
    .line 16
    iget-object v0, v2, Lj$/util/stream/s;->m:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lj$/desugar/sun/nio/fs/g;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lj$/util/stream/e0;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    :try_start_0
    iget-boolean p0, p0, Lj$/util/stream/z4;->c:Z

    .line 29
    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    invoke-interface {p1}, Lj$/util/stream/e0;->sequential()Lj$/util/stream/e0;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0, v3}, Lj$/util/stream/e0;->forEach(Ljava/util/function/DoubleConsumer;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {p1}, Lj$/util/stream/e0;->sequential()Lj$/util/stream/e0;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-interface {p0}, Lj$/util/stream/e0;->spliterator()Lj$/util/t0;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :cond_1
    invoke-interface {v1}, Lj$/util/stream/o5;->e()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    invoke-interface {p0, v3}, Lj$/util/t0;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    .line 57
    .line 58
    .line 59
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_1
    move-exception p1

    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    throw p0

    .line 72
    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 73
    .line 74
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void

    .line 78
    :pswitch_0
    check-cast v3, Lj$/util/l0;

    .line 79
    .line 80
    check-cast v2, Lj$/util/stream/g1;

    .line 81
    .line 82
    iget-object v0, v2, Lj$/util/stream/g1;->m:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Lj$/desugar/sun/nio/fs/g;

    .line 85
    .line 86
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lj$/util/stream/LongStream;

    .line 91
    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    :try_start_2
    iget-boolean p0, p0, Lj$/util/stream/z4;->c:Z

    .line 95
    .line 96
    if-nez p0, :cond_4

    .line 97
    .line 98
    invoke-interface {p1}, Lj$/util/stream/LongStream;->sequential()Lj$/util/stream/LongStream;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-interface {p0, v3}, Lj$/util/stream/LongStream;->forEach(Ljava/util/function/LongConsumer;)V

    .line 103
    .line 104
    .line 105
    goto :goto_5

    .line 106
    :catchall_2
    move-exception p0

    .line 107
    goto :goto_3

    .line 108
    :cond_4
    invoke-interface {p1}, Lj$/util/stream/LongStream;->sequential()Lj$/util/stream/LongStream;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-interface {p0}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/y0;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    :cond_5
    invoke-interface {v1}, Lj$/util/stream/o5;->e()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_6

    .line 121
    .line 122
    invoke-interface {p0, v3}, Lj$/util/y0;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    .line 123
    .line 124
    .line 125
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 126
    if-nez v0, :cond_5

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :goto_3
    :try_start_3
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :catchall_3
    move-exception p1

    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    :goto_4
    throw p0

    .line 138
    :cond_6
    :goto_5
    if-eqz p1, :cond_7

    .line 139
    .line 140
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V

    .line 141
    .line 142
    .line 143
    :cond_7
    return-void

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(J)V
    .locals 0

    .line 1
    iget p1, p0, Lj$/util/stream/z4;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lj$/util/stream/k5;->a:Lj$/util/stream/o5;

    .line 7
    .line 8
    const-wide/16 p1, -0x1

    .line 9
    .line 10
    invoke-interface {p0, p1, p2}, Lj$/util/stream/o5;->c(J)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object p0, p0, Lj$/util/stream/k5;->a:Lj$/util/stream/o5;

    .line 15
    .line 16
    const-wide/16 p1, -0x1

    .line 17
    .line 18
    invoke-interface {p0, p1, p2}, Lj$/util/stream/o5;->c(J)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/z4;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lj$/util/stream/z4;->c:Z

    .line 8
    .line 9
    iget-object p0, p0, Lj$/util/stream/k5;->a:Lj$/util/stream/o5;

    .line 10
    .line 11
    invoke-interface {p0}, Lj$/util/stream/o5;->e()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :pswitch_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lj$/util/stream/z4;->c:Z

    .line 18
    .line 19
    iget-object p0, p0, Lj$/util/stream/k5;->a:Lj$/util/stream/o5;

    .line 20
    .line 21
    invoke-interface {p0}, Lj$/util/stream/o5;->e()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

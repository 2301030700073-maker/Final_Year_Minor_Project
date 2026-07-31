.class public final Lj$/util/stream/l;
.super Lj$/util/stream/k5;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic b:I

.field public c:Z

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj$/util/stream/b5;Lj$/util/stream/o5;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj$/util/stream/l;->b:I

    .line 14
    iput-object p1, p0, Lj$/util/stream/l;->d:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lj$/util/stream/k5;-><init>(Lj$/util/stream/o5;)V

    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/o5;)V
    .locals 1

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/l;->b:I

    invoke-direct {p0, p1}, Lj$/util/stream/k5;-><init>(Lj$/util/stream/o5;)V

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/o8;Lj$/util/stream/o5;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lj$/util/stream/l;->b:I

    .line 3
    .line 4
    iput-object p1, p0, Lj$/util/stream/l;->d:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p0, p2}, Lj$/util/stream/k5;-><init>(Lj$/util/stream/o5;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lj$/util/stream/l;->c:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lj$/util/stream/l;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lj$/util/stream/k5;->a:Lj$/util/stream/o5;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lj$/util/stream/l;->c:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lj$/util/stream/l;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lj$/util/stream/o8;

    .line 15
    .line 16
    iget-object v0, v0, Lj$/util/stream/o8;->m:Ljava/util/function/Predicate;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput-boolean v0, p0, Lj$/util/stream/l;->c:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/l;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lj$/util/stream/b5;

    .line 33
    .line 34
    iget-object v0, v0, Lj$/util/stream/b5;->m:Ljava/util/function/Function;

    .line 35
    .line 36
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lj$/util/stream/Stream;

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    :try_start_0
    iget-boolean p0, p0, Lj$/util/stream/l;->c:Z

    .line 45
    .line 46
    if-nez p0, :cond_1

    .line 47
    .line 48
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->sequential()Lj$/util/stream/BaseStream;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Lj$/util/stream/Stream;

    .line 53
    .line 54
    invoke-interface {p0, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->sequential()Lj$/util/stream/BaseStream;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Lj$/util/stream/Stream;

    .line 65
    .line 66
    invoke-interface {p0}, Lj$/util/stream/BaseStream;->spliterator()Lj$/util/Spliterator;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    :cond_2
    invoke-interface {v1}, Lj$/util/stream/o5;->e()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    invoke-interface {p0, v1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 77
    .line 78
    .line 79
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    if-nez v0, :cond_2

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catchall_1
    move-exception p1

    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    throw p0

    .line 92
    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 93
    .line 94
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V

    .line 95
    .line 96
    .line 97
    :cond_4
    return-void

    .line 98
    :pswitch_1
    if-nez p1, :cond_5

    .line 99
    .line 100
    iget-boolean p1, p0, Lj$/util/stream/l;->c:Z

    .line 101
    .line 102
    if-nez p1, :cond_7

    .line 103
    .line 104
    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lj$/util/stream/l;->c:Z

    .line 106
    .line 107
    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lj$/util/stream/l;->d:Ljava/lang/Object;

    .line 109
    .line 110
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    iget-object v0, p0, Lj$/util/stream/l;->d:Ljava/lang/Object;

    .line 115
    .line 116
    if-eqz v0, :cond_6

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_7

    .line 123
    .line 124
    :cond_6
    iput-object p1, p0, Lj$/util/stream/l;->d:Ljava/lang/Object;

    .line 125
    .line 126
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_7
    :goto_3
    return-void

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(J)V
    .locals 0

    .line 1
    iget p1, p0, Lj$/util/stream/l;->b:I

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
    :pswitch_1
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lj$/util/stream/l;->c:Z

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lj$/util/stream/l;->d:Ljava/lang/Object;

    .line 27
    .line 28
    iget-object p0, p0, Lj$/util/stream/k5;->a:Lj$/util/stream/o5;

    .line 29
    .line 30
    const-wide/16 p1, -0x1

    .line 31
    .line 32
    invoke-interface {p0, p1, p2}, Lj$/util/stream/o5;->c(J)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()Z
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/l;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lj$/util/stream/k5;->e()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    iget-boolean v0, p0, Lj$/util/stream/l;->c:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lj$/util/stream/k5;->a:Lj$/util/stream/o5;

    .line 16
    .line 17
    invoke-interface {p0}, Lj$/util/stream/o5;->e()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 27
    :goto_1
    return p0

    .line 28
    :pswitch_1
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lj$/util/stream/l;->c:Z

    .line 30
    .line 31
    iget-object p0, p0, Lj$/util/stream/k5;->a:Lj$/util/stream/o5;

    .line 32
    .line 33
    invoke-interface {p0}, Lj$/util/stream/o5;->e()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public end()V
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/l;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lj$/util/stream/k5;->end()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lj$/util/stream/l;->c:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lj$/util/stream/l;->d:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object p0, p0, Lj$/util/stream/k5;->a:Lj$/util/stream/o5;

    .line 17
    .line 18
    invoke-interface {p0}, Lj$/util/stream/o5;->end()V

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

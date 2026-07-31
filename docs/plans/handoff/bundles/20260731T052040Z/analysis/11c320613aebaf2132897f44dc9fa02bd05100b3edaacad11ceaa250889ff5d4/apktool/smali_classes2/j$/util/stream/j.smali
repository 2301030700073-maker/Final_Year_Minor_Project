.class public final synthetic Lj$/util/stream/j;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/BinaryOperator;
.implements Ljava/util/function/Function;
.implements Ljava/util/function/Supplier;
.implements Ljava/util/function/BiConsumer;
.implements Ljava/util/function/DoubleFunction;
.implements Ljava/util/function/ToDoubleFunction;
.implements Ljava/util/function/IntFunction;
.implements Ljava/util/function/DoubleBinaryOperator;
.implements Ljava/util/function/ObjDoubleConsumer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lj$/util/stream/j;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;D)V
    .locals 5

    iget p0, p0, Lj$/util/stream/j;->a:I

    const/4 v0, 0x2

    check-cast p1, [D

    packed-switch p0, :pswitch_data_0

    .line 67
    aget-wide v1, p1, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    .line 68
    invoke-static {p1, p2, p3}, Lj$/util/stream/Collectors;->b([DD)V

    const/4 p0, 0x3

    .line 69
    aget-wide v0, p1, p0

    add-double/2addr v0, p2

    aput-wide v0, p1, p0

    return-void

    .line 70
    :pswitch_0
    invoke-static {p1, p2, p3}, Lj$/util/stream/Collectors;->b([DD)V

    .line 71
    aget-wide v1, p1, v0

    add-double/2addr v1, p2

    aput-wide v1, p1, v0

    return-void

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget p0, p0, Lj$/util/stream/j;->a:I

    .line 2
    .line 3
    sparse-switch p0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, [D

    .line 7
    .line 8
    check-cast p2, [D

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    aget-wide v0, p2, p0

    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lj$/util/stream/Collectors;->b([DD)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    aget-wide v0, p2, p0

    .line 18
    .line 19
    invoke-static {p1, v0, v1}, Lj$/util/stream/Collectors;->b([DD)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x2

    .line 23
    aget-wide v0, p1, p0

    .line 24
    .line 25
    aget-wide v2, p2, p0

    .line 26
    .line 27
    add-double/2addr v0, v2

    .line 28
    aput-wide v0, p1, p0

    .line 29
    .line 30
    return-void

    .line 31
    :sswitch_0
    check-cast p1, Lj$/util/w;

    .line 32
    .line 33
    check-cast p2, Lj$/util/w;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lj$/util/w;->a(Lj$/util/w;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :sswitch_1
    check-cast p1, Ljava/util/LinkedHashSet;

    .line 40
    .line 41
    check-cast p2, Ljava/util/LinkedHashSet;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :sswitch_2
    check-cast p1, Ljava/util/LinkedHashSet;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :sswitch_3
    check-cast p1, Lj$/util/q1;

    .line 54
    .line 55
    check-cast p2, Ljava/lang/CharSequence;

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lj$/util/q1;->a(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :sswitch_4
    check-cast p1, Ljava/util/Set;

    .line 62
    .line 63
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x9 -> :sswitch_3
        0x11 -> :sswitch_2
        0x12 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/j;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :sswitch_0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :sswitch_1
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :sswitch_2
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :sswitch_3
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :sswitch_4
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    nop

    .line 37
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x9 -> :sswitch_3
        0x11 -> :sswitch_2
        0x12 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 1

    iget v0, p0, Lj$/util/stream/j;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 37
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p0

    return-object p0

    .line 38
    :sswitch_0
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p0

    return-object p0

    .line 39
    :sswitch_1
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p0

    return-object p0

    .line 40
    :sswitch_2
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p0

    return-object p0

    .line 41
    :sswitch_3
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x4 -> :sswitch_2
        0x7 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lj$/util/stream/j;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 42
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p0

    return-object p0

    .line 43
    :sswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p0

    return-object p0

    .line 44
    :sswitch_1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p0

    return-object p0

    .line 45
    :sswitch_2
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p0

    return-object p0

    .line 46
    :sswitch_3
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
        0x8 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public apply(D)Ljava/lang/Object;
    .locals 0

    .line 116
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 0

    .line 115
    new-array p0, p1, [Ljava/lang/Double;

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget p0, p0, Lj$/util/stream/j;->a:I

    sparse-switch p0, :sswitch_data_0

    check-cast p1, [J

    sget-object p0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    const/4 p0, 0x0

    .line 117
    aget-wide p0, p1, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 118
    :sswitch_0
    check-cast p1, Lj$/util/q1;

    invoke-virtual {p1}, Lj$/util/q1;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 119
    :sswitch_1
    sget-object p0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    return-object p1

    .line 120
    :sswitch_2
    check-cast p1, Ljava/util/Set;

    sget-object p0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 121
    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lj$/com/android/tools/r8/a;->I([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 122
    :sswitch_3
    check-cast p1, [D

    sget-object p0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    const/4 p0, 0x2

    .line 123
    aget-wide v0, p1, p0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lj$/util/stream/Collectors;->a([D)D

    move-result-wide v0

    aget-wide p0, p1, p0

    div-double v2, v0, p0

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
        0x8 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget p0, p0, Lj$/util/stream/j;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sparse-switch p0, :sswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, [J

    .line 8
    .line 9
    check-cast p2, [J

    .line 10
    .line 11
    sget-object p0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 12
    .line 13
    aget-wide v1, p1, v0

    .line 14
    .line 15
    aget-wide v3, p2, v0

    .line 16
    .line 17
    add-long/2addr v1, v3

    .line 18
    aput-wide v1, p1, v0

    .line 19
    .line 20
    return-object p1

    .line 21
    :sswitch_0
    check-cast p1, Lj$/util/q1;

    .line 22
    .line 23
    check-cast p2, Lj$/util/q1;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object p0, p2, Lj$/util/q1;->d:[Ljava/lang/String;

    .line 32
    .line 33
    if-nez p0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p2}, Lj$/util/q1;->b()V

    .line 37
    .line 38
    .line 39
    iget-object p0, p2, Lj$/util/q1;->d:[Ljava/lang/String;

    .line 40
    .line 41
    aget-object p0, p0, v0

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Lj$/util/q1;->a(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-object p1

    .line 47
    :sswitch_1
    check-cast p1, Ljava/util/List;

    .line 48
    .line 49
    check-cast p2, Ljava/util/List;

    .line 50
    .line 51
    sget-object p0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 52
    .line 53
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    .line 55
    .line 56
    return-object p1

    .line 57
    :sswitch_2
    check-cast p1, Ljava/util/Set;

    .line 58
    .line 59
    check-cast p2, Ljava/util/Set;

    .line 60
    .line 61
    sget-object p0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-interface {p2}, Ljava/util/Set;->size()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-ge p0, v0, :cond_1

    .line 72
    .line 73
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    .line 76
    move-object p1, p2

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 79
    .line 80
    .line 81
    :goto_1
    return-object p1

    .line 82
    :sswitch_3
    check-cast p1, [D

    .line 83
    .line 84
    check-cast p2, [D

    .line 85
    .line 86
    aget-wide v0, p2, v0

    .line 87
    .line 88
    invoke-static {p1, v0, v1}, Lj$/util/stream/Collectors;->b([DD)V

    .line 89
    .line 90
    .line 91
    const/4 p0, 0x1

    .line 92
    aget-wide v0, p2, p0

    .line 93
    .line 94
    invoke-static {p1, v0, v1}, Lj$/util/stream/Collectors;->b([DD)V

    .line 95
    .line 96
    .line 97
    const/4 p0, 0x2

    .line 98
    aget-wide v0, p1, p0

    .line 99
    .line 100
    aget-wide v2, p2, p0

    .line 101
    .line 102
    add-double/2addr v0, v2

    .line 103
    aput-wide v0, p1, p0

    .line 104
    .line 105
    const/4 p0, 0x3

    .line 106
    aget-wide v0, p1, p0

    .line 107
    .line 108
    aget-wide v2, p2, p0

    .line 109
    .line 110
    add-double/2addr v0, v2

    .line 111
    aput-wide v0, p1, p0

    .line 112
    .line 113
    return-object p1

    .line 114
    nop

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x4 -> :sswitch_2
        0x7 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public applyAsDouble(DD)D
    .locals 0

    .line 1
    iget p0, p0, Lj$/util/stream/j;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(DD)D

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0

    .line 11
    :pswitch_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    return-wide p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public applyAsDouble(Ljava/lang/Object;)D
    .locals 0

    check-cast p1, Ljava/lang/Double;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/j;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :sswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :sswitch_1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :sswitch_2
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :sswitch_3
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
        0x8 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lj$/util/stream/j;->a:I

    .line 2
    .line 3
    sparse-switch p0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x4

    .line 7
    new-array p0, p0, [D

    .line 8
    .line 9
    return-object p0

    .line 10
    :sswitch_0
    const/4 p0, 0x3

    .line 11
    new-array p0, p0, [D

    .line 12
    .line 13
    return-object p0

    .line 14
    :sswitch_1
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :sswitch_2
    sget-object p0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    new-array p0, p0, [J

    .line 24
    .line 25
    return-object p0

    .line 26
    :sswitch_3
    new-instance p0, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :sswitch_4
    new-instance p0, Lj$/util/z;

    .line 33
    .line 34
    invoke-direct {p0}, Lj$/util/z;-><init>()V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :sswitch_5
    new-instance p0, Ljava/util/HashSet;

    .line 39
    .line 40
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 41
    .line 42
    .line 43
    return-object p0

    .line 44
    nop

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0x6 -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_2
        0x10 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

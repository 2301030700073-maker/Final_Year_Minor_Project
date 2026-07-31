.class public final synthetic Lj$/desugar/sun/nio/fs/g;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/nio/file/z;
.implements Ljava/nio/file/DirectoryStream$Filter;
.implements Lj$/nio/file/attribute/FileAttribute;
.implements Ljava/util/function/IntPredicate;
.implements Ljava/util/function/Predicate;
.implements Ljava/util/function/Supplier;
.implements Ljava/util/function/BiConsumer;
.implements Ljava/util/function/BinaryOperator;
.implements Ljava/util/function/DoubleFunction;
.implements Ljava/util/function/Function;
.implements Ljava/util/function/LongFunction;
.implements Ljava/util/function/Consumer;
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 9
    iput p1, p0, Lj$/desugar/sun/nio/fs/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lj$/desugar/sun/nio/fs/g;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lj$/nio/file/Path;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/regex/Pattern;

    .line 4
    .line 5
    invoke-interface {p1}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lj$/desugar/sun/nio/fs/g;->a:I

    packed-switch v0, :pswitch_data_0

    .line 70
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 71
    :pswitch_0
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    check-cast p0, Lj$/util/stream/o5;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lj$/desugar/sun/nio/fs/g;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Ljava/util/function/ToLongFunction;

    .line 10
    .line 11
    check-cast p1, [J

    .line 12
    .line 13
    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 14
    .line 15
    aget-wide v2, p1, v1

    .line 16
    .line 17
    invoke-interface {p0, p2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    add-long/2addr v4, v2

    .line 22
    aput-wide v4, p1, v1

    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    check-cast p0, Ljava/util/function/ToDoubleFunction;

    .line 26
    .line 27
    check-cast p1, [D

    .line 28
    .line 29
    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 30
    .line 31
    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    invoke-static {p1, v0, v1}, Lj$/util/stream/Collectors;->b([DD)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x2

    .line 39
    aget-wide v2, p1, p0

    .line 40
    .line 41
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 42
    .line 43
    add-double/2addr v2, v4

    .line 44
    aput-wide v2, p1, p0

    .line 45
    .line 46
    const/4 p0, 0x3

    .line 47
    aget-wide v2, p1, p0

    .line 48
    .line 49
    add-double/2addr v2, v0

    .line 50
    aput-wide v2, p1, p0

    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_1
    check-cast p0, Ljava/util/function/ToIntFunction;

    .line 54
    .line 55
    check-cast p1, [I

    .line 56
    .line 57
    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 58
    .line 59
    aget v0, p1, v1

    .line 60
    .line 61
    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    add-int/2addr p0, v0

    .line 66
    aput p0, p1, v1

    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;)Z
    .locals 0

    .line 69
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    check-cast p0, Ljava/nio/file/DirectoryStream$Filter;

    invoke-static {p1}, Lj$/com/android/tools/r8/a;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/nio/file/DirectoryStream$Filter;->accept(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public synthetic and(Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/IntPredicate$-CC;->$default$and(Ljava/util/function/IntPredicate;Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    .line 6
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 1

    .line 1
    iget v0, p0, Lj$/desugar/sun/nio/fs/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

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
    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 21
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p0

    return-object p0
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lj$/desugar/sun/nio/fs/g;->a:I

    packed-switch v0, :pswitch_data_0

    .line 22
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0

    .line 23
    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p0

    return-object p0
.end method

.method public apply(D)Ljava/lang/Object;
    .locals 0

    .line 111
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/DoubleFunction;

    invoke-interface {p0, p1, p2}, Ljava/util/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 112
    :cond_0
    instance-of p2, p0, Lj$/util/stream/e0;

    if-eqz p2, :cond_1

    .line 113
    check-cast p0, Lj$/util/stream/e0;

    .line 114
    invoke-static {p0}, Lj$/util/stream/d0;->f(Lj$/util/stream/e0;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    return-object p0

    .line 115
    :cond_1
    instance-of p2, p0, Ljava/util/stream/DoubleStream;

    if-eqz p2, :cond_2

    .line 116
    check-cast p0, Ljava/util/stream/DoubleStream;

    .line 117
    invoke-static {p0}, Lj$/util/stream/c0;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/e0;

    move-result-object p0

    return-object p0

    .line 118
    :cond_2
    const-string p2, "java.util.stream.DoubleStream"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p2}, Lj$/util/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1
.end method

.method public apply(J)Ljava/lang/Object;
    .locals 0

    .line 119
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/LongFunction;

    invoke-interface {p0, p1, p2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 120
    :cond_0
    instance-of p2, p0, Lj$/util/stream/LongStream;

    if-eqz p2, :cond_1

    .line 121
    check-cast p0, Lj$/util/stream/LongStream;

    .line 122
    invoke-static {p0}, Lj$/util/stream/m1;->f(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p0

    return-object p0

    .line 123
    :cond_1
    instance-of p2, p0, Ljava/util/stream/LongStream;

    if-eqz p2, :cond_2

    .line 124
    check-cast p0, Ljava/util/stream/LongStream;

    invoke-static {p0}, Lj$/util/stream/l1;->f(Ljava/util/stream/LongStream;)Lj$/util/stream/LongStream;

    move-result-object p0

    return-object p0

    .line 125
    :cond_2
    const-string p2, "java.util.stream.LongStream"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p2}, Lj$/util/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/function/Function;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 p1, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    instance-of v0, p0, Lj$/util/stream/Stream;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    check-cast p0, Lj$/util/stream/Stream;

    .line 18
    .line 19
    invoke-static {p0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_1
    instance-of v0, p0, Ljava/util/stream/Stream;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    check-cast p0, Ljava/util/stream/Stream;

    .line 29
    .line 30
    invoke-static {p0}, Lj$/util/stream/a7;->f(Ljava/util/stream/Stream;)Lj$/util/stream/Stream;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_2
    instance-of v0, p0, Lj$/util/stream/IntStream;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    check-cast p0, Lj$/util/stream/IntStream;

    .line 40
    .line 41
    invoke-static {p0}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_3
    instance-of v0, p0, Ljava/util/stream/IntStream;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    check-cast p0, Ljava/util/stream/IntStream;

    .line 51
    .line 52
    invoke-static {p0}, Lj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Lj$/util/stream/IntStream;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_4
    instance-of v0, p0, Lj$/util/stream/e0;

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    check-cast p0, Lj$/util/stream/e0;

    .line 62
    .line 63
    invoke-static {p0}, Lj$/util/stream/d0;->f(Lj$/util/stream/e0;)Ljava/util/stream/DoubleStream;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_5
    instance-of v0, p0, Ljava/util/stream/DoubleStream;

    .line 69
    .line 70
    if-eqz v0, :cond_6

    .line 71
    .line 72
    check-cast p0, Ljava/util/stream/DoubleStream;

    .line 73
    .line 74
    invoke-static {p0}, Lj$/util/stream/c0;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/e0;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_6
    instance-of v0, p0, Lj$/util/stream/LongStream;

    .line 80
    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    check-cast p0, Lj$/util/stream/LongStream;

    .line 84
    .line 85
    invoke-static {p0}, Lj$/util/stream/m1;->f(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    :cond_7
    instance-of v0, p0, Ljava/util/stream/LongStream;

    .line 91
    .line 92
    if-eqz v0, :cond_8

    .line 93
    .line 94
    check-cast p0, Ljava/util/stream/LongStream;

    .line 95
    .line 96
    invoke-static {p0}, Lj$/util/stream/l1;->f(Ljava/util/stream/LongStream;)Lj$/util/stream/LongStream;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0

    .line 101
    :cond_8
    const-string v0, "java.util.stream.*Stream"

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-static {p0, v0}, Lj$/util/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/BinaryOperator;

    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 126
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v1, v0, p0}, Lj$/util/Map$-EL;->merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public b(Lj$/util/stream/c7;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljava/util/Map;

    .line 9
    .line 10
    check-cast p0, Ljava/util/EnumMap;

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lj$/desugar/sun/nio/fs/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljava/lang/CharSequence;

    .line 9
    .line 10
    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 11
    .line 12
    new-instance v0, Lj$/util/q1;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lj$/util/q1;-><init>(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_0
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lj$/util/Spliterator;

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_1
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Lj$/util/stream/a;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lj$/util/stream/a;->K(I)Lj$/util/Spliterator;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAsBoolean()Z
    .locals 1

    .line 1
    iget v0, p0, Lj$/desugar/sun/nio/fs/g;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lj$/util/stream/h8;

    .line 9
    .line 10
    iget-object v0, p0, Lj$/util/stream/f7;->d:Lj$/util/Spliterator;

    .line 11
    .line 12
    iget-object p0, p0, Lj$/util/stream/f7;->e:Lj$/util/stream/o5;

    .line 13
    .line 14
    invoke-interface {v0, p0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :pswitch_0
    check-cast p0, Lj$/util/stream/s7;

    .line 20
    .line 21
    iget-object v0, p0, Lj$/util/stream/f7;->d:Lj$/util/Spliterator;

    .line 22
    .line 23
    iget-object p0, p0, Lj$/util/stream/f7;->e:Lj$/util/stream/o5;

    .line 24
    .line 25
    invoke-interface {v0, p0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :pswitch_1
    check-cast p0, Lj$/util/stream/q7;

    .line 31
    .line 32
    iget-object v0, p0, Lj$/util/stream/f7;->d:Lj$/util/Spliterator;

    .line 33
    .line 34
    iget-object p0, p0, Lj$/util/stream/f7;->e:Lj$/util/stream/o5;

    .line 35
    .line 36
    invoke-interface {v0, p0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0

    .line 41
    :pswitch_2
    check-cast p0, Lj$/util/stream/o7;

    .line 42
    .line 43
    iget-object v0, p0, Lj$/util/stream/f7;->d:Lj$/util/Spliterator;

    .line 44
    .line 45
    iget-object p0, p0, Lj$/util/stream/f7;->e:Lj$/util/stream/o5;

    .line 46
    .line 47
    invoke-interface {v0, p0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public name()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "posix:permissions"

    .line 2
    .line 3
    return-object p0
.end method

.method public synthetic negate()Ljava/util/function/IntPredicate;
    .locals 0

    .line 1
    invoke-static {p0}, Lj$/util/function/IntPredicate$-CC;->$default$negate(Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public synthetic negate()Ljava/util/function/Predicate;
    .locals 0

    .line 6
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public synthetic or(Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/IntPredicate$-CC;->$default$or(Ljava/util/function/IntPredicate;Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    .line 6
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public test(I)Z
    .locals 0

    iget-object p0, p0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/IntPredicate;

    .line 12
    invoke-interface {p0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/function/Predicate;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    return p0
.end method

.method public value()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/nio/file/attribute/FileAttribute;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/nio/file/attribute/FileAttribute;->value()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/util/Set;

    .line 10
    .line 11
    invoke-static {p0}, Lj$/com/android/tools/r8/a;->A(Ljava/util/Set;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

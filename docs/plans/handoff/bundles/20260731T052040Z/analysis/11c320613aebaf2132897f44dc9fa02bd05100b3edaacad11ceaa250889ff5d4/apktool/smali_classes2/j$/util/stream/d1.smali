.class public final synthetic Lj$/util/stream/d1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/LongBinaryOperator;
.implements Ljava/util/function/ToLongFunction;
.implements Ljava/util/function/Consumer;
.implements Ljava/util/function/IntFunction;
.implements Ljava/util/function/LongFunction;
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lj$/util/stream/d1;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final accept$j$$util$stream$Node$0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfRef$0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfRef$1(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lj$/util/stream/d1;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/d1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :pswitch_2
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_3
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lj$/util/stream/d1;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 27
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0

    .line 28
    :sswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0

    .line 29
    :sswitch_1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lj$/util/stream/d1;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    new-array p0, p1, [Ljava/lang/Double;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    new-array p0, p1, [Ljava/lang/Double;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    new-array p0, p1, [Ljava/lang/Long;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    new-array p0, p1, [Ljava/lang/Long;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    new-array p0, p1, [Ljava/lang/Integer;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    new-array p0, p1, [Ljava/lang/Integer;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    new-array p0, p1, [Ljava/lang/Double;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    new-array p0, p1, [Ljava/lang/Long;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    new-array p0, p1, [Ljava/lang/Integer;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    new-array p0, p1, [Ljava/lang/Object;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    new-array p0, p1, [Ljava/lang/Object;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public apply(J)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lj$/util/stream/d1;->a:I

    packed-switch p0, :pswitch_data_0

    .line 39
    :pswitch_0
    invoke-static {p1, p2}, Lj$/util/stream/w3;->L(J)Lj$/util/stream/x1;

    move-result-object p0

    return-object p0

    .line 40
    :pswitch_1
    invoke-static {p1, p2}, Lj$/util/stream/w3;->K(J)Lj$/util/stream/w1;

    move-result-object p0

    return-object p0

    .line 41
    :pswitch_2
    invoke-static {p1, p2}, Lj$/util/stream/w3;->D(J)Lj$/util/stream/v1;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lj$/util/stream/d1;->a:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lj$/util/stream/r2;

    check-cast p1, Lj$/util/stream/g2;

    check-cast p2, Lj$/util/stream/g2;

    .line 42
    invoke-direct {p0, p1, p2}, Lj$/util/stream/i2;-><init>(Lj$/util/stream/g2;Lj$/util/stream/g2;)V

    return-object p0

    .line 43
    :pswitch_1
    new-instance p0, Lj$/util/stream/p2;

    check-cast p1, Lj$/util/stream/e2;

    check-cast p2, Lj$/util/stream/e2;

    .line 44
    invoke-direct {p0, p1, p2}, Lj$/util/stream/i2;-><init>(Lj$/util/stream/g2;Lj$/util/stream/g2;)V

    return-object p0

    .line 45
    :pswitch_2
    new-instance p0, Lj$/util/stream/o2;

    check-cast p1, Lj$/util/stream/c2;

    check-cast p2, Lj$/util/stream/c2;

    .line 46
    invoke-direct {p0, p1, p2}, Lj$/util/stream/i2;-><init>(Lj$/util/stream/g2;Lj$/util/stream/g2;)V

    return-object p0

    .line 47
    :pswitch_3
    new-instance p0, Lj$/util/stream/n2;

    check-cast p1, Lj$/util/stream/a2;

    check-cast p2, Lj$/util/stream/a2;

    .line 48
    invoke-direct {p0, p1, p2}, Lj$/util/stream/i2;-><init>(Lj$/util/stream/g2;Lj$/util/stream/g2;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public applyAsLong(JJ)J
    .locals 0

    .line 1
    iget p0, p0, Lj$/util/stream/d1;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0

    .line 11
    :pswitch_0
    add-long/2addr p1, p3

    .line 12
    return-wide p1

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public applyAsLong(Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Ljava/lang/Long;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.class public final Lj$/util/stream/v6;
.super Lj$/util/stream/x6;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/util/y0;


# instance fields
.field public final synthetic g:Lj$/util/stream/w6;


# direct methods
.method public constructor <init>(Lj$/util/stream/w6;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj$/util/stream/v6;->g:Lj$/util/stream/w6;

    .line 2
    .line 3
    invoke-direct/range {p0 .. p5}, Lj$/util/stream/x6;-><init>(Lj$/util/stream/y6;IIII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, [J

    .line 2
    .line 3
    check-cast p3, Ljava/util/function/LongConsumer;

    .line 4
    .line 5
    aget-wide p0, p2, p1

    .line 6
    .line 7
    invoke-interface {p3, p0, p1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b(Ljava/lang/Object;II)Lj$/util/b1;
    .locals 1

    .line 1
    check-cast p1, [J

    .line 2
    .line 3
    add-int/2addr p3, p2

    .line 4
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, [J

    .line 9
    .line 10
    array-length p0, p0

    .line 11
    invoke-static {p0, p2, p3}, Lj$/util/Spliterators;->a(III)V

    .line 12
    .line 13
    .line 14
    new-instance p0, Lj$/util/p1;

    .line 15
    .line 16
    const/16 v0, 0x410

    .line 17
    .line 18
    invoke-direct {p0, p1, p2, p3, v0}, Lj$/util/p1;-><init>([JIII)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public final c(IIII)Lj$/util/b1;
    .locals 6

    .line 1
    new-instance v0, Lj$/util/stream/v6;

    .line 2
    .line 3
    iget-object v1, p0, Lj$/util/stream/v6;->g:Lj$/util/stream/w6;

    .line 4
    .line 5
    move v2, p1

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/v6;-><init>(Lj$/util/stream/w6;IIII)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/a0;->e(Lj$/util/y0;Ljava/util/function/Consumer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/a0;->h(Lj$/util/y0;Ljava/util/function/Consumer;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

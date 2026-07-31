.class public final Lj$/util/stream/h0;
.super Lj$/util/stream/j0;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lj$/util/stream/k5;


# static fields
.field public static final c:Lj$/util/stream/e0;

.field public static final d:Lj$/util/stream/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lj$/util/stream/e0;

    .line 2
    .line 3
    sget-object v2, Lj$/util/stream/a7;->LONG_VALUE:Lj$/util/stream/a7;

    .line 4
    .line 5
    new-instance v4, Lj$/util/stream/o;

    .line 6
    .line 7
    const/16 v6, 0xf

    .line 8
    .line 9
    invoke-direct {v4, v6}, Lj$/util/stream/o;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v5, Lj$/util/stream/o;

    .line 13
    .line 14
    const/16 v7, 0x10

    .line 15
    .line 16
    invoke-direct {v5, v7}, Lj$/util/stream/o;-><init>(I)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    sget-object v3, Lj$/util/a0;->c:Lj$/util/a0;

    .line 21
    .line 22
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/e0;-><init>(ZLj$/util/stream/a7;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lj$/util/stream/h0;->c:Lj$/util/stream/e0;

    .line 26
    .line 27
    new-instance v1, Lj$/util/stream/e0;

    .line 28
    .line 29
    new-instance v5, Lj$/util/stream/o;

    .line 30
    .line 31
    invoke-direct {v5, v6}, Lj$/util/stream/o;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v6, Lj$/util/stream/o;

    .line 35
    .line 36
    invoke-direct {v6, v7}, Lj$/util/stream/o;-><init>(I)V

    .line 37
    .line 38
    .line 39
    move-object v4, v3

    .line 40
    move-object v3, v2

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-direct/range {v1 .. v6}, Lj$/util/stream/e0;-><init>(ZLj$/util/stream/a7;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    .line 43
    .line 44
    .line 45
    sput-object v1, Lj$/util/stream/h0;->d:Lj$/util/stream/e0;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lj$/util/stream/j0;->accept(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/time/a;->d(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Lj$/util/function/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj$/util/stream/j0;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lj$/util/stream/j0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    new-instance p0, Lj$/util/a0;

    .line 14
    .line 15
    invoke-direct {p0, v0, v1}, Lj$/util/a0;-><init>(J)V

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

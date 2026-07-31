.class public final Lj$/util/stream/j0;
.super Lj$/util/stream/k0;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final c:Lj$/util/stream/f0;

.field public static final d:Lj$/util/stream/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lj$/util/stream/f0;

    .line 2
    .line 3
    sget-object v2, Lj$/util/stream/e7;->REFERENCE:Lj$/util/stream/e7;

    .line 4
    .line 5
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    new-instance v4, Lj$/util/stream/r;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-direct {v4, v1}, Lj$/util/stream/r;-><init>(I)V

    .line 14
    .line 15
    .line 16
    new-instance v5, Lj$/util/stream/r;

    .line 17
    .line 18
    const/16 v1, 0x9

    .line 19
    .line 20
    invoke-direct {v5, v1}, Lj$/util/stream/r;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/f0;-><init>(ZLj$/util/stream/e7;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lj$/util/stream/j0;->c:Lj$/util/stream/f0;

    .line 28
    .line 29
    new-instance v1, Lj$/util/stream/f0;

    .line 30
    .line 31
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    new-instance v5, Lj$/util/stream/r;

    .line 36
    .line 37
    const/16 v0, 0x8

    .line 38
    .line 39
    invoke-direct {v5, v0}, Lj$/util/stream/r;-><init>(I)V

    .line 40
    .line 41
    .line 42
    new-instance v6, Lj$/util/stream/r;

    .line 43
    .line 44
    const/16 v0, 0x9

    .line 45
    .line 46
    invoke-direct {v6, v0}, Lj$/util/stream/r;-><init>(I)V

    .line 47
    .line 48
    .line 49
    move-object v3, v2

    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-direct/range {v1 .. v6}, Lj$/util/stream/f0;-><init>(ZLj$/util/stream/e7;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    .line 52
    .line 53
    .line 54
    sput-object v1, Lj$/util/stream/j0;->d:Lj$/util/stream/f0;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj$/util/stream/k0;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lj$/util/stream/k0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {p0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

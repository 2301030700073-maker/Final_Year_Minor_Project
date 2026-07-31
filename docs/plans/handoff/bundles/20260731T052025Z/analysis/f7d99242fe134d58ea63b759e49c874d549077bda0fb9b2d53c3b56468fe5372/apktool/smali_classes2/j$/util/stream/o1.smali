.class public final Lj$/util/stream/o1;
.super Lj$/util/stream/s1;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic c:Lj$/util/stream/t1;

.field public final synthetic d:Ljava/util/function/Predicate;


# direct methods
.method public constructor <init>(Lj$/util/stream/t1;Ljava/util/function/Predicate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj$/util/stream/o1;->c:Lj$/util/stream/t1;

    .line 2
    .line 3
    iput-object p2, p0, Lj$/util/stream/o1;->d:Ljava/util/function/Predicate;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lj$/util/stream/s1;-><init>(Lj$/util/stream/t1;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj$/util/stream/s1;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lj$/util/stream/o1;->d:Ljava/util/function/Predicate;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lj$/util/stream/o1;->c:Lj$/util/stream/t1;

    .line 12
    .line 13
    iget-boolean v1, v0, Lj$/util/stream/t1;->a:Z

    .line 14
    .line 15
    if-ne p1, v1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lj$/util/stream/s1;->a:Z

    .line 19
    .line 20
    iget-boolean p1, v0, Lj$/util/stream/t1;->b:Z

    .line 21
    .line 22
    iput-boolean p1, p0, Lj$/util/stream/s1;->b:Z

    .line 23
    .line 24
    :cond_0
    return-void
.end method

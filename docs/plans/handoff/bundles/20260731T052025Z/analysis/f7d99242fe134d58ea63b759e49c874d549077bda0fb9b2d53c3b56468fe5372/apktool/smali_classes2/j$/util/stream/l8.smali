.class public final Lj$/util/stream/l8;
.super Lj$/util/stream/f5;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lj$/util/stream/s8;


# direct methods
.method public constructor <init>(Lj$/util/stream/e6;Lj$/util/stream/l5;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lj$/util/stream/f5;-><init>(Lj$/util/stream/l5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-interface {p0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    .line 3
    .line 4
    .line 5
    throw p0
.end method

.method public final h()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

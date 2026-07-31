.class public final Lj$/util/stream/v8;
.super Lj$/util/stream/j5;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/util/stream/z8;


# direct methods
.method public constructor <init>(Lj$/util/stream/j6;Lj$/util/stream/o5;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lj$/util/stream/j5;-><init>(Lj$/util/stream/o5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-interface {p0, p1, p2}, Ljava/util/function/LongPredicate;->test(J)Z

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

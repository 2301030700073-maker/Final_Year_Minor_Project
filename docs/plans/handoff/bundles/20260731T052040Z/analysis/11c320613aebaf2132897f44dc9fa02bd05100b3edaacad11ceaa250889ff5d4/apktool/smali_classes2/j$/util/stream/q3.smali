.class public final Lj$/util/stream/q3;
.super Lj$/util/stream/r3;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final h:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj$/util/Spliterator;Lj$/util/stream/a;[Ljava/lang/Object;)V
    .locals 1

    .line 17
    array-length v0, p3

    invoke-direct {p0, p1, p2, v0}, Lj$/util/stream/r3;-><init>(Lj$/util/Spliterator;Lj$/util/stream/a;I)V

    .line 18
    iput-object p3, p0, Lj$/util/stream/q3;->h:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/q3;Lj$/util/Spliterator;JJ)V
    .locals 9

    .line 1
    iget-object v0, p1, Lj$/util/stream/q3;->h:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v8, v0

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-wide v4, p3

    .line 8
    move-wide v6, p5

    .line 9
    invoke-direct/range {v1 .. v8}, Lj$/util/stream/r3;-><init>(Lj$/util/stream/r3;Lj$/util/Spliterator;JJI)V

    .line 10
    .line 11
    .line 12
    iget-object p0, v2, Lj$/util/stream/q3;->h:[Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p0, v1, Lj$/util/stream/q3;->h:[Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lj$/util/Spliterator;JJ)Lj$/util/stream/r3;
    .locals 7

    .line 1
    new-instance v0, Lj$/util/stream/q3;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-wide v3, p2

    .line 6
    move-wide v5, p4

    .line 7
    invoke-direct/range {v0 .. v6}, Lj$/util/stream/q3;-><init>(Lj$/util/stream/q3;Lj$/util/Spliterator;JJ)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lj$/util/stream/r3;->f:I

    .line 2
    .line 3
    iget v1, p0, Lj$/util/stream/r3;->g:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lj$/util/stream/q3;->h:[Ljava/lang/Object;

    .line 8
    .line 9
    add-int/lit8 v2, v0, 0x1

    .line 10
    .line 11
    iput v2, p0, Lj$/util/stream/r3;->f:I

    .line 12
    .line 13
    aput-object p1, v1, v0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 17
    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

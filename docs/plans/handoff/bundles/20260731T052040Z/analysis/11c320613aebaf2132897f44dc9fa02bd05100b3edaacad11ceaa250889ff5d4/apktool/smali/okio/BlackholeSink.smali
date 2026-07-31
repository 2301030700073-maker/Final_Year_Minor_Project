.class public final Lokio/BlackholeSink;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lokio/Sink;


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    return-void
.end method

.method public final timeout()Lokio/Timeout;
    .locals 0

    .line 1
    sget-object p0, Lokio/Timeout;->NONE:Lokio/Timeout$Companion$NONE$1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final write(JLokio/Buffer;)V
    .locals 0

    .line 1
    invoke-virtual {p3, p1, p2}, Lokio/Buffer;->skip(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

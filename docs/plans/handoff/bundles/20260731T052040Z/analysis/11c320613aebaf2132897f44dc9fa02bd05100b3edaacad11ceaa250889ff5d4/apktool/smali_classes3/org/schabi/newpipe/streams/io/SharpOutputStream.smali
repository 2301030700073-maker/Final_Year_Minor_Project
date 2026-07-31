.class public final Lorg/schabi/newpipe/streams/io/SharpOutputStream;
.super Ljava/io/OutputStream;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final stream:Lorg/schabi/newpipe/streams/io/SharpStream;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->canWrite()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/SharpOutputStream;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string p0, "SharpStream is not writable"

    .line 14
    .line 15
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    throw p0
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/SharpOutputStream;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/SharpOutputStream;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/SharpStream;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final write(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/SharpOutputStream;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 2
    .line 3
    int-to-byte p1, p1

    .line 4
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->write(B)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final write([B)V
    .locals 0

    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/SharpOutputStream;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([B)V

    return-void
.end method

.method public final write([BII)V
    .locals 0

    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/SharpOutputStream;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([BII)V

    return-void
.end method

.class public final Lokhttp3/RequestBody$Companion$toRequestBody$3;
.super Lokhttp3/RequestBody;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $byteCount:I

.field public final synthetic $this_toRequestBody:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lokhttp3/RequestBody$Companion$toRequestBody$3;->$byteCount:I

    .line 5
    .line 6
    iput-object p2, p0, Lokhttp3/RequestBody$Companion$toRequestBody$3;->$this_toRequestBody:[B

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    .line 1
    iget p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$3;->$byteCount:I

    .line 2
    .line 3
    int-to-long v0, p0

    .line 4
    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final writeTo(Lokio/RealBufferedSink;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$3;->$this_toRequestBody:[B

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p1, Lokio/RealBufferedSink;->closed:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p1, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 11
    .line 12
    iget p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$3;->$byteCount:I

    .line 13
    .line 14
    invoke-virtual {v1, p0, v0}, Lokio/Buffer;->write(I[B)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string p0, "closed"

    .line 22
    .line 23
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

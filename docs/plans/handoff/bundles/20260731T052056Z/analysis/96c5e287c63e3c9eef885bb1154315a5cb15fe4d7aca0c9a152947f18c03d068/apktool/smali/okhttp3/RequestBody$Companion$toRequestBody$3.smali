.class public final Lokhttp3/RequestBody$Companion$toRequestBody$3;
.super Lokhttp3/RequestBody;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $byteCount:I

.field public final synthetic $contentType:Lokhttp3/MediaType;

.field public final synthetic $this_toRequestBody:[B


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/RequestBody$Companion$toRequestBody$3;->$contentType:Lokhttp3/MediaType;

    .line 5
    .line 6
    iput p2, p0, Lokhttp3/RequestBody$Companion$toRequestBody$3;->$byteCount:I

    .line 7
    .line 8
    iput-object p3, p0, Lokhttp3/RequestBody$Companion$toRequestBody$3;->$this_toRequestBody:[B

    .line 9
    .line 10
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
    iget-object p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$3;->$contentType:Lokhttp3/MediaType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final writeTo(Lokio/BufferedSink;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$3;->$this_toRequestBody:[B

    .line 2
    .line 3
    iget p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$3;->$byteCount:I

    .line 4
    .line 5
    invoke-interface {p1, p0, v0}, Lokio/BufferedSink;->write(I[B)Lokio/BufferedSink;

    .line 6
    .line 7
    .line 8
    return-void
.end method

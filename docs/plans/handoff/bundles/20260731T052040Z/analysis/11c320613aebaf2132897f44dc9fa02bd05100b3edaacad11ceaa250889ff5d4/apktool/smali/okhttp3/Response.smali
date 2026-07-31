.class public final Lokhttp3/Response;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final body:Lokhttp3/ResponseBody;

.field public final cacheResponse:Lokhttp3/Response;

.field public final code:I

.field public final exchange:Landroidx/compose/runtime/Latch;

.field public final handshake:Lokhttp3/Handshake;

.field public final headers:Lokhttp3/Headers;

.field public final message:Ljava/lang/String;

.field public final networkResponse:Lokhttp3/Response;

.field public final priorResponse:Lokhttp3/Response;

.field public final protocol:Lokhttp3/Protocol;

.field public final receivedResponseAtMillis:J

.field public final request:Lokhttp3/Request;

.field public final sentRequestAtMillis:J

.field public final socket:Lokio/Socket;

.field public final trailersSource:Lokhttp3/TrailersSource;


# direct methods
.method public constructor <init>(Lokhttp3/Request;Lokhttp3/Protocol;Ljava/lang/String;ILokhttp3/Handshake;Lokhttp3/Headers;Lokhttp3/ResponseBody;Lokio/Socket;Lokhttp3/Response;Lokhttp3/Response;Lokhttp3/Response;JJLandroidx/compose/runtime/Latch;Lokhttp3/TrailersSource;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 20
    .line 21
    iput-object p2, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    .line 22
    .line 23
    iput-object p3, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    .line 24
    .line 25
    iput p4, p0, Lokhttp3/Response;->code:I

    .line 26
    .line 27
    iput-object p5, p0, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    .line 28
    .line 29
    iput-object p6, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 30
    .line 31
    iput-object p7, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 32
    .line 33
    iput-object p8, p0, Lokhttp3/Response;->socket:Lokio/Socket;

    .line 34
    .line 35
    iput-object p9, p0, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    .line 36
    .line 37
    iput-object p10, p0, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    .line 38
    .line 39
    iput-object p11, p0, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    .line 40
    .line 41
    iput-wide p12, p0, Lokhttp3/Response;->sentRequestAtMillis:J

    .line 42
    .line 43
    iput-wide p14, p0, Lokhttp3/Response;->receivedResponseAtMillis:J

    .line 44
    .line 45
    move-object/from16 p1, p16

    .line 46
    .line 47
    iput-object p1, p0, Lokhttp3/Response;->exchange:Landroidx/compose/runtime/Latch;

    .line 48
    .line 49
    move-object/from16 p1, p17

    .line 50
    .line 51
    iput-object p1, p0, Lokhttp3/Response;->trailersSource:Lokhttp3/TrailersSource;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final newBuilder()Lokhttp3/Response$Builder;
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/Response$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, v0, Lokhttp3/Response$Builder;->code:I

    .line 8
    .line 9
    sget-object v1, Lokhttp3/ResponseBody;->EMPTY:Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    .line 10
    .line 11
    iput-object v1, v0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 12
    .line 13
    sget-object v1, Lokhttp3/TrailersSource;->EMPTY:Lokhttp3/HttpUrl$Companion;

    .line 14
    .line 15
    iput-object v1, v0, Lokhttp3/Response$Builder;->trailersSource:Lokhttp3/TrailersSource;

    .line 16
    .line 17
    iget-object v1, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 18
    .line 19
    iput-object v1, v0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 20
    .line 21
    iget-object v1, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    .line 22
    .line 23
    iput-object v1, v0, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    .line 24
    .line 25
    iget v1, p0, Lokhttp3/Response;->code:I

    .line 26
    .line 27
    iput v1, v0, Lokhttp3/Response$Builder;->code:I

    .line 28
    .line 29
    iget-object v1, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, v0, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v1, p0, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    .line 34
    .line 35
    iput-object v1, v0, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    .line 36
    .line 37
    iget-object v1, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 38
    .line 39
    invoke-virtual {v1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, v0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 44
    .line 45
    iget-object v1, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 46
    .line 47
    iput-object v1, v0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    .line 48
    .line 49
    iget-object v1, p0, Lokhttp3/Response;->socket:Lokio/Socket;

    .line 50
    .line 51
    iput-object v1, v0, Lokhttp3/Response$Builder;->socket:Lokio/Socket;

    .line 52
    .line 53
    iget-object v1, p0, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    .line 54
    .line 55
    iput-object v1, v0, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    .line 56
    .line 57
    iget-object v1, p0, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    .line 58
    .line 59
    iput-object v1, v0, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    .line 60
    .line 61
    iget-object v1, p0, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    .line 62
    .line 63
    iput-object v1, v0, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    .line 64
    .line 65
    iget-wide v1, p0, Lokhttp3/Response;->sentRequestAtMillis:J

    .line 66
    .line 67
    iput-wide v1, v0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 68
    .line 69
    iget-wide v1, p0, Lokhttp3/Response;->receivedResponseAtMillis:J

    .line 70
    .line 71
    iput-wide v1, v0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 72
    .line 73
    iget-object v1, p0, Lokhttp3/Response;->exchange:Landroidx/compose/runtime/Latch;

    .line 74
    .line 75
    iput-object v1, v0, Lokhttp3/Response$Builder;->exchange:Landroidx/compose/runtime/Latch;

    .line 76
    .line 77
    iget-object p0, p0, Lokhttp3/Response;->trailersSource:Lokhttp3/TrailersSource;

    .line 78
    .line 79
    iput-object p0, v0, Lokhttp3/Response$Builder;->trailersSource:Lokhttp3/TrailersSource;

    .line 80
    .line 81
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Response{protocol="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", code="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lokhttp3/Response;->code:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", message="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", url="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 39
    .line 40
    iget-object p0, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/16 p0, 0x7d

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

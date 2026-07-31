.class public interface abstract Lokhttp3/internal/http/ExchangeCodec;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract createRequestBody(Lokhttp3/Request;J)Lokio/Sink;
.end method

.method public abstract finishRequest()V
.end method

.method public abstract flushRequest()V
.end method

.method public abstract getCarrier()Lokhttp3/internal/http/ExchangeCodec$Carrier;
.end method

.method public abstract getSocket()Lokio/Socket;
.end method

.method public abstract isResponseComplete()Z
.end method

.method public abstract openResponseBodySource(Lokhttp3/Response;)Lokio/Source;
.end method

.method public abstract readResponseHeaders(Z)Lokhttp3/Response$Builder;
.end method

.method public abstract reportedContentLength(Lokhttp3/Response;)J
.end method

.method public abstract writeRequestHeaders(Lokhttp3/Request;)V
.end method

.class public final Lcoil3/network/NetworkClientKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static final NetworkRequestBody(Lokio/ByteString;)Lcoil3/network/NetworkRequestBody;
    .locals 0

    .line 1
    invoke-static {p0}, Lcoil3/network/ByteStringNetworkRequestBody;->constructor-impl(Lokio/ByteString;)Lokio/ByteString;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcoil3/network/ByteStringNetworkRequestBody;->box-impl(Lokio/ByteString;)Lcoil3/network/ByteStringNetworkRequestBody;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static final NetworkResponseBody(Lokio/BufferedSource;)Lcoil3/network/NetworkResponseBody;
    .locals 0

    .line 1
    invoke-static {p0}, Lcoil3/network/SourceResponseBody;->constructor-impl(Lokio/BufferedSource;)Lokio/BufferedSource;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcoil3/network/SourceResponseBody;->box-impl(Lokio/BufferedSource;)Lcoil3/network/SourceResponseBody;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

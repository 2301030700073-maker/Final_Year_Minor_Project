.class public final Lokhttp3/Cache$CacheResponseBody$1;
.super Lokio/ForwardingSource;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lokio/Source;)V
    .locals 1

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lokhttp3/Cache$CacheResponseBody$1;->$r8$classId:I

    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method

.method public constructor <init>(Lokio/Source;Lokhttp3/Cache$CacheResponseBody;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/Cache$CacheResponseBody$1;->$r8$classId:I

    iput-object p2, p0, Lokhttp3/Cache$CacheResponseBody$1;->this$0:Ljava/lang/Object;

    .line 11
    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method

.method public constructor <init>(Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;Lokio/BufferedSource;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lokhttp3/Cache$CacheResponseBody$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/Cache$CacheResponseBody$1;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/Cache$CacheResponseBody$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object v0, p0, Lokhttp3/Cache$CacheResponseBody$1;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lokhttp3/Cache$CacheResponseBody;

    .line 13
    .line 14
    iget-object v0, v0, Lokhttp3/Cache$CacheResponseBody;->snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 15
    .line 16
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    .line 20
    .line 21
    .line 22
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public read(Lokio/Buffer;J)J
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/Cache$CacheResponseBody$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0

    .line 11
    :pswitch_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-wide p0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    iget-object p0, p0, Lokhttp3/Cache$CacheResponseBody$1;->this$0:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;

    .line 20
    .line 21
    iput-object p1, p0, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;->thrownException:Ljava/io/IOException;

    .line 22
    .line 23
    throw p1

    .line 24
    :pswitch_1
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    return-wide p0

    .line 29
    :catch_1
    move-exception p1

    .line 30
    iput-object p1, p0, Lokhttp3/Cache$CacheResponseBody$1;->this$0:Ljava/lang/Object;

    .line 31
    .line 32
    throw p1

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

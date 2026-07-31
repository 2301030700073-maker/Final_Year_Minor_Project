.class public final Lcom/fsck/k9/contacts/ContactImageDataFetcher;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# instance fields
.field public final synthetic $r8$classId:I

.field public final contactImage:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/fsck/k9/contacts/ContactImageDataFetcher;->$r8$classId:I

    iput-object p2, p0, Lcom/fsck/k9/contacts/ContactImageDataFetcher;->contactImage:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/contacts/ContactImage;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/fsck/k9/contacts/ContactImageDataFetcher;->$r8$classId:I

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/fsck/k9/contacts/ContactImageDataFetcher;->contactImage:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method private final cancel$com$bumptech$glide$load$model$ByteBufferFileLoader$ByteBufferFetcher()V
    .locals 0

    .line 1
    return-void
.end method

.method private final cancel$com$bumptech$glide$load$model$UnitModelLoader$UnitFetcher()V
    .locals 0

    .line 1
    return-void
.end method

.method private final cancel$com$fsck$k9$contacts$ContactImageDataFetcher()V
    .locals 0

    .line 1
    return-void
.end method

.method private final cleanup$com$bumptech$glide$load$model$ByteBufferFileLoader$ByteBufferFetcher()V
    .locals 0

    .line 1
    return-void
.end method

.method private final cleanup$com$bumptech$glide$load$model$UnitModelLoader$UnitFetcher()V
    .locals 0

    .line 1
    return-void
.end method

.method private final cleanup$com$fsck$k9$contacts$ContactImageDataFetcher()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .line 1
    iget p0, p0, Lcom/fsck/k9/contacts/ContactImageDataFetcher;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final cleanup()V
    .locals 0

    .line 1
    iget p0, p0, Lcom/fsck/k9/contacts/ContactImageDataFetcher;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final getDataClass()Ljava/lang/Class;
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/contacts/ContactImageDataFetcher;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/contacts/ContactImageDataFetcher;->contactImage:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    const-class p0, Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_1
    const-class p0, Lcom/fsck/k9/contacts/ContactImage;

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getDataSource()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/fsck/k9/contacts/ContactImageDataFetcher;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :pswitch_1
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/contacts/ContactImageDataFetcher;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/contacts/ContactImageDataFetcher;->contactImage:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, p0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    :try_start_0
    check-cast p0, Ljava/io/File;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/bumptech/glide/util/ByteBufferUtil;->fromFile(Ljava/io/File;)Ljava/nio/MappedByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p2, p0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    const/4 p1, 0x3

    .line 24
    const-string v0, "ByteBufferFileLoader"

    .line 25
    .line 26
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const-string p1, "Failed to obtain ByteBuffer for file"

    .line 33
    .line 34
    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    check-cast p0, Lcom/fsck/k9/contacts/ContactImage;

    .line 45
    .line 46
    invoke-interface {p2, p0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

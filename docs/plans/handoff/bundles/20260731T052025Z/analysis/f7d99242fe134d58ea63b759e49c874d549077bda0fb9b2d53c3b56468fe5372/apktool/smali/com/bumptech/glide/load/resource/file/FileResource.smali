.class public final Lcom/bumptech/glide/load/resource/file/FileResource;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# instance fields
.field public final synthetic $r8$classId:I

.field public final data:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->$r8$classId:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->data:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->$r8$classId:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->data:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v0, "Argument must not be null"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/bumptech/glide/util/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->data:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method private final recycle$com$bumptech$glide$load$resource$bitmap$UnitBitmapDecoder$NonOwnedBitmapResource()V
    .locals 0

    .line 1
    return-void
.end method

.method private final recycle$com$bumptech$glide$load$resource$bytes$BytesResource()V
    .locals 0

    .line 1
    return-void
.end method

.method private final recycle$com$bumptech$glide$load$resource$file$FileResource()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->data:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, [B

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->data:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Landroid/graphics/Bitmap;

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_1
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->data:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Ljava/io/File;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getResourceClass()Ljava/lang/Class;
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-class p0, [B

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-class p0, Landroid/graphics/Bitmap;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->data:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Ljava/io/File;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->data:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, [B

    .line 9
    .line 10
    array-length p0, p0

    .line 11
    return p0

    .line 12
    :pswitch_0
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->data:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroid/graphics/Bitmap;

    .line 15
    .line 16
    invoke-static {p0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :pswitch_1
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final recycle()V
    .locals 0

    .line 1
    iget p0, p0, Lcom/bumptech/glide/load/resource/file/FileResource;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.class public final Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final assetManager:Landroid/content/res/AssetManager;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/AssetManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;->assetManager:Landroid/content/res/AssetManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 2

    .line 1
    iget p1, p0, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/bumptech/glide/load/model/AssetUriLoader;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;->assetManager:Landroid/content/res/AssetManager;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v1, v0, p0}, Lcom/bumptech/glide/load/model/AssetUriLoader;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lcom/bumptech/glide/load/model/AssetUriLoader;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;->assetManager:Landroid/content/res/AssetManager;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p1, v1, v0, p0}, Lcom/bumptech/glide/load/model/AssetUriLoader;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

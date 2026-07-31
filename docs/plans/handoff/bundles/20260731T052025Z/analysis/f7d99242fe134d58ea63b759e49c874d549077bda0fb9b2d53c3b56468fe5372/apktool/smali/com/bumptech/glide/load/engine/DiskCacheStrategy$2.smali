.class public final Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final AUTOMATIC:Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;

.field public static final DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;

.field public static final NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;

    .line 8
    .line 9
    new-instance v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;

    .line 16
    .line 17
    new-instance v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;->AUTOMATIC:Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;

    .line 24
    .line 25
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isDataCacheable(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x2

    .line 7
    if-ne p1, p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0

    .line 13
    :pswitch_0
    const/4 p0, 0x3

    .line 14
    if-eq p1, p0, :cond_1

    .line 15
    .line 16
    const/4 p0, 0x5

    .line 17
    if-eq p1, p0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    :goto_1
    return p0

    .line 23
    :pswitch_1
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

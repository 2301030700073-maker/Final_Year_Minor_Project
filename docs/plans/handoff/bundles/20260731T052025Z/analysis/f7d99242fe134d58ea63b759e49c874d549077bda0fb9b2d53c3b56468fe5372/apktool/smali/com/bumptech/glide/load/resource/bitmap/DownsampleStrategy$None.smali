.class public final Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;

.field public static final CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;

.field public static final DEFAULT:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;

.field public static final FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;

.field public static final IS_BITMAP_FACTORY_SCALING_SUPPORTED:Z

.field public static final NONE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;

.field public static final OPTION:Lcom/bumptech/glide/load/Option;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;

    .line 8
    .line 9
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;

    .line 16
    .line 17
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-direct {v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;

    .line 24
    .line 25
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v2, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->NONE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;

    .line 32
    .line 33
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->DEFAULT:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;

    .line 34
    .line 35
    const-string v2, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    .line 36
    .line 37
    invoke-static {v0, v2}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/Object;Ljava/lang/String;)Lcom/bumptech/glide/load/Option;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->OPTION:Lcom/bumptech/glide/load/Option;

    .line 42
    .line 43
    sput-boolean v1, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->IS_BITMAP_FACTORY_SCALING_SUPPORTED:Z

    .line 44
    .line 45
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getSampleSizeRounding(IIII)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    sget-boolean p0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->IS_BITMAP_FACTORY_SCALING_SUPPORTED:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    :goto_0
    :pswitch_0
    return v1

    .line 14
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->getScaleFactor(IIII)F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    .line 20
    cmpl-float p0, p0, v0

    .line 21
    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    sget-object p0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->getSampleSizeRounding(IIII)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    :goto_1
    :pswitch_2
    return v1

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getScaleFactor(IIII)F
    .locals 1

    .line 1
    iget p0, p0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->$r8$classId:I

    .line 2
    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-boolean p0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->IS_BITMAP_FACTORY_SCALING_SUPPORTED:Z

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    int-to-float p0, p3

    .line 13
    int-to-float p1, p1

    .line 14
    div-float/2addr p0, p1

    .line 15
    int-to-float p1, p4

    .line 16
    int-to-float p2, p2

    .line 17
    div-float/2addr p1, p2

    .line 18
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    div-int/2addr p2, p4

    .line 24
    div-int/2addr p1, p3

    .line 25
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    int-to-float p0, p0

    .line 37
    div-float/2addr v0, p0

    .line 38
    :goto_0
    return v0

    .line 39
    :pswitch_0
    int-to-float p0, p3

    .line 40
    int-to-float p1, p1

    .line 41
    div-float/2addr p0, p1

    .line 42
    int-to-float p1, p4

    .line 43
    int-to-float p2, p2

    .line 44
    div-float/2addr p1, p2

    .line 45
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :pswitch_1
    sget-object p0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;

    .line 51
    .line 52
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->getScaleFactor(IIII)F

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    return p0

    .line 61
    :pswitch_2
    return v0

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

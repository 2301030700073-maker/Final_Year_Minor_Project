.class public final Lexpo/modules/image/PlaceholderDownsampleStrategy;
.super Lexpo/modules/image/CustomDownsampleStrategy;
.source "CustomDownsampleStrategy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J(\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J(\u0010\u000f\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lexpo/modules/image/PlaceholderDownsampleStrategy;",
        "Lexpo/modules/image/CustomDownsampleStrategy;",
        "target",
        "Lexpo/modules/image/ImageViewWrapperTarget;",
        "<init>",
        "(Lexpo/modules/image/ImageViewWrapperTarget;)V",
        "wasTriggered",
        "",
        "getScaleFactor",
        "",
        "sourceWidth",
        "",
        "sourceHeight",
        "requestedWidth",
        "requestedHeight",
        "getSampleSizeRounding",
        "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;",
        "expo-image_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final target:Lexpo/modules/image/ImageViewWrapperTarget;

.field private wasTriggered:Z


# direct methods
.method public constructor <init>(Lexpo/modules/image/ImageViewWrapperTarget;)V
    .locals 1

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lexpo/modules/image/CustomDownsampleStrategy;-><init>()V

    .line 48
    iput-object p1, p0, Lexpo/modules/image/PlaceholderDownsampleStrategy;->target:Lexpo/modules/image/ImageViewWrapperTarget;

    return-void
.end method


# virtual methods
.method public getSampleSizeRounding(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .locals 0

    .line 62
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->QUALITY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    return-object p1
.end method

.method public getScaleFactor(IIII)F
    .locals 0

    .line 53
    iget-boolean p3, p0, Lexpo/modules/image/PlaceholderDownsampleStrategy;->wasTriggered:Z

    if-nez p3, :cond_0

    .line 54
    iget-object p3, p0, Lexpo/modules/image/PlaceholderDownsampleStrategy;->target:Lexpo/modules/image/ImageViewWrapperTarget;

    invoke-virtual {p3, p1}, Lexpo/modules/image/ImageViewWrapperTarget;->setPlaceholderWidth(I)V

    .line 55
    iget-object p1, p0, Lexpo/modules/image/PlaceholderDownsampleStrategy;->target:Lexpo/modules/image/ImageViewWrapperTarget;

    invoke-virtual {p1, p2}, Lexpo/modules/image/ImageViewWrapperTarget;->setPlaceholderHeight(I)V

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lexpo/modules/image/PlaceholderDownsampleStrategy;->wasTriggered:Z

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

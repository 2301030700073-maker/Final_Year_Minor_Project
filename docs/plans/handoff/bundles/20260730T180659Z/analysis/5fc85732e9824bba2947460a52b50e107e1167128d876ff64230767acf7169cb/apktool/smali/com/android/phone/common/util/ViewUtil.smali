.class public Lcom/android/phone/common/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/android/phone/common/util/ViewUtil$1;

    invoke-direct {v0}, Lcom/android/phone/common/util/ViewUtil$1;-><init>()V

    return-void
.end method

.method public static resizeText(Landroid/widget/TextView;II)V
    .locals 4

    .line 96
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    int-to-float p1, p1

    const/4 v2, 0x0

    .line 99
    invoke-virtual {p0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    int-to-float v1, v1

    .line 100
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_1

    int-to-float p2, p2

    mul-float p1, p1, v1

    .line 103
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 102
    invoke-virtual {p0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.class final Lio/sentry/android/replay/ScreenshotRecorder$capture$1$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ScreenshotRecorder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/ScreenshotRecorder;->capture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenshotRecorder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenshotRecorder.kt\nio/sentry/android/replay/ScreenshotRecorder$capture$1$1$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,350:1\n1855#2,2:351\n*S KotlinDebug\n*F\n+ 1 ScreenshotRecorder.kt\nio/sentry/android/replay/ScreenshotRecorder$capture$1$1$1$1\n*L\n159#1:351,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "node",
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
        "invoke",
        "(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $canvas:Landroid/graphics/Canvas;

.field final synthetic this$0:Lio/sentry/android/replay/ScreenshotRecorder;


# direct methods
.method constructor <init>(Lio/sentry/android/replay/ScreenshotRecorder;Landroid/graphics/Canvas;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/replay/ScreenshotRecorder$capture$1$1$1$1;->this$0:Lio/sentry/android/replay/ScreenshotRecorder;

    iput-object p2, p0, Lio/sentry/android/replay/ScreenshotRecorder$capture$1$1$1$1;->$canvas:Landroid/graphics/Canvas;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)Ljava/lang/Boolean;
    .locals 5

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getShouldMask()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getWidth()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getHeight()I

    move-result v0

    if-lez v0, :cond_5

    .line 129
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 137
    :cond_0
    instance-of v0, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$ImageViewHierarchyNode;

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lio/sentry/android/replay/ScreenshotRecorder$capture$1$1$1$1;->this$0:Lio/sentry/android/replay/ScreenshotRecorder;

    invoke-static {v1}, Lio/sentry/android/replay/ScreenshotRecorder;->access$getScreenshot$p(Lio/sentry/android/replay/ScreenshotRecorder;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lio/sentry/android/replay/ScreenshotRecorder;->access$dominantColorForRect(Lio/sentry/android/replay/ScreenshotRecorder;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 138
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_1

    .line 142
    :cond_1
    instance-of v0, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_4

    .line 143
    move-object v0, p1

    check-cast v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;

    invoke-virtual {v0}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->getLayout()Lio/sentry/android/replay/util/TextLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lio/sentry/android/replay/util/TextLayout;->getDominantTextColor()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {v0}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->getDominantColor()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 143
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 146
    :cond_3
    invoke-virtual {v0}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->getLayout()Lio/sentry/android/replay/util/TextLayout;

    move-result-object v2

    .line 147
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 148
    invoke-virtual {v0}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->getPaddingLeft()I

    move-result v3

    .line 149
    invoke-virtual {v0}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->getPaddingTop()I

    move-result v0

    .line 146
    invoke-static {v2, p1, v3, v0}, Lio/sentry/android/replay/util/ViewsKt;->getVisibleRects(Lio/sentry/android/replay/util/TextLayout;Landroid/graphics/Rect;II)Ljava/util/List;

    move-result-object p1

    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 146
    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_1

    .line 154
    :cond_4
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 136
    :goto_1
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 158
    iget-object v1, p0, Lio/sentry/android/replay/ScreenshotRecorder$capture$1$1$1$1;->this$0:Lio/sentry/android/replay/ScreenshotRecorder;

    invoke-static {v1}, Lio/sentry/android/replay/ScreenshotRecorder;->access$getMaskingPaint(Lio/sentry/android/replay/ScreenshotRecorder;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    check-cast v0, Ljava/lang/Iterable;

    iget-object p1, p0, Lio/sentry/android/replay/ScreenshotRecorder$capture$1$1$1$1;->$canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lio/sentry/android/replay/ScreenshotRecorder$capture$1$1$1$1;->this$0:Lio/sentry/android/replay/ScreenshotRecorder;

    .line 351
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 160
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v1}, Lio/sentry/android/replay/ScreenshotRecorder;->access$getMaskingPaint(Lio/sentry/android/replay/ScreenshotRecorder;)Landroid/graphics/Paint;

    move-result-object v2

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {p1, v3, v4, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    const/4 p1, 0x1

    .line 163
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 127
    check-cast p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    invoke-virtual {p0, p1}, Lio/sentry/android/replay/ScreenshotRecorder$capture$1$1$1$1;->invoke(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

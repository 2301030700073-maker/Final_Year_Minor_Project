.class public final Lcom/facebook/react/views/switchview/ReactSwitchShadowNode;
.super Lcom/facebook/react/uimanager/LayoutShadowNode;
.source "ReactSwitchShadowNode.kt"

# interfaces
.implements Lcom/facebook/yoga/YogaMeasureFunction;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\n\u001a\u00020\u000bH\u0002J0\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/facebook/react/views/switchview/ReactSwitchShadowNode;",
        "Lcom/facebook/react/uimanager/LayoutShadowNode;",
        "Lcom/facebook/yoga/YogaMeasureFunction;",
        "<init>",
        "()V",
        "width",
        "",
        "height",
        "measured",
        "",
        "initMeasureFunction",
        "",
        "measure",
        "",
        "node",
        "Lcom/facebook/yoga/YogaNode;",
        "",
        "widthMode",
        "Lcom/facebook/yoga/YogaMeasureMode;",
        "heightMode",
        "ReactAndroid_release"
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
.field private height:I

.field private measured:Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;-><init>()V

    .line 23
    invoke-direct {p0}, Lcom/facebook/react/views/switchview/ReactSwitchShadowNode;->initMeasureFunction()V

    return-void
.end method

.method private final initMeasureFunction()V
    .locals 1

    .line 27
    move-object v0, p0

    check-cast v0, Lcom/facebook/yoga/YogaMeasureFunction;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/switchview/ReactSwitchShadowNode;->setMeasureFunction(Lcom/facebook/yoga/YogaMeasureFunction;)V

    return-void
.end method


# virtual methods
.method public measure(Lcom/facebook/yoga/YogaNode;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J
    .locals 0

    const-string p2, "node"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "widthMode"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "heightMode"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-boolean p1, p0, Lcom/facebook/react/views/switchview/ReactSwitchShadowNode;->measured:Z

    if-nez p1, :cond_0

    .line 41
    new-instance p1, Lcom/facebook/react/views/switchview/ReactSwitch;

    invoke-virtual {p0}, Lcom/facebook/react/views/switchview/ReactSwitchShadowNode;->getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object p2

    const-string p3, "getThemedContext(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/facebook/react/views/switchview/ReactSwitch;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 42
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/switchview/ReactSwitch;->setShowText(Z)V

    .line 43
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 44
    invoke-virtual {p1, p2, p2}, Lcom/facebook/react/views/switchview/ReactSwitch;->measure(II)V

    .line 45
    invoke-virtual {p1}, Lcom/facebook/react/views/switchview/ReactSwitch;->getMeasuredWidth()I

    move-result p2

    iput p2, p0, Lcom/facebook/react/views/switchview/ReactSwitchShadowNode;->width:I

    .line 46
    invoke-virtual {p1}, Lcom/facebook/react/views/switchview/ReactSwitch;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/switchview/ReactSwitchShadowNode;->height:I

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/facebook/react/views/switchview/ReactSwitchShadowNode;->measured:Z

    .line 50
    :cond_0
    iget p1, p0, Lcom/facebook/react/views/switchview/ReactSwitchShadowNode;->width:I

    iget p2, p0, Lcom/facebook/react/views/switchview/ReactSwitchShadowNode;->height:I

    invoke-static {p1, p2}, Lcom/facebook/yoga/YogaMeasureOutput;->make(II)J

    move-result-wide p1

    return-wide p1
.end method

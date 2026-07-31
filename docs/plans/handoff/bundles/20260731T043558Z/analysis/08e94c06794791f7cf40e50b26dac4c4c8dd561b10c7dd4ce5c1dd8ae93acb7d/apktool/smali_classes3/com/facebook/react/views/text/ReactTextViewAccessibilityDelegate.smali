.class public final Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;
.super Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;
.source "ReactTextViewAccessibilityDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks;,
        Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 ,2\u00020\u0001:\u0002,-B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0005H\u0014J\"\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00072\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u0018\u0010\u0014\u001a\u00020\r2\u000e\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0016H\u0014J\u0018\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0014J5\u0010\u001b\u001a\u0004\u0018\u0001H\u001c\"\u0004\u0008\u0000\u0010\u001c2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u00072\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u0002H\u001c\u0018\u00010 H\u0004\u00a2\u0006\u0002\u0010!J\u0018\u0010\"\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010#\u001a\u00020$H\u0014J\u0012\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010\'\u001a\u00020(H\u0002J\u0012\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010+\u001a\u00020\u0003H\u0016R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;",
        "Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;",
        "view",
        "Landroid/view/View;",
        "originalFocus",
        "",
        "originalImportantForAccessibility",
        "",
        "<init>",
        "(Landroid/view/View;ZI)V",
        "accessibilityLinks",
        "Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks;",
        "onVirtualViewKeyboardFocusChanged",
        "",
        "virtualViewId",
        "hasFocus",
        "onPerformActionForVirtualView",
        "action",
        "arguments",
        "Landroid/os/Bundle;",
        "getVisibleVirtualViews",
        "virtualViewIds",
        "",
        "getVirtualViewAt",
        "x",
        "",
        "y",
        "getFirstSpan",
        "T",
        "start",
        "end",
        "classType",
        "Ljava/lang/Class;",
        "(IILjava/lang/Class;)Ljava/lang/Object;",
        "onPopulateNodeForVirtualView",
        "node",
        "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
        "getBoundsInParent",
        "Landroid/graphics/Rect;",
        "accessibleLink",
        "Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks$AccessibleLink;",
        "getAccessibilityNodeProvider",
        "Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;",
        "host",
        "Companion",
        "AccessibilityLinks",
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


# static fields
.field public static final Companion:Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$Companion;


# instance fields
.field private accessibilityLinks:Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->Companion:Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZI)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;-><init>(Landroid/view/View;ZI)V

    .line 33
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->getHostView()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/facebook/react/R$id;->accessibility_links:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks;

    iput-object p1, p0, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->accessibilityLinks:Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks;

    return-void
.end method

.method private final getBoundsInParent(Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks$AccessibleLink;)Landroid/graphics/Rect;
    .locals 12

    .line 207
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 208
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->getHostView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p1, v1, v1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->getHostView()Landroid/view/View;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 212
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-direct {p1, v1, v1, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 214
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->getStart()I

    move-result v3

    .line 215
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->getEnd()I

    move-result v4

    .line 219
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .line 220
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    if-le v3, v6, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 225
    :cond_2
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 227
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    float-to-double v7, v3

    .line 229
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 231
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->getStart()I

    move-result v9

    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->getEnd()I

    move-result v10

    const-class v11, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0, v9, v10, v11}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->getFirstSpan(IILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v9, :cond_3

    .line 232
    invoke-virtual {v9}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v9

    int-to-float v9, v9

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v9

    .line 233
    :goto_0
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 234
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-double v9, p1

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int p1, v9

    .line 236
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    if-eq v5, v3, :cond_4

    const/4 v1, 0x1

    .line 238
    :cond_4
    invoke-virtual {v2, v5, v6}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 240
    invoke-virtual {v0}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 241
    iget v3, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iput v3, v6, Landroid/graphics/Rect;->top:I

    .line 242
    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    iput v3, v6, Landroid/graphics/Rect;->bottom:I

    .line 244
    iget v2, v6, Landroid/graphics/Rect;->left:I

    int-to-double v2, v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v7, v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    int-to-double v4, v0

    sub-double/2addr v7, v4

    add-double/2addr v2, v7

    double-to-int v0, v2

    .line 243
    iput v0, v6, Landroid/graphics/Rect;->left:I

    if-eqz v1, :cond_5

    .line 252
    new-instance p1, Landroid/graphics/Rect;

    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget v1, v6, Landroid/graphics/Rect;->top:I

    iget v2, v6, Landroid/graphics/Rect;->right:I

    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 255
    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    iget v3, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    iget p1, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->accessibilityLinks:Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->superGetAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final getFirstSpan(IILjava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->getHostView()Landroid/view/View;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-nez v0, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.text.Spanned"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/text/Spanned;

    .line 165
    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 166
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length p2, p1

    const/4 p3, 0x0

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, p3

    :goto_0
    if-nez p2, :cond_2

    aget-object v1, p1, p3

    :cond_2
    :goto_1
    return-object v1
.end method

.method protected getVirtualViewAt(FF)I
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->accessibilityLinks:Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks;

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    return v1

    .line 126
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks;->size()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->getHostView()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/TextView;

    if-nez v2, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->getHostView()Landroid/view/View;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    .line 134
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    instance-of v3, v3, Landroid/text/Spanned;

    if-nez v3, :cond_2

    return v1

    .line 138
    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_3

    return v1

    .line 140
    :cond_3
    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr p1, v4

    .line 141
    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr p2, v4

    .line 142
    invoke-virtual {v2}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr p1, v4

    .line 143
    invoke-virtual {v2}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr p2, v4

    float-to-int p2, p2

    .line 145
    invoke-virtual {v3, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p2

    .line 146
    invoke-virtual {v3, p2, p1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    .line 149
    const-class p2, Landroid/text/style/ClickableSpan;

    invoke-virtual {p0, p1, p1, p2}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->getFirstSpan(IILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/style/ClickableSpan;

    if-nez p1, :cond_4

    return v1

    .line 151
    :cond_4
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    const-string v2, "null cannot be cast to non-null type android.text.Spanned"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/text/Spanned;

    .line 152
    invoke-interface {p2, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 153
    invoke-interface {p2, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    .line 155
    invoke-virtual {v0, v2, p1}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks;->getLinkBySpanPos(II)Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks$AccessibleLink;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 156
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->getId()I

    move-result v1

    :cond_5
    :goto_0
    return v1
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "virtualViewIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->accessibilityLinks:Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks;

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 2

    .line 97
    iget-object p3, p0, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->accessibilityLinks:Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    if-eqz p3, :cond_3

    .line 101
    invoke-virtual {p3, p1}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks;->getLinkById(I)Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks$AccessibleLink;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->getStart()I

    move-result p3

    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->getEnd()I

    move-result p1

    const-class v1, Landroid/text/style/ClickableSpan;

    invoke-virtual {p0, p3, p1, v1}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->getFirstSpan(IILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/style/ClickableSpan;

    if-eqz p1, :cond_3

    .line 104
    instance-of p3, p1, Lcom/facebook/react/views/text/internal/span/ReactClickableSpan;

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    const/16 p3, 0x10

    if-ne p2, p3, :cond_3

    .line 109
    check-cast p1, Lcom/facebook/react/views/text/internal/span/ReactClickableSpan;

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->getHostView()Landroid/view/View;

    move-result-object p2

    const-string p3, "getHostView(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/facebook/react/views/text/internal/span/ReactClickableSpan;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4

    const-string v0, "node"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->accessibilityLinks:Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks;

    .line 175
    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 176
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 177
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v3, v3, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void

    .line 182
    :cond_0
    invoke-virtual {v0, p1}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks;->getLinkById(I)Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks$AccessibleLink;

    move-result-object p1

    if-nez p1, :cond_1

    .line 184
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 185
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v3, v3, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void

    .line 191
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->getBoundsInParent(Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks$AccessibleLink;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_2

    .line 193
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 194
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v3, v3, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void

    .line 198
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->getDescription()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 p1, 0x10

    .line 199
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 200
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 201
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->getHostView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/facebook/react/R$string;->link_description:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    .line 202
    sget-object p1, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->BUTTON:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-static {p1}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->getValue(Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onVirtualViewKeyboardFocusChanged(IZ)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->accessibilityLinks:Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_3

    .line 78
    invoke-virtual {v0, p1}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks;->getLinkById(I)Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks$AccessibleLink;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->getStart()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate$AccessibilityLinks$AccessibleLink;->getEnd()I

    move-result p1

    const-class v1, Landroid/text/style/ClickableSpan;

    invoke-virtual {p0, v0, p1, v1}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->getFirstSpan(IILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/style/ClickableSpan;

    if-eqz p1, :cond_3

    .line 81
    instance-of v0, p1, Lcom/facebook/react/views/text/internal/span/ReactClickableSpan;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/react/views/text/ReactTextView;

    if-nez v0, :cond_2

    goto :goto_0

    .line 87
    :cond_2
    check-cast p1, Lcom/facebook/react/views/text/internal/span/ReactClickableSpan;

    invoke-virtual {p1, p2}, Lcom/facebook/react/views/text/internal/span/ReactClickableSpan;->setKeyboardFocused(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->getHostView()Landroid/view/View;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getHighlightColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/facebook/react/views/text/internal/span/ReactClickableSpan;->setFocusBgColor(I)V

    .line 89
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextViewAccessibilityDelegate;->getHostView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method

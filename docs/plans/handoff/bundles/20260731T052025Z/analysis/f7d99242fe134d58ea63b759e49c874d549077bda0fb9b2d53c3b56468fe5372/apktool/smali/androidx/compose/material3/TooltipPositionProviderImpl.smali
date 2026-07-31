.class public final Landroidx/compose/material3/TooltipPositionProviderImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/compose/ui/window/PopupPositionProvider;


# instance fields
.field public final tooltipAnchorSpacing:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final calculatePosition-llwVHH4(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J
    .locals 4

    .line 1
    iget p4, p1, Landroidx/compose/ui/unit/IntRect;->left:I

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x20

    .line 8
    .line 9
    shr-long v2, p5, v1

    .line 10
    .line 11
    long-to-int v2, v2

    .line 12
    sub-int/2addr v0, v2

    .line 13
    div-int/lit8 v0, v0, 0x2

    .line 14
    .line 15
    add-int/2addr v0, p4

    .line 16
    if-gez v0, :cond_0

    .line 17
    .line 18
    iget v0, p1, Landroidx/compose/ui/unit/IntRect;->left:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    add-int p4, v0, v2

    .line 22
    .line 23
    shr-long/2addr p2, v1

    .line 24
    long-to-int p2, p2

    .line 25
    if-le p4, p2, :cond_1

    .line 26
    .line 27
    iget p2, p1, Landroidx/compose/ui/unit/IntRect;->right:I

    .line 28
    .line 29
    sub-int v0, p2, v2

    .line 30
    .line 31
    :cond_1
    :goto_0
    iget p2, p1, Landroidx/compose/ui/unit/IntRect;->top:I

    .line 32
    .line 33
    const-wide p3, 0xffffffffL

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    and-long/2addr p5, p3

    .line 39
    long-to-int p5, p5

    .line 40
    sub-int/2addr p2, p5

    .line 41
    iget p0, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->tooltipAnchorSpacing:I

    .line 42
    .line 43
    sub-int/2addr p2, p0

    .line 44
    if-gez p2, :cond_2

    .line 45
    .line 46
    iget p1, p1, Landroidx/compose/ui/unit/IntRect;->bottom:I

    .line 47
    .line 48
    add-int p2, p1, p0

    .line 49
    .line 50
    :cond_2
    int-to-long p0, v0

    .line 51
    shl-long/2addr p0, v1

    .line 52
    int-to-long p5, p2

    .line 53
    and-long/2addr p3, p5

    .line 54
    or-long/2addr p0, p3

    .line 55
    return-wide p0
.end method

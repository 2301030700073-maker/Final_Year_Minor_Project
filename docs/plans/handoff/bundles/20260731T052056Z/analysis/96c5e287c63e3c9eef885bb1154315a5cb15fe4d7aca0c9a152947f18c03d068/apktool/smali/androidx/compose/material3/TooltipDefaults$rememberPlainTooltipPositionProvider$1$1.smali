.class public final Landroidx/compose/material3/TooltipDefaults$rememberPlainTooltipPositionProvider$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/ui/window/PopupPositionProvider;


# instance fields
.field public final synthetic $tooltipAnchorSpacing:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/material3/TooltipDefaults$rememberPlainTooltipPositionProvider$1$1;->$tooltipAnchorSpacing:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final calculatePosition-llwVHH4(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J
    .locals 2

    .line 1
    iget p2, p1, Landroidx/compose/ui/unit/IntRect;->left:I

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    const/16 p4, 0x20

    .line 8
    .line 9
    shr-long v0, p5, p4

    .line 10
    .line 11
    long-to-int v0, v0

    .line 12
    sub-int/2addr p3, v0

    .line 13
    div-int/lit8 p3, p3, 0x2

    .line 14
    .line 15
    add-int/2addr p3, p2

    .line 16
    iget p2, p1, Landroidx/compose/ui/unit/IntRect;->top:I

    .line 17
    .line 18
    const-wide v0, 0xffffffffL

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    and-long/2addr p5, v0

    .line 24
    long-to-int p5, p5

    .line 25
    sub-int/2addr p2, p5

    .line 26
    iget p0, p0, Landroidx/compose/material3/TooltipDefaults$rememberPlainTooltipPositionProvider$1$1;->$tooltipAnchorSpacing:I

    .line 27
    .line 28
    sub-int/2addr p2, p0

    .line 29
    if-gez p2, :cond_0

    .line 30
    .line 31
    iget p1, p1, Landroidx/compose/ui/unit/IntRect;->bottom:I

    .line 32
    .line 33
    add-int p2, p1, p0

    .line 34
    .line 35
    :cond_0
    int-to-long p0, p3

    .line 36
    shl-long/2addr p0, p4

    .line 37
    int-to-long p2, p2

    .line 38
    and-long/2addr p2, v0

    .line 39
    or-long/2addr p0, p2

    .line 40
    return-wide p0
.end method

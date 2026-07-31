.class public final Landroidx/compose/foundation/layout/CrossAxisAlignment$AlignmentLineCrossAxisAlignment;
.super Landroidx/compose/foundation/layout/OffsetKt;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final alignmentLineProvider:Landroidx/compose/foundation/layout/AlignmentLineProvider$Value;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/AlignmentLineProvider$Value;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/layout/CrossAxisAlignment$AlignmentLineCrossAxisAlignment;->alignmentLineProvider:Landroidx/compose/foundation/layout/AlignmentLineProvider$Value;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final align$foundation_layout(IILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/layout/Placeable;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/layout/CrossAxisAlignment$AlignmentLineCrossAxisAlignment;->alignmentLineProvider:Landroidx/compose/foundation/layout/AlignmentLineProvider$Value;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/foundation/layout/AlignmentLineProvider$Value;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    .line 4
    .line 5
    invoke-virtual {p4, p0}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/high16 p4, -0x80000000

    .line 10
    .line 11
    if-eq p0, p4, :cond_1

    .line 12
    .line 13
    sub-int/2addr p5, p0

    .line 14
    sget-object p0, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 15
    .line 16
    if-ne p3, p0, :cond_0

    .line 17
    .line 18
    sub-int/2addr p1, p2

    .line 19
    sub-int/2addr p1, p5

    .line 20
    return p1

    .line 21
    :cond_0
    return p5

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final calculateAlignmentLinePosition$foundation_layout(Landroidx/compose/ui/layout/Placeable;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/layout/CrossAxisAlignment$AlignmentLineCrossAxisAlignment;->alignmentLineProvider:Landroidx/compose/foundation/layout/AlignmentLineProvider$Value;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/foundation/layout/AlignmentLineProvider$Value;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

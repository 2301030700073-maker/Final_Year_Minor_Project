.class public final Landroidx/glance/layout/RowKt$Row$4;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $$default:I

.field public final synthetic $content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $horizontalAlignment:I

.field public final synthetic $modifier:Landroidx/glance/GlanceModifier;

.field public final synthetic $verticalAlignment:I


# direct methods
.method public constructor <init>(Landroidx/glance/GlanceModifier;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/glance/layout/RowKt$Row$4;->$modifier:Landroidx/glance/GlanceModifier;

    .line 2
    .line 3
    iput p2, p0, Landroidx/glance/layout/RowKt$Row$4;->$horizontalAlignment:I

    .line 4
    .line 5
    iput p3, p0, Landroidx/glance/layout/RowKt$Row$4;->$verticalAlignment:I

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/glance/layout/RowKt$Row$4;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 8
    .line 9
    iput p5, p0, Landroidx/glance/layout/RowKt$Row$4;->$$changed:I

    .line 10
    .line 11
    iput p6, p0, Landroidx/glance/layout/RowKt$Row$4;->$$default:I

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    iget p1, p0, Landroidx/glance/layout/RowKt$Row$4;->$$changed:I

    .line 10
    .line 11
    or-int/lit8 v5, p1, 0x1

    .line 12
    .line 13
    iget v6, p0, Landroidx/glance/layout/RowKt$Row$4;->$$default:I

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/glance/layout/RowKt$Row$4;->$modifier:Landroidx/glance/GlanceModifier;

    .line 16
    .line 17
    iget v1, p0, Landroidx/glance/layout/RowKt$Row$4;->$horizontalAlignment:I

    .line 18
    .line 19
    iget v2, p0, Landroidx/glance/layout/RowKt$Row$4;->$verticalAlignment:I

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/glance/layout/RowKt$Row$4;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 22
    .line 23
    invoke-static/range {v0 .. v6}, Lkotlin/uuid/UuidKt;->Row-lMAjyxE(Landroidx/glance/GlanceModifier;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.class public final Landroidx/glance/appwidget/SizeBoxKt$SizeBox$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $content:Lkotlin/jvm/functions/Function2;

.field public final synthetic $size:J


# direct methods
.method public constructor <init>(JLkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$2;->$size:J

    .line 2
    .line 3
    iput-object p3, p0, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$2;->$content:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    iput p4, p0, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$2;->$$changed:I

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    iget p2, p0, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$2;->$$changed:I

    .line 9
    .line 10
    or-int/lit8 p2, p2, 0x1

    .line 11
    .line 12
    iget-wide v0, p0, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$2;->$size:J

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$2;->$content:Lkotlin/jvm/functions/Function2;

    .line 15
    .line 16
    invoke-static {v0, v1, p0, p1, p2}, Landroidx/work/Operation$State;->SizeBox-IbIYxLY(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

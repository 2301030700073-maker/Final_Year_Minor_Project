.class public final Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $content:Lkotlin/jvm/functions/Function2;

.field public final synthetic $r8$classId:I

.field public final synthetic $size:J


# direct methods
.method public constructor <init>(JLkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 1
    const/4 p4, 0x1

    .line 2
    iput p4, p0, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1;->$r8$classId:I

    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1;->$size:J

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1;->$content:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function2;J)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1;->$r8$classId:I

    .line 13
    iput-object p1, p0, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1;->$content:Lkotlin/jvm/functions/Function2;

    iput-wide p2, p0, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1;->$size:J

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1;->$content:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    iget-wide v4, p0, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1;->$size:J

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    check-cast p2, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 18
    .line 19
    .line 20
    invoke-static {v4, v5, v3, p1, v2}, Landroidx/work/Operation$State;->ForEachSize-eVKgIn8(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    check-cast p2, Ljava/lang/Number;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    and-int/lit8 p0, p0, 0x3

    .line 33
    .line 34
    const/4 p2, 0x2

    .line 35
    if-ne p0, p2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    :goto_0
    sget-object p0, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$1;->INSTANCE:Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$1;

    .line 49
    .line 50
    const p2, 0x227c4e56

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->startReplaceableGroup(I)V

    .line 54
    .line 55
    .line 56
    const p2, -0x20ad3f64

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->startReplaceableGroup(I)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p1, Landroidx/compose/runtime/GapComposer;->applier:Landroidx/compose/runtime/AbstractApplier;

    .line 63
    .line 64
    instance-of p2, p2, Landroidx/glance/Applier;

    .line 65
    .line 66
    if-eqz p2, :cond_3

    .line 67
    .line 68
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->startNode()V

    .line 69
    .line 70
    .line 71
    iget-boolean p2, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 72
    .line 73
    if-eqz p2, :cond_2

    .line 74
    .line 75
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 80
    .line 81
    .line 82
    :goto_1
    new-instance p0, Landroidx/compose/ui/unit/DpSize;

    .line 83
    .line 84
    invoke-direct {p0, v4, v5}, Landroidx/compose/ui/unit/DpSize;-><init>(J)V

    .line 85
    .line 86
    .line 87
    sget-object p2, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;->INSTANCE:Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;

    .line 88
    .line 89
    invoke-static {p1, p0, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 90
    .line 91
    .line 92
    sget-object p0, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;->INSTANCE$19:Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;

    .line 93
    .line 94
    sget-object p2, Landroidx/glance/appwidget/SizeMode$Exact;->INSTANCE:Landroidx/glance/appwidget/SizeMode$Exact;

    .line 95
    .line 96
    invoke-static {p1, p2, p0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 97
    .line 98
    .line 99
    const/4 p0, 0x0

    .line 100
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-interface {v3, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 114
    .line 115
    .line 116
    :goto_2
    return-object v1

    .line 117
    :cond_3
    invoke-static {}, Landroidx/compose/runtime/Updater;->invalidApplier()V

    .line 118
    .line 119
    .line 120
    const/4 p0, 0x0

    .line 121
    throw p0

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

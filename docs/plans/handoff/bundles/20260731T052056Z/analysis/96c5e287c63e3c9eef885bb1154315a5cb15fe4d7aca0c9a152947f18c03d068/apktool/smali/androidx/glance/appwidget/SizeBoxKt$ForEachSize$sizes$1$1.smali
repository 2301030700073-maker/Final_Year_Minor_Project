.class public final Landroidx/glance/appwidget/SizeBoxKt$ForEachSize$sizes$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $minSize:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/glance/appwidget/SizeBoxKt$ForEachSize$sizes$1$1;->$minSize:J

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/ui/unit/DpSize;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/glance/appwidget/SizeBoxKt$ForEachSize$sizes$1$1;->$minSize:J

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/unit/DpSize;-><init>(J)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

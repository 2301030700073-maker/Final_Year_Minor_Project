.class public final Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;

.field public static final INSTANCE$1:Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;

.field public static final INSTANCE$2:Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;

.field public static final INSTANCE$3:Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;->INSTANCE:Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;

    .line 9
    .line 10
    new-instance v0, Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v0, v1, v2}, Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;->INSTANCE$1:Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;

    .line 17
    .line 18
    new-instance v0, Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-direct {v0, v1, v2}, Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;-><init>(II)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;->INSTANCE$2:Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;

    .line 25
    .line 26
    new-instance v0, Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-direct {v0, v1, v2}, Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;-><init>(II)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;->INSTANCE$3:Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;

    .line 33
    .line 34
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget p0, p0, Landroidx/glance/appwidget/lazy/LazyListKt$LazyColumn$2$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/glance/appwidget/lazy/EmittableLazyListItem;

    .line 9
    .line 10
    check-cast p2, Landroidx/glance/layout/Alignment;

    .line 11
    .line 12
    iput-object p2, p1, Landroidx/glance/appwidget/lazy/EmittableLazyListItem;->alignment:Landroidx/glance/layout/Alignment;

    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_0
    check-cast p1, Landroidx/glance/appwidget/lazy/EmittableLazyListItem;

    .line 16
    .line 17
    check-cast p2, Ljava/lang/Number;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    iput-wide v1, p1, Landroidx/glance/appwidget/lazy/EmittableLazyListItem;->itemId:J

    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_1
    check-cast p1, Landroidx/glance/appwidget/lazy/EmittableLazyColumn;

    .line 27
    .line 28
    check-cast p2, Landroidx/glance/layout/Alignment$Horizontal;

    .line 29
    .line 30
    iget p0, p2, Landroidx/glance/layout/Alignment$Horizontal;->value:I

    .line 31
    .line 32
    iput p0, p1, Landroidx/glance/appwidget/lazy/EmittableLazyColumn;->horizontalAlignment:I

    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_2
    check-cast p1, Landroidx/glance/appwidget/lazy/EmittableLazyColumn;

    .line 36
    .line 37
    check-cast p2, Landroidx/glance/GlanceModifier;

    .line 38
    .line 39
    iput-object p2, p1, Landroidx/glance/appwidget/lazy/EmittableLazyColumn;->modifier:Landroidx/glance/GlanceModifier;

    .line 40
    .line 41
    return-object v0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

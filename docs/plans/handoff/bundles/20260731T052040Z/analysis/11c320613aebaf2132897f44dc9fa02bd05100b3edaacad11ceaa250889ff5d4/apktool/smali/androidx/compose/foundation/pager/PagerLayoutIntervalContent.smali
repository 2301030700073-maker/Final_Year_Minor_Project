.class public final Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;
.super Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final intervals:Lcom/grack/nanojson/JsonParser;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/grack/nanojson/JsonParser;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/grack/nanojson/JsonParser;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/compose/foundation/pager/PagerIntervalContent;

    .line 10
    .line 11
    invoke-direct {v1, p2, p1}, Landroidx/compose/foundation/pager/PagerIntervalContent;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p3, v1}, Lcom/grack/nanojson/JsonParser;->addInterval(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;->intervals:Lcom/grack/nanojson/JsonParser;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final getIntervals()Lcom/grack/nanojson/JsonParser;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;->intervals:Lcom/grack/nanojson/JsonParser;

    .line 2
    .line 3
    return-object p0
.end method

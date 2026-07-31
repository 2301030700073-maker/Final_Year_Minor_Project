.class public final synthetic Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic f$3:Lorg/wikipedia/dataclient/page/PageSummary;

.field public final synthetic f$4:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$6:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;JLorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/page/PageSummary;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda11;->f$0:Landroid/content/Context;

    .line 5
    .line 6
    iput-wide p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda11;->f$1:J

    .line 7
    .line 8
    iput-object p4, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda11;->f$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 9
    .line 10
    iput-object p5, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda11;->f$3:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 11
    .line 12
    iput-object p6, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda11;->f$4:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 13
    .line 14
    iput-object p7, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda11;->f$5:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    iput-object p8, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda11;->f$6:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    iput p9, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda11;->f$7:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda11;->f$7:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 14
    .line 15
    .line 16
    move-result v9

    .line 17
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda11;->f$0:Landroid/content/Context;

    .line 18
    .line 19
    iget-wide v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda11;->f$1:J

    .line 20
    .line 21
    iget-object v3, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda11;->f$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 22
    .line 23
    iget-object v4, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda11;->f$3:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 24
    .line 25
    iget-object v5, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda11;->f$4:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 26
    .line 27
    iget-object v6, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda11;->f$5:Lkotlin/jvm/functions/Function1;

    .line 28
    .line 29
    iget-object v7, p0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda11;->f$6:Lkotlin/jvm/functions/Function1;

    .line 30
    .line 31
    invoke-static/range {v0 .. v9}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->OnThisDayPageItem-S8JMNoI(Landroid/content/Context;JLorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/page/PageSummary;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method

.class public final synthetic Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lj$/time/LocalDate;ZII)V
    .locals 0

    .line 1
    const/4 p3, 0x0

    .line 2
    iput p3, p0, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p2, p0, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda1;->f$1:Z

    .line 10
    .line 11
    iput p4, p0, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda1;->f$3:I

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function2;I)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p2, p0, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput p3, p0, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget v3, p0, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda1;->f$3:I

    .line 7
    .line 8
    iget-object v4, p0, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    iget-boolean p0, p0, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda1;->f$1:Z

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 16
    .line 17
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    check-cast p2, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    or-int/lit8 p2, v3, 0x1

    .line 25
    .line 26
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-static {p0, v4, p1, p2}, Landroidx/work/OperationKt;->PredictiveBackHandler(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :pswitch_0
    check-cast v4, Lj$/time/LocalDate;

    .line 35
    .line 36
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 37
    .line 38
    check-cast p2, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-static {v4, p0, p1, p2, v3}, Lorg/wikipedia/feed/ForYouCardKt;->DayHeader(Lj$/time/LocalDate;ZLandroidx/compose/runtime/GapComposer;II)V

    .line 48
    .line 49
    .line 50
    return-object v1

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

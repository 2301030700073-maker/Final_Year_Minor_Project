.class public final synthetic Lorg/wikipedia/yearinreview/YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Lorg/wikipedia/util/UiState;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lorg/wikipedia/util/UiState;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda1;->f$1:Lorg/wikipedia/util/UiState;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lorg/wikipedia/util/UiState;I)V
    .locals 0

    .line 12
    const/4 p3, 0x1

    iput p3, p0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda1;->f$1:Lorg/wikipedia/util/UiState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda1;->f$1:Lorg/wikipedia/util/UiState;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Integer;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-static {p0, v3, p1, p2}, Lorg/wikipedia/yearinreview/YearInReviewDialog;->YearInReviewOnboardingBottomBar(Lkotlin/jvm/functions/Function0;Lorg/wikipedia/util/UiState;Landroidx/compose/runtime/GapComposer;I)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    and-int/lit8 v0, p2, 0x3

    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eq v0, v4, :cond_0

    .line 37
    .line 38
    move v0, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v0, v5

    .line 41
    :goto_0
    and-int/2addr p2, v2

    .line 42
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    invoke-static {p0, v3, p1, v5}, Lorg/wikipedia/yearinreview/YearInReviewDialog;->YearInReviewOnboardingBottomBar(Lkotlin/jvm/functions/Function0;Lorg/wikipedia/util/UiState;Landroidx/compose/runtime/GapComposer;I)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-object v1

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

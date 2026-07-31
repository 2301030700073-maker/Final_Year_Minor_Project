.class public final synthetic Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Z

.field public final synthetic f$4:Lkotlin/Function;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;->f$4:Lkotlin/Function;

    .line 10
    .line 11
    iput-object p2, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;->f$0:Landroidx/compose/ui/Modifier;

    .line 12
    .line 13
    iput-boolean p5, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;->f$2:Z

    .line 14
    .line 15
    iput p1, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;->f$5:I

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;ZLkotlin/jvm/functions/Function1;I)V
    .locals 1

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;->f$0:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;->f$1:Ljava/lang/Object;

    iput-boolean p3, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;->f$2:Z

    iput-object p4, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;->f$4:Lkotlin/Function;

    iput p5, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;->f$5:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget v3, v0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;->f$5:I

    .line 8
    .line 9
    iget-object v4, v0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;->f$4:Lkotlin/Function;

    .line 10
    .line 11
    iget-object v5, v0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;->f$1:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object v6, v5

    .line 17
    check-cast v6, Ljava/lang/String;

    .line 18
    .line 19
    move-object v7, v4

    .line 20
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 21
    .line 22
    move-object/from16 v10, p1

    .line 23
    .line 24
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    move-object/from16 v1, p2

    .line 27
    .line 28
    check-cast v1, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    or-int/lit8 v1, v3, 0x1

    .line 34
    .line 35
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 36
    .line 37
    .line 38
    move-result v11

    .line 39
    iget-object v8, v0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;->f$0:Landroidx/compose/ui/Modifier;

    .line 40
    .line 41
    iget-boolean v9, v0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;->f$2:Z

    .line 42
    .line 43
    invoke-static/range {v6 .. v11}, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt;->ChipButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/GapComposer;I)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :pswitch_0
    move-object v13, v5

    .line 48
    check-cast v13, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;

    .line 49
    .line 50
    move-object v15, v4

    .line 51
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 52
    .line 53
    move-object/from16 v16, p1

    .line 54
    .line 55
    check-cast v16, Landroidx/compose/runtime/GapComposer;

    .line 56
    .line 57
    move-object/from16 v1, p2

    .line 58
    .line 59
    check-cast v1, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    or-int/lit8 v1, v3, 0x1

    .line 65
    .line 66
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 67
    .line 68
    .line 69
    move-result v17

    .line 70
    iget-object v12, v0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;->f$0:Landroidx/compose/ui/Modifier;

    .line 71
    .line 72
    iget-boolean v14, v0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda30;->f$2:Z

    .line 73
    .line 74
    invoke-static/range {v12 .. v17}, Lorg/wikipedia/yearinreview/YearInReviewDialog;->StandardScreenContent(Landroidx/compose/ui/Modifier;Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 75
    .line 76
    .line 77
    return-object v2

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

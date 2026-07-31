.class public final synthetic Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Lkotlin/Function;

.field public final synthetic f$2:Landroidx/compose/ui/Modifier;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->f$0:I

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/Function;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    .line 12
    .line 13
    iput p4, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->f$3:I

    .line 14
    .line 15
    iput p5, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->f$4:I

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;III)V
    .locals 0

    .line 18
    const/4 p6, 0x1

    iput p6, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/Function;

    iput-object p3, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    iput p4, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->f$4:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, v0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/Function;

    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object v6, v4

    .line 14
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    move-object/from16 v10, p1

    .line 17
    .line 18
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    move-object/from16 v1, p2

    .line 21
    .line 22
    check-cast v1, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 28
    .line 29
    .line 30
    move-result v11

    .line 31
    iget v5, v0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->f$0:I

    .line 32
    .line 33
    iget-object v7, v0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    .line 34
    .line 35
    iget v8, v0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->f$3:I

    .line 36
    .line 37
    iget v9, v0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->f$4:I

    .line 38
    .line 39
    invoke-static/range {v5 .. v11}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->ArticlesNumberView(ILkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;IILandroidx/compose/runtime/GapComposer;I)V

    .line 40
    .line 41
    .line 42
    return-object v2

    .line 43
    :pswitch_0
    move-object v13, v4

    .line 44
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 45
    .line 46
    move-object/from16 v16, p1

    .line 47
    .line 48
    check-cast v16, Landroidx/compose/runtime/GapComposer;

    .line 49
    .line 50
    move-object/from16 v1, p2

    .line 51
    .line 52
    check-cast v1, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget v1, v0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->f$4:I

    .line 58
    .line 59
    or-int/2addr v1, v3

    .line 60
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 61
    .line 62
    .line 63
    move-result v17

    .line 64
    iget v12, v0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->f$0:I

    .line 65
    .line 66
    iget-object v14, v0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    .line 67
    .line 68
    iget v15, v0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda1;->f$3:I

    .line 69
    .line 70
    invoke-static/range {v12 .. v17}, Lorg/wikipedia/compose/components/TabsBoxKt;->NotificationBell(ILkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ILandroidx/compose/runtime/GapComposer;I)V

    .line 71
    .line 72
    .line 73
    return-object v2

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

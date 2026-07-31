.class public final synthetic Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/navigationevent/compose/NavigationEventState;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$6:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 1
    iput p9, p0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$0:Landroidx/navigationevent/compose/NavigationEventState;

    .line 4
    .line 5
    iput-boolean p2, p0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$1:Z

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    iput-object p4, p0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    iput-boolean p5, p0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$4:Z

    .line 12
    .line 13
    iput-object p6, p0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$5:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    iput-object p7, p0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$6:Lkotlin/jvm/functions/Function0;

    .line 16
    .line 17
    iput p8, p0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$7:I

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget v3, v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$7:I

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object/from16 v11, p1

    .line 13
    .line 14
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 15
    .line 16
    move-object/from16 v1, p2

    .line 17
    .line 18
    check-cast v1, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    or-int/lit8 v1, v3, 0x1

    .line 24
    .line 25
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 26
    .line 27
    .line 28
    move-result v12

    .line 29
    iget-object v4, v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$0:Landroidx/navigationevent/compose/NavigationEventState;

    .line 30
    .line 31
    iget-boolean v5, v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$1:Z

    .line 32
    .line 33
    iget-object v6, v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function0;

    .line 34
    .line 35
    iget-object v7, v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function0;

    .line 36
    .line 37
    iget-boolean v8, v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$4:Z

    .line 38
    .line 39
    iget-object v9, v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$5:Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    iget-object v10, v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$6:Lkotlin/jvm/functions/Function0;

    .line 42
    .line 43
    invoke-static/range {v4 .. v12}, Lkotlin/ranges/RangesKt;->NavigationEventHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :pswitch_0
    move-object/from16 v20, p1

    .line 48
    .line 49
    check-cast v20, Landroidx/compose/runtime/Composer;

    .line 50
    .line 51
    move-object/from16 v1, p2

    .line 52
    .line 53
    check-cast v1, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    or-int/lit8 v1, v3, 0x1

    .line 59
    .line 60
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 61
    .line 62
    .line 63
    move-result v21

    .line 64
    iget-object v13, v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$0:Landroidx/navigationevent/compose/NavigationEventState;

    .line 65
    .line 66
    iget-boolean v14, v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$1:Z

    .line 67
    .line 68
    iget-object v15, v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function0;

    .line 69
    .line 70
    iget-object v1, v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function0;

    .line 71
    .line 72
    iget-boolean v3, v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$4:Z

    .line 73
    .line 74
    iget-object v4, v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$5:Lkotlin/jvm/functions/Function0;

    .line 75
    .line 76
    iget-object v0, v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;->f$6:Lkotlin/jvm/functions/Function0;

    .line 77
    .line 78
    move-object/from16 v19, v0

    .line 79
    .line 80
    move-object/from16 v16, v1

    .line 81
    .line 82
    move/from16 v17, v3

    .line 83
    .line 84
    move-object/from16 v18, v4

    .line 85
    .line 86
    invoke-static/range {v13 .. v21}, Lkotlin/ranges/RangesKt;->NavigationEventHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 87
    .line 88
    .line 89
    return-object v2

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

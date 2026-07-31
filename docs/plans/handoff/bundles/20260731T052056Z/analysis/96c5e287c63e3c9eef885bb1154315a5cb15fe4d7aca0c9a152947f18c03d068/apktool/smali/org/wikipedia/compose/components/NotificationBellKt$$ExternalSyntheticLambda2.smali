.class public final synthetic Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/ui/Modifier;JI)V
    .locals 0

    .line 1
    const/4 p5, 0x0

    .line 2
    iput p5, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda2;->f$0:I

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iput-wide p3, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda2;->f$2:J

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(JLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda2;->f$2:J

    iput-object p3, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput p4, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda2;->f$0:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    check-cast p2, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget p2, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda2;->f$0:I

    .line 21
    .line 22
    or-int/2addr p2, v2

    .line 23
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iget-wide v4, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda2;->f$2:J

    .line 28
    .line 29
    invoke-static {v4, v5, v3, p1, p2}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->BaseWidgetContent-Iv8Zu3U(JLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :pswitch_0
    move-object v7, v3

    .line 34
    check-cast v7, Landroidx/compose/ui/Modifier;

    .line 35
    .line 36
    move-object v10, p1

    .line 37
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 38
    .line 39
    check-cast p2, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    iget v6, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda2;->f$0:I

    .line 49
    .line 50
    iget-wide v8, p0, Lorg/wikipedia/compose/components/NotificationBellKt$$ExternalSyntheticLambda2;->f$2:J

    .line 51
    .line 52
    invoke-static/range {v6 .. v11}, Lorg/wikipedia/compose/components/TabsBoxKt;->CircleWithNumber-FNF3uiM(ILandroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;I)V

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

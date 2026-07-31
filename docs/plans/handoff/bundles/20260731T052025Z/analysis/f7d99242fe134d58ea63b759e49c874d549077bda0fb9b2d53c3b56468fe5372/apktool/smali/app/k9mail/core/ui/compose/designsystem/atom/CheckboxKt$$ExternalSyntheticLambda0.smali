.class public final synthetic Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Landroidx/compose/ui/Modifier;

.field public final synthetic f$3:Z

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;II)V
    .locals 0

    .line 1
    const/4 p5, 0x1

    .line 2
    iput p5, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-boolean p1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->f$0:Z

    .line 8
    .line 9
    iput-object p2, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    iput-boolean p3, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->f$3:Z

    .line 12
    .line 13
    iput-object p4, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 14
    .line 15
    iput p6, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->f$4:I

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZI)V
    .locals 1

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->f$3:Z

    iput p5, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object v8, v4

    .line 14
    check-cast v8, Landroidx/compose/ui/graphics/Color;

    .line 15
    .line 16
    move-object/from16 v9, p1

    .line 17
    .line 18
    check-cast v9, Landroidx/compose/runtime/Composer;

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
    move-result v10

    .line 31
    iget-boolean v5, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->f$0:Z

    .line 32
    .line 33
    iget-object v6, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/Modifier;

    .line 34
    .line 35
    iget-boolean v7, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->f$3:Z

    .line 36
    .line 37
    iget v11, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->f$4:I

    .line 38
    .line 39
    invoke-static/range {v5 .. v11}, Lorg/jsoup/nodes/NodeUtils;->AnimatedExpandIcon-xqIIw2o(ZLandroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 40
    .line 41
    .line 42
    return-object v2

    .line 43
    :pswitch_0
    move-object v13, v4

    .line 44
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 45
    .line 46
    move-object/from16 v16, p1

    .line 47
    .line 48
    check-cast v16, Landroidx/compose/runtime/Composer;

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
    iget v1, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->f$4:I

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
    iget-boolean v12, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->f$0:Z

    .line 65
    .line 66
    iget-object v14, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/Modifier;

    .line 67
    .line 68
    iget-boolean v15, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/CheckboxKt$$ExternalSyntheticLambda0;->f$3:Z

    .line 69
    .line 70
    invoke-static/range {v12 .. v17}, Landroidx/room/util/RelationUtil;->Checkbox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;I)V

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

.class public final synthetic Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Lkotlin/Function;

.field public final synthetic f$3:Landroidx/compose/ui/Modifier;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/ui/Modifier;I)V
    .locals 0

    .line 1
    const/4 p6, 0x1

    .line 2
    iput p6, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/Function;

    .line 10
    .line 11
    iput-boolean p3, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;->f$0:Z

    .line 12
    .line 13
    iput-boolean p4, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;->f$4:Z

    .line 14
    .line 15
    iput-object p5, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/ui/Modifier;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZI)V
    .locals 0

    .line 18
    const/4 p6, 0x0

    iput p6, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;->f$0:Z

    iput-object p2, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/Function;

    iput-object p4, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/ui/Modifier;

    iput-boolean p5, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;->f$4:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/Function;

    .line 9
    .line 10
    iget-object v5, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object v6, v5

    .line 16
    check-cast v6, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 17
    .line 18
    move-object v7, v4

    .line 19
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    move-object/from16 v11, p1

    .line 22
    .line 23
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 24
    .line 25
    move-object/from16 v1, p2

    .line 26
    .line 27
    check-cast v1, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 33
    .line 34
    .line 35
    move-result v12

    .line 36
    iget-boolean v8, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;->f$0:Z

    .line 37
    .line 38
    iget-boolean v9, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;->f$4:Z

    .line 39
    .line 40
    iget-object v10, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/ui/Modifier;

    .line 41
    .line 42
    invoke-static/range {v6 .. v12}, Lorg/minidns/util/Hex;->AccountListItem(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 43
    .line 44
    .line 45
    return-object v2

    .line 46
    :pswitch_0
    move-object v14, v5

    .line 47
    check-cast v14, Ljava/lang/String;

    .line 48
    .line 49
    move-object v15, v4

    .line 50
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 51
    .line 52
    move-object/from16 v18, p1

    .line 53
    .line 54
    check-cast v18, Landroidx/compose/runtime/Composer;

    .line 55
    .line 56
    move-object/from16 v1, p2

    .line 57
    .line 58
    check-cast v1, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 64
    .line 65
    .line 66
    move-result v19

    .line 67
    iget-boolean v13, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;->f$0:Z

    .line 68
    .line 69
    iget-object v1, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/ui/Modifier;

    .line 70
    .line 71
    iget-boolean v0, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;->f$4:Z

    .line 72
    .line 73
    move/from16 v17, v0

    .line 74
    .line 75
    move-object/from16 v16, v1

    .line 76
    .line 77
    invoke-static/range {v13 .. v19}, Landroidx/room/util/DBUtil;->RadioButton(ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;I)V

    .line 78
    .line 79
    .line 80
    return-object v2

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

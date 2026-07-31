.class public final synthetic Lapp/k9mail/feature/onboarding/permissions/ui/PermissionBoxKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroidx/compose/ui/Modifier;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/ui/Modifier;JI)V
    .locals 0

    .line 1
    const/4 p5, 0x1

    .line 2
    iput p5, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionBoxKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionBoxKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionBoxKt$$ExternalSyntheticLambda3;->f$2:Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    iput-wide p3, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionBoxKt$$ExternalSyntheticLambda3;->f$1:J

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/vector/ImageVector;JLandroidx/compose/ui/Modifier;I)V
    .locals 0

    .line 14
    const/4 p5, 0x0

    iput p5, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionBoxKt$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionBoxKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionBoxKt$$ExternalSyntheticLambda3;->f$1:J

    iput-object p4, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionBoxKt$$ExternalSyntheticLambda3;->f$2:Landroidx/compose/ui/Modifier;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionBoxKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, v0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionBoxKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object v5, v4

    .line 14
    check-cast v5, Landroidx/compose/foundation/text/selection/OffsetProvider;

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
    iget-object v6, v0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionBoxKt$$ExternalSyntheticLambda3;->f$2:Landroidx/compose/ui/Modifier;

    .line 32
    .line 33
    iget-wide v7, v0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionBoxKt$$ExternalSyntheticLambda3;->f$1:J

    .line 34
    .line 35
    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->CursorHandle-USBMPiE(Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;I)V

    .line 36
    .line 37
    .line 38
    return-object v2

    .line 39
    :pswitch_0
    move-object v11, v4

    .line 40
    check-cast v11, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 41
    .line 42
    move-object/from16 v15, p1

    .line 43
    .line 44
    check-cast v15, Landroidx/compose/runtime/Composer;

    .line 45
    .line 46
    move-object/from16 v1, p2

    .line 47
    .line 48
    check-cast v1, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 54
    .line 55
    .line 56
    move-result v16

    .line 57
    iget-wide v12, v0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionBoxKt$$ExternalSyntheticLambda3;->f$1:J

    .line 58
    .line 59
    iget-object v14, v0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionBoxKt$$ExternalSyntheticLambda3;->f$2:Landroidx/compose/ui/Modifier;

    .line 60
    .line 61
    invoke-static/range {v11 .. v16}, Landroidx/appcompat/app/ActionBar;->OverlayIcon-3IgeMak(Landroidx/compose/ui/graphics/vector/ImageVector;JLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 62
    .line 63
    .line 64
    return-object v2

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

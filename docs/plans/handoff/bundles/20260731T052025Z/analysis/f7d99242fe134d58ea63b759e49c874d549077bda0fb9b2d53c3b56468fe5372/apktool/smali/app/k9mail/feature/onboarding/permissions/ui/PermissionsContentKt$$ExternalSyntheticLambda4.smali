.class public final synthetic Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda4;->f$0:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;

    .line 8
    .line 9
    iput-object p2, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    .line 12
    iput p4, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda4;->f$0:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;

    iput-object p2, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iget-object p0, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda4;->f$0:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;

    .line 9
    .line 10
    check-cast p1, Landroidx/compose/runtime/Composer;

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
    invoke-static {p0, v3, p1, p2}, Landroidx/room/util/SchemaInfoUtilKt;->ContentArea(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-static {p0, v3, p1, p2}, Landroidx/room/util/SchemaInfoUtilKt;->PermissionBoxes(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    and-int/lit8 v0, p2, 0x3

    .line 44
    .line 45
    const/4 v4, 0x2

    .line 46
    const/4 v5, 0x0

    .line 47
    if-eq v0, v4, :cond_0

    .line 48
    .line 49
    move v0, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move v0, v5

    .line 52
    :goto_0
    and-int/2addr p2, v2

    .line 53
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 54
    .line 55
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_1

    .line 60
    .line 61
    sget-object p2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 62
    .line 63
    new-instance v0, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;

    .line 64
    .line 65
    const/16 v2, 0x11

    .line 66
    .line 67
    invoke-direct {v0, v2, p0, v3}, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 68
    .line 69
    .line 70
    const p0, 0x272e4fdb

    .line 71
    .line 72
    .line 73
    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const/16 v0, 0x36

    .line 78
    .line 79
    invoke-static {p2, p0, p1, v0, v5}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->ResponsiveWidthContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 84
    .line 85
    .line 86
    :goto_1
    return-object v1

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

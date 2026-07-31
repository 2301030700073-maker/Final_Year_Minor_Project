.class public final synthetic Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonSegmentedSingleChoiceKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lkotlinx/collections/immutable/ImmutableList;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$3:Landroidx/compose/ui/Modifier;

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p7, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonSegmentedSingleChoiceKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonSegmentedSingleChoiceKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonSegmentedSingleChoiceKt$$ExternalSyntheticLambda0;->f$1:Lkotlinx/collections/immutable/ImmutableList;

    .line 6
    .line 7
    iput-object p3, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonSegmentedSingleChoiceKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iput-object p4, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonSegmentedSingleChoiceKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    iput-object p5, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonSegmentedSingleChoiceKt$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonSegmentedSingleChoiceKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/16 v3, 0xd81

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object/from16 v9, p1

    .line 13
    .line 14
    check-cast v9, Landroidx/compose/runtime/Composer;

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
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 24
    .line 25
    .line 26
    move-result v10

    .line 27
    iget-object v4, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonSegmentedSingleChoiceKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    .line 28
    .line 29
    iget-object v5, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonSegmentedSingleChoiceKt$$ExternalSyntheticLambda0;->f$1:Lkotlinx/collections/immutable/ImmutableList;

    .line 30
    .line 31
    iget-object v6, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonSegmentedSingleChoiceKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    iget-object v7, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonSegmentedSingleChoiceKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/Modifier;

    .line 34
    .line 35
    iget-object v8, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonSegmentedSingleChoiceKt$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static/range {v4 .. v10}, Landroidx/sqlite/SQLite;->ButtonSegmentedSingleChoice(Lkotlin/jvm/functions/Function1;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 38
    .line 39
    .line 40
    return-object v2

    .line 41
    :pswitch_0
    move-object/from16 v16, p1

    .line 42
    .line 43
    check-cast v16, Landroidx/compose/runtime/Composer;

    .line 44
    .line 45
    move-object/from16 v1, p2

    .line 46
    .line 47
    check-cast v1, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 53
    .line 54
    .line 55
    move-result v17

    .line 56
    iget-object v11, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonSegmentedSingleChoiceKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    .line 57
    .line 58
    iget-object v12, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonSegmentedSingleChoiceKt$$ExternalSyntheticLambda0;->f$1:Lkotlinx/collections/immutable/ImmutableList;

    .line 59
    .line 60
    iget-object v13, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonSegmentedSingleChoiceKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    .line 61
    .line 62
    iget-object v14, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonSegmentedSingleChoiceKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/Modifier;

    .line 63
    .line 64
    iget-object v15, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonSegmentedSingleChoiceKt$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    .line 65
    .line 66
    invoke-static/range {v11 .. v17}, Landroidx/sqlite/SQLite;->ButtonSegmentedSingleChoice(Lkotlin/jvm/functions/Function1;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 67
    .line 68
    .line 69
    return-object v2

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

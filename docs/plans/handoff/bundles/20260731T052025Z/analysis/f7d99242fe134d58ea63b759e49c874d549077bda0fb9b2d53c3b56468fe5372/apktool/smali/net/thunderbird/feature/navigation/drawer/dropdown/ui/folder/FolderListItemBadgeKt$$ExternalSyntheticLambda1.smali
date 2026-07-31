.class public final synthetic Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroidx/compose/ui/Modifier;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(IIZLandroidx/compose/ui/Modifier;II)V
    .locals 0

    .line 1
    iput p6, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda1;->f$0:I

    .line 4
    .line 5
    iput p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    .line 7
    iput-boolean p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda1;->f$2:Z

    .line 8
    .line 9
    iput-object p4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    iput p5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda1;->f$4:I

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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget v3, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda1;->f$4:I

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object/from16 v8, p1

    .line 13
    .line 14
    check-cast v8, Landroidx/compose/runtime/Composer;

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
    move-result v9

    .line 29
    iget v4, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda1;->f$0:I

    .line 30
    .line 31
    iget v5, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda1;->f$1:I

    .line 32
    .line 33
    iget-boolean v6, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda1;->f$2:Z

    .line 34
    .line 35
    iget-object v7, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/ui/Modifier;

    .line 36
    .line 37
    invoke-static/range {v4 .. v9}, Lkotlin/text/CharsKt__CharKt;->AccountCountAndStarredBadge(IIZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 38
    .line 39
    .line 40
    return-object v2

    .line 41
    :pswitch_0
    move-object/from16 v14, p1

    .line 42
    .line 43
    check-cast v14, Landroidx/compose/runtime/Composer;

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
    or-int/lit8 v1, v3, 0x1

    .line 53
    .line 54
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 55
    .line 56
    .line 57
    move-result v15

    .line 58
    iget v10, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda1;->f$0:I

    .line 59
    .line 60
    iget v11, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda1;->f$1:I

    .line 61
    .line 62
    iget-boolean v12, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda1;->f$2:Z

    .line 63
    .line 64
    iget-object v13, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/ui/Modifier;

    .line 65
    .line 66
    invoke-static/range {v10 .. v15}, Lokio/Okio;->FolderCountAndStarredBadge(IIZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

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

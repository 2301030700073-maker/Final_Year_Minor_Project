.class public final synthetic Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda0;
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


# direct methods
.method public synthetic constructor <init>(IIZLandroidx/compose/ui/Modifier;II)V
    .locals 0

    .line 1
    iput p6, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda0;->f$0:I

    .line 4
    .line 5
    iput p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    iput-boolean p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda0;->f$2:Z

    .line 8
    .line 9
    iput-object p4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    move-object/from16 v8, p1

    .line 12
    .line 13
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 14
    .line 15
    move-object/from16 v1, p2

    .line 16
    .line 17
    check-cast v1, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    iget v4, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda0;->f$0:I

    .line 27
    .line 28
    iget v5, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda0;->f$1:I

    .line 29
    .line 30
    iget-boolean v6, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda0;->f$2:Z

    .line 31
    .line 32
    iget-object v7, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/Modifier;

    .line 33
    .line 34
    invoke-static/range {v4 .. v9}, Lkotlin/text/CharsKt__CharKt;->AccountListItemBadge(IIZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 35
    .line 36
    .line 37
    return-object v2

    .line 38
    :pswitch_0
    move-object/from16 v14, p1

    .line 39
    .line 40
    check-cast v14, Landroidx/compose/runtime/Composer;

    .line 41
    .line 42
    move-object/from16 v1, p2

    .line 43
    .line 44
    check-cast v1, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 50
    .line 51
    .line 52
    move-result v15

    .line 53
    iget v10, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda0;->f$0:I

    .line 54
    .line 55
    iget v11, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda0;->f$1:I

    .line 56
    .line 57
    iget-boolean v12, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda0;->f$2:Z

    .line 58
    .line 59
    iget-object v13, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemBadgeKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/Modifier;

    .line 60
    .line 61
    invoke-static/range {v10 .. v15}, Lokio/Okio;->FolderListItemBadge(IIZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

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

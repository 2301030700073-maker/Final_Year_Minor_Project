.class public final synthetic Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroidx/compose/ui/Modifier;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

.field public final synthetic f$8:Ljava/lang/String;

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;Lkotlin/jvm/functions/Function1;ZLapp/k9mail/legacy/ui/folder/FolderNameFormatter;Ljava/lang/String;Landroidx/compose/ui/Modifier;ZLnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Ljava/lang/String;IIII)V
    .locals 0

    .line 1
    iput p13, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-boolean p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$2:Z

    .line 8
    .line 9
    iput-object p4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$3:Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 10
    .line 11
    iput-object p5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$4:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p6, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$5:Landroidx/compose/ui/Modifier;

    .line 14
    .line 15
    iput-boolean p7, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$6:Z

    .line 16
    .line 17
    iput-object p8, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$7:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 18
    .line 19
    iput-object p9, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$8:Ljava/lang/String;

    .line 20
    .line 21
    iput p10, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$9:I

    .line 22
    .line 23
    iput p11, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$10:I

    .line 24
    .line 25
    iput p12, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$11:I

    .line 26
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget v3, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$10:I

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object/from16 v14, p1

    .line 13
    .line 14
    check-cast v14, Landroidx/compose/runtime/Composer;

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
    move-result v15

    .line 29
    iget-object v4, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 30
    .line 31
    iget-object v5, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    iget-boolean v6, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$2:Z

    .line 34
    .line 35
    iget-object v7, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$3:Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 36
    .line 37
    iget-object v8, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$4:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v9, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$5:Landroidx/compose/ui/Modifier;

    .line 40
    .line 41
    iget-boolean v10, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$6:Z

    .line 42
    .line 43
    iget-object v11, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$7:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 44
    .line 45
    iget-object v12, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$8:Ljava/lang/String;

    .line 46
    .line 47
    iget v13, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$9:I

    .line 48
    .line 49
    iget v0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$11:I

    .line 50
    .line 51
    move/from16 v16, v0

    .line 52
    .line 53
    invoke-static/range {v4 .. v16}, Lokio/Options$Companion;->FolderListItem(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;Lkotlin/jvm/functions/Function1;ZLapp/k9mail/legacy/ui/folder/FolderNameFormatter;Ljava/lang/String;Landroidx/compose/ui/Modifier;ZLnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Ljava/lang/String;ILandroidx/compose/runtime/Composer;II)V

    .line 54
    .line 55
    .line 56
    return-object v2

    .line 57
    :pswitch_0
    move-object/from16 v26, p1

    .line 58
    .line 59
    check-cast v26, Landroidx/compose/runtime/Composer;

    .line 60
    .line 61
    move-object/from16 v1, p2

    .line 62
    .line 63
    check-cast v1, Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    or-int/lit8 v1, v3, 0x1

    .line 69
    .line 70
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 71
    .line 72
    .line 73
    move-result v27

    .line 74
    iget-object v1, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 75
    .line 76
    iget-object v3, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/functions/Function1;

    .line 77
    .line 78
    iget-boolean v4, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$2:Z

    .line 79
    .line 80
    iget-object v5, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$3:Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 81
    .line 82
    iget-object v6, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$4:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v7, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$5:Landroidx/compose/ui/Modifier;

    .line 85
    .line 86
    iget-boolean v8, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$6:Z

    .line 87
    .line 88
    iget-object v9, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$7:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 89
    .line 90
    iget-object v10, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$8:Ljava/lang/String;

    .line 91
    .line 92
    iget v11, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$9:I

    .line 93
    .line 94
    iget v0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$$ExternalSyntheticLambda4;->f$11:I

    .line 95
    .line 96
    move/from16 v28, v0

    .line 97
    .line 98
    move-object/from16 v16, v1

    .line 99
    .line 100
    move-object/from16 v17, v3

    .line 101
    .line 102
    move/from16 v18, v4

    .line 103
    .line 104
    move-object/from16 v19, v5

    .line 105
    .line 106
    move-object/from16 v20, v6

    .line 107
    .line 108
    move-object/from16 v21, v7

    .line 109
    .line 110
    move/from16 v22, v8

    .line 111
    .line 112
    move-object/from16 v23, v9

    .line 113
    .line 114
    move-object/from16 v24, v10

    .line 115
    .line 116
    move/from16 v25, v11

    .line 117
    .line 118
    invoke-static/range {v16 .. v28}, Lokio/Options$Companion;->FolderListItem(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;Lkotlin/jvm/functions/Function1;ZLapp/k9mail/legacy/ui/folder/FolderNameFormatter;Ljava/lang/String;Landroidx/compose/ui/Modifier;ZLnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Ljava/lang/String;ILandroidx/compose/runtime/Composer;II)V

    .line 119
    .line 120
    .line 121
    return-object v2

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

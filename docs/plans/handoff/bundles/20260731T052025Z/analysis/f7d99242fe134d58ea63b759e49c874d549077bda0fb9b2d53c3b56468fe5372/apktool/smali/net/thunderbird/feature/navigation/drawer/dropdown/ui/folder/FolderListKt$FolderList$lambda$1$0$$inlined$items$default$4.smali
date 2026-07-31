.class public final Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListKt$FolderList$lambda$1$0$$inlined$items$default$4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $folderNameFormatter$inlined:Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

.field public final synthetic $isExpandedInitial$inlined:Z

.field public final synthetic $items:Ljava/util/List;

.field public final synthetic $onFolderClick$inlined:Lkotlin/jvm/functions/Function1;

.field public final synthetic $selectedFolder$inlined:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

.field public final synthetic $showStarredCount$inlined:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;Lkotlin/jvm/functions/Function1;ZLapp/k9mail/legacy/ui/folder/FolderNameFormatter;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListKt$FolderList$lambda$1$0$$inlined$items$default$4;->$items:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListKt$FolderList$lambda$1$0$$inlined$items$default$4;->$selectedFolder$inlined:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListKt$FolderList$lambda$1$0$$inlined$items$default$4;->$onFolderClick$inlined:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput-boolean p4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListKt$FolderList$lambda$1$0$$inlined$items$default$4;->$showStarredCount$inlined:Z

    .line 11
    .line 12
    iput-object p5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListKt$FolderList$lambda$1$0$$inlined$items$default$4;->$folderNameFormatter$inlined:Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 13
    .line 14
    iput-boolean p6, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListKt$FolderList$lambda$1$0$$inlined$items$default$4;->$isExpandedInitial$inlined:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    move-object/from16 v3, p3

    .line 16
    .line 17
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    move-object/from16 v4, p4

    .line 20
    .line 21
    check-cast v4, Ljava/lang/Number;

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    and-int/lit8 v5, v4, 0x6

    .line 28
    .line 29
    if-nez v5, :cond_1

    .line 30
    .line 31
    move-object v5, v3

    .line 32
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 33
    .line 34
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    const/4 v1, 0x4

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v1, 0x2

    .line 43
    :goto_0
    or-int/2addr v1, v4

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v1, v4

    .line 46
    :goto_1
    and-int/lit8 v4, v4, 0x30

    .line 47
    .line 48
    if-nez v4, :cond_3

    .line 49
    .line 50
    move-object v4, v3

    .line 51
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 52
    .line 53
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    const/16 v4, 0x20

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/16 v4, 0x10

    .line 63
    .line 64
    :goto_2
    or-int/2addr v1, v4

    .line 65
    :cond_3
    and-int/lit16 v4, v1, 0x93

    .line 66
    .line 67
    const/16 v5, 0x92

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    const/4 v7, 0x1

    .line 71
    if-eq v4, v5, :cond_4

    .line 72
    .line 73
    move v4, v7

    .line 74
    goto :goto_3

    .line 75
    :cond_4
    move v4, v6

    .line 76
    :goto_3
    and-int/2addr v1, v7

    .line 77
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 78
    .line 79
    invoke-virtual {v3, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_7

    .line 84
    .line 85
    iget-object v1, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListKt$FolderList$lambda$1$0$$inlined$items$default$4;->$items:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    move-object v14, v1

    .line 92
    check-cast v14, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 93
    .line 94
    const v1, 0x28d3202d

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 98
    .line 99
    .line 100
    iget-object v7, v14, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;->displayFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 101
    .line 102
    const/4 v1, 0x0

    .line 103
    if-eqz v7, :cond_6

    .line 104
    .line 105
    iget-object v2, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListKt$FolderList$lambda$1$0$$inlined$items$default$4;->$selectedFolder$inlined:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 106
    .line 107
    if-eqz v2, :cond_5

    .line 108
    .line 109
    invoke-interface {v2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;->getId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    :cond_5
    move-object v11, v1

    .line 114
    const/high16 v18, 0x1000000

    .line 115
    .line 116
    const/16 v19, 0x320

    .line 117
    .line 118
    iget-object v8, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListKt$FolderList$lambda$1$0$$inlined$items$default$4;->$onFolderClick$inlined:Lkotlin/jvm/functions/Function1;

    .line 119
    .line 120
    iget-boolean v9, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListKt$FolderList$lambda$1$0$$inlined$items$default$4;->$showStarredCount$inlined:Z

    .line 121
    .line 122
    iget-object v10, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListKt$FolderList$lambda$1$0$$inlined$items$default$4;->$folderNameFormatter$inlined:Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 123
    .line 124
    const/4 v12, 0x0

    .line 125
    iget-boolean v13, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListKt$FolderList$lambda$1$0$$inlined$items$default$4;->$isExpandedInitial$inlined:Z

    .line 126
    .line 127
    const/4 v15, 0x0

    .line 128
    const/16 v16, 0x0

    .line 129
    .line 130
    move-object/from16 v17, v3

    .line 131
    .line 132
    invoke-static/range {v7 .. v19}, Lokio/Options$Companion;->FolderListItem(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;Lkotlin/jvm/functions/Function1;ZLapp/k9mail/legacy/ui/folder/FolderNameFormatter;Ljava/lang/String;Landroidx/compose/ui/Modifier;ZLnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Ljava/lang/String;ILandroidx/compose/runtime/Composer;II)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_6
    iget-object v0, v14, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;->displayName:Ljava/lang/String;

    .line 140
    .line 141
    const-string v2, "Null DisplayFolder for folder "

    .line 142
    .line 143
    invoke-static {v2, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    return-object v1

    .line 151
    :cond_7
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 152
    .line 153
    .line 154
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 155
    .line 156
    return-object v0
.end method

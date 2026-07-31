.class public final synthetic Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$$ExternalSyntheticLambda1;->f$0:Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object p0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$$ExternalSyntheticLambda1;->f$0:Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lapp/k9mail/legacy/ui/folder/DisplayFolder;

    .line 11
    .line 12
    sget v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->$r8$clinit:I

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object p1, p1, Lapp/k9mail/legacy/ui/folder/DisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 18
    .line 19
    iget-wide v0, p1, Lnet/thunderbird/feature/mail/folder/api/Folder;->id:J

    .line 20
    .line 21
    iget-object v2, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->folderIconProvider$delegate:Lkotlin/Lazy;

    .line 22
    .line 23
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lapp/k9mail/legacy/ui/folder/FolderIconProvider;

    .line 28
    .line 29
    iget-object v3, p1, Lnet/thunderbird/feature/mail/folder/api/Folder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {v3}, Lapp/k9mail/legacy/ui/folder/FolderIconProvider;->getFolderIcon(Lnet/thunderbird/feature/mail/folder/api/FolderType;)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iget-object p0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->folderNameFormatter$delegate:Lkotlin/Lazy;

    .line 39
    .line 40
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;->displayName(Lnet/thunderbird/feature/mail/folder/api/Folder;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-instance p1, Lcom/fsck/k9/ui/choosefolder/FolderListItem;

    .line 51
    .line 52
    invoke-direct {p1, v2, v0, v1, p0}, Lcom/fsck/k9/ui/choosefolder/FolderListItem;-><init>(IJLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object p1

    .line 56
    :pswitch_0
    check-cast p1, Lapp/k9mail/legacy/ui/folder/DisplayFolder;

    .line 57
    .line 58
    sget v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->$r8$clinit:I

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object p1, p1, Lapp/k9mail/legacy/ui/folder/DisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 64
    .line 65
    iget-wide v3, p1, Lnet/thunderbird/feature/mail/folder/api/Folder;->id:J

    .line 66
    .line 67
    iget-object p0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->currentFolderId:Ljava/lang/Long;

    .line 68
    .line 69
    if-nez p0, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide p0

    .line 76
    cmp-long p0, v3, p0

    .line 77
    .line 78
    if-nez p0, :cond_1

    .line 79
    .line 80
    move v1, v2

    .line 81
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :pswitch_1
    check-cast p1, Ljava/util/List;

    .line 87
    .line 88
    sget v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->$r8$clinit:I

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    new-instance v0, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 94
    .line 95
    const/4 v3, 0x2

    .line 96
    invoke-direct {v0, v3, p1}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    new-instance p1, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 100
    .line 101
    const/16 v4, 0x1a

    .line 102
    .line 103
    invoke-direct {p1, v4}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 104
    .line 105
    .line 106
    new-instance v4, Lkotlin/sequences/FilteringSequence;

    .line 107
    .line 108
    invoke-direct {v4, v0, v1, p1}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 109
    .line 110
    .line 111
    new-instance p1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$$ExternalSyntheticLambda1;

    .line 112
    .line 113
    invoke-direct {p1, p0, v2}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;I)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Lkotlin/sequences/FilteringSequence;

    .line 117
    .line 118
    invoke-direct {v0, v4, v1, p1}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 119
    .line 120
    .line 121
    new-instance p1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$$ExternalSyntheticLambda1;

    .line 122
    .line 123
    invoke-direct {p1, p0, v3}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;I)V

    .line 124
    .line 125
    .line 126
    new-instance v4, Lkotlin/sequences/TakeWhileSequence;

    .line 127
    .line 128
    invoke-direct {v4, v0, p1, v3}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 129
    .line 130
    .line 131
    invoke-static {v4}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 136
    .line 137
    const/4 v3, 0x0

    .line 138
    if-eqz v0, :cond_8

    .line 139
    .line 140
    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->intercept(Ljava/util/List;)Ljava/util/ArrayList;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v0, v4, v2}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->setInternal(Ljava/util/List;Z)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->scrollToFolderId:Ljava/lang/Long;

    .line 148
    .line 149
    if-nez v0, :cond_2

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    const/4 v2, -0x1

    .line 161
    if-eqz v0, :cond_5

    .line 162
    .line 163
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Lcom/fsck/k9/ui/choosefolder/FolderListItem;

    .line 168
    .line 169
    iget-wide v4, v0, Lcom/fsck/k9/ui/choosefolder/FolderListItem;->databaseId:J

    .line 170
    .line 171
    iget-object v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->scrollToFolderId:Ljava/lang/Long;

    .line 172
    .line 173
    if-nez v0, :cond_3

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 177
    .line 178
    .line 179
    move-result-wide v6

    .line 180
    cmp-long v0, v4, v6

    .line 181
    .line 182
    if-nez v0, :cond_4

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_5
    move v1, v2

    .line 189
    :goto_3
    if-eq v1, v2, :cond_7

    .line 190
    .line 191
    iget-object p1, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 192
    .line 193
    if-eqz p1, :cond_6

    .line 194
    .line 195
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_6
    const-string p0, "recyclerView"

    .line 200
    .line 201
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw v3

    .line 205
    :cond_7
    :goto_4
    iput-object v3, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->scrollToFolderId:Ljava/lang/Long;

    .line 206
    .line 207
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 208
    .line 209
    return-object p0

    .line 210
    :cond_8
    const-string p0, "itemAdapter"

    .line 211
    .line 212
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw v3

    .line 216
    nop

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

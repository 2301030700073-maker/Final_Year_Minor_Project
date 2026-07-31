.class public final synthetic Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/Object;

.field public final synthetic f$5:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/focus/FocusRequester;ZZLandroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iput-boolean p3, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->f$2:Z

    .line 12
    .line 13
    iput-boolean p4, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->f$3:Z

    .line 14
    .line 15
    iput-object p5, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p6, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->f$5:Ljava/lang/Object;

    .line 18
    .line 19
    return-void
.end method

.method public synthetic constructor <init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;Lkotlin/jvm/functions/Function1;ZLapp/k9mail/legacy/ui/folder/FolderNameFormatter;Z)V
    .locals 1

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Object;

    iput-boolean p4, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->f$2:Z

    iput-object p5, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->f$5:Ljava/lang/Object;

    iput-boolean p6, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->f$3:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->f$5:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v6, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v6, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 18
    .line 19
    move-object v9, v5

    .line 20
    check-cast v9, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 21
    .line 22
    move-object v10, v4

    .line 23
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    move-object v12, v3

    .line 26
    check-cast v12, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 27
    .line 28
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v8, v6, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;->children:Lkotlinx/collections/immutable/ImmutableList;

    .line 34
    .line 35
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const/16 v3, 0x16

    .line 38
    .line 39
    invoke-direct {v0, v3}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 40
    .line 41
    .line 42
    move-object v3, v8

    .line 43
    check-cast v3, Lkotlin/collections/AbstractCollection;

    .line 44
    .line 45
    invoke-virtual {v3}, Lkotlin/collections/AbstractCollection;->getSize()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    new-instance v4, Landroidx/compose/runtime/Latch$await$2$2;

    .line 50
    .line 51
    const/16 v5, 0xe

    .line 52
    .line 53
    invoke-direct {v4, v5, v0, v8}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3;

    .line 57
    .line 58
    const/4 v5, 0x7

    .line 59
    invoke-direct {v0, v5, v8}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3;-><init>(ILjava/util/List;)V

    .line 60
    .line 61
    .line 62
    new-instance v7, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListKt$FolderList$lambda$1$0$$inlined$items$default$4;

    .line 63
    .line 64
    iget-boolean v11, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->f$2:Z

    .line 65
    .line 66
    iget-boolean v13, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->f$3:Z

    .line 67
    .line 68
    invoke-direct/range {v7 .. v13}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListKt$FolderList$lambda$1$0$$inlined$items$default$4;-><init>(Ljava/util/List;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;Lkotlin/jvm/functions/Function1;ZLapp/k9mail/legacy/ui/folder/FolderNameFormatter;Z)V

    .line 69
    .line 70
    .line 71
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 72
    .line 73
    const v5, 0x2fd4df92

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v5, v7, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v3, v4, v0, p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 80
    .line 81
    .line 82
    return-object v1

    .line 83
    :pswitch_0
    check-cast v6, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 84
    .line 85
    check-cast v5, Landroidx/compose/ui/focus/FocusRequester;

    .line 86
    .line 87
    check-cast v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 88
    .line 89
    check-cast v3, Landroidx/compose/ui/text/input/OffsetMapping;

    .line 90
    .line 91
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    .line 92
    .line 93
    invoke-virtual {v6}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHasFocus()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_0

    .line 98
    .line 99
    invoke-static {v5}, Landroidx/compose/ui/focus/FocusRequester;->requestFocus-3ESFkO8$default(Landroidx/compose/ui/focus/FocusRequester;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->f$2:Z

    .line 104
    .line 105
    if-nez v0, :cond_1

    .line 106
    .line 107
    iget-object v0, v6, Landroidx/compose/foundation/text/LegacyTextFieldState;->keyboardController:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    .line 108
    .line 109
    if-eqz v0, :cond_1

    .line 110
    .line 111
    check-cast v0, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;->show()V

    .line 114
    .line 115
    .line 116
    :cond_1
    :goto_0
    invoke-virtual {v6}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHasFocus()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    iget-boolean p0, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;->f$3:Z

    .line 123
    .line 124
    if-eqz p0, :cond_3

    .line 125
    .line 126
    invoke-virtual {v6}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHandleState()Landroidx/compose/foundation/text/HandleState;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    sget-object v0, Landroidx/compose/foundation/text/HandleState;->Selection:Landroidx/compose/foundation/text/HandleState;

    .line 131
    .line 132
    if-eq p0, v0, :cond_2

    .line 133
    .line 134
    invoke-virtual {v6}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    if-eqz p0, :cond_3

    .line 139
    .line 140
    iget-wide v4, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 141
    .line 142
    iget-object p1, v6, Landroidx/compose/foundation/text/LegacyTextFieldState;->processor:Landroidx/compose/ui/platform/WeakCache;

    .line 143
    .line 144
    iget-object v0, v6, Landroidx/compose/foundation/text/LegacyTextFieldState;->onValueChange:Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;

    .line 145
    .line 146
    invoke-virtual {p0, v4, v5, v2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getOffsetForPosition-3MmeM6k(JZ)I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    invoke-interface {v3, p0}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    iget-object p1, p1, Landroidx/compose/ui/platform/WeakCache;->values:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 157
    .line 158
    invoke-static {p0, p0}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 159
    .line 160
    .line 161
    move-result-wide v2

    .line 162
    const/4 p0, 0x5

    .line 163
    const/4 v4, 0x0

    .line 164
    invoke-static {p1, v4, v2, v3, p0}, Landroidx/compose/ui/text/input/TextFieldValue;->copy-3r_uNRQ$default(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JI)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {v0, p0}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    iget-object p0, v6, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    .line 172
    .line 173
    iget-object p0, p0, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 174
    .line 175
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-lez p0, :cond_3

    .line 182
    .line 183
    sget-object p0, Landroidx/compose/foundation/text/HandleState;->Cursor:Landroidx/compose/foundation/text/HandleState;

    .line 184
    .line 185
    iget-object p1, v6, Landroidx/compose/foundation/text/LegacyTextFieldState;->handleState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 186
    .line 187
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_2
    invoke-virtual {v4, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->deselect-_kEHs6E$foundation(Landroidx/compose/ui/geometry/Offset;)V

    .line 192
    .line 193
    .line 194
    :cond_3
    :goto_1
    return-object v1

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

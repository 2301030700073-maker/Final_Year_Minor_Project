.class public final Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public clipboard:Landroidx/compose/ui/platform/Clipboard;

.field public coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final currentDragPosition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public dragBeginPosition:J

.field public dragBeginSelection:Landroidx/compose/ui/text/TextRange;

.field public dragTotalDistance:J

.field public final draggingHandle$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final editable$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final enabled$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public focusRequester:Landroidx/compose/ui/focus/FocusRequester;

.field public hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final hasAvailableTextToPaste$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public latestSelection:Landroidx/compose/ui/text/TextRange;

.field public final mouseSelectionObserver:Lcom/fsck/k9/mailstore/LocalFolder$12;

.field public offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

.field public oldValue:Landroidx/compose/ui/text/input/TextFieldValue;

.field public onValueChange:Lkotlin/jvm/functions/Function1;

.field public platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

.field public previousRawDragOffset:I

.field public previousSelectionLayout:Lcom/fsck/k9/mailstore/LocalFolder$12;

.field public requestAutofillAction:Lkotlin/jvm/functions/Function0;

.field public state:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public textToolbarShownViaProvider:Z

.field public final toolbarRequester:Landroidx/cardview/widget/CardView$1;

.field public final touchSelectionObserver:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;

.field public final undoManager:Landroidx/compose/foundation/text/UndoManager;

.field public final valueState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/UndoManager;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->undoManager:Landroidx/compose/foundation/text/UndoManager;

    .line 5
    .line 6
    sget-object p1, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->ValidatingEmptyOffsetMappingIdentity:Lokhttp3/internal/http2/Huffman$Node;

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 9
    .line 10
    new-instance p1, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 11
    .line 12
    const/16 v0, 0x12

    .line 13
    .line 14
    invoke-direct {p1, v0}, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->onValueChange:Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    new-instance p1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 20
    .line 21
    const/4 v0, 0x7

    .line 22
    const-wide/16 v1, 0x0

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(IJLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->valueState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 33
    .line 34
    sget-object p1, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->None:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 37
    .line 38
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iput-object v4, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->editable$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 45
    .line 46
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->enabled$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 51
    .line 52
    iput-wide v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->dragBeginPosition:J

    .line 53
    .line 54
    iput-wide v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->dragTotalDistance:J

    .line 55
    .line 56
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 61
    .line 62
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->currentDragPosition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 67
    .line 68
    const/4 p1, -0x1

    .line 69
    iput p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->previousRawDragOffset:I

    .line 70
    .line 71
    new-instance p1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 72
    .line 73
    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(IJLjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->oldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 77
    .line 78
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hasAvailableTextToPaste$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 85
    .line 86
    new-instance p1, Landroidx/cardview/widget/CardView$1;

    .line 87
    .line 88
    const/16 v0, 0x19

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    invoke-direct {p1, v0, v1}, Landroidx/cardview/widget/CardView$1;-><init>(IZ)V

    .line 92
    .line 93
    .line 94
    sget-object v0, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarHandlerState;->Uninitialized:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarHandlerState;

    .line 95
    .line 96
    iput-object v0, p1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 97
    .line 98
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->toolbarRequester:Landroidx/cardview/widget/CardView$1;

    .line 99
    .line 100
    new-instance p1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;

    .line 101
    .line 102
    invoke-direct {p1, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    .line 103
    .line 104
    .line 105
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->touchSelectionObserver:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;

    .line 106
    .line 107
    new-instance p1, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 108
    .line 109
    invoke-direct {p1, p0}, Lcom/fsck/k9/mailstore/LocalFolder$12;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    .line 110
    .line 111
    .line 112
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->mouseSelectionObserver:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 113
    .line 114
    return-void
.end method

.method public static final access$getContextTextAndSelection(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lkotlin/Pair;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getTransformedText$foundation()Landroidx/compose/ui/text/AnnotatedString;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->latestSelection:Landroidx/compose/ui/text/TextRange;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-wide v1, v1, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 19
    .line 20
    const/16 v4, 0x20

    .line 21
    .line 22
    shr-long v4, v1, v4

    .line 23
    .line 24
    long-to-int v4, v4

    .line 25
    invoke-interface {v3, v4}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 30
    .line 31
    const-wide v4, 0xffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    and-long/2addr v1, v4

    .line 37
    long-to-int v1, v1

    .line 38
    invoke-interface {p0, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-static {v3, p0}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    new-instance p0, Lkotlin/Pair;

    .line 47
    .line 48
    new-instance v3, Landroidx/compose/ui/text/TextRange;

    .line 49
    .line 50
    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 58
    return-object p0
.end method

.method public static final access$maybeSuggestSelection-OEnZFl4(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/TextRange;)V
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-wide v0, p1, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    .line 7
    .line 8
    if-nez v3, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getTransformedText$foundation()Landroidx/compose/ui/text/AnnotatedString;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    iget-object v4, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v4, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v9, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 23
    .line 24
    const/16 v2, 0x20

    .line 25
    .line 26
    shr-long v5, v0, v2

    .line 27
    .line 28
    long-to-int v2, v5

    .line 29
    invoke-interface {v9, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const-wide v5, 0xffffffffL

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    and-long/2addr v0, v5

    .line 39
    long-to-int v0, v0

    .line 40
    invoke-interface {v9, v0}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {v2, v0}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-lez v0, :cond_3

    .line 53
    .line 54
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    new-instance v2, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2$1;

    .line 65
    .line 66
    const/4 v10, 0x0

    .line 67
    move-object v8, p0

    .line 68
    move-object v7, p1

    .line 69
    invoke-direct/range {v2 .. v10}, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2$1;-><init>(Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/OffsetMapping;Lkotlin/coroutines/Continuation;)V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x3

    .line 73
    const/4 p1, 0x0

    .line 74
    invoke-static {v0, p1, p1, v2, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_0
    return-void
.end method

.method public static final access$updateSelection-jSglsI8(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;JZZLandroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;ZLandroidx/compose/ui/hapticfeedback/HapticFeedbackType;)J
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v4, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 6
    .line 7
    if-eqz v4, :cond_2a

    .line 8
    .line 9
    invoke-virtual {v4}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    goto/16 :goto_19

    .line 16
    .line 17
    :cond_0
    iget-object v5, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 18
    .line 19
    iget-wide v6, v1, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 22
    .line 23
    sget v8, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 24
    .line 25
    const/16 v8, 0x20

    .line 26
    .line 27
    shr-long v9, v6, v8

    .line 28
    .line 29
    long-to-int v9, v9

    .line 30
    invoke-interface {v5, v9}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    iget-object v9, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 35
    .line 36
    const-wide v10, 0xffffffffL

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    and-long v12, v6, v10

    .line 42
    .line 43
    long-to-int v12, v12

    .line 44
    invoke-interface {v9, v12}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    invoke-static {v5, v9}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 49
    .line 50
    .line 51
    move-result-wide v12

    .line 52
    const/4 v5, 0x0

    .line 53
    move-wide/from16 v14, p2

    .line 54
    .line 55
    invoke-virtual {v4, v14, v15, v5}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getOffsetForPosition-3MmeM6k(JZ)I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-nez p5, :cond_2

    .line 60
    .line 61
    if-eqz p4, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    shr-long v14, v12, v8

    .line 65
    .line 66
    long-to-int v14, v14

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    :goto_0
    move v14, v9

    .line 69
    :goto_1
    if-eqz p5, :cond_3

    .line 70
    .line 71
    if-eqz p4, :cond_4

    .line 72
    .line 73
    :cond_3
    move-wide v15, v10

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    move-wide v15, v10

    .line 76
    and-long v10, v12, v15

    .line 77
    .line 78
    long-to-int v10, v10

    .line 79
    goto :goto_3

    .line 80
    :goto_2
    move v10, v9

    .line 81
    :goto_3
    iget-object v11, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->previousSelectionLayout:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 82
    .line 83
    move/from16 p1, v8

    .line 84
    .line 85
    const/4 v8, -0x1

    .line 86
    if-nez p4, :cond_6

    .line 87
    .line 88
    if-eqz v11, :cond_6

    .line 89
    .line 90
    move-wide/from16 p2, v15

    .line 91
    .line 92
    iget v15, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->previousRawDragOffset:I

    .line 93
    .line 94
    if-ne v15, v8, :cond_5

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_5
    move v8, v15

    .line 98
    goto :goto_4

    .line 99
    :cond_6
    move-wide/from16 p2, v15

    .line 100
    .line 101
    :goto_4
    iget-object v4, v4, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 102
    .line 103
    new-instance v15, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 104
    .line 105
    if-eqz p4, :cond_7

    .line 106
    .line 107
    move-object v13, v1

    .line 108
    move-wide/from16 v19, v6

    .line 109
    .line 110
    const/4 v5, 0x0

    .line 111
    goto :goto_5

    .line 112
    :cond_7
    new-instance v5, Landroidx/compose/foundation/text/selection/Selection;

    .line 113
    .line 114
    move-wide/from16 v17, v12

    .line 115
    .line 116
    new-instance v12, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 117
    .line 118
    move-wide/from16 v19, v6

    .line 119
    .line 120
    shr-long v6, v17, p1

    .line 121
    .line 122
    long-to-int v6, v6

    .line 123
    invoke-static {v4, v6}, Lcom/fsck/k9/sasl/OAuthBearer;->getTextDirectionForOffset(Landroidx/compose/ui/text/TextLayoutResult;I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    move-object v13, v1

    .line 128
    const-wide/16 v0, 0x1

    .line 129
    .line 130
    invoke-direct {v12, v7, v6, v0, v1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;-><init>(Landroidx/compose/ui/text/style/ResolvedTextDirection;IJ)V

    .line 131
    .line 132
    .line 133
    new-instance v6, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 134
    .line 135
    and-long v0, v17, p2

    .line 136
    .line 137
    long-to-int v0, v0

    .line 138
    invoke-static {v4, v0}, Lcom/fsck/k9/sasl/OAuthBearer;->getTextDirectionForOffset(Landroidx/compose/ui/text/TextLayoutResult;I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const-wide/16 v2, 0x1

    .line 143
    .line 144
    invoke-direct {v6, v1, v0, v2, v3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;-><init>(Landroidx/compose/ui/text/style/ResolvedTextDirection;IJ)V

    .line 145
    .line 146
    .line 147
    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-direct {v5, v12, v6, v0}, Landroidx/compose/foundation/text/selection/Selection;-><init>(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)V

    .line 152
    .line 153
    .line 154
    :goto_5
    new-instance v0, Landroidx/collection/CircularArray;

    .line 155
    .line 156
    invoke-direct {v0, v14, v10, v8, v4}, Landroidx/collection/CircularArray;-><init>(IIILandroidx/compose/ui/text/TextLayoutResult;)V

    .line 157
    .line 158
    .line 159
    move/from16 v2, p5

    .line 160
    .line 161
    invoke-direct {v15, v2, v5, v0}, Lcom/fsck/k9/mailstore/LocalFolder$12;-><init>(ZLandroidx/compose/foundation/text/selection/Selection;Landroidx/collection/CircularArray;)V

    .line 162
    .line 163
    .line 164
    if-eqz v5, :cond_9

    .line 165
    .line 166
    if-eqz v11, :cond_9

    .line 167
    .line 168
    iget-boolean v0, v11, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$value:Z

    .line 169
    .line 170
    if-ne v2, v0, :cond_9

    .line 171
    .line 172
    iget-object v0, v11, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$flags:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v0, Landroidx/collection/CircularArray;

    .line 175
    .line 176
    iget v1, v0, Landroidx/collection/CircularArray;->head:I

    .line 177
    .line 178
    if-ne v14, v1, :cond_9

    .line 179
    .line 180
    iget v0, v0, Landroidx/collection/CircularArray;->tail:I

    .line 181
    .line 182
    if-eq v10, v0, :cond_8

    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_8
    move-wide/from16 v4, v19

    .line 186
    .line 187
    goto/16 :goto_12

    .line 188
    .line 189
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    .line 190
    .line 191
    iput-object v15, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->previousSelectionLayout:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 192
    .line 193
    iput v9, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->previousRawDragOffset:I

    .line 194
    .line 195
    move-object/from16 v1, p6

    .line 196
    .line 197
    iget v1, v1, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 198
    .line 199
    sget-object v2, Landroidx/compose/foundation/text/selection/CrossStatus;->CROSSED:Landroidx/compose/foundation/text/selection/CrossStatus;

    .line 200
    .line 201
    const/4 v3, 0x1

    .line 202
    iget-object v4, v15, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$flags:Ljava/lang/Object;

    .line 203
    .line 204
    packed-switch v1, :pswitch_data_0

    .line 205
    .line 206
    .line 207
    iget-object v1, v15, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$messages:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v1, Landroidx/compose/foundation/text/selection/Selection;

    .line 210
    .line 211
    move-object v5, v4

    .line 212
    check-cast v5, Landroidx/collection/CircularArray;

    .line 213
    .line 214
    if-nez v1, :cond_a

    .line 215
    .line 216
    sget-object v1, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->INSTANCE$1:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    .line 217
    .line 218
    invoke-static {v15, v1}, Landroidx/core/util/DebugUtils;->access$adjustToBoundaries(Lcom/fsck/k9/mailstore/LocalFolder$12;Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;)Landroidx/compose/foundation/text/selection/Selection;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    goto/16 :goto_11

    .line 223
    .line 224
    :cond_a
    iget-object v6, v1, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 225
    .line 226
    iget-object v7, v1, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 227
    .line 228
    iget-boolean v8, v15, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$value:Z

    .line 229
    .line 230
    if-eqz v8, :cond_b

    .line 231
    .line 232
    invoke-static {v15, v5, v7}, Landroidx/core/util/DebugUtils;->access$updateSelectionBoundary(Lcom/fsck/k9/mailstore/LocalFolder$12;Landroidx/collection/CircularArray;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    move-object v8, v7

    .line 237
    move-object v7, v6

    .line 238
    move-object v6, v8

    .line 239
    move-object v8, v5

    .line 240
    goto :goto_7

    .line 241
    :cond_b
    invoke-static {v15, v5, v6}, Landroidx/core/util/DebugUtils;->access$updateSelectionBoundary(Lcom/fsck/k9/mailstore/LocalFolder$12;Landroidx/collection/CircularArray;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    move-object v8, v7

    .line 246
    move-object v7, v5

    .line 247
    :goto_7
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    if-eqz v5, :cond_c

    .line 252
    .line 253
    goto/16 :goto_11

    .line 254
    .line 255
    :cond_c
    invoke-virtual {v15}, Lcom/fsck/k9/mailstore/LocalFolder$12;->getCrossStatus()Landroidx/compose/foundation/text/selection/CrossStatus;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    if-eq v1, v2, :cond_e

    .line 260
    .line 261
    invoke-virtual {v15}, Lcom/fsck/k9/mailstore/LocalFolder$12;->getCrossStatus()Landroidx/compose/foundation/text/selection/CrossStatus;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    sget-object v2, Landroidx/compose/foundation/text/selection/CrossStatus;->COLLAPSED:Landroidx/compose/foundation/text/selection/CrossStatus;

    .line 266
    .line 267
    if-ne v1, v2, :cond_d

    .line 268
    .line 269
    iget v1, v8, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 270
    .line 271
    iget v2, v7, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 272
    .line 273
    if-le v1, v2, :cond_d

    .line 274
    .line 275
    goto :goto_8

    .line 276
    :cond_d
    const/4 v1, 0x0

    .line 277
    goto :goto_9

    .line 278
    :cond_e
    :goto_8
    move v1, v3

    .line 279
    :goto_9
    new-instance v2, Landroidx/compose/foundation/text/selection/Selection;

    .line 280
    .line 281
    invoke-direct {v2, v8, v7, v1}, Landroidx/compose/foundation/text/selection/Selection;-><init>(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)V

    .line 282
    .line 283
    .line 284
    check-cast v4, Landroidx/collection/CircularArray;

    .line 285
    .line 286
    iget-object v1, v2, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 287
    .line 288
    iget-wide v5, v1, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->selectableId:J

    .line 289
    .line 290
    iget-object v7, v2, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 291
    .line 292
    iget-wide v8, v7, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->selectableId:J

    .line 293
    .line 294
    cmp-long v5, v5, v8

    .line 295
    .line 296
    if-nez v5, :cond_f

    .line 297
    .line 298
    iget v5, v1, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 299
    .line 300
    iget v6, v7, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 301
    .line 302
    if-ne v5, v6, :cond_1c

    .line 303
    .line 304
    goto :goto_c

    .line 305
    :cond_f
    iget-boolean v5, v2, Landroidx/compose/foundation/text/selection/Selection;->handlesCrossed:Z

    .line 306
    .line 307
    if-eqz v5, :cond_10

    .line 308
    .line 309
    move-object v6, v1

    .line 310
    goto :goto_a

    .line 311
    :cond_10
    move-object v6, v7

    .line 312
    :goto_a
    iget v6, v6, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 313
    .line 314
    if-eqz v6, :cond_11

    .line 315
    .line 316
    goto/16 :goto_f

    .line 317
    .line 318
    :cond_11
    if-eqz v5, :cond_12

    .line 319
    .line 320
    move-object v5, v7

    .line 321
    goto :goto_b

    .line 322
    :cond_12
    move-object v5, v1

    .line 323
    :goto_b
    iget-object v6, v4, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v6, Landroidx/compose/ui/text/TextLayoutResult;

    .line 326
    .line 327
    iget-object v6, v6, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 328
    .line 329
    iget-object v6, v6, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 330
    .line 331
    iget-object v6, v6, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    iget v5, v5, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 338
    .line 339
    if-eq v6, v5, :cond_13

    .line 340
    .line 341
    goto/16 :goto_f

    .line 342
    .line 343
    :cond_13
    :goto_c
    iget-object v5, v15, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$messages:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v5, Landroidx/compose/foundation/text/selection/Selection;

    .line 346
    .line 347
    iget-object v6, v4, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v6, Landroidx/compose/ui/text/TextLayoutResult;

    .line 350
    .line 351
    iget-object v6, v6, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 352
    .line 353
    iget-object v6, v6, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 354
    .line 355
    iget-object v6, v6, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 356
    .line 357
    if-eqz v5, :cond_1c

    .line 358
    .line 359
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 360
    .line 361
    .line 362
    move-result v6

    .line 363
    if-nez v6, :cond_14

    .line 364
    .line 365
    goto/16 :goto_f

    .line 366
    .line 367
    :cond_14
    iget-boolean v6, v15, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$value:Z

    .line 368
    .line 369
    iget-object v8, v4, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v8, Landroidx/compose/ui/text/TextLayoutResult;

    .line 372
    .line 373
    iget-object v8, v8, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 374
    .line 375
    iget-object v8, v8, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 376
    .line 377
    iget-object v8, v8, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 378
    .line 379
    iget v9, v4, Landroidx/collection/CircularArray;->head:I

    .line 380
    .line 381
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 382
    .line 383
    .line 384
    move-result v10

    .line 385
    const/4 v11, 0x2

    .line 386
    if-nez v9, :cond_16

    .line 387
    .line 388
    const/4 v12, 0x0

    .line 389
    invoke-static {v8, v12}, Landroidx/compose/foundation/text/BasicTextKt;->findFollowingBreak(Ljava/lang/String;I)I

    .line 390
    .line 391
    .line 392
    move-result v5

    .line 393
    if-eqz v6, :cond_15

    .line 394
    .line 395
    invoke-static {v1, v4, v5}, Landroidx/core/util/DebugUtils;->changeOffset(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/collection/CircularArray;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    const/4 v14, 0x0

    .line 400
    invoke-static {v2, v1, v14, v3, v11}, Landroidx/compose/foundation/text/selection/Selection;->copy$default(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZI)Landroidx/compose/foundation/text/selection/Selection;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    goto/16 :goto_11

    .line 405
    .line 406
    :cond_15
    const/4 v14, 0x0

    .line 407
    invoke-static {v7, v4, v5}, Landroidx/core/util/DebugUtils;->changeOffset(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/collection/CircularArray;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-static {v2, v14, v1, v12, v3}, Landroidx/compose/foundation/text/selection/Selection;->copy$default(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZI)Landroidx/compose/foundation/text/selection/Selection;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    goto/16 :goto_11

    .line 416
    .line 417
    :cond_16
    const/4 v12, 0x0

    .line 418
    const/4 v14, 0x0

    .line 419
    if-ne v9, v10, :cond_18

    .line 420
    .line 421
    invoke-static {v8, v10}, Landroidx/compose/foundation/text/BasicTextKt;->findPrecedingBreak(Ljava/lang/String;I)I

    .line 422
    .line 423
    .line 424
    move-result v5

    .line 425
    if-eqz v6, :cond_17

    .line 426
    .line 427
    invoke-static {v1, v4, v5}, Landroidx/core/util/DebugUtils;->changeOffset(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/collection/CircularArray;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-static {v2, v1, v14, v12, v11}, Landroidx/compose/foundation/text/selection/Selection;->copy$default(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZI)Landroidx/compose/foundation/text/selection/Selection;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    goto :goto_11

    .line 436
    :cond_17
    invoke-static {v7, v4, v5}, Landroidx/core/util/DebugUtils;->changeOffset(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/collection/CircularArray;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    invoke-static {v2, v14, v1, v3, v3}, Landroidx/compose/foundation/text/selection/Selection;->copy$default(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZI)Landroidx/compose/foundation/text/selection/Selection;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    goto :goto_11

    .line 445
    :cond_18
    iget-boolean v5, v5, Landroidx/compose/foundation/text/selection/Selection;->handlesCrossed:Z

    .line 446
    .line 447
    if-ne v5, v3, :cond_19

    .line 448
    .line 449
    move v12, v3

    .line 450
    goto :goto_d

    .line 451
    :cond_19
    const/4 v12, 0x0

    .line 452
    :goto_d
    xor-int v5, v6, v12

    .line 453
    .line 454
    if-eqz v5, :cond_1a

    .line 455
    .line 456
    invoke-static {v8, v9}, Landroidx/compose/foundation/text/BasicTextKt;->findPrecedingBreak(Ljava/lang/String;I)I

    .line 457
    .line 458
    .line 459
    move-result v5

    .line 460
    goto :goto_e

    .line 461
    :cond_1a
    invoke-static {v8, v9}, Landroidx/compose/foundation/text/BasicTextKt;->findFollowingBreak(Ljava/lang/String;I)I

    .line 462
    .line 463
    .line 464
    move-result v5

    .line 465
    :goto_e
    if-eqz v6, :cond_1b

    .line 466
    .line 467
    invoke-static {v1, v4, v5}, Landroidx/core/util/DebugUtils;->changeOffset(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/collection/CircularArray;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    const/4 v14, 0x0

    .line 472
    invoke-static {v2, v1, v14, v12, v11}, Landroidx/compose/foundation/text/selection/Selection;->copy$default(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZI)Landroidx/compose/foundation/text/selection/Selection;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    goto :goto_11

    .line 477
    :cond_1b
    const/4 v14, 0x0

    .line 478
    invoke-static {v7, v4, v5}, Landroidx/core/util/DebugUtils;->changeOffset(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/collection/CircularArray;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    invoke-static {v2, v14, v1, v12, v3}, Landroidx/compose/foundation/text/selection/Selection;->copy$default(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZI)Landroidx/compose/foundation/text/selection/Selection;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    goto :goto_11

    .line 487
    :cond_1c
    :goto_f
    move-object v1, v2

    .line 488
    goto :goto_11

    .line 489
    :pswitch_0
    sget-object v1, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->INSTANCE:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    .line 490
    .line 491
    invoke-static {v15, v1}, Landroidx/core/util/DebugUtils;->access$adjustToBoundaries(Lcom/fsck/k9/mailstore/LocalFolder$12;Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;)Landroidx/compose/foundation/text/selection/Selection;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    goto :goto_11

    .line 496
    :pswitch_1
    sget-object v1, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->INSTANCE$1:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    .line 497
    .line 498
    invoke-static {v15, v1}, Landroidx/core/util/DebugUtils;->access$adjustToBoundaries(Lcom/fsck/k9/mailstore/LocalFolder$12;Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;)Landroidx/compose/foundation/text/selection/Selection;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    goto :goto_11

    .line 503
    :pswitch_2
    new-instance v1, Landroidx/compose/foundation/text/selection/Selection;

    .line 504
    .line 505
    check-cast v4, Landroidx/collection/CircularArray;

    .line 506
    .line 507
    iget v5, v4, Landroidx/collection/CircularArray;->head:I

    .line 508
    .line 509
    invoke-virtual {v4, v5}, Landroidx/collection/CircularArray;->anchorForOffset(I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 510
    .line 511
    .line 512
    move-result-object v5

    .line 513
    iget v6, v4, Landroidx/collection/CircularArray;->tail:I

    .line 514
    .line 515
    invoke-virtual {v4, v6}, Landroidx/collection/CircularArray;->anchorForOffset(I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    invoke-virtual {v15}, Lcom/fsck/k9/mailstore/LocalFolder$12;->getCrossStatus()Landroidx/compose/foundation/text/selection/CrossStatus;

    .line 520
    .line 521
    .line 522
    move-result-object v6

    .line 523
    if-ne v6, v2, :cond_1d

    .line 524
    .line 525
    move v12, v3

    .line 526
    goto :goto_10

    .line 527
    :cond_1d
    const/4 v12, 0x0

    .line 528
    :goto_10
    invoke-direct {v1, v5, v4, v12}, Landroidx/compose/foundation/text/selection/Selection;-><init>(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)V

    .line 529
    .line 530
    .line 531
    :goto_11
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 532
    .line 533
    iget-object v4, v1, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 534
    .line 535
    iget v4, v4, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 536
    .line 537
    invoke-interface {v2, v4}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    .line 538
    .line 539
    .line 540
    move-result v2

    .line 541
    iget-object v4, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 542
    .line 543
    iget-object v1, v1, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 544
    .line 545
    iget v1, v1, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 546
    .line 547
    invoke-interface {v4, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    .line 548
    .line 549
    .line 550
    move-result v1

    .line 551
    invoke-static {v2, v1}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 552
    .line 553
    .line 554
    move-result-wide v1

    .line 555
    move-wide/from16 v4, v19

    .line 556
    .line 557
    invoke-static {v1, v2, v4, v5}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    .line 558
    .line 559
    .line 560
    move-result v6

    .line 561
    if-eqz v6, :cond_1e

    .line 562
    .line 563
    :goto_12
    return-wide v4

    .line 564
    :cond_1e
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    .line 565
    .line 566
    .line 567
    move-result v6

    .line 568
    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    .line 569
    .line 570
    .line 571
    move-result v7

    .line 572
    if-eq v6, v7, :cond_1f

    .line 573
    .line 574
    and-long v6, v1, p2

    .line 575
    .line 576
    long-to-int v6, v6

    .line 577
    shr-long v7, v1, p1

    .line 578
    .line 579
    long-to-int v7, v7

    .line 580
    invoke-static {v6, v7}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 581
    .line 582
    .line 583
    move-result-wide v6

    .line 584
    invoke-static {v6, v7, v4, v5}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    .line 585
    .line 586
    .line 587
    move-result v6

    .line 588
    if-eqz v6, :cond_1f

    .line 589
    .line 590
    move v12, v3

    .line 591
    goto :goto_13

    .line 592
    :cond_1f
    const/4 v12, 0x0

    .line 593
    :goto_13
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 594
    .line 595
    .line 596
    move-result v6

    .line 597
    if-eqz v6, :cond_20

    .line 598
    .line 599
    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 600
    .line 601
    .line 602
    move-result v4

    .line 603
    if-eqz v4, :cond_20

    .line 604
    .line 605
    move v4, v3

    .line 606
    goto :goto_14

    .line 607
    :cond_20
    const/4 v4, 0x0

    .line 608
    :goto_14
    if-eqz p7, :cond_21

    .line 609
    .line 610
    iget-object v5, v13, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 611
    .line 612
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 613
    .line 614
    .line 615
    move-result v5

    .line 616
    if-lez v5, :cond_21

    .line 617
    .line 618
    if-nez v12, :cond_21

    .line 619
    .line 620
    if-nez v4, :cond_21

    .line 621
    .line 622
    if-eqz p8, :cond_21

    .line 623
    .line 624
    iget-object v4, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 625
    .line 626
    if-eqz v4, :cond_21

    .line 627
    .line 628
    move-object/from16 v5, p8

    .line 629
    .line 630
    iget v5, v5, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->value:I

    .line 631
    .line 632
    check-cast v4, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;

    .line 633
    .line 634
    invoke-virtual {v4, v5}, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;->performHapticFeedback-CdsT49E(I)V

    .line 635
    .line 636
    .line 637
    :cond_21
    invoke-static {v13, v1, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->createTextFieldValue-FDrldGo(Landroidx/compose/ui/text/AnnotatedString;J)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 638
    .line 639
    .line 640
    move-result-object v4

    .line 641
    iget-object v5, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->onValueChange:Lkotlin/jvm/functions/Function1;

    .line 642
    .line 643
    invoke-interface {v5, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    new-instance v4, Landroidx/compose/ui/text/TextRange;

    .line 647
    .line 648
    invoke-direct {v4, v1, v2}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 649
    .line 650
    .line 651
    iput-object v4, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->latestSelection:Landroidx/compose/ui/text/TextRange;

    .line 652
    .line 653
    if-nez p7, :cond_22

    .line 654
    .line 655
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 656
    .line 657
    .line 658
    move-result v4

    .line 659
    xor-int/2addr v4, v3

    .line 660
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->updateFloatingToolbar(Z)V

    .line 661
    .line 662
    .line 663
    :cond_22
    iget-object v4, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 664
    .line 665
    if-eqz v4, :cond_23

    .line 666
    .line 667
    iget-object v4, v4, Landroidx/compose/foundation/text/LegacyTextFieldState;->isInTouchMode$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 668
    .line 669
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 670
    .line 671
    .line 672
    move-result-object v5

    .line 673
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 674
    .line 675
    .line 676
    :cond_23
    iget-object v4, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 677
    .line 678
    if-eqz v4, :cond_25

    .line 679
    .line 680
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 681
    .line 682
    .line 683
    move-result v5

    .line 684
    if-nez v5, :cond_24

    .line 685
    .line 686
    invoke-static {v0, v3}, Landroidx/work/Data$Companion;->isSelectionHandleInVisibleBound(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)Z

    .line 687
    .line 688
    .line 689
    move-result v5

    .line 690
    if-eqz v5, :cond_24

    .line 691
    .line 692
    move v12, v3

    .line 693
    goto :goto_15

    .line 694
    :cond_24
    const/4 v12, 0x0

    .line 695
    :goto_15
    iget-object v4, v4, Landroidx/compose/foundation/text/LegacyTextFieldState;->showSelectionHandleStart$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 696
    .line 697
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 698
    .line 699
    .line 700
    move-result-object v5

    .line 701
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 702
    .line 703
    .line 704
    :cond_25
    iget-object v4, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 705
    .line 706
    if-eqz v4, :cond_27

    .line 707
    .line 708
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 709
    .line 710
    .line 711
    move-result v5

    .line 712
    const/4 v12, 0x0

    .line 713
    if-nez v5, :cond_26

    .line 714
    .line 715
    invoke-static {v0, v12}, Landroidx/work/Data$Companion;->isSelectionHandleInVisibleBound(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)Z

    .line 716
    .line 717
    .line 718
    move-result v5

    .line 719
    if-eqz v5, :cond_26

    .line 720
    .line 721
    move v5, v3

    .line 722
    goto :goto_16

    .line 723
    :cond_26
    move v5, v12

    .line 724
    :goto_16
    iget-object v4, v4, Landroidx/compose/foundation/text/LegacyTextFieldState;->showSelectionHandleEnd$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 725
    .line 726
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 727
    .line 728
    .line 729
    move-result-object v5

    .line 730
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 731
    .line 732
    .line 733
    goto :goto_17

    .line 734
    :cond_27
    const/4 v12, 0x0

    .line 735
    :goto_17
    iget-object v4, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 736
    .line 737
    if-eqz v4, :cond_29

    .line 738
    .line 739
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 740
    .line 741
    .line 742
    move-result v5

    .line 743
    if-eqz v5, :cond_28

    .line 744
    .line 745
    invoke-static {v0, v3}, Landroidx/work/Data$Companion;->isSelectionHandleInVisibleBound(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)Z

    .line 746
    .line 747
    .line 748
    move-result v0

    .line 749
    if-eqz v0, :cond_28

    .line 750
    .line 751
    move v5, v3

    .line 752
    goto :goto_18

    .line 753
    :cond_28
    move v5, v12

    .line 754
    :goto_18
    iget-object v0, v4, Landroidx/compose/foundation/text/LegacyTextFieldState;->showCursorHandle$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 755
    .line 756
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 757
    .line 758
    .line 759
    move-result-object v3

    .line 760
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 761
    .line 762
    .line 763
    :cond_29
    return-wide v1

    .line 764
    :cond_2a
    :goto_19
    sget-wide v0, Landroidx/compose/ui/text/TextRange;->Zero:J

    .line 765
    .line 766
    return-wide v0

    .line 767
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createTextFieldValue-FDrldGo(Landroidx/compose/ui/text/AnnotatedString;J)Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public final copy$foundation(Z)Lkotlinx/coroutines/StandaloneCoroutine;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$copy$1;

    .line 7
    .line 8
    invoke-direct {v2, p0, p1, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$copy$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    sget-object p1, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 13
    .line 14
    invoke-static {v0, v1, p1, v2, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    return-object v1
.end method

.method public final cut$foundation()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v1, p0, v3, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;I)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    sget-object v2, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 14
    .line 15
    invoke-static {v0, v3, v2, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final deselect-_kEHs6E$foundation(Landroidx/compose/ui/geometry/Offset;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v0, v1

    .line 24
    :goto_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 29
    .line 30
    iget-wide v3, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    invoke-virtual {v0, v3, v4, v5}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getOffsetForPosition-3MmeM6k(JZ)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-interface {v2, v0}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-wide v2, v0, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 47
    .line 48
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v0, v0}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    const/4 v0, 0x5

    .line 61
    invoke-static {v2, v1, v3, v4, v0}, Landroidx/compose/ui/text/input/TextFieldValue;->copy-3r_uNRQ$default(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JI)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->onValueChange:Lkotlin/jvm/functions/Function1;

    .line 66
    .line 67
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    iget-wide v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 71
    .line 72
    new-instance v2, Landroidx/compose/ui/text/TextRange;

    .line 73
    .line 74
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 75
    .line 76
    .line 77
    iput-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->latestSelection:Landroidx/compose/ui/text/TextRange;

    .line 78
    .line 79
    :cond_2
    if-eqz p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object p1, p1, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 86
    .line 87
    iget-object p1, p1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-lez p1, :cond_3

    .line 94
    .line 95
    sget-object p1, Landroidx/compose/foundation/text/HandleState;->Cursor:Landroidx/compose/foundation/text/HandleState;

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    sget-object p1, Landroidx/compose/foundation/text/HandleState;->None:Landroidx/compose/foundation/text/HandleState;

    .line 99
    .line 100
    :goto_2
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setHandleState(Landroidx/compose/foundation/text/HandleState;)V

    .line 101
    .line 102
    .line 103
    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->updateFloatingToolbar(Z)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final enterSelectionMode$foundation(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHasFocus()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusRequester;->requestFocus-3ESFkO8$default(Landroidx/compose/ui/focus/FocusRequester;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->oldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->updateFloatingToolbar(Z)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Landroidx/compose/foundation/text/HandleState;->Selection:Landroidx/compose/foundation/text/HandleState;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setHandleState(Landroidx/compose/foundation/text/HandleState;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final getCurrentDragPosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->currentDragPosition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getEditable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->editable$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final getEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->enabled$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final getHandlePosition-tuRUvjQ$foundation(Z)J
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_a

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getTransformedText$foundation()Landroidx/compose/ui/text/AnnotatedString;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto/16 :goto_6

    .line 22
    .line 23
    :cond_0
    iget-object v3, v0, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 24
    .line 25
    iget-object v3, v3, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 26
    .line 27
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    goto/16 :goto_6

    .line 38
    .line 39
    :cond_1
    const-wide v2, 0xffffffffL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    const/16 v4, 0x20

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget-wide v5, v5, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 53
    .line 54
    sget v7, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 55
    .line 56
    shr-long/2addr v5, v4

    .line 57
    :goto_0
    long-to-int v5, v5

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget-wide v5, v5, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 60
    .line 61
    sget v7, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 62
    .line 63
    and-long/2addr v5, v2

    .line 64
    goto :goto_0

    .line 65
    :goto_1
    iget-object v6, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 66
    .line 67
    invoke-interface {v6, v5}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    iget-wide v6, p0, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 76
    .line 77
    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    iget-wide v6, v0, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    .line 82
    .line 83
    invoke-virtual {v1, v5}, Landroidx/compose/ui/text/MultiParagraph;->getLineForOffset(I)I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    iget v9, v1, Landroidx/compose/ui/text/MultiParagraph;->lineCount:I

    .line 88
    .line 89
    if-lt v8, v9, :cond_3

    .line 90
    .line 91
    goto/16 :goto_6

    .line 92
    .line 93
    :cond_3
    const/4 v9, 0x0

    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    if-eqz p0, :cond_5

    .line 97
    .line 98
    :cond_4
    if-nez p1, :cond_6

    .line 99
    .line 100
    if-eqz p0, :cond_6

    .line 101
    .line 102
    :cond_5
    move p0, v5

    .line 103
    goto :goto_2

    .line 104
    :cond_6
    add-int/lit8 p0, v5, -0x1

    .line 105
    .line 106
    invoke-static {p0, v9}, Ljava/lang/Math;->max(II)I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    :goto_2
    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {v0, v5}, Landroidx/compose/ui/text/TextLayoutResult;->getParagraphDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-ne p0, p1, :cond_7

    .line 119
    .line 120
    const/4 p0, 0x1

    .line 121
    goto :goto_3

    .line 122
    :cond_7
    move p0, v9

    .line 123
    :goto_3
    invoke-virtual {v1, v5}, Landroidx/compose/ui/text/MultiParagraph;->requireIndexInRangeInclusiveEnd(I)V

    .line 124
    .line 125
    .line 126
    iget-object p1, v1, Landroidx/compose/ui/text/MultiParagraph;->intrinsics:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 127
    .line 128
    iget-object p1, p1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString;

    .line 131
    .line 132
    iget-object p1, p1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    iget-object v0, v1, Landroidx/compose/ui/text/MultiParagraph;->paragraphInfoList:Ljava/util/ArrayList;

    .line 139
    .line 140
    if-ne v5, p1, :cond_8

    .line 141
    .line 142
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->getLastIndex(Ljava/util/List;)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    goto :goto_4

    .line 147
    :cond_8
    invoke-static {v5, v0}, Landroidx/compose/ui/text/ParagraphKt;->findParagraphByIndex(ILjava/util/List;)I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    :goto_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Landroidx/compose/ui/text/ParagraphInfo;

    .line 156
    .line 157
    iget-object v0, p1, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    .line 158
    .line 159
    invoke-virtual {p1, v5}, Landroidx/compose/ui/text/ParagraphInfo;->toLocalIndex(I)I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    iget-object v0, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 164
    .line 165
    if-eqz p0, :cond_9

    .line 166
    .line 167
    invoke-virtual {v0, p1, v9}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal(IZ)F

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    goto :goto_5

    .line 172
    :cond_9
    invoke-virtual {v0, p1, v9}, Landroidx/compose/ui/text/android/TextLayout;->getSecondaryHorizontal(IZ)F

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    :goto_5
    shr-long v9, v6, v4

    .line 177
    .line 178
    long-to-int p1, v9

    .line 179
    int-to-float p1, p1

    .line 180
    const/4 v0, 0x0

    .line 181
    invoke-static {p0, v0, p1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    invoke-virtual {v1, v8}, Landroidx/compose/ui/text/MultiParagraph;->getLineBottom(I)F

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    and-long/2addr v6, v2

    .line 190
    long-to-int v1, v6

    .line 191
    int-to-float v1, v1

    .line 192
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    int-to-long v0, p0

    .line 201
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    int-to-long p0, p0

    .line 206
    shl-long/2addr v0, v4

    .line 207
    and-long/2addr p0, v2

    .line 208
    or-long/2addr p0, v0

    .line 209
    return-wide p0

    .line 210
    :cond_a
    :goto_6
    const-wide p0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    return-wide p0
.end method

.method public final getTransformedText$foundation()Landroidx/compose/ui/text/AnnotatedString;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->valueState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 8
    .line 9
    return-object p0
.end method

.method public final hideSelectionToolbar$foundation()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->toolbarRequester:Landroidx/cardview/widget/CardView$1;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;->textToolbarJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;->textToolbarJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public final paste$foundation()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v1, p0, v3, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;I)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    sget-object v2, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 14
    .line 15
    invoke-static {v0, v3, v2, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final setHandleState(Landroidx/compose/foundation/text/HandleState;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHandleState()Landroidx/compose/foundation/text/HandleState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-ne v0, p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    :cond_0
    if-eqz p0, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->handleState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final showSelectionToolbar$foundation()V
    .locals 6

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v2, v1

    .line 14
    :goto_0
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_6

    .line 23
    .line 24
    iget-object v4, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    iget-object v4, v4, Landroidx/compose/foundation/text/LegacyTextFieldState;->isInTouchMode$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 29
    .line 30
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_1
    invoke-static {v0, v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->toolbarRequester:Landroidx/cardview/widget/CardView$1;

    .line 47
    .line 48
    iget-object v0, p0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarHandlerState;

    .line 51
    .line 52
    sget-object v2, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarHandlerState;->Uninitialized:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarHandlerState;

    .line 53
    .line 54
    if-eq v0, v2, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const-string v0, "ToolbarRequester is not initialized."

    .line 58
    .line 59
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    iget-object p0, p0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;

    .line 65
    .line 66
    if-eqz p0, :cond_5

    .line 67
    .line 68
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    iget-object v0, p0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;->textToolbarJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->isActive()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-ne v0, v2, :cond_3

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    sget-object v0, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProviderKt;->LocalTextContextMenuToolbarProvider:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 85
    .line 86
    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProvider;

    .line 91
    .line 92
    if-nez v0, :cond_4

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    new-instance v4, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;

    .line 100
    .line 101
    const/16 v5, 0x16

    .line 102
    .line 103
    invoke-direct {v4, p0, v0, v1, v5}, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 104
    .line 105
    .line 106
    sget-object v0, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 107
    .line 108
    invoke-static {v3, v1, v0, v4, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;->textToolbarJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 113
    .line 114
    :cond_5
    :goto_2
    return-void

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    goto :goto_4

    .line 117
    :cond_6
    :goto_3
    invoke-static {v0, v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :goto_4
    invoke-static {v0, v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method public final updateClipboardEntry$foundation(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$updateClipboardEntry$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$updateClipboardEntry$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$updateClipboardEntry$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$updateClipboardEntry$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$updateClipboardEntry$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$updateClipboardEntry$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$updateClipboardEntry$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$updateClipboardEntry$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object p0, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$updateClipboardEntry$1;->L$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    .line 51
    .line 52
    if-eqz p1, :cond_5

    .line 53
    .line 54
    iput-object p0, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$updateClipboardEntry$1;->L$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 55
    .line 56
    iput v2, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$updateClipboardEntry$1;->label:I

    .line 57
    .line 58
    check-cast p1, Landroidx/compose/ui/platform/AndroidClipboard;

    .line 59
    .line 60
    iget-object p1, p1, Landroidx/compose/ui/platform/AndroidClipboard;->androidClipboardManager:Landroidx/compose/ui/platform/AndroidClipboardManager;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidClipboardManager;->getClipboardManager()Landroid/content/ClipboardManager;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const/4 v0, 0x0

    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    const-string v1, "text/*"

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-ne p1, v2, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    move v2, v0

    .line 83
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 88
    .line 89
    if-ne p1, v0, :cond_4

    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_4
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hasAvailableTextToPaste$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 103
    .line 104
    return-object p0
.end method

.method public final updateFloatingToolbar(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->showFloatingToolbar$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->showSelectionToolbar$foundation()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hideSelectionToolbar$foundation()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

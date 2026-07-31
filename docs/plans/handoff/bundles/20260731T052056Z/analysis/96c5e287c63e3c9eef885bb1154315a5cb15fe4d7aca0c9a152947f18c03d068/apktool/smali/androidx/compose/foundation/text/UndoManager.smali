.class public final Landroidx/compose/foundation/text/UndoManager;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public forceNextSnapshot:Z

.field public lastSnapshot:Ljava/lang/Long;

.field public redoStack:Landroidx/cardview/widget/CardView$1;

.field public storedCharacters:I

.field public undoStack:Landroidx/cardview/widget/CardView$1;


# virtual methods
.method public final makeSnapshot(Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Landroidx/compose/foundation/text/UndoManager;->forceNextSnapshot:Z

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/foundation/text/UndoManager;->undoStack:Landroidx/cardview/widget/CardView$1;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, v2

    .line 17
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/compose/ui/text/input/TextFieldValue;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    goto :goto_5

    .line 24
    :cond_1
    iget-object v1, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/compose/foundation/text/UndoManager;->undoStack:Landroidx/cardview/widget/CardView$1;

    .line 27
    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    iget-object v3, v3, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v3, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 33
    .line 34
    iget-object v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 35
    .line 36
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move-object v3, v2

    .line 40
    :goto_1
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget-object v3, p0, Landroidx/compose/foundation/text/UndoManager;->undoStack:Landroidx/cardview/widget/CardView$1;

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    if-eqz v3, :cond_8

    .line 49
    .line 50
    iput-object p1, v3, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    new-instance v1, Landroidx/cardview/widget/CardView$1;

    .line 54
    .line 55
    const/4 v4, 0x6

    .line 56
    invoke-direct {v1, v4, v3, p1}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Landroidx/compose/foundation/text/UndoManager;->undoStack:Landroidx/cardview/widget/CardView$1;

    .line 60
    .line 61
    iput-object v2, p0, Landroidx/compose/foundation/text/UndoManager;->redoStack:Landroidx/cardview/widget/CardView$1;

    .line 62
    .line 63
    iget p1, p0, Landroidx/compose/foundation/text/UndoManager;->storedCharacters:I

    .line 64
    .line 65
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    add-int/2addr v0, p1

    .line 72
    iput v0, p0, Landroidx/compose/foundation/text/UndoManager;->storedCharacters:I

    .line 73
    .line 74
    const p1, 0x186a0

    .line 75
    .line 76
    .line 77
    if-le v0, p1, :cond_8

    .line 78
    .line 79
    iget-object p0, p0, Landroidx/compose/foundation/text/UndoManager;->undoStack:Landroidx/cardview/widget/CardView$1;

    .line 80
    .line 81
    if-eqz p0, :cond_4

    .line 82
    .line 83
    iget-object p1, p0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p1, Landroidx/cardview/widget/CardView$1;

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    move-object p1, v2

    .line 89
    :goto_2
    if-nez p1, :cond_5

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_5
    :goto_3
    if-eqz p0, :cond_6

    .line 93
    .line 94
    iget-object p1, p0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p1, Landroidx/cardview/widget/CardView$1;

    .line 97
    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    iget-object p1, p1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p1, Landroidx/cardview/widget/CardView$1;

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_6
    move-object p1, v2

    .line 106
    :goto_4
    if-eqz p1, :cond_7

    .line 107
    .line 108
    iget-object p0, p0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p0, Landroidx/cardview/widget/CardView$1;

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_7
    if-eqz p0, :cond_8

    .line 114
    .line 115
    iput-object v2, p0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 116
    .line 117
    :cond_8
    :goto_5
    return-void
.end method

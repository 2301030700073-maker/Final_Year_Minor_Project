.class public final synthetic Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    sget v0, Lorg/wikipedia/edit/WikiTextKeyboardView;->$r8$clinit:I

    .line 19
    .line 20
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 21
    .line 22
    const-string v0, "====="

    .line 23
    .line 24
    invoke-static {p0, p1, v0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->toggleSyntaxAroundCurrentSelection(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    sget v0, Lorg/wikipedia/edit/WikiTextKeyboardView;->$r8$clinit:I

    .line 39
    .line 40
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 41
    .line 42
    const-string v0, "===="

    .line 43
    .line 44
    invoke-static {p0, p1, v0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->toggleSyntaxAroundCurrentSelection(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void

    .line 48
    :pswitch_1
    iget-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    sget v0, Lorg/wikipedia/edit/WikiTextKeyboardView;->$r8$clinit:I

    .line 59
    .line 60
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 61
    .line 62
    const-string v0, "==="

    .line 63
    .line 64
    invoke-static {p0, p1, v0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->toggleSyntaxAroundCurrentSelection(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void

    .line 68
    :pswitch_2
    iget-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p1}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    sget v0, Lorg/wikipedia/edit/WikiTextKeyboardView;->$r8$clinit:I

    .line 79
    .line 80
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 81
    .line 82
    const-string v0, "=="

    .line 83
    .line 84
    invoke-static {p0, p1, v0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->toggleSyntaxAroundCurrentSelection(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    return-void

    .line 88
    :pswitch_3
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;->callback:Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;

    .line 89
    .line 90
    if-eqz p0, :cond_4

    .line 91
    .line 92
    check-cast p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;

    .line 93
    .line 94
    invoke-virtual {p0}, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->hideAllSyntaxModals()V

    .line 95
    .line 96
    .line 97
    :cond_4
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

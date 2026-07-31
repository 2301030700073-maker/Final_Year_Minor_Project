.class public final Landroidx/appcompat/widget/SearchView$3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/SearchView$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/appcompat/widget/SearchView$3;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/SearchView$3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$3;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;

    .line 11
    .line 12
    if-eqz p2, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const p2, 0x7f090074

    .line 19
    .line 20
    .line 21
    if-ne p1, p2, :cond_0

    .line 22
    .line 23
    invoke-static {p0, v2}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->access$800(Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const p2, 0x7f09033d

    .line 28
    .line 29
    .line 30
    if-ne p1, p2, :cond_1

    .line 31
    .line 32
    invoke-static {p0, v1}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->access$800(Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const p2, 0x7f090228

    .line 37
    .line 38
    .line 39
    if-ne p1, p2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, v2, v1, v1}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const p2, 0x7f0902ba

    .line 46
    .line 47
    .line 48
    if-ne p1, p2, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0, v1, v1, v1}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object p0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->taskExecutor:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p0, Lcom/takisoft/datetimepicker/widget/TimePicker;

    .line 56
    .line 57
    const/4 p1, 0x4

    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void

    .line 62
    :pswitch_0
    check-cast p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 65
    .line 66
    if-eqz p2, :cond_4

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    invoke-virtual {v0, v2, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 73
    .line 74
    .line 75
    check-cast p1, Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_5

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->updateInputTextView()V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-virtual {p0, p1, v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setValueInternal(IZ)V

    .line 104
    .line 105
    .line 106
    :goto_1
    return-void

    .line 107
    :pswitch_1
    check-cast p0, Landroidx/appcompat/widget/SearchView;

    .line 108
    .line 109
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 110
    .line 111
    if-eqz p1, :cond_6

    .line 112
    .line 113
    invoke-interface {p1, p0, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 114
    .line 115
    .line 116
    :cond_6
    return-void

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

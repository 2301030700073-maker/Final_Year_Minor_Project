.class public final Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/takisoft/datetimepicker/widget/NumberPicker$OnValueChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate$1;->this$0:Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onValueChange(Lcom/takisoft/datetimepicker/widget/NumberPicker;II)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate$1;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate$1;->this$0:Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->access$000(Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 16
    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 19
    .line 20
    xor-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    iput-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->onTimeChanged$1()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mHourSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 32
    .line 33
    invoke-static {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->access$000(Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getMinValue()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getMaxValue()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-ne p2, v0, :cond_1

    .line 47
    .line 48
    if-ne p3, v3, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getValue()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    add-int/lit8 p2, p2, 0x1

    .line 55
    .line 56
    iget-boolean p3, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 57
    .line 58
    if-nez p3, :cond_0

    .line 59
    .line 60
    if-ne p2, v2, :cond_0

    .line 61
    .line 62
    iget-boolean p3, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 63
    .line 64
    xor-int/lit8 p3, p3, 0x1

    .line 65
    .line 66
    iput-boolean p3, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-virtual {p1, p2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setValue(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    if-ne p2, v3, :cond_3

    .line 76
    .line 77
    if-ne p3, v0, :cond_3

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getValue()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    add-int/lit8 p2, p2, -0x1

    .line 84
    .line 85
    iget-boolean p3, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 86
    .line 87
    if-nez p3, :cond_2

    .line 88
    .line 89
    if-ne p2, v1, :cond_2

    .line 90
    .line 91
    iget-boolean p3, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 92
    .line 93
    xor-int/lit8 p3, p3, 0x1

    .line 94
    .line 95
    iput-boolean p3, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 98
    .line 99
    .line 100
    :cond_2
    invoke-virtual {p1, p2}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->setValue(I)V

    .line 101
    .line 102
    .line 103
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->onTimeChanged$1()V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_1
    invoke-static {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->access$000(Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;)V

    .line 108
    .line 109
    .line 110
    iget-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 111
    .line 112
    if-nez p1, :cond_6

    .line 113
    .line 114
    if-ne p2, v1, :cond_4

    .line 115
    .line 116
    if-eq p3, v2, :cond_5

    .line 117
    .line 118
    :cond_4
    if-ne p2, v2, :cond_6

    .line 119
    .line 120
    if-ne p3, v1, :cond_6

    .line 121
    .line 122
    :cond_5
    iget-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 123
    .line 124
    xor-int/lit8 p1, p1, 0x1

    .line 125
    .line 126
    iput-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 129
    .line 130
    .line 131
    :cond_6
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->onTimeChanged$1()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$OnValueSelectedListener;
.implements Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView$OnValueTypedListener;
.implements Lcom/takisoft/datetimepicker/widget/internal/NumericTextView$OnValueChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;->this$0:Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onValueChanged(II)V
    .locals 2

    .line 48
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;->this$0:Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-static {p0, p2}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->access$800(Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;I)V

    return-void

    .line 50
    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->setMinuteInternal(II)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p2, v0, p1}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->setHourInternal(IIZ)V

    return-void
.end method

.method public onValueChanged(Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;ZZ)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;->this$0:Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mMinuteView:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mHourView:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne p1, v1, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCommitHour:Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$5;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v2

    .line 20
    :goto_0
    move-object v2, v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    if-ne p1, v0, :cond_3

    .line 23
    .line 24
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mCommitMinute:Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$5;

    .line 25
    .line 26
    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    if-eqz p3, :cond_2

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 34
    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    const-wide/16 p2, 0x7d0

    .line 43
    .line 44
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    .line 46
    .line 47
    :cond_3
    return-void
.end method

.method public onValueSelected(IIZ)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;->this$0:Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getCurrentMinute()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eq p1, p2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->setMinuteInternal(II)V

    .line 20
    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_2
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->getHour()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eq p1, p2, :cond_3

    .line 28
    .line 29
    move p1, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_3
    move p1, v2

    .line 32
    :goto_0
    iget-boolean v3, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    .line 33
    .line 34
    if-eqz v3, :cond_4

    .line 35
    .line 36
    if-eqz p3, :cond_4

    .line 37
    .line 38
    move p3, v1

    .line 39
    goto :goto_1

    .line 40
    :cond_4
    move p3, v2

    .line 41
    :goto_1
    xor-int/lit8 v3, p3, 0x1

    .line 42
    .line 43
    invoke-virtual {p0, p2, v1, v3}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->setHourInternal(IIZ)V

    .line 44
    .line 45
    .line 46
    if-eqz p3, :cond_5

    .line 47
    .line 48
    invoke-virtual {p0, v1, v1, v2}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p2}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    iget-object p3, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->taskExecutor:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p3, Lcom/takisoft/datetimepicker/widget/TimePicker;

    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p2, ". "

    .line 68
    .line 69
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p3, p2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    :cond_5
    move v2, p1

    .line 85
    :goto_2
    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p1, Lcom/takisoft/datetimepicker/widget/TimePicker$OnTimeChangedListener;

    .line 88
    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    if-eqz v2, :cond_6

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->getHour()I

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getCurrentMinute()I

    .line 97
    .line 98
    .line 99
    invoke-interface {p1}, Lcom/takisoft/datetimepicker/widget/TimePicker$OnTimeChangedListener;->onTimeChanged()V

    .line 100
    .line 101
    .line 102
    :cond_6
    return-void
.end method

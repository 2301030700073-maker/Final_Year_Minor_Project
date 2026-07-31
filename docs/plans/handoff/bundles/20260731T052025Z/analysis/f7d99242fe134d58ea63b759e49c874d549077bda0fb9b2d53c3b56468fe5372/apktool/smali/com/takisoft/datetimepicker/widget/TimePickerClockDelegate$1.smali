.class public final Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$1;->this$0:Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;

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
    .locals 9

    .line 1
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$1;->this$0:Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const v0, 0x7f090074

    .line 15
    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    invoke-static {p0, v2}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->access$800(Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const v0, 0x7f09033d

    .line 24
    .line 25
    .line 26
    if-ne p1, v0, :cond_1

    .line 27
    .line 28
    invoke-static {p0, v1}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->access$800(Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const v0, 0x7f090228

    .line 33
    .line 34
    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0, v2, v1, v1}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const v0, 0x7f0902ba

    .line 42
    .line 43
    .line 44
    if-ne p1, v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0, v1, v1, v1}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    .line 47
    .line 48
    .line 49
    :goto_0
    iget-object p0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->taskExecutor:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p0, Lcom/takisoft/datetimepicker/widget/TimePicker;

    .line 52
    .line 53
    const/4 p1, 0x4

    .line 54
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 55
    .line 56
    .line 57
    :cond_3
    return-void

    .line 58
    :pswitch_0
    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->appContext:Landroid/content/Context;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    .line 61
    .line 62
    iget-object v3, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/takisoft/datetimepicker/widget/TextInputTimePickerView;

    .line 65
    .line 66
    iget-object v5, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    .line 67
    .line 68
    iget-boolean v6, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    .line 69
    .line 70
    iget-object v7, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 71
    .line 72
    const/16 v8, 0x8

    .line 73
    .line 74
    if-eqz v6, :cond_4

    .line 75
    .line 76
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    const v0, 0x7f080081

    .line 89
    .line 90
    .line 91
    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {p1, v0}, Landroidx/work/Data$Companion;->tintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialTimePickerModeEnabledDescription:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v5, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    iput-boolean v2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const-string v2, "input_method"

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 129
    .line 130
    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    if-eqz v0, :cond_5

    .line 135
    .line 136
    if-eqz v2, :cond_5

    .line 137
    .line 138
    const/4 v3, 0x2

    .line 139
    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 140
    .line 141
    .line 142
    :cond_5
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    const v0, 0x7f080082

    .line 146
    .line 147
    .line 148
    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {p1, v0}, Landroidx/work/Data$Companion;->tintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mTextInputPickerModeEnabledDescription:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v5, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 164
    .line 165
    .line 166
    iput-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    .line 167
    .line 168
    :goto_1
    return-void

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

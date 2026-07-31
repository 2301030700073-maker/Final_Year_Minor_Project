.class public final Lcom/takisoft/datetimepicker/TimePickerDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/takisoft/datetimepicker/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field public final mTimePicker:Lcom/takisoft/datetimepicker/widget/TimePicker;

.field public final mTimeSetListener:Lcom/takisoft/preferencex/TimePickerPreferenceDialogFragmentCompat;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/takisoft/preferencex/TimePickerPreferenceDialogFragmentCompat;IIZ)V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const v2, 0x7f04062b

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const v0, 0x7f1303e2

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/takisoft/datetimepicker/TimePickerDialog;->mTimeSetListener:Lcom/takisoft/preferencex/TimePickerPreferenceDialogFragmentCompat;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const v0, 0x7f0c057d

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 48
    .line 49
    iput-object p2, v0, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    iput-boolean v1, v0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    .line 53
    .line 54
    const v0, 0x104000a

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const/4 v1, -0x1

    .line 62
    invoke-virtual {p0, v1, v0, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    const/high16 v0, 0x1040000

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const/4 v0, -0x2

    .line 72
    invoke-virtual {p0, v0, p1, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    const p1, 0x7f090435

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/takisoft/datetimepicker/widget/TimePicker;

    .line 83
    .line 84
    iput-object p1, p0, Lcom/takisoft/datetimepicker/TimePickerDialog;->mTimePicker:Lcom/takisoft/datetimepicker/widget/TimePicker;

    .line 85
    .line 86
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p1, p2}, Lcom/takisoft/datetimepicker/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p1, p2}, Lcom/takisoft/datetimepicker/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 98
    .line 99
    .line 100
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-virtual {p1, p2}, Lcom/takisoft/datetimepicker/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p0}, Lcom/takisoft/datetimepicker/widget/TimePicker;->setOnTimeChangedListener(Lcom/takisoft/datetimepicker/widget/TimePicker$OnTimeChangedListener;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    const/4 p1, -0x2

    .line 2
    if-eq p2, p1, :cond_2

    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    if-eq p2, p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/takisoft/datetimepicker/TimePickerDialog;->mTimeSetListener:Lcom/takisoft/preferencex/TimePickerPreferenceDialogFragmentCompat;

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/takisoft/datetimepicker/TimePickerDialog;->mTimePicker:Lcom/takisoft/datetimepicker/widget/TimePicker;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    iput v0, p2, Lcom/takisoft/preferencex/TimePickerPreferenceDialogFragmentCompat;->pickedHour:I

    .line 31
    .line 32
    iput p0, p2, Lcom/takisoft/preferencex/TimePickerPreferenceDialogFragmentCompat;->pickedMinute:I

    .line 33
    .line 34
    iput p1, p2, Landroidx/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void

    .line 37
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "hour"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "minute"

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-string v2, "is24hour"

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p0, p0, Lcom/takisoft/datetimepicker/TimePickerDialog;->mTimePicker:Lcom/takisoft/datetimepicker/widget/TimePicker;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentDialog;->onSaveInstanceState()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/takisoft/datetimepicker/TimePickerDialog;->mTimePicker:Lcom/takisoft/datetimepicker/widget/TimePicker;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v2, "hour"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const-string v2, "minute"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->is24Hour()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    const-string v1, "is24hour"

    .line 40
    .line 41
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method

.method public final onTimeChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final show()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 7
    .line 8
    new-instance v1, Landroidx/preference/Preference$1;

    .line 9
    .line 10
    const/4 v2, 0x6

    .line 11
    invoke-direct {v1, v2, p0}, Landroidx/preference/Preference$1;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

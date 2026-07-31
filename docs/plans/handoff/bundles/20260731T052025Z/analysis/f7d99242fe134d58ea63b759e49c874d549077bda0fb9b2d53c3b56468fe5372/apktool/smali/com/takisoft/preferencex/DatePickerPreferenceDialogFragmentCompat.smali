.class public Lcom/takisoft/preferencex/DatePickerPreferenceDialogFragmentCompat;
.super Landroidx/preference/PreferenceDialogFragmentCompat;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public pickedDay:I

.field public pickedMonth:I

.field public pickedYear:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iput p2, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 7
    .line 8
    check-cast p0, Lcom/takisoft/datetimepicker/DatePickerDialog;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/takisoft/datetimepicker/DatePickerDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/takisoft/preferencex/DatePickerPreference;

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p1, Lcom/takisoft/preferencex/DatePickerPreference;->date:Ljava/util/Date;

    .line 12
    .line 13
    iget-object v2, p1, Lcom/takisoft/preferencex/DatePickerPreference;->pickerDate:Ljava/util/Date;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/takisoft/preferencex/DatePickerPreference;->minDate:Ljava/util/Date;

    .line 16
    .line 17
    iget-object v4, p1, Lcom/takisoft/preferencex/DatePickerPreference;->maxDate:Ljava/util/Date;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    new-instance v5, Lcom/takisoft/datetimepicker/DatePickerDialog;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    const/4 v1, 0x2

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    const/4 v1, 0x5

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    move-object v7, p0

    .line 52
    invoke-direct/range {v5 .. v10}, Lcom/takisoft/datetimepicker/DatePickerDialog;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/takisoft/preferencex/DatePickerPreferenceDialogFragmentCompat;III)V

    .line 53
    .line 54
    .line 55
    iget-object p0, v5, Lcom/takisoft/datetimepicker/DatePickerDialog;->mDatePicker:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 56
    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    invoke-virtual {p0, v1, v2}, Lcom/takisoft/datetimepicker/widget/DatePicker;->setMinDate(J)V

    .line 67
    .line 68
    .line 69
    :cond_2
    if-eqz v4, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/takisoft/datetimepicker/widget/DatePicker;->setMaxDate(J)V

    .line 79
    .line 80
    .line 81
    :cond_3
    const/4 p0, -0x1

    .line 82
    iget-object v0, p1, Landroidx/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v5, p0, v0, v7}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    const/4 p0, -0x2

    .line 88
    iget-object p1, p1, Landroidx/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v5, p0, p1, v7}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    return-object v5
.end method

.method public final onDialogClosed(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/takisoft/preferencex/DatePickerPreference;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Landroidx/collection/internal/Lock;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget p1, p0, Lcom/takisoft/preferencex/DatePickerPreferenceDialogFragmentCompat;->pickedYear:I

    .line 18
    .line 19
    iget v1, p0, Lcom/takisoft/preferencex/DatePickerPreferenceDialogFragmentCompat;->pickedMonth:I

    .line 20
    .line 21
    iget p0, p0, Lcom/takisoft/preferencex/DatePickerPreferenceDialogFragmentCompat;->pickedDay:I

    .line 22
    .line 23
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-virtual {v2, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x2

    .line 32
    invoke-virtual {v2, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x5

    .line 36
    invoke-virtual {v2, p1, p0}, Ljava/util/Calendar;->set(II)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lcom/takisoft/preferencex/DatePickerPreference;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/4 p1, 0x0

    .line 50
    invoke-virtual {v0, p0, p1}, Lcom/takisoft/preferencex/DatePickerPreference;->setInternalDate(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

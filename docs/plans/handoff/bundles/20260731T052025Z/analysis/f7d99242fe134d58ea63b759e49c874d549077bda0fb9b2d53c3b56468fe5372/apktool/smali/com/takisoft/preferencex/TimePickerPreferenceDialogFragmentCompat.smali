.class public Lcom/takisoft/preferencex/TimePickerPreferenceDialogFragmentCompat;
.super Landroidx/preference/PreferenceDialogFragmentCompat;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public pickedHour:I

.field public pickedMinute:I


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
    check-cast p0, Lcom/takisoft/datetimepicker/TimePickerDialog;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/takisoft/datetimepicker/TimePickerDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/takisoft/preferencex/TimePickerPreference;

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p1, Lcom/takisoft/preferencex/TimePickerPreference;->time:Ljava/util/Date;

    .line 12
    .line 13
    iget-object v2, p1, Lcom/takisoft/preferencex/TimePickerPreference;->pickerTime:Ljava/util/Date;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    new-instance v3, Lcom/takisoft/datetimepicker/TimePickerDialog;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/16 v1, 0xb

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    const/16 v1, 0xc

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    iget v0, p1, Lcom/takisoft/preferencex/TimePickerPreference;->hourFormat:I

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    :goto_1
    move-object v5, p0

    .line 55
    move v8, v0

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/4 v1, 0x2

    .line 58
    if-ne v0, v1, :cond_3

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const/4 v0, 0x0

    .line 63
    goto :goto_1

    .line 64
    :goto_2
    invoke-direct/range {v3 .. v8}, Lcom/takisoft/datetimepicker/TimePickerDialog;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/takisoft/preferencex/TimePickerPreferenceDialogFragmentCompat;IIZ)V

    .line 65
    .line 66
    .line 67
    const/4 p0, -0x1

    .line 68
    iget-object v0, p1, Landroidx/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v3, p0, v0, v5}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    const/4 p0, -0x2

    .line 74
    iget-object p1, p1, Landroidx/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v3, p0, p1, v5}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    return-object v3
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
    check-cast v0, Lcom/takisoft/preferencex/TimePickerPreference;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lokio/Path$Companion;

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
    iget p1, p0, Lcom/takisoft/preferencex/TimePickerPreferenceDialogFragmentCompat;->pickedHour:I

    .line 18
    .line 19
    iget p0, p0, Lcom/takisoft/preferencex/TimePickerPreferenceDialogFragmentCompat;->pickedMinute:I

    .line 20
    .line 21
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 v2, 0x2

    .line 32
    new-array v2, v2, [Ljava/lang/Object;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    aput-object p1, v2, v3

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    aput-object p0, v2, p1

    .line 39
    .line 40
    const-string p0, "%02d:%02d"

    .line 41
    .line 42
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v0, p0, v3}, Lcom/takisoft/preferencex/TimePickerPreference;->setInternalTime(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

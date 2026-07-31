.class public final Lcom/takisoft/datetimepicker/DatePickerDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final mDatePicker:Lcom/takisoft/datetimepicker/widget/DatePicker;

.field public final mDateSetListener:Lcom/takisoft/preferencex/DatePickerPreferenceDialogFragmentCompat;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/takisoft/preferencex/DatePickerPreferenceDialogFragmentCompat;III)V
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
    const v2, 0x7f0401b5

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
    const v0, 0x7f1303e1

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Landroidx/transition/Transition$1;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const v2, 0x7f0c0155

    .line 43
    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v2, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 51
    .line 52
    iput-object v1, v2, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    iput-boolean v3, v2, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    .line 56
    .line 57
    const v2, 0x104000a

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const/4 v3, -0x1

    .line 65
    invoke-virtual {p0, v3, v2, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    const/high16 v2, 0x1040000

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const/4 v2, -0x2

    .line 75
    invoke-virtual {p0, v2, v0, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    const v0, 0x7f09017c

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/takisoft/datetimepicker/DatePickerDialog;->mDatePicker:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 88
    .line 89
    invoke-virtual {v0, p3, p4, p5, p0}, Lcom/takisoft/datetimepicker/widget/DatePicker;->init(IIILcom/takisoft/datetimepicker/DatePickerDialog;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p1}, Lcom/takisoft/datetimepicker/widget/DatePicker;->setValidationCallback(Lcom/takisoft/datetimepicker/widget/DatePicker$ValidationCallback;)V

    .line 93
    .line 94
    .line 95
    iput-object p2, p0, Lcom/takisoft/datetimepicker/DatePickerDialog;->mDateSetListener:Lcom/takisoft/preferencex/DatePickerPreferenceDialogFragmentCompat;

    .line 96
    .line 97
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

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
    iget-object p2, p0, Lcom/takisoft/datetimepicker/DatePickerDialog;->mDateSetListener:Lcom/takisoft/preferencex/DatePickerPreferenceDialogFragmentCompat;

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/takisoft/datetimepicker/DatePickerDialog;->mDatePicker:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePicker;->getYear()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePicker;->getMonth()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePicker;->getDayOfMonth()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    iput v0, p2, Lcom/takisoft/preferencex/DatePickerPreferenceDialogFragmentCompat;->pickedYear:I

    .line 30
    .line 31
    iput v1, p2, Lcom/takisoft/preferencex/DatePickerPreferenceDialogFragmentCompat;->pickedMonth:I

    .line 32
    .line 33
    iput p0, p2, Lcom/takisoft/preferencex/DatePickerPreferenceDialogFragmentCompat;->pickedDay:I

    .line 34
    .line 35
    iput p1, p2, Landroidx/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void

    .line 38
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "year"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "month"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-string v2, "day"

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget-object v2, p0, Lcom/takisoft/datetimepicker/DatePickerDialog;->mDatePicker:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 24
    .line 25
    invoke-virtual {v2, v0, v1, p1, p0}, Lcom/takisoft/datetimepicker/widget/DatePicker;->init(IIILcom/takisoft/datetimepicker/DatePickerDialog;)V

    .line 26
    .line 27
    .line 28
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
    iget-object p0, p0, Lcom/takisoft/datetimepicker/DatePickerDialog;->mDatePicker:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePicker;->getYear()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string/jumbo v2, "year"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    const-string v1, "month"

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePicker;->getMonth()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const-string v1, "day"

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePicker;->getDayOfMonth()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

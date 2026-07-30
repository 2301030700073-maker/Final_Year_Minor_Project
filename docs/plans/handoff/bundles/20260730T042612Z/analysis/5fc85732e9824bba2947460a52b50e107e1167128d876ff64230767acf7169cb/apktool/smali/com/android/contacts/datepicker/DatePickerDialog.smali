.class public Lcom/android/contacts/datepicker/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field public static NO_YEAR:I


# instance fields
.field private final mCallBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

.field private mInitialDay:I

.field private mInitialMonth:I

.field private mInitialYear:I

.field private final mTitleDateFormat:Ljava/text/DateFormat;

.field private final mTitleNoYearDateFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    sget v0, Lcom/android/contacts/datepicker/DatePicker;->NO_YEAR:I

    sput v0, Lcom/android/contacts/datepicker/DatePickerDialog;->NO_YEAR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V
    .locals 6

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 117
    iput-object p3, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCallBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;

    .line 118
    iput p4, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialYear:I

    .line 119
    iput p5, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialMonth:I

    .line 120
    iput p6, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialDay:I

    const/4 p2, 0x0

    .line 122
    invoke-static {p2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p2

    iput-object p2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    .line 123
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/contacts/util/DateUtils;->getLocalizedDateFormatWithoutYear(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p2

    iput-object p2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mTitleNoYearDateFormat:Ljava/text/DateFormat;

    .line 124
    iget p2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialYear:I

    iget p3, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialMonth:I

    iget p4, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialDay:I

    invoke-direct {p0, p2, p3, p4}, Lcom/android/contacts/datepicker/DatePickerDialog;->updateTitle(III)V

    const p2, 0x7f1000c9

    .line 126
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p0, p3, p2, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 p2, 0x1040000

    .line 128
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, -0x2

    const/4 p4, 0x0

    invoke-virtual {p0, p3, p2, p4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string p2, "layout_inflater"

    .line 132
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x7f0c0035

    .line 133
    invoke-virtual {p1, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const p2, 0x7f090094

    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/datepicker/DatePicker;

    iput-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    .line 136
    iget v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialYear:I

    iget v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialMonth:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialDay:I

    move v4, p7

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/datepicker/DatePicker;->init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V
    .locals 8

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 94
    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/datepicker/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V

    return-void
.end method

.method private updateTitle(III)V
    .locals 2

    .line 154
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 155
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    .line 156
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x5

    .line 157
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 159
    sget p2, Lcom/android/contacts/datepicker/DatePickerDialog;->NO_YEAR:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mTitleNoYearDateFormat:Ljava/text/DateFormat;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    .line 160
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 141
    iget-object p1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCallBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 143
    iget-object p1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCallBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;

    iget-object p2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {p2}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    .line 144
    invoke-virtual {v1}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v2

    .line 143
    invoke-interface {p1, p2, v0, v1, v2}, Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/android/contacts/datepicker/DatePicker;III)V

    :cond_0
    return-void
.end method

.method public onDateChanged(Lcom/android/contacts/datepicker/DatePicker;III)V
    .locals 0

    .line 150
    invoke-direct {p0, p2, p3, p4}, Lcom/android/contacts/datepicker/DatePickerDialog;->updateTitle(III)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 9

    .line 175
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "year"

    .line 176
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "month"

    .line 177
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v1, "day"

    .line 178
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v1, "year_optional"

    .line 179
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 180
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    move v2, v0

    move v3, v7

    move v4, v8

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/datepicker/DatePicker;->init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    .line 181
    invoke-direct {p0, v0, v7, v8}, Lcom/android/contacts/datepicker/DatePickerDialog;->updateTitle(III)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 165
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v1}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v1

    const-string v2, "year"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v1}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v1

    const-string v2, "month"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v1}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v1

    const-string v2, "day"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v1}, Lcom/android/contacts/datepicker/DatePicker;->isYearOptional()Z

    move-result v1

    const-string v2, "year_optional"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

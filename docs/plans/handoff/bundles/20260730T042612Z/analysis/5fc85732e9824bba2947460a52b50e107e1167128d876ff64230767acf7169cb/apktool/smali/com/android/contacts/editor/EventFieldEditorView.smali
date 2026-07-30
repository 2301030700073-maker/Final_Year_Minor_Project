.class public Lcom/android/contacts/editor/EventFieldEditorView;
.super Lcom/android/contacts/editor/LabeledEditorView;
.source "EventFieldEditorView.java"


# instance fields
.field private mDateView:Landroid/widget/Button;

.field private mHintTextColor:I

.field private mNoDateString:Ljava/lang/String;

.field private mPrimaryTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/EventFieldEditorView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V

    return-void
.end method

.method private createDatePickerDialog()Landroid/app/Dialog;
    .locals 15

    .line 198
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType$EditField;

    iget-object v0, v0, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 199
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getEntry()Lcom/android/contacts/model/ValuesDelta;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v3

    .line 202
    sget-object v4, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4, v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x1

    .line 203
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 206
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/model/account/AccountType$EventEditType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/model/account/AccountType$EventEditType;->isYearOptional()Z

    move-result v14

    .line 210
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x5

    const/4 v9, 0x2

    if-eqz v7, :cond_0

    .line 213
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 214
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move v12, v1

    move v13, v2

    :goto_0
    move v11, v6

    goto :goto_2

    .line 217
    :cond_0
    invoke-static {v2, v1}, Lcom/android/contacts/util/DateUtils;->parseDate(Ljava/lang/String;Z)Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 219
    invoke-static {v1}, Lcom/android/contacts/util/DateUtils;->isYearSet(Ljava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move v6, v2

    goto :goto_1

    :cond_1
    if-eqz v14, :cond_2

    .line 223
    sget v6, Lcom/android/contacts/datepicker/DatePickerDialog;->NO_YEAR:I

    .line 225
    :cond_2
    :goto_1
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 226
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    move v13, v1

    move v12, v2

    goto :goto_0

    .line 231
    :goto_2
    new-instance v10, Lcom/android/contacts/editor/EventFieldEditorView$2;

    invoke-direct {v10, p0, v14, v3, v0}, Lcom/android/contacts/editor/EventFieldEditorView$2;-><init>(Lcom/android/contacts/editor/EventFieldEditorView;ZLcom/android/contacts/model/dataitem/DataKind;Ljava/lang/String;)V

    .line 259
    new-instance v0, Lcom/android/contacts/datepicker/DatePickerDialog;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/contacts/datepicker/DatePickerDialog;-><init>(Landroid/content/Context;Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private rebuildDateView()V
    .locals 4

    .line 121
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType$EditField;

    .line 122
    iget-object v0, v0, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getEntry()Lcom/android/contacts/model/ValuesDelta;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mNoDateString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    iget v2, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mHintTextColor:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 128
    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->setDeleteButtonVisible(Z)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    iget v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mPrimaryTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, 0x1

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/LabeledEditorView;->setDeleteButtonVisible(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clearAllFields()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mNoDateString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    iget v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mHintTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 271
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType$EditField;

    iget-object v0, v0, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    const-string v1, ""

    .line 272
    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "dialog_id"

    .line 146
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7f0900b0

    if-ne v0, v1, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->createDatePickerDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 150
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 145
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bundle must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getType()Lcom/android/contacts/model/account/AccountType$EventEditType;
    .locals 1

    .line 156
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getType()Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType$EventEditType;

    return-object v0
.end method

.method public isBirthdayType()Z
    .locals 4

    .line 289
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/model/account/AccountType$EventEditType;

    move-result-object v0

    .line 290
    iget v1, v0, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    iget-boolean v1, v0, Lcom/android/contacts/model/account/AccountType$EditType;->secondary:Z

    if-nez v1, :cond_0

    iget v1, v0, Lcom/android/contacts/model/account/AccountType$EditType;->specificMax:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 292
    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountType$EventEditType;->isYearOptional()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isEmpty()Z
    .locals 2

    .line 138
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType$EditField;

    .line 139
    iget-object v0, v0, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getEntry()Lcom/android/contacts/model/ValuesDelta;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 75
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onFinishInflate()V

    .line 77
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600eb

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mPrimaryTextColor:I

    const v1, 0x7f060087

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mHintTextColor:I

    .line 80
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100118

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mNoDateString:Ljava/lang/String;

    const v0, 0x7f09009b

    .line 82
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    .line 83
    new-instance v1, Lcom/android/contacts/editor/EventFieldEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/EventFieldEditorView$1;-><init>(Lcom/android/contacts/editor/EventFieldEditorView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onLabelRebuilt()V
    .locals 14

    .line 162
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType$EditField;

    iget-object v0, v0, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getEntry()Lcom/android/contacts/model/ValuesDelta;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v3

    .line 166
    sget-object v4, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4, v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x1

    .line 167
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 170
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/model/account/AccountType$EventEditType;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/model/account/AccountType$EventEditType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/model/account/AccountType$EventEditType;->isYearOptional()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_5

    .line 172
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 173
    new-instance v5, Ljava/text/ParsePosition;

    invoke-direct {v5, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 174
    iget-object v1, v3, Lcom/android/contacts/model/dataitem/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    const/4 v13, 0x0

    if-nez v1, :cond_1

    move-object v1, v13

    goto :goto_1

    .line 175
    :cond_1
    invoke-virtual {v1, v2, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    return-void

    .line 181
    :cond_2
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x2

    .line 182
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v1, 0x5

    .line 183
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v4

    .line 182
    invoke-virtual/range {v6 .. v12}, Ljava/util/Calendar;->set(IIIIII)V

    .line 185
    iget-object v1, v3, Lcom/android/contacts/model/dataitem/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_3

    goto :goto_2

    .line 186
    :cond_3
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    :goto_2
    if-nez v13, :cond_4

    return-void

    .line 189
    :cond_4
    invoke-virtual {p0, v0, v13}, Lcom/android/contacts/editor/LabeledEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V

    :cond_5
    return-void
.end method

.method protected requestFocusForFirstEditField()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    return-void
.end method

.method public restoreBirthday()V
    .locals 2

    .line 279
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->saveValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildValues()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 103
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 2

    .line 111
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 112
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 114
    iget-object p1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V

    .line 117
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->updateEmptiness()V

    return-void

    .line 111
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "kind must have 1 field"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

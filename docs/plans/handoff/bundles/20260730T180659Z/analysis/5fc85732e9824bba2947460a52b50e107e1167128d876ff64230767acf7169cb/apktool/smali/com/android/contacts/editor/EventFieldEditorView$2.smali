.class Lcom/android/contacts/editor/EventFieldEditorView$2;
.super Ljava/lang/Object;
.source "EventFieldEditorView.java"

# interfaces
.implements Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/EventFieldEditorView;->createDatePickerDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/EventFieldEditorView;

.field final synthetic val$column:Ljava/lang/String;

.field final synthetic val$isYearOptional:Z

.field final synthetic val$kind:Lcom/android/contacts/model/dataitem/DataKind;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/EventFieldEditorView;ZLcom/android/contacts/model/dataitem/DataKind;Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/android/contacts/editor/EventFieldEditorView$2;->this$0:Lcom/android/contacts/editor/EventFieldEditorView;

    iput-boolean p2, p0, Lcom/android/contacts/editor/EventFieldEditorView$2;->val$isYearOptional:Z

    iput-object p3, p0, Lcom/android/contacts/editor/EventFieldEditorView$2;->val$kind:Lcom/android/contacts/model/dataitem/DataKind;

    iput-object p4, p0, Lcom/android/contacts/editor/EventFieldEditorView$2;->val$column:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/android/contacts/datepicker/DatePicker;III)V
    .locals 8

    if-nez p2, :cond_1

    .line 234
    iget-boolean p1, p0, Lcom/android/contacts/editor/EventFieldEditorView$2;->val$isYearOptional:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 235
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 236
    invoke-static {p1, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 242
    sget v0, Lcom/android/contacts/datepicker/DatePickerDialog;->NO_YEAR:I

    if-ne p2, v0, :cond_2

    const/16 v0, 0x7d0

    const/16 v2, 0x7d0

    goto :goto_1

    :cond_2
    move v2, p2

    :goto_1
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    const/4 p3, 0x0

    if-nez p2, :cond_4

    .line 247
    iget-object p2, p0, Lcom/android/contacts/editor/EventFieldEditorView$2;->val$kind:Lcom/android/contacts/model/dataitem/DataKind;

    iget-object p2, p2, Lcom/android/contacts/model/dataitem/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    if-nez p2, :cond_3

    goto :goto_2

    .line 248
    :cond_3
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    .line 250
    :cond_4
    iget-object p2, p0, Lcom/android/contacts/editor/EventFieldEditorView$2;->val$kind:Lcom/android/contacts/model/dataitem/DataKind;

    iget-object p2, p2, Lcom/android/contacts/model/dataitem/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    if-nez p2, :cond_5

    goto :goto_2

    .line 251
    :cond_5
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    :goto_2
    if-nez p3, :cond_6

    return-void

    .line 255
    :cond_6
    iget-object p1, p0, Lcom/android/contacts/editor/EventFieldEditorView$2;->this$0:Lcom/android/contacts/editor/EventFieldEditorView;

    iget-object p2, p0, Lcom/android/contacts/editor/EventFieldEditorView$2;->val$column:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/android/contacts/editor/LabeledEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/android/contacts/editor/EventFieldEditorView$2;->this$0:Lcom/android/contacts/editor/EventFieldEditorView;

    invoke-static {p1}, Lcom/android/contacts/editor/EventFieldEditorView;->access$000(Lcom/android/contacts/editor/EventFieldEditorView;)V

    return-void
.end method

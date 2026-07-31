.class public final Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/takisoft/datetimepicker/widget/DayPickerView$OnDaySelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate$1;->this$0:Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDaySelected(Ljava/util/Calendar;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate$1;->this$0:Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1, p1}, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.class public final Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$5;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$5;->this$0:Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$5;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$5;->this$0:Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mMinuteView:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->getValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->setMinuteInternal(II)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->mHourView:Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/internal/NumericTextView;->getValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate;->setHour(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

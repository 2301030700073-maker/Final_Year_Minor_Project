.class public final Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public mIncrement:Z

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/takisoft/datetimepicker/widget/NumberPicker;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->$r8$classId:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    .line 9
    .line 10
    iget-object v0, v1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->listener:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$2;

    .line 11
    .line 12
    iget-boolean p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$2;->onConnectivityChanged(Z)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast v1, Landroidx/work/impl/constraints/IndividualNetworkCallback;

    .line 19
    .line 20
    iget-boolean p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 21
    .line 22
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 23
    .line 24
    .line 25
    iget-object v0, v1, Landroidx/work/impl/constraints/IndividualNetworkCallback;->onConstraintState:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;

    .line 28
    .line 29
    iget-boolean v1, v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->isConnected:Z

    .line 30
    .line 31
    iput-boolean p0, v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->isConnected:Z

    .line 32
    .line 33
    if-eq v1, p0, :cond_0

    .line 34
    .line 35
    iget-object v0, v0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->listener:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$2;

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$2;->onConnectivityChanged(Z)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :pswitch_1
    check-cast v1, Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 44
    .line 45
    sget-object v2, Lcom/takisoft/datetimepicker/widget/NumberPicker;->sTwoDigitFormatter:Lcom/takisoft/datetimepicker/widget/NumberPicker$TwoDigitFormatter;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->changeValueByOne(Z)V

    .line 48
    .line 49
    .line 50
    iget-wide v2, v1, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 51
    .line 52
    invoke-virtual {v1, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

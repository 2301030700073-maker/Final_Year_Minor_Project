.class public final Lcom/takisoft/datetimepicker/widget/TimePicker$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/takisoft/datetimepicker/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/takisoft/datetimepicker/widget/TimePicker;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/takisoft/datetimepicker/widget/TimePicker;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/TimePicker$1;->this$0:Lcom/takisoft/datetimepicker/widget/TimePicker;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/TimePicker$1;->val$context:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onTimeChanged()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker$1;->val$context:Landroid/content/Context;

    .line 8
    .line 9
    const-class v1, Landroid/view/autofill/AutofillManager;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/TimePicker$1;->this$0:Lcom/takisoft/datetimepicker/widget/TimePicker;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

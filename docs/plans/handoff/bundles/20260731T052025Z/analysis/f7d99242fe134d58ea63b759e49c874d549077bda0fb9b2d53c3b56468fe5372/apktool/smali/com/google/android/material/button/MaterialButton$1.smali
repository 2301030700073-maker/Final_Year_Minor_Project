.class public final Lcom/google/android/material/button/MaterialButton$1;
.super Landroidx/work/Data$Companion;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/material/button/MaterialButton$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final getValue(Lcom/google/android/material/shape/MaterialShapeDrawable;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/button/MaterialButton$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 7
    .line 8
    iget p0, p1, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 9
    .line 10
    return p0

    .line 11
    :pswitch_0
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/material/button/MaterialButton;->access$000(Lcom/google/android/material/button/MaterialButton;)F

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/button/MaterialButton$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 7
    .line 8
    iput p2, p1, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/google/android/material/button/MaterialButton;->access$100(Lcom/google/android/material/button/MaterialButton;F)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

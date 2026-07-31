.class public final Lcom/google/android/material/animation/ImageMatrixProperty;
.super Landroid/util/Property;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final matrix:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/material/animation/ImageMatrixProperty;->$r8$classId:I

    .line 3
    .line 4
    const-class v0, Landroid/graphics/Matrix;

    .line 5
    .line 6
    const-string v1, "imageMatrixProperty"

    .line 7
    .line 8
    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Matrix;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/material/animation/ImageMatrixProperty;->matrix:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/animation/ImageMatrixProperty;->$r8$classId:I

    .line 19
    iput-object p1, p0, Lcom/google/android/material/animation/ImageMatrixProperty;->matrix:Ljava/lang/Object;

    const-class p1, Ljava/lang/Float;

    const-string v0, "hoursToMinutes"

    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/animation/ImageMatrixProperty;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/animation/ImageMatrixProperty;->matrix:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 9
    .line 10
    check-cast p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Lcom/google/android/material/button/MaterialButton$1;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget p0, p1, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :pswitch_0
    check-cast p1, Landroid/widget/ImageView;

    .line 25
    .line 26
    check-cast p0, Landroid/graphics/Matrix;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/animation/ImageMatrixProperty;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Float;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/google/android/material/animation/ImageMatrixProperty;->matrix:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Lcom/google/android/material/button/MaterialButton$1;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton$1;->setValue(Ljava/lang/Object;F)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    check-cast p1, Landroid/widget/ImageView;

    .line 25
    .line 26
    check-cast p2, Landroid/graphics/Matrix;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

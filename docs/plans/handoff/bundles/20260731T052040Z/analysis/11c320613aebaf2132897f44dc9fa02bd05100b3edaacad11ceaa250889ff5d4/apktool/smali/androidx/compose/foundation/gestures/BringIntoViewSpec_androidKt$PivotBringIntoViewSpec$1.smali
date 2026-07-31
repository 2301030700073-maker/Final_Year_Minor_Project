.class public final Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/foundation/gestures/BringIntoViewSpec;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final calculateScrollDistance(FFF)F
    .locals 2

    .line 1
    iget p0, p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->Companion:Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    add-float/2addr p2, p1

    .line 12
    const/4 p0, 0x0

    .line 13
    cmpl-float v0, p1, p0

    .line 14
    .line 15
    if-ltz v0, :cond_0

    .line 16
    .line 17
    cmpg-float v0, p2, p3

    .line 18
    .line 19
    if-gtz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    cmpg-float v0, p1, p0

    .line 23
    .line 24
    if-gez v0, :cond_1

    .line 25
    .line 26
    cmpl-float v0, p2, p3

    .line 27
    .line 28
    if-lez v0, :cond_1

    .line 29
    .line 30
    :goto_0
    move p1, p0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    sub-float/2addr p2, p3

    .line 37
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    cmpg-float p0, p0, p3

    .line 42
    .line 43
    if-gez p0, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move p1, p2

    .line 47
    :goto_1
    return p1

    .line 48
    :pswitch_0
    add-float/2addr p2, p1

    .line 49
    sub-float/2addr p2, p1

    .line 50
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    cmpg-float p2, p0, p3

    .line 55
    .line 56
    if-gtz p2, :cond_3

    .line 57
    .line 58
    const/4 p2, 0x1

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    const/4 p2, 0x0

    .line 61
    :goto_2
    const v0, 0x3e99999a    # 0.3f

    .line 62
    .line 63
    .line 64
    mul-float/2addr v0, p3

    .line 65
    const/4 v1, 0x0

    .line 66
    mul-float/2addr v1, p0

    .line 67
    sub-float/2addr v0, v1

    .line 68
    sub-float v1, p3, v0

    .line 69
    .line 70
    if-eqz p2, :cond_4

    .line 71
    .line 72
    cmpg-float p2, v1, p0

    .line 73
    .line 74
    if-gez p2, :cond_4

    .line 75
    .line 76
    sub-float v0, p3, p0

    .line 77
    .line 78
    :cond_4
    sub-float/2addr p1, v0

    .line 79
    return p1

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getScrollAnimationSpec()Landroidx/compose/animation/core/SpringSpec;
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    sget-object p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->Companion:Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;->DefaultScrollAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 12
    .line 13
    return-object p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

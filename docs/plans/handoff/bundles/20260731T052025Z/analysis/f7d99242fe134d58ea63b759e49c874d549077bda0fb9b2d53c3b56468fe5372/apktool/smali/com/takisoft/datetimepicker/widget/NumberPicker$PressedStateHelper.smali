.class public final Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mManagedButton:I

.field public mMode:I

.field public final synthetic this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;


# direct methods
.method public constructor <init>(Lcom/takisoft/datetimepicker/widget/NumberPicker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    iput v3, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 13
    .line 14
    iput v3, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    iget-boolean p0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    iput-boolean v3, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    .line 24
    .line 25
    iget p0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 26
    .line 27
    invoke-virtual {v0, v3, p0, v1, v2}, Landroid/view/View;->invalidate(IIII)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iput-boolean v3, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    .line 31
    .line 32
    return-void
.end method

.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget v3, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x1

    .line 16
    if-eq v3, v6, :cond_5

    .line 17
    .line 18
    if-eq v3, v4, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget v3, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 22
    .line 23
    if-eq v3, v6, :cond_3

    .line 24
    .line 25
    if-eq v3, v4, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-boolean v1, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    int-to-long v3, v1

    .line 37
    invoke-virtual {v0, p0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-boolean p0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    .line 41
    .line 42
    xor-int/2addr p0, v6

    .line 43
    int-to-byte p0, p0

    .line 44
    iput-boolean p0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    .line 45
    .line 46
    iget p0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 47
    .line 48
    invoke-virtual {v0, v5, v5, v2, p0}, Landroid/view/View;->invalidate(IIII)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    iget-boolean v3, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    .line 53
    .line 54
    if-nez v3, :cond_4

    .line 55
    .line 56
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    int-to-long v3, v3

    .line 61
    invoke-virtual {v0, p0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    .line 63
    .line 64
    :cond_4
    iget-boolean p0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    .line 65
    .line 66
    xor-int/2addr p0, v6

    .line 67
    int-to-byte p0, p0

    .line 68
    iput-boolean p0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    .line 69
    .line 70
    iget p0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 71
    .line 72
    invoke-virtual {v0, v5, p0, v2, v1}, Landroid/view/View;->invalidate(IIII)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_5
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 77
    .line 78
    if-eq p0, v6, :cond_7

    .line 79
    .line 80
    if-eq p0, v4, :cond_6

    .line 81
    .line 82
    :goto_0
    return-void

    .line 83
    :cond_6
    iput-boolean v6, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    .line 84
    .line 85
    iget p0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 86
    .line 87
    invoke-virtual {v0, v5, v5, v2, p0}, Landroid/view/View;->invalidate(IIII)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_7
    iput-boolean v6, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    .line 92
    .line 93
    iget p0, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 94
    .line 95
    invoke-virtual {v0, v5, p0, v2, v1}, Landroid/view/View;->invalidate(IIII)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

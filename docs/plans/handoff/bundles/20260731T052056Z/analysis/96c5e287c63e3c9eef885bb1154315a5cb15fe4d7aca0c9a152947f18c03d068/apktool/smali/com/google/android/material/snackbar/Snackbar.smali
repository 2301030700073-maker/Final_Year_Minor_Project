.class public final Lcom/google/android/material/snackbar/Snackbar;
.super Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final SNACKBAR_CONTENT_STYLE_ATTRS:[I


# instance fields
.field public final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public hasAction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x7f04058d

    .line 2
    .line 3
    .line 4
    const v1, 0x7f040590

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/material/snackbar/Snackbar;->SNACKBAR_CONTENT_STYLE_ATTRS:[I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/material/snackbar/SnackbarContentLayout;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string p2, "accessibility"

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/material/snackbar/Snackbar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final setAction(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 51
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    iput-boolean v2, p0, Lcom/google/android/material/snackbar/Snackbar;->hasAction:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 30
    .line 31
    invoke-direct {p1, v2, p0, p2}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const/16 p1, 0x8

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/google/android/material/snackbar/Snackbar;->hasAction:Z

    .line 48
    .line 49
    return-void
.end method

.method public final show()V
    .locals 9

    .line 1
    invoke-static {}, Lcoil3/ImageLoader$Builder;->getInstance()Lcoil3/ImageLoader$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/snackbar/Snackbar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 6
    .line 7
    iget v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->duration:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x4

    .line 11
    const/4 v5, -0x2

    .line 12
    if-ne v2, v5, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    iget-boolean v7, p0, Lcom/google/android/material/snackbar/Snackbar;->hasAction:Z

    .line 18
    .line 19
    const/16 v8, 0x1d

    .line 20
    .line 21
    if-lt v6, v8, :cond_2

    .line 22
    .line 23
    if-eqz v7, :cond_1

    .line 24
    .line 25
    move v5, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v5, v3

    .line 28
    :goto_0
    or-int/lit8 v5, v5, 0x3

    .line 29
    .line 30
    invoke-virtual {v1, v2, v5}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    if-eqz v7, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    :goto_1
    move v2, v5

    .line 44
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;

    .line 45
    .line 46
    iget-object v1, v0, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v1

    .line 49
    :try_start_0
    invoke-virtual {v0, p0}, Lcoil3/ImageLoader$Builder;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_4

    .line 54
    .line 55
    iget-object p0, v0, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p0, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    .line 58
    .line 59
    iput v2, p0, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    .line 60
    .line 61
    iget-object v2, v0, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Landroid/os/Handler;

    .line 64
    .line 65
    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object p0, v0, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p0, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Lcoil3/ImageLoader$Builder;->scheduleTimeoutLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;)V

    .line 73
    .line 74
    .line 75
    monitor-exit v1

    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_4

    .line 79
    :cond_4
    iget-object v5, v0, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v5, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    .line 82
    .line 83
    if-eqz v5, :cond_5

    .line 84
    .line 85
    iget-object v5, v5, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    if-ne v5, p0, :cond_5

    .line 92
    .line 93
    const/4 v3, 0x1

    .line 94
    :cond_5
    if-eqz v3, :cond_6

    .line 95
    .line 96
    iget-object p0, v0, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p0, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    .line 99
    .line 100
    iput v2, p0, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_6
    new-instance v3, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    .line 104
    .line 105
    invoke-direct {v3, v2, p0}, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;-><init>(ILcom/google/android/material/snackbar/BaseTransientBottomBar$5;)V

    .line 106
    .line 107
    .line 108
    iput-object v3, v0, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 109
    .line 110
    :goto_3
    iget-object p0, v0, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p0, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    .line 113
    .line 114
    if-eqz p0, :cond_7

    .line 115
    .line 116
    invoke-virtual {v0, p0, v4}, Lcoil3/ImageLoader$Builder;->cancelSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;I)Z

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    if-eqz p0, :cond_7

    .line 121
    .line 122
    monitor-exit v1

    .line 123
    return-void

    .line 124
    :cond_7
    const/4 p0, 0x0

    .line 125
    iput-object p0, v0, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcoil3/ImageLoader$Builder;->showNextSnackbarLocked()V

    .line 128
    .line 129
    .line 130
    monitor-exit v1

    .line 131
    return-void

    .line 132
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    throw p0
.end method

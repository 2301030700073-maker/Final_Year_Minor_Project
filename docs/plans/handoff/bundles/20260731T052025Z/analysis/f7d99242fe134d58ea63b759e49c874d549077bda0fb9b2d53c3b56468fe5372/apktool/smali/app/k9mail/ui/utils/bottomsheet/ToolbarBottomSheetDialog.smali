.class public final Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public bottomSheet:Landroid/widget/FrameLayout;

.field public final cancelDialogCallback:Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$cancelDialogCallback$1;

.field public container:Landroid/widget/FrameLayout;

.field public coordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public internalBehavior:Lapp/k9mail/ui/utils/bottomsheet/LayoutAwareBottomSheetBehavior;

.field public isDismissWithAnimation:Z

.field public toolbar:Landroidx/appcompat/widget/Toolbar;

.field public toolbarVisibilityCallback:Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ToolbarVisibilityCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Landroid/util/TypedValue;

    .line 6
    .line 7
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const v2, 0x7f040092

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 24
    .line 25
    :goto_0
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDelegate;->requestWindowFeature(I)Z

    .line 33
    .line 34
    .line 35
    new-instance p1, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$cancelDialogCallback$1;

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-direct {p1, p2, p0}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$cancelDialogCallback$1;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->cancelDialogCallback:Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$cancelDialogCallback$1;

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    const-string p0, "Missing bottomSheetDialogTheme attribute in theme"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    throw p0
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->getBehavior()Lapp/k9mail/ui/utils/bottomsheet/LayoutAwareBottomSheetBehavior;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->isDismissWithAnimation:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 10
    .line 11
    const/4 v2, 0x5

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final ensureContainerAndBehavior()V
    .locals 6

    .line 1
    iget-object v0, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->container:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_a

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0c015d

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    check-cast v0, Landroid/widget/FrameLayout;

    .line 21
    .line 22
    iput-object v0, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->container:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    const v1, 0x7f09015a

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 32
    .line 33
    const-string v2, "View not found"

    .line 34
    .line 35
    if-eqz v1, :cond_9

    .line 36
    .line 37
    iput-object v1, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->coordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 38
    .line 39
    const v1, 0x7f090194

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/widget/FrameLayout;

    .line 47
    .line 48
    if-eqz v1, :cond_8

    .line 49
    .line 50
    iput-object v1, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->bottomSheet:Landroid/widget/FrameLayout;

    .line 51
    .line 52
    const v2, 0x7f090444

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    .line 60
    .line 61
    iput-object v2, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    instance-of v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 68
    .line 69
    if-eqz v3, :cond_7

    .line 70
    .line 71
    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 72
    .line 73
    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 74
    .line 75
    instance-of v3, v2, Lapp/k9mail/ui/utils/bottomsheet/LayoutAwareBottomSheetBehavior;

    .line 76
    .line 77
    if-eqz v3, :cond_6

    .line 78
    .line 79
    check-cast v2, Lapp/k9mail/ui/utils/bottomsheet/LayoutAwareBottomSheetBehavior;

    .line 80
    .line 81
    iget-object v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 82
    .line 83
    iget-object v4, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->cancelDialogCallback:Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$cancelDialogCallback$1;

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-nez v5, :cond_0

    .line 90
    .line 91
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    :cond_0
    iget-boolean v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 95
    .line 96
    const/4 v4, 0x1

    .line 97
    if-eq v3, v4, :cond_1

    .line 98
    .line 99
    iput-boolean v4, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    .line 102
    .line 103
    .line 104
    :cond_1
    iput-object v2, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->internalBehavior:Lapp/k9mail/ui/utils/bottomsheet/LayoutAwareBottomSheetBehavior;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_2

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_2

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    div-int/lit8 v3, v3, 0x2

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_2
    new-instance v3, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ensureContainerAndBehavior$$inlined$doOnLayout$1;

    .line 129
    .line 130
    invoke-direct {v3, v2, v0}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ensureContainerAndBehavior$$inlined$doOnLayout$1;-><init>(Lapp/k9mail/ui/utils/bottomsheet/LayoutAwareBottomSheetBehavior;Landroid/widget/FrameLayout;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 134
    .line 135
    .line 136
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_5

    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-nez v2, :cond_5

    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    const/4 v3, 0x0

    .line 157
    if-ge v1, v2, :cond_4

    .line 158
    .line 159
    invoke-virtual {v0, v4}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->coordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 163
    .line 164
    if-eqz v0, :cond_3

    .line 165
    .line 166
    invoke-virtual {v0, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setFitsSystemWindows(Z)V

    .line 167
    .line 168
    .line 169
    :cond_3
    invoke-virtual {p0, v3}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->setToolbarVisibilityCallback(I)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 174
    .line 175
    .line 176
    iget-object p0, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->coordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 177
    .line 178
    if-eqz p0, :cond_a

    .line 179
    .line 180
    invoke-virtual {p0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setFitsSystemWindows(Z)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_5
    new-instance v2, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ensureContainerAndBehavior$$inlined$doOnLayout$2;

    .line 185
    .line 186
    invoke-direct {v2, v1, v0, p0}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ensureContainerAndBehavior$$inlined$doOnLayout$2;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_6
    const-string p0, "The view is not associated with ToolbarBottomSheetBehavior"

    .line 194
    .line 195
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_7
    const-string p0, "The view is not a child of CoordinatorLayout"

    .line 200
    .line 201
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :cond_8
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_9
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_a
    :goto_1
    return-void
.end method

.method public final getBehavior()Lapp/k9mail/ui/utils/bottomsheet/LayoutAwareBottomSheetBehavior;
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->internalBehavior:Lapp/k9mail/ui/utils/bottomsheet/LayoutAwareBottomSheetBehavior;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->ensureContainerAndBehavior()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->internalBehavior:Lapp/k9mail/ui/utils/bottomsheet/LayoutAwareBottomSheetBehavior;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    const-string p0, "Missing ToolbarBottomSheetBehavior"

    .line 14
    .line 15
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->container:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->coordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setFitsSystemWindows(Z)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    or-int/lit16 v0, v0, 0x500

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 16
    .line 17
    .line 18
    const/high16 p1, -0x80000000

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 21
    .line 22
    .line 23
    const/4 p1, -0x1

    .line 24
    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setLayout(II)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentDialog;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->internalBehavior:Lapp/k9mail/ui/utils/bottomsheet/LayoutAwareBottomSheetBehavior;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    .line 98
    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->ensureContainerAndBehavior()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->container:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    const-string v1, "Required value was null."

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v2, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->coordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    iget-object v3, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->bottomSheet:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/16 v4, 0xf

    .line 24
    .line 25
    invoke-direct {v1, v4, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 29
    .line 30
    invoke-static {v3, v1}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v4, 0x1

    .line 38
    const/4 v5, 0x0

    .line 39
    if-le v1, v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v3, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 46
    .line 47
    .line 48
    const p1, 0x7f09044e

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$$ExternalSyntheticLambda0;

    .line 56
    .line 57
    const/4 v2, 0x2

    .line 58
    invoke-direct {v1, v2, p0}, Lcom/fsck/k9/activity/AlternateRecipientAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    new-instance p1, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;

    .line 65
    .line 66
    const/4 v1, 0x3

    .line 67
    invoke-direct {p1, v1, p0}, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;-><init>(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v3, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 71
    .line 72
    .line 73
    new-instance p1, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$$ExternalSyntheticLambda2;

    .line 74
    .line 75
    invoke-direct {p1, v5}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$$ExternalSyntheticLambda2;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 79
    .line 80
    .line 81
    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalStateException;

    .line 97
    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setToolbarVisibilityCallback(I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Required value was null."

    .line 6
    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    iget-object v2, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->bottomSheet:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    if-eqz v2, :cond_7

    .line 12
    .line 13
    iget-object v2, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 14
    .line 15
    if-eqz v2, :cond_6

    .line 16
    .line 17
    iget-object v3, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->internalBehavior:Lapp/k9mail/ui/utils/bottomsheet/LayoutAwareBottomSheetBehavior;

    .line 18
    .line 19
    if-eqz v3, :cond_5

    .line 20
    .line 21
    iget-object v1, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v4, v3, Lapp/k9mail/ui/utils/bottomsheet/LayoutAwareBottomSheetBehavior;->callbacks:Ljava/util/LinkedHashSet;

    .line 24
    .line 25
    iget-object v5, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->toolbarVisibilityCallback:Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ToolbarVisibilityCallback;

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    new-instance v5, Landroidx/fragment/app/Fragment$7;

    .line 36
    .line 37
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v7, 0x23

    .line 43
    .line 44
    if-lt v6, v7, :cond_1

    .line 45
    .line 46
    new-instance v6, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 47
    .line 48
    invoke-direct {v6, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;)V

    .line 49
    .line 50
    .line 51
    iput-object v6, v5, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/16 v7, 0x1e

    .line 55
    .line 56
    if-lt v6, v7, :cond_2

    .line 57
    .line 58
    new-instance v6, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 59
    .line 60
    invoke-direct {v6, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;)V

    .line 61
    .line 62
    .line 63
    iput-object v6, v5, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/16 v7, 0x1a

    .line 67
    .line 68
    if-lt v6, v7, :cond_3

    .line 69
    .line 70
    new-instance v6, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 71
    .line 72
    invoke-direct {v6, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;)V

    .line 73
    .line 74
    .line 75
    iput-object v6, v5, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    new-instance v6, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 79
    .line 80
    invoke-direct {v6, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;)V

    .line 81
    .line 82
    .line 83
    iput-object v6, v5, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 84
    .line 85
    :goto_0
    new-instance v0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ToolbarVisibilityCallback;

    .line 86
    .line 87
    invoke-direct {v0, v5, v2, p1, v3}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ToolbarVisibilityCallback;-><init>(Landroidx/fragment/app/Fragment$7;Landroidx/appcompat/widget/Toolbar;ILcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_4

    .line 98
    .line 99
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :cond_4
    iput-object v0, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->toolbarVisibilityCallback:Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ToolbarVisibilityCallback;

    .line 103
    .line 104
    return-void

    .line 105
    :cond_5
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_6
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_7
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_8
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.class public Lcom/fsck/k9/view/HighlightDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public highlightView:Lcom/fsck/k9/ui/compose/SimpleHighlightView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/fsck/k9/view/HighlightDialogFragment;->highlightView:Lcom/fsck/k9/ui/compose/SimpleHighlightView;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v1, v0, [F

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    aput v2, v1, v3

    .line 14
    .line 15
    const-string v2, "alpha"

    .line 16
    .line 17
    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-wide v2, p1, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->fadeOutMillis:J

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v2, Lcom/fsck/k9/ui/compose/SimpleHighlightView$fadeInHighlight$$inlined$onAnimationStart$1;

    .line 31
    .line 32
    invoke-direct {v2, p1, v0}, Lcom/fsck/k9/ui/compose/SimpleHighlightView$fadeInHighlight$$inlined$onAnimationStart$1;-><init>(Lcom/fsck/k9/ui/compose/SimpleHighlightView;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/fsck/k9/view/HighlightDialogFragment;->highlightView:Lcom/fsck/k9/ui/compose/SimpleHighlightView;

    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string v3, "input_method"

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 35
    .line 36
    const-string v2, "highlighted_view"

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_6

    .line 50
    .line 51
    iget-object v3, p0, Lcom/fsck/k9/view/HighlightDialogFragment;->highlightView:Lcom/fsck/k9/ui/compose/SimpleHighlightView;

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    iget-object v3, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 57
    .line 58
    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    sget v3, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->$r8$clinit:I

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    new-instance v3, Lcom/fsck/k9/ui/compose/SimpleHighlightView;

    .line 72
    .line 73
    invoke-direct {v3, v0}, Lcom/fsck/k9/ui/compose/SimpleHighlightView;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v3, v2}, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->access$setTarget(Lcom/fsck/k9/ui/compose/SimpleHighlightView;Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    const v2, 0x1020002

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/view/ViewGroup;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-static {v3, v0}, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->access$setParent(Lcom/fsck/k9/ui/compose/SimpleHighlightView;Landroid/view/ViewGroup;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-lez v0, :cond_4

    .line 106
    .line 107
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-lez v0, :cond_4

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->updateBitmap()V

    .line 114
    .line 115
    .line 116
    :cond_4
    const/4 v0, 0x2

    .line 117
    new-array v0, v0, [F

    .line 118
    .line 119
    fill-array-data v0, :array_0

    .line 120
    .line 121
    .line 122
    const-string v2, "alpha"

    .line 123
    .line 124
    invoke-static {v3, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-wide v4, v3, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->fadeInMillis:J

    .line 129
    .line 130
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    new-instance v2, Lcom/fsck/k9/ui/compose/SimpleHighlightView$fadeInHighlight$$inlined$onAnimationStart$1;

    .line 138
    .line 139
    invoke-direct {v2, v3, v1}, Lcom/fsck/k9/ui/compose/SimpleHighlightView$fadeInHighlight$$inlined$onAnimationStart$1;-><init>(Lcom/fsck/k9/ui/compose/SimpleHighlightView;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 146
    .line 147
    .line 148
    iput-object v3, p0, Lcom/fsck/k9/view/HighlightDialogFragment;->highlightView:Lcom/fsck/k9/ui/compose/SimpleHighlightView;

    .line 149
    .line 150
    :goto_1
    iget-object p0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 151
    .line 152
    if-nez p0, :cond_5

    .line 153
    .line 154
    return-void

    .line 155
    :cond_5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    const/high16 v0, 0x3e800000    # 0.25f

    .line 160
    .line 161
    invoke-virtual {p0, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_6
    const-string p0, "fragment must be attached to set highlight!"

    .line 166
    .line 167
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

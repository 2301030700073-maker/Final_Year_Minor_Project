.class public final Landroidx/fragment/app/DialogFragment$4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/fragment/app/DialogFragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/DialogFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/fragment/app/DialogFragment$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/fragment/app/DialogFragment$4;->this$0:Landroidx/fragment/app/DialogFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget v0, p0, Landroidx/fragment/app/DialogFragment$4;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const-wide/16 v2, 0x7d0

    .line 5
    .line 6
    iget-object v4, p0, Landroidx/fragment/app/DialogFragment$4;->this$0:Landroidx/fragment/app/DialogFragment;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Ljava/lang/CharSequence;

    .line 12
    .line 13
    check-cast v4, Landroidx/biometric/FingerprintDialogFragment;

    .line 14
    .line 15
    iget-object p0, v4, Landroidx/biometric/FingerprintDialogFragment;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v0, v4, Landroidx/biometric/FingerprintDialogFragment;->mResetDialogRunnable:Landroidx/fragment/app/Fragment$1;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v4, Landroidx/biometric/FingerprintDialogFragment;->mHelpMessageView:Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    .line 34
    .line 35
    check-cast v4, Landroidx/biometric/FingerprintDialogFragment;

    .line 36
    .line 37
    iget-object p0, v4, Landroidx/biometric/FingerprintDialogFragment;->mHandler:Landroid/os/Handler;

    .line 38
    .line 39
    iget-object v0, v4, Landroidx/biometric/FingerprintDialogFragment;->mResetDialogRunnable:Landroidx/fragment/app/Fragment$1;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    iget-object v6, v4, Landroidx/biometric/FingerprintDialogFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    .line 49
    .line 50
    const/4 v7, 0x2

    .line 51
    if-nez v6, :cond_1

    .line 52
    .line 53
    goto :goto_4

    .line 54
    :cond_1
    iget-object v6, v4, Landroidx/biometric/FingerprintDialogFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 55
    .line 56
    iget v6, v6, Landroidx/biometric/BiometricViewModel;->mFingerprintDialogPreviousState:I

    .line 57
    .line 58
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    const/4 v9, 0x1

    .line 63
    const/4 v10, 0x0

    .line 64
    if-nez v8, :cond_2

    .line 65
    .line 66
    const-string v1, "FingerprintFragment"

    .line 67
    .line 68
    const-string v8, "Unable to get asset. Context is null."

    .line 69
    .line 70
    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const v11, 0x7f080095

    .line 75
    .line 76
    .line 77
    if-nez v6, :cond_3

    .line 78
    .line 79
    if-ne v5, v9, :cond_3

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    if-ne v6, v9, :cond_4

    .line 83
    .line 84
    if-ne v5, v7, :cond_4

    .line 85
    .line 86
    const v11, 0x7f080094

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    if-ne v6, v7, :cond_5

    .line 91
    .line 92
    if-ne v5, v9, :cond_5

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    if-ne v6, v9, :cond_6

    .line 96
    .line 97
    if-ne v5, v1, :cond_6

    .line 98
    .line 99
    :goto_0
    invoke-virtual {v8, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    :cond_6
    :goto_1
    if-nez v10, :cond_7

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_7
    iget-object v1, v4, Landroidx/biometric/FingerprintDialogFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    .line 107
    .line 108
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    .line 110
    .line 111
    if-nez v6, :cond_8

    .line 112
    .line 113
    if-ne v5, v9, :cond_8

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_8
    if-ne v6, v9, :cond_9

    .line 117
    .line 118
    if-ne v5, v7, :cond_9

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_9
    if-ne v6, v7, :cond_a

    .line 122
    .line 123
    if-ne v5, v9, :cond_a

    .line 124
    .line 125
    :goto_2
    invoke-static {v10}, Landroidx/biometric/FingerprintDialogFragment$Api21Impl;->startAnimation(Landroid/graphics/drawable/Drawable;)V

    .line 126
    .line 127
    .line 128
    :cond_a
    :goto_3
    iget-object v1, v4, Landroidx/biometric/FingerprintDialogFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 129
    .line 130
    iput v5, v1, Landroidx/biometric/BiometricViewModel;->mFingerprintDialogPreviousState:I

    .line 131
    .line 132
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    iget-object v1, v4, Landroidx/biometric/FingerprintDialogFragment;->mHelpMessageView:Landroid/widget/TextView;

    .line 137
    .line 138
    if-eqz v1, :cond_c

    .line 139
    .line 140
    if-ne p1, v7, :cond_b

    .line 141
    .line 142
    iget p1, v4, Landroidx/biometric/FingerprintDialogFragment;->mErrorTextColor:I

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_b
    iget p1, v4, Landroidx/biometric/FingerprintDialogFragment;->mNormalTextColor:I

    .line 146
    .line 147
    :goto_5
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    .line 149
    .line 150
    :cond_c
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :pswitch_1
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    .line 155
    .line 156
    if-eqz p1, :cond_f

    .line 157
    .line 158
    iget-boolean p1, v4, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 159
    .line 160
    if-eqz p1, :cond_f

    .line 161
    .line 162
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    if-nez v0, :cond_e

    .line 171
    .line 172
    iget-object v0, v4, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 173
    .line 174
    if-eqz v0, :cond_f

    .line 175
    .line 176
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_d

    .line 181
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v1, "DialogFragment "

    .line 185
    .line 186
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string p0, " setting the content view on "

    .line 193
    .line 194
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget-object p0, v4, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 198
    .line 199
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    const-string v0, "FragmentManager"

    .line 207
    .line 208
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    :cond_d
    iget-object p0, v4, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 212
    .line 213
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 214
    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_e
    const-string p0, "DialogFragment can not be attached to a container view"

    .line 218
    .line 219
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    :cond_f
    :goto_6
    return-void

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

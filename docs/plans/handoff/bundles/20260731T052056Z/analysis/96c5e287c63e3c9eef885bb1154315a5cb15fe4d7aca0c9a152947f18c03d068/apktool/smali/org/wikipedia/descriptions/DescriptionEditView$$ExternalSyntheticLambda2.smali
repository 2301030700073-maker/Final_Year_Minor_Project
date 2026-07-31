.class public final synthetic Lorg/wikipedia/descriptions/DescriptionEditView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/descriptions/DescriptionEditView;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/descriptions/DescriptionEditView$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditView$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->callback:Lorg/wikipedia/descriptions/DescriptionEditView$Callback;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    check-cast p0, Lorg/wikipedia/media/AvPlayer;

    .line 14
    .line 15
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 18
    .line 19
    :try_start_0
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->voiceSearchLauncher:Landroidx/fragment/app/Fragment$10;

    .line 20
    .line 21
    new-instance v0, Landroid/content/Intent;

    .line 22
    .line 23
    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    .line 24
    .line 25
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    .line 29
    .line 30
    const-string v3, "free_form"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const p1, 0x7f1201ea

    .line 45
    .line 46
    .line 47
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 48
    .line 49
    .line 50
    :cond_0
    :goto_0
    return-void

    .line 51
    :pswitch_0
    sget p1, Lorg/wikipedia/descriptions/DescriptionEditView;->$r8$clinit:I

    .line 52
    .line 53
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->performReadArticleClick()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_1
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->callback:Lorg/wikipedia/descriptions/DescriptionEditView$Callback;

    .line 58
    .line 59
    if-eqz p0, :cond_8

    .line 60
    .line 61
    check-cast p0, Lorg/wikipedia/media/AvPlayer;

    .line 62
    .line 63
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 66
    .line 67
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 68
    .line 69
    const-string v0, "captchaHandler"

    .line 70
    .line 71
    if-eqz p1, :cond_7

    .line 72
    .line 73
    invoke-virtual {p1}, Lorg/wikipedia/captcha/CaptchaHandler;->isActive()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 80
    .line 81
    if-eqz p0, :cond_1

    .line 82
    .line 83
    invoke-virtual {p0}, Lorg/wikipedia/captcha/CaptchaHandler;->cancelCaptcha()V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v1

    .line 91
    :cond_2
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    iget-object p1, p1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p1, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 99
    .line 100
    invoke-virtual {p1}, Lorg/wikipedia/descriptions/DescriptionEditView;->showingReviewContent()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 114
    .line 115
    const/4 p1, 0x0

    .line 116
    invoke-virtual {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditView;->loadReviewContent(Z)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    new-instance v1, Landroidx/paging/HintHandler;

    .line 136
    .line 137
    invoke-direct {v1, v0}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 138
    .line 139
    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 141
    .line 142
    const/16 v2, 0x23

    .line 143
    .line 144
    if-lt v0, v2, :cond_4

    .line 145
    .line 146
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 147
    .line 148
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    const/16 v2, 0x1e

    .line 153
    .line 154
    if-lt v0, v2, :cond_5

    .line 155
    .line 156
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 157
    .line 158
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_5
    const/16 v2, 0x1a

    .line 163
    .line 164
    if-lt v0, v2, :cond_6

    .line 165
    .line 166
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 167
    .line 168
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_6
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 173
    .line 174
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 175
    .line 176
    .line 177
    :goto_1
    invoke-virtual {v0}, Lcoil3/util/UtilsKt;->hide()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v1

    .line 196
    :cond_8
    :goto_2
    return-void

    .line 197
    :pswitch_2
    sget p1, Lorg/wikipedia/descriptions/DescriptionEditView;->$r8$clinit:I

    .line 198
    .line 199
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->performReadArticleClick()V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :pswitch_3
    sget v0, Lorg/wikipedia/descriptions/DescriptionEditView;->$r8$clinit:I

    .line 204
    .line 205
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->validateText()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-eqz p1, :cond_9

    .line 213
    .line 214
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->callback:Lorg/wikipedia/descriptions/DescriptionEditView$Callback;

    .line 215
    .line 216
    if-eqz p0, :cond_9

    .line 217
    .line 218
    check-cast p0, Lorg/wikipedia/media/AvPlayer;

    .line 219
    .line 220
    invoke-virtual {p0}, Lorg/wikipedia/media/AvPlayer;->onSaveClick()V

    .line 221
    .line 222
    .line 223
    :cond_9
    return-void

    .line 224
    nop

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

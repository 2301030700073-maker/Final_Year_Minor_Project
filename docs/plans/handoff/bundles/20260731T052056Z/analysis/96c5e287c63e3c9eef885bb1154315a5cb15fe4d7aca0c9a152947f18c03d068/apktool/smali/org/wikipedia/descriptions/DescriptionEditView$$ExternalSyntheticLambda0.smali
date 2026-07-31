.class public final synthetic Lorg/wikipedia/descriptions/DescriptionEditView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/descriptions/DescriptionEditView;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/descriptions/DescriptionEditView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget v0, Lorg/wikipedia/descriptions/DescriptionEditView;->$r8$clinit:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->binding:Lorg/wikipedia/databinding/ViewDescriptionEditBinding;

    .line 18
    .line 19
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewDescriptionEditBinding;->viewDescriptionEditScrollview:Landroid/widget/ScrollView;

    .line 20
    .line 21
    const/16 v0, 0x82

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :pswitch_0
    sget v0, Lorg/wikipedia/descriptions/DescriptionEditView;->$r8$clinit:I

    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->validateText()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_1
    sget v0, Lorg/wikipedia/descriptions/DescriptionEditView;->$r8$clinit:I

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->binding:Lorg/wikipedia/databinding/ViewDescriptionEditBinding;

    .line 42
    .line 43
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewDescriptionEditBinding;->viewDescriptionEditText:Lorg/wikipedia/views/PlainPasteEditText;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "input_method"

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 59
    .line 60
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void

    .line 64
    :pswitch_2
    sget v0, Lorg/wikipedia/descriptions/DescriptionEditView;->$r8$clinit:I

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    goto/16 :goto_1

    .line 73
    .line 74
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    check-cast v0, Landroid/app/Activity;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    new-instance v3, Landroidx/paging/HintHandler;

    .line 95
    .line 96
    invoke-direct {v3, v2}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 100
    .line 101
    const/16 v4, 0x23

    .line 102
    .line 103
    if-lt v2, v4, :cond_3

    .line 104
    .line 105
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 106
    .line 107
    invoke-direct {v2, v0, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    const/16 v4, 0x1e

    .line 112
    .line 113
    if-lt v2, v4, :cond_4

    .line 114
    .line 115
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 116
    .line 117
    invoke-direct {v2, v0, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    const/16 v4, 0x1a

    .line 122
    .line 123
    if-lt v2, v4, :cond_5

    .line 124
    .line 125
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 126
    .line 127
    invoke-direct {v2, v0, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_5
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 132
    .line 133
    invoke-direct {v2, v0, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 134
    .line 135
    .line 136
    :goto_0
    invoke-virtual {v2}, Lcoil3/util/UtilsKt;->hide()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    move-object v2, v0

    .line 147
    check-cast v2, Landroid/app/Activity;

    .line 148
    .line 149
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->binding:Lorg/wikipedia/databinding/ViewDescriptionEditBinding;

    .line 150
    .line 151
    iget-object v3, v0, Lorg/wikipedia/databinding/ViewDescriptionEditBinding;->suggestedDescButton:Lcom/google/android/material/chip/Chip;

    .line 152
    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const v4, 0x7f120125

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    const/4 v6, 0x1

    .line 168
    const/16 v7, 0x60

    .line 169
    .line 170
    const/4 v5, 0x0

    .line 171
    invoke-static/range {v2 .. v7}, Lorg/wikipedia/util/ShareUtil;->showTooltip$default(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;ZZI)Lcom/skydoves/balloon/Balloon;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    new-instance v2, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 176
    .line 177
    const/4 v3, 0x4

    .line 178
    invoke-direct {v2, v3, p0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v2}, Lcom/skydoves/balloon/Balloon;->setOnBalloonDismissListener(Lkotlin/jvm/functions/Function0;)V

    .line 182
    .line 183
    .line 184
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 185
    .line 186
    const p0, 0x7f120678

    .line 187
    .line 188
    .line 189
    invoke-static {p0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 190
    .line 191
    .line 192
    :goto_1
    return-void

    .line 193
    :pswitch_3
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->mlKitLanguageDetector:Lokio/ByteString$Companion;

    .line 194
    .line 195
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->binding:Lorg/wikipedia/databinding/ViewDescriptionEditBinding;

    .line 196
    .line 197
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewDescriptionEditBinding;->viewDescriptionEditText:Lorg/wikipedia/views/PlainPasteEditText;

    .line 198
    .line 199
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

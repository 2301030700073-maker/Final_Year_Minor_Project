.class public final Landroidx/preference/SeekBarPreference$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/preference/SeekBarPreference$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/preference/SeekBarPreference$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/wikipedia/theme/ThemeChooserDialog;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-boolean p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->isEditing:Z

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    const p2, 0x7f1205f4

    .line 24
    .line 25
    .line 26
    invoke-static {p2, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget-object p3, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 31
    .line 32
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iget-object p3, p3, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->textSizeSeekBar:Lorg/wikipedia/views/DiscreteSeekBar;

    .line 36
    .line 37
    invoke-virtual {p3}, Lorg/wikipedia/views/DiscreteSeekBar;->getValue()I

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    invoke-static {p2, p3}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->callback()Lorg/wikipedia/theme/ThemeChooserDialog$Callback;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    invoke-interface {p2}, Lorg/wikipedia/theme/ThemeChooserDialog$Callback;->onEditingPrefsChanged()V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->updateFontSize$1()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 58
    .line 59
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTextSizeMultiplier()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iget-object p2, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    .line 64
    .line 65
    iget-object p3, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->_binding:Lorg/wikipedia/databinding/DialogThemeChooserBinding;

    .line 66
    .line 67
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    iget-object p3, p3, Lorg/wikipedia/databinding/DialogThemeChooserBinding;->textSizeSeekBar:Lorg/wikipedia/views/DiscreteSeekBar;

    .line 71
    .line 72
    invoke-virtual {p3}, Lorg/wikipedia/views/DiscreteSeekBar;->getValue()I

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    invoke-virtual {p2, p3}, Lorg/wikipedia/WikipediaApp;->setFontSizeMultiplier(I)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_3

    .line 81
    .line 82
    const/4 p2, 0x1

    .line 83
    iput-boolean p2, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->updatingFont:Z

    .line 84
    .line 85
    invoke-virtual {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->updateFontSize$1()V

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_0
    iget-object p0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->appearanceSettingInteractionEvent:Lokhttp3/ConnectionPool;

    .line 89
    .line 90
    if-eqz p0, :cond_4

    .line 91
    .line 92
    int-to-float p1, p1

    .line 93
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTextSizeMultiplier()I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    int-to-float p2, p2

    .line 98
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    const-string p3, "fontSizeChange"

    .line 107
    .line 108
    invoke-virtual {p0, p3, p1, p2}, Lokhttp3/ConnectionPool;->submitEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :goto_1
    return-void

    .line 112
    :cond_4
    const-string p0, "appearanceSettingInteractionEvent"

    .line 113
    .line 114
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const/4 p0, 0x0

    .line 118
    throw p0

    .line 119
    :pswitch_0
    check-cast p0, Landroidx/preference/SeekBarPreference;

    .line 120
    .line 121
    if-eqz p3, :cond_6

    .line 122
    .line 123
    iget-boolean p3, p0, Landroidx/preference/SeekBarPreference;->mUpdatesContinuously:Z

    .line 124
    .line 125
    if-nez p3, :cond_5

    .line 126
    .line 127
    iget-boolean p3, p0, Landroidx/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 128
    .line 129
    if-nez p3, :cond_6

    .line 130
    .line 131
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->syncValueInternal(Landroid/widget/SeekBar;)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_6
    iget p1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    .line 136
    .line 137
    add-int/2addr p2, p1

    .line 138
    iget-object p0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    .line 139
    .line 140
    if-eqz p0, :cond_7

    .line 141
    .line 142
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    :cond_7
    :goto_2
    return-void

    .line 150
    nop

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/preference/SeekBarPreference$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroidx/preference/SeekBarPreference;

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Landroidx/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/preference/SeekBarPreference$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroidx/preference/SeekBarPreference;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroidx/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget v1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    .line 22
    .line 23
    add-int/2addr v0, v1

    .line 24
    iget v1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    .line 25
    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->syncValueInternal(Landroid/widget/SeekBar;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

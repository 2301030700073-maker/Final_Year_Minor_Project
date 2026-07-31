.class public final synthetic Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/wikipedia/views/TextInputDialog;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lorg/wikipedia/views/TextInputDialog;->callback:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lokio/internal/DefaultSocket;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p2, p0, Lorg/wikipedia/views/TextInputDialog;->binding:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p2, Lokio/internal/DefaultSocket;

    .line 24
    .line 25
    iget-object p2, p2, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p2, Lorg/wikipedia/views/PlainPasteEditText;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2, p0}, Lokio/internal/DefaultSocket;->onTextChanged(Ljava/lang/String;Lorg/wikipedia/views/TextInputDialog;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :pswitch_0
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;->updateSubmitState()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_1
    check-cast p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->callback:Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView$Callback;

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    iget p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->position:I

    .line 60
    .line 61
    check-cast p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    .line 62
    .line 63
    iget-object v0, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->wikipediaLanguages:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->toggleSelectedLanguage(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->updateBackgroundColor()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_2
    check-cast p0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lorg/wikipedia/edit/EditSectionActivity;

    .line 88
    .line 89
    invoke-virtual {p1}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object p1, p1, Lorg/wikipedia/edit/EditSectionViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 94
    .line 95
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ADD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 96
    .line 97
    if-ne p1, v0, :cond_3

    .line 98
    .line 99
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 100
    .line 101
    if-eqz p2, :cond_2

    .line 102
    .line 103
    const-string p2, "add_watchlist"

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    const-string p2, "remove_watchlist"

    .line 107
    .line 108
    :goto_0
    invoke-virtual {p0}, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->getActionDataStringForData()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    const/16 v0, 0x8

    .line 113
    .line 114
    const-string v1, "editsummary_dialog"

    .line 115
    .line 116
    invoke-static {p1, p2, v1, p0, v0}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    :cond_3
    return-void

    .line 120
    :pswitch_3
    check-cast p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImageSizeDialog;

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImageSizeDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImageSizeDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 145
    .line 146
    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 147
    .line 148
    .line 149
    if-nez p2, :cond_4

    .line 150
    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 156
    .line 157
    invoke-virtual {p1}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    const-string p2, "220x124"

    .line 162
    .line 163
    iput-object p2, p1, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->imageSize:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaImageSizeDialog;->setCustomSizeFields()V

    .line 166
    .line 167
    .line 168
    :cond_4
    return-void

    .line 169
    :pswitch_4
    check-cast p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;

    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->getViewModel$4()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    if-eqz p2, :cond_5

    .line 179
    .line 180
    const-string p2, "img_right"

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_5
    const-string p2, "img_none"

    .line 184
    .line 185
    :goto_1
    iput-object p2, p1, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->imagePosition:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->onUpdateImagePosition()V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :pswitch_5
    check-cast p0, Lcom/google/android/material/chip/Chip;

    .line 192
    .line 193
    sget-object v0, Lcom/google/android/material/chip/Chip;->EMPTY_BOUNDS:Landroid/graphics/Rect;

    .line 194
    .line 195
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->onCheckedChangeListenerInternal:Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;

    .line 196
    .line 197
    if-eqz v0, :cond_7

    .line 198
    .line 199
    check-cast v0, Lcoil3/memory/MemoryCacheService;

    .line 200
    .line 201
    iget-object v0, v0, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v0, Lcom/google/android/material/internal/CheckableGroup;

    .line 204
    .line 205
    if-eqz p2, :cond_6

    .line 206
    .line 207
    invoke-virtual {v0, p0}, Lcom/google/android/material/internal/CheckableGroup;->checkInternal(Lcom/google/android/material/internal/MaterialCheckable;)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_7

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_6
    iget-boolean v1, v0, Lcom/google/android/material/internal/CheckableGroup;->selectionRequired:Z

    .line 215
    .line 216
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/internal/CheckableGroup;->uncheckInternal(Lcom/google/android/material/internal/MaterialCheckable;Z)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-eqz v1, :cond_7

    .line 221
    .line 222
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChanged()V

    .line 223
    .line 224
    .line 225
    :cond_7
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 226
    .line 227
    if-eqz p0, :cond_8

    .line 228
    .line 229
    invoke-interface {p0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 230
    .line 231
    .line 232
    :cond_8
    return-void

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/places/PlacesFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/places/PlacesFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda14;->f$0:Lorg/wikipedia/places/PlacesFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onButtonChecked(IZ)V
    .locals 5

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p0, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda14;->f$0:Lorg/wikipedia/places/PlacesFragment;

    .line 7
    .line 8
    iput p1, p0, Lorg/wikipedia/places/PlacesFragment;->lastCheckedId:I

    .line 9
    .line 10
    const p2, 0x7f090373

    .line 11
    .line 12
    .line 13
    if-ne p1, p2, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0, p1}, Lorg/wikipedia/places/PlacesFragment;->updateToggleViews(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const v0, 0x7f040520

    .line 26
    .line 27
    .line 28
    invoke-static {p2, v0}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const v1, 0x7f04002d

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const v2, 0x7f0404fb

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v2}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const v3, 0x7f0404e7

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v3}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const v4, 0x7f040061

    .line 70
    .line 71
    .line 72
    invoke-static {v3, v4}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iget-object v4, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 77
    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    iget-object p1, v4, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapViewButton:Landroid/view/View;

    .line 84
    .line 85
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapViewButton:Landroid/view/View;

    .line 96
    .line 97
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapViewButton:Landroid/view/View;

    .line 108
    .line 109
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 110
    .line 111
    invoke-virtual {p1, v2}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listViewButton:Landroid/view/View;

    .line 120
    .line 121
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 122
    .line 123
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listViewButton:Landroid/view/View;

    .line 132
    .line 133
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 134
    .line 135
    invoke-virtual {p1, v2}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 136
    .line 137
    .line 138
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listViewButton:Landroid/view/View;

    .line 144
    .line 145
    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    .line 146
    .line 147
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    iget-object p1, v4, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapViewButton:Landroid/view/View;

    .line 155
    .line 156
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 157
    .line 158
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapViewButton:Landroid/view/View;

    .line 167
    .line 168
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 169
    .line 170
    invoke-virtual {p1, v3}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapViewButton:Landroid/view/View;

    .line 179
    .line 180
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 181
    .line 182
    invoke-virtual {p1, v3}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listViewButton:Landroid/view/View;

    .line 191
    .line 192
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 193
    .line 194
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listViewButton:Landroid/view/View;

    .line 203
    .line 204
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 205
    .line 206
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 207
    .line 208
    .line 209
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 210
    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listViewButton:Landroid/view/View;

    .line 215
    .line 216
    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    .line 217
    .line 218
    invoke-virtual {p0, v3}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 219
    .line 220
    .line 221
    return-void
.end method

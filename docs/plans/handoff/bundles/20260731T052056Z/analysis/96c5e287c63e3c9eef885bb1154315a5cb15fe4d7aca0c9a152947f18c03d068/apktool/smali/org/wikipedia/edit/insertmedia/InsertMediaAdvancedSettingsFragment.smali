.class public final Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public _binding:Lokhttp3/Request$Builder;

.field public activity:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getViewModel$4()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const p3, 0x7f0c0196

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const p2, 0x7f0902c2

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    check-cast p3, Landroid/widget/TextView;

    .line 24
    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    const p2, 0x7f0902c3

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    move-object v3, p3

    .line 35
    check-cast v3, Landroid/widget/TextView;

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    const p2, 0x7f0902ca

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    check-cast p3, Landroid/widget/TextView;

    .line 47
    .line 48
    if-eqz p3, :cond_0

    .line 49
    .line 50
    const p2, 0x7f0902cb

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    move-object v4, p3

    .line 58
    check-cast v4, Landroid/widget/TextView;

    .line 59
    .line 60
    if-eqz v4, :cond_0

    .line 61
    .line 62
    const p2, 0x7f0902d8

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    check-cast p3, Landroid/widget/TextView;

    .line 70
    .line 71
    if-eqz p3, :cond_0

    .line 72
    .line 73
    const p2, 0x7f0902da

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    move-object v5, p3

    .line 81
    check-cast v5, Landroid/widget/TextView;

    .line 82
    .line 83
    if-eqz v5, :cond_0

    .line 84
    .line 85
    move-object v2, p1

    .line 86
    check-cast v2, Landroid/widget/ScrollView;

    .line 87
    .line 88
    const p2, 0x7f09079c

    .line 89
    .line 90
    .line 91
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    move-object v6, p3

    .line 96
    check-cast v6, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 97
    .line 98
    if-eqz v6, :cond_0

    .line 99
    .line 100
    new-instance v1, Lokhttp3/Request$Builder;

    .line 101
    .line 102
    invoke-direct/range {v1 .. v6}, Lokhttp3/Request$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    iput-object v1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->_binding:Lokhttp3/Request$Builder;

    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 112
    .line 113
    iput-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->activity:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 114
    .line 115
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->_binding:Lokhttp3/Request$Builder;

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    iget-object p1, p1, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p1, Landroid/widget/TextView;

    .line 123
    .line 124
    new-instance p2, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment$$ExternalSyntheticLambda0;

    .line 125
    .line 126
    invoke-direct {p2, p0, v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->_binding:Lokhttp3/Request$Builder;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    iget-object p1, p1, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast p1, Landroid/widget/TextView;

    .line 140
    .line 141
    new-instance p2, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment$$ExternalSyntheticLambda0;

    .line 142
    .line 143
    const/4 p3, 0x1

    .line 144
    invoke-direct {p2, p0, p3}, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->_binding:Lokhttp3/Request$Builder;

    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    iget-object p1, p1, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p1, Landroid/widget/TextView;

    .line 158
    .line 159
    new-instance p2, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment$$ExternalSyntheticLambda0;

    .line 160
    .line 161
    const/4 v0, 0x2

    .line 162
    invoke-direct {p2, p0, v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->_binding:Lokhttp3/Request$Builder;

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    iget-object p1, p1, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast p1, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 176
    .line 177
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->getViewModel$4()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    iget-object p2, p2, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->imagePosition:Ljava/lang/String;

    .line 182
    .line 183
    const-string v0, "img_none"

    .line 184
    .line 185
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    xor-int/2addr p2, p3

    .line 190
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->_binding:Lokhttp3/Request$Builder;

    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    iget-object p1, p1, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast p1, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 201
    .line 202
    new-instance p2, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;

    .line 203
    .line 204
    invoke-direct {p2, p3, p0}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 208
    .line 209
    .line 210
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->_binding:Lokhttp3/Request$Builder;

    .line 211
    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    iget-object p0, p0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast p0, Landroid/widget/ScrollView;

    .line 218
    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    return-object p0

    .line 223
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    const-string p1, "Missing required view with ID: "

    .line 232
    .line 233
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    const/4 p0, 0x0

    .line 241
    return-object p0
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->_binding:Lokhttp3/Request$Builder;

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 6
    .line 7
    return-void
.end method

.method public final onUpdateImagePosition()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->getViewModel$4()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->imagePosition:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const v2, -0x296cdcfd

    .line 12
    .line 13
    .line 14
    if-eq v1, v2, :cond_4

    .line 15
    .line 16
    const v2, -0x3d86160

    .line 17
    .line 18
    .line 19
    if-eq v1, v2, :cond_2

    .line 20
    .line 21
    const v2, 0x6efe8051

    .line 22
    .line 23
    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v1, "img_center"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const v0, 0x7f12030d

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const-string v1, "img_right"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const v0, 0x7f120310

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    const-string v1, "img_left"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_5

    .line 60
    .line 61
    :goto_0
    const v0, 0x7f12030f

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_5
    const v0, 0x7f12030e

    .line 66
    .line 67
    .line 68
    :goto_1
    iget-object v1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->_binding:Lokhttp3/Request$Builder;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget-object v1, v1, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->getViewModel$4()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iget-object v2, v2, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->imagePosition:Ljava/lang/String;

    .line 82
    .line 83
    const-string v3, "img_none"

    .line 84
    .line 85
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    const/4 v3, 0x1

    .line 90
    xor-int/2addr v2, v3

    .line 91
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->_binding:Lokhttp3/Request$Builder;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    iget-object v1, v1, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v1, Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iget-object v4, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->_binding:Lokhttp3/Request$Builder;

    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    iget-object v4, v4, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v4, Landroid/widget/TextView;

    .line 115
    .line 116
    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_6

    .line 121
    .line 122
    const v4, 0x7f040520

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_6
    const v4, 0x7f0404fb

    .line 127
    .line 128
    .line 129
    :goto_2
    new-instance v5, Landroid/util/TypedValue;

    .line 130
    .line 131
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_7

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_7
    const/4 v5, 0x0

    .line 146
    :goto_3
    if-eqz v5, :cond_8

    .line 147
    .line 148
    iget v2, v5, Landroid/util/TypedValue;->data:I

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->_binding:Lokhttp3/Request$Builder;

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    iget-object v1, v1, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v1, Landroid/widget/TextView;

    .line 161
    .line 162
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_8
    const-string p0, "Attribute not found; ID="

    .line 171
    .line 172
    invoke-static {v4, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public final onUpdateImageSize()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->getViewModel$4()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->imageSize:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "220x124"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const v0, 0x7f120316

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const v0, 0x7f120312

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object v1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->_binding:Lokhttp3/Request$Builder;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v1, v1, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onUpdateImageType()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->getViewModel$4()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->imageType:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const v2, -0x35d138f6    # -2863554.5f

    .line 12
    .line 13
    .line 14
    if-eq v1, v2, :cond_4

    .line 15
    .line 16
    const v2, -0x70bb490

    .line 17
    .line 18
    .line 19
    if-eq v1, v2, :cond_2

    .line 20
    .line 21
    const v2, 0x74ce3893

    .line 22
    .line 23
    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v1, "img_framed"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const v0, 0x7f120319

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const-string v1, "img_thumbnail"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const v0, 0x7f12031b

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    const-string v1, "img_frameless"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_5

    .line 60
    .line 61
    :goto_0
    const v0, 0x7f120318

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_5
    const v0, 0x7f12031a

    .line 66
    .line 67
    .line 68
    :goto_1
    iget-object v1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->_binding:Lokhttp3/Request$Builder;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget-object v1, v1, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->onUpdateImagePosition()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->onUpdateImageType()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->onUpdateImageSize()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

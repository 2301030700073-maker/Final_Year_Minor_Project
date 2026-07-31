.class public final Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "<init>",
        "()V",
        "org/wikipedia/suggestededits/SuggestedEditsImageRecsFragment",
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

.field public final checkBoxChangedHandler:Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;

.field public checkboxes:[Landroid/widget/CheckBox;

.field public dialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, v1, p0}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;->checkBoxChangedHandler:Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "response"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const v0, 0x7f0c01ad

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const v0, 0x7f0900e7

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    const v0, 0x7f0900e8

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    const v0, 0x7f0900e9

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 53
    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    const v0, 0x7f0900ea

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 64
    .line 65
    if-eqz v6, :cond_1

    .line 66
    .line 67
    const v0, 0x7f0900eb

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    check-cast v7, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 75
    .line 76
    if-eqz v7, :cond_1

    .line 77
    .line 78
    const v0, 0x7f0900ec

    .line 79
    .line 80
    .line 81
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    check-cast v8, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 86
    .line 87
    if-eqz v8, :cond_1

    .line 88
    .line 89
    const v0, 0x7f0902c7

    .line 90
    .line 91
    .line 92
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    check-cast v9, Landroid/widget/LinearLayout;

    .line 97
    .line 98
    if-eqz v9, :cond_1

    .line 99
    .line 100
    const v0, 0x7f0902f9

    .line 101
    .line 102
    .line 103
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    check-cast v9, Landroid/widget/TextView;

    .line 108
    .line 109
    if-eqz v9, :cond_1

    .line 110
    .line 111
    new-instance v0, Lokhttp3/Request$Builder;

    .line 112
    .line 113
    check-cast p1, Landroid/widget/ScrollView;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object p1, v0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object v5, v0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object v6, v0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 123
    .line 124
    iput-object v7, v0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 125
    .line 126
    iput-object v8, v0, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 127
    .line 128
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;->_binding:Lokhttp3/Request$Builder;

    .line 129
    .line 130
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;->_binding:Lokhttp3/Request$Builder;

    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    iget-object p1, p1, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p1, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 138
    .line 139
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;->_binding:Lokhttp3/Request$Builder;

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    iget-object v0, v0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v0, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 147
    .line 148
    iget-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;->_binding:Lokhttp3/Request$Builder;

    .line 149
    .line 150
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    iget-object v5, v5, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v5, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 156
    .line 157
    iget-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;->_binding:Lokhttp3/Request$Builder;

    .line 158
    .line 159
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    iget-object v6, v6, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v6, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 165
    .line 166
    const/4 v7, 0x6

    .line 167
    new-array v8, v7, [Landroid/widget/CheckBox;

    .line 168
    .line 169
    aput-object v3, v8, v2

    .line 170
    .line 171
    const/4 v3, 0x1

    .line 172
    aput-object v4, v8, v3

    .line 173
    .line 174
    const/4 v4, 0x2

    .line 175
    aput-object p1, v8, v4

    .line 176
    .line 177
    const/4 p1, 0x3

    .line 178
    aput-object v0, v8, p1

    .line 179
    .line 180
    const/4 p1, 0x4

    .line 181
    aput-object v5, v8, p1

    .line 182
    .line 183
    const/4 p1, 0x5

    .line 184
    aput-object v6, v8, p1

    .line 185
    .line 186
    iput-object v8, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;->checkboxes:[Landroid/widget/CheckBox;

    .line 187
    .line 188
    move p1, v2

    .line 189
    :goto_0
    if-ge p1, v7, :cond_0

    .line 190
    .line 191
    aget-object v0, v8, p1

    .line 192
    .line 193
    iget-object v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;->checkBoxChangedHandler:Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;

    .line 194
    .line 195
    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 196
    .line 197
    .line 198
    add-int/lit8 p1, p1, 0x1

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_0
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 202
    .line 203
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-direct {p1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;->_binding:Lokhttp3/Request$Builder;

    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    iget-object v0, v0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v0, Landroid/widget/ScrollView;

    .line 218
    .line 219
    iget-object v4, p1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v4, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 222
    .line 223
    iput-object v0, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 224
    .line 225
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog$$ExternalSyntheticLambda1;

    .line 226
    .line 227
    invoke-direct {v0, p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;I)V

    .line 228
    .line 229
    .line 230
    const/high16 v2, 0x1040000

    .line 231
    .line 232
    invoke-virtual {p1, v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 233
    .line 234
    .line 235
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog$$ExternalSyntheticLambda1;

    .line 236
    .line 237
    invoke-direct {v0, p0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;I)V

    .line 238
    .line 239
    .line 240
    const v2, 0x7f1202fd

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 244
    .line 245
    .line 246
    const v0, 0x7f1202ff

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 257
    .line 258
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 259
    .line 260
    const-string v0, "rejection_dialog"

    .line 261
    .line 262
    invoke-static {p1, v0, v1, v7}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logImpression$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;I)V

    .line 263
    .line 264
    .line 265
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 266
    .line 267
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    return-object p0

    .line 271
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    const-string p1, "Missing required view with ID: "

    .line 280
    .line 281
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    return-object v1
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;->_binding:Lokhttp3/Request$Builder;

    .line 6
    .line 7
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;->updateSubmitState()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final updateSubmitState()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;->checkboxes:[Landroid/widget/CheckBox;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, v1, :cond_1

    .line 9
    .line 10
    aget-object v4, v0, v3

    .line 11
    .line 12
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 28
    .line 29
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 37
    .line 38
    if-eqz p0, :cond_4

    .line 39
    .line 40
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 41
    .line 42
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 43
    .line 44
    if-eqz p0, :cond_4

    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    const/high16 v0, 0x3f000000    # 0.5f

    .line 52
    .line 53
    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 54
    .line 55
    .line 56
    :cond_4
    return-void

    .line 57
    :cond_5
    const-string p0, "checkboxes"

    .line 58
    .line 59
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    throw p0
.end method

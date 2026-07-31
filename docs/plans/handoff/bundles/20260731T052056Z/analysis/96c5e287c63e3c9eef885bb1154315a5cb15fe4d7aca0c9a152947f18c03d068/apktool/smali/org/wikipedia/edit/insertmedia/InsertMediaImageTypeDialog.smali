.class public final Lorg/wikipedia/edit/insertmedia/InsertMediaImageTypeDialog;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lorg/wikipedia/edit/insertmedia/InsertMediaImageTypeDialog;",
        "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;",
        "<init>",
        "()V",
        "org/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment",
        "1",
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
.field public _binding:Lokhttp3/MultipartBody$Builder;

.field public final imageTypeList:[Ljava/lang/String;

.field public imageTypeOptions:[Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    const-string v0, "img_frameless"

    .line 6
    .line 7
    const-string v1, "basic"

    .line 8
    .line 9
    const-string v2, "img_thumbnail"

    .line 10
    .line 11
    const-string v3, "img_framed"

    .line 12
    .line 13
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImageTypeDialog;->imageTypeList:[Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public static updateOptionView$1(Landroid/view/View;Z)V
    .locals 2

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "check"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Landroid/widget/ImageView;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/16 p1, 0x8

    .line 32
    .line 33
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p3, 0x7f0c0181

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const p2, 0x7f0902d9

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    check-cast p3, Landroid/widget/LinearLayout;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz p3, :cond_7

    .line 23
    .line 24
    const p2, 0x7f0902db

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/widget/LinearLayout;

    .line 32
    .line 33
    if-eqz v2, :cond_7

    .line 34
    .line 35
    const p2, 0x7f0902dc

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/widget/LinearLayout;

    .line 43
    .line 44
    if-eqz v3, :cond_7

    .line 45
    .line 46
    const p2, 0x7f0902dd

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Landroid/widget/LinearLayout;

    .line 54
    .line 55
    if-eqz v4, :cond_7

    .line 56
    .line 57
    new-instance p2, Lokhttp3/MultipartBody$Builder;

    .line 58
    .line 59
    check-cast p1, Landroid/widget/LinearLayout;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, p2, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 65
    .line 66
    iput-object p3, p2, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 67
    .line 68
    iput-object v3, p2, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 69
    .line 70
    iput-object p2, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImageTypeDialog;->_binding:Lokhttp3/MultipartBody$Builder;

    .line 71
    .line 72
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImageTypeDialog;->_binding:Lokhttp3/MultipartBody$Builder;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    iget-object p1, p1, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p1, Landroid/widget/LinearLayout;

    .line 80
    .line 81
    iget-object p2, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImageTypeDialog;->_binding:Lokhttp3/MultipartBody$Builder;

    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iget-object p2, p2, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p2, Landroid/widget/LinearLayout;

    .line 89
    .line 90
    const/4 p3, 0x4

    .line 91
    new-array v3, p3, [Landroid/view/View;

    .line 92
    .line 93
    aput-object v4, v3, v0

    .line 94
    .line 95
    const/4 v4, 0x1

    .line 96
    aput-object v2, v3, v4

    .line 97
    .line 98
    const/4 v2, 0x2

    .line 99
    aput-object p1, v3, v2

    .line 100
    .line 101
    const/4 p1, 0x3

    .line 102
    aput-object p2, v3, p1

    .line 103
    .line 104
    iput-object v3, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImageTypeDialog;->imageTypeOptions:[Landroid/view/View;

    .line 105
    .line 106
    move p1, v0

    .line 107
    move p2, p1

    .line 108
    :goto_0
    if-ge p1, p3, :cond_0

    .line 109
    .line 110
    aget-object v2, v3, p1

    .line 111
    .line 112
    add-int/lit8 v5, p2, 0x1

    .line 113
    .line 114
    iget-object v6, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImageTypeDialog;->imageTypeList:[Ljava/lang/String;

    .line 115
    .line 116
    aget-object p2, v6, p2

    .line 117
    .line 118
    invoke-virtual {v2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    new-instance p2, Landroidx/preference/Preference$1;

    .line 122
    .line 123
    const/16 v6, 0x9

    .line 124
    .line 125
    invoke-direct {p2, v6, p0}, Landroidx/preference/Preference$1;-><init>(ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    add-int/lit8 p1, p1, 0x1

    .line 132
    .line 133
    move p2, v5

    .line 134
    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImageTypeDialog;->imageTypeOptions:[Landroid/view/View;

    .line 136
    .line 137
    const-string p2, "imageTypeOptions"

    .line 138
    .line 139
    if-eqz p1, :cond_6

    .line 140
    .line 141
    array-length p3, p1

    .line 142
    move v2, v0

    .line 143
    :goto_1
    if-ge v2, p3, :cond_1

    .line 144
    .line 145
    aget-object v3, p1, v2

    .line 146
    .line 147
    invoke-static {v3, v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaImageTypeDialog;->updateOptionView$1(Landroid/view/View;Z)V

    .line 148
    .line 149
    .line 150
    add-int/lit8 v2, v2, 0x1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 158
    .line 159
    invoke-virtual {p1}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iget-object p1, p1, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->imageType:Ljava/lang/String;

    .line 164
    .line 165
    iget-object p3, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImageTypeDialog;->imageTypeOptions:[Landroid/view/View;

    .line 166
    .line 167
    if-eqz p3, :cond_5

    .line 168
    .line 169
    array-length p2, p3

    .line 170
    :goto_2
    if-ge v0, p2, :cond_3

    .line 171
    .line 172
    aget-object v2, p3, v0

    .line 173
    .line 174
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-eqz v3, :cond_2

    .line 183
    .line 184
    move-object v1, v2

    .line 185
    goto :goto_3

    .line 186
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    .line 190
    .line 191
    invoke-static {v1, v4}, Lorg/wikipedia/edit/insertmedia/InsertMediaImageTypeDialog;->updateOptionView$1(Landroid/view/View;Z)V

    .line 192
    .line 193
    .line 194
    :cond_4
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImageTypeDialog;->_binding:Lokhttp3/MultipartBody$Builder;

    .line 195
    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast p0, Landroid/widget/LinearLayout;

    .line 202
    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    return-object p0

    .line 207
    :cond_5
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v1

    .line 211
    :cond_6
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw v1

    .line 215
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    const-string p1, "Missing required view with ID: "

    .line 224
    .line 225
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    return-object v1
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImageTypeDialog;->_binding:Lokhttp3/MultipartBody$Builder;

    .line 3
    .line 4
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

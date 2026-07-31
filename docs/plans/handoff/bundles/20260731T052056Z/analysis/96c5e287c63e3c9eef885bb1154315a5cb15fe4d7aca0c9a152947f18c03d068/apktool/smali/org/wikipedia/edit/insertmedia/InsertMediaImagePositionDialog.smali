.class public final Lorg/wikipedia/edit/insertmedia/InsertMediaImagePositionDialog;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lorg/wikipedia/edit/insertmedia/InsertMediaImagePositionDialog;",
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
.field public _binding:Lretrofit2/OkHttpCall$1;

.field public final imagePositionList:[Ljava/lang/String;

.field public imagePositionOptions:[Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    const-string v0, "img_center"

    .line 6
    .line 7
    const-string v1, "img_left"

    .line 8
    .line 9
    const-string v2, "img_right"

    .line 10
    .line 11
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImagePositionDialog;->imagePositionList:[Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public static updateOptionView(Landroid/view/View;Z)V
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
    const p3, 0x7f0c017f

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
    const p2, 0x7f0902c4

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
    const p2, 0x7f0902c5

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
    const p2, 0x7f0902c6

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
    new-instance p2, Lretrofit2/OkHttpCall$1;

    .line 47
    .line 48
    check-cast p1, Landroid/widget/LinearLayout;

    .line 49
    .line 50
    invoke-direct {p2, p1, p3, v2, v3}, Lretrofit2/OkHttpCall$1;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImagePositionDialog;->_binding:Lretrofit2/OkHttpCall$1;

    .line 54
    .line 55
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImagePositionDialog;->_binding:Lretrofit2/OkHttpCall$1;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object p1, p1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Landroid/widget/LinearLayout;

    .line 63
    .line 64
    const/4 p2, 0x3

    .line 65
    new-array v2, p2, [Landroid/view/View;

    .line 66
    .line 67
    aput-object v3, v2, v0

    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    aput-object p3, v2, v3

    .line 71
    .line 72
    const/4 p3, 0x2

    .line 73
    aput-object p1, v2, p3

    .line 74
    .line 75
    iput-object v2, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImagePositionDialog;->imagePositionOptions:[Landroid/view/View;

    .line 76
    .line 77
    move p1, v0

    .line 78
    move p3, p1

    .line 79
    :goto_0
    if-ge p1, p2, :cond_0

    .line 80
    .line 81
    aget-object v4, v2, p1

    .line 82
    .line 83
    add-int/lit8 v5, p3, 0x1

    .line 84
    .line 85
    iget-object v6, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImagePositionDialog;->imagePositionList:[Ljava/lang/String;

    .line 86
    .line 87
    aget-object p3, v6, p3

    .line 88
    .line 89
    invoke-virtual {v4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    new-instance p3, Landroidx/preference/Preference$1;

    .line 93
    .line 94
    const/16 v6, 0x8

    .line 95
    .line 96
    invoke-direct {p3, v6, p0}, Landroidx/preference/Preference$1;-><init>(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    add-int/lit8 p1, p1, 0x1

    .line 103
    .line 104
    move p3, v5

    .line 105
    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImagePositionDialog;->imagePositionOptions:[Landroid/view/View;

    .line 107
    .line 108
    const-string p2, "imagePositionOptions"

    .line 109
    .line 110
    if-eqz p1, :cond_6

    .line 111
    .line 112
    array-length p3, p1

    .line 113
    move v2, v0

    .line 114
    :goto_1
    if-ge v2, p3, :cond_1

    .line 115
    .line 116
    aget-object v4, p1, v2

    .line 117
    .line 118
    invoke-static {v4, v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaImagePositionDialog;->updateOptionView(Landroid/view/View;Z)V

    .line 119
    .line 120
    .line 121
    add-int/lit8 v2, v2, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 129
    .line 130
    invoke-virtual {p1}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget-object p1, p1, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->imagePosition:Ljava/lang/String;

    .line 135
    .line 136
    iget-object p3, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImagePositionDialog;->imagePositionOptions:[Landroid/view/View;

    .line 137
    .line 138
    if-eqz p3, :cond_5

    .line 139
    .line 140
    array-length p2, p3

    .line 141
    :goto_2
    if-ge v0, p2, :cond_3

    .line 142
    .line 143
    aget-object v2, p3, v0

    .line 144
    .line 145
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-eqz v4, :cond_2

    .line 154
    .line 155
    move-object v1, v2

    .line 156
    goto :goto_3

    .line 157
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    .line 161
    .line 162
    invoke-static {v1, v3}, Lorg/wikipedia/edit/insertmedia/InsertMediaImagePositionDialog;->updateOptionView(Landroid/view/View;Z)V

    .line 163
    .line 164
    .line 165
    :cond_4
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImagePositionDialog;->_binding:Lretrofit2/OkHttpCall$1;

    .line 166
    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p0, Landroid/widget/LinearLayout;

    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    return-object p0

    .line 178
    :cond_5
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v1

    .line 182
    :cond_6
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v1

    .line 186
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    const-string p1, "Missing required view with ID: "

    .line 195
    .line 196
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    return-object v1
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaImagePositionDialog;->_binding:Lretrofit2/OkHttpCall$1;

    .line 3
    .line 4
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

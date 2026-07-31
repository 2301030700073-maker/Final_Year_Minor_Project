.class public final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "<init>",
        "()V",
        "org/wikipedia/suggestededits/SuggestedEditsImageTagsFragment",
        "ResultItemHolder",
        "AppIconAdapter",
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
.field public _binding:Lokio/internal/DefaultSocket;

.field public final adapter:Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

.field public currentSearchTerm:Ljava/lang/String;

.field public searchJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public textWatcher:Landroidx/appcompat/widget/SearchView$10;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->currentSearchTerm:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->adapter:Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final applyResults(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->adapter:Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->currentSearchTerm:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_binding:Lokio/internal/DefaultSocket;

    .line 18
    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object p1, v1, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_binding:Lokio/internal/DefaultSocket;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_binding:Lokio/internal/DefaultSocket;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p0, Landroid/view/View;

    .line 53
    .line 54
    const/4 p1, 0x4

    .line 55
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iget-object v0, v1, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Landroid/view/View;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_binding:Lokio/internal/DefaultSocket;

    .line 75
    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    iget-object p1, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p1, Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_binding:Lokio/internal/DefaultSocket;

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 96
    .line 97
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget-object p1, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p1, Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_binding:Lokio/internal/DefaultSocket;

    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    .line 120
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final callback()Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-class v2, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 7
    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const/4 p0, 0x0

    .line 67
    :goto_0
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 68
    .line 69
    return-object p0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 20

    .line 1
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/material/shape/RoundedCornerTreatment;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lcom/google/android/material/shape/RoundedCornerTreatment;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v3, Lcom/google/android/material/shape/RoundedCornerTreatment;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v4, Lcom/google/android/material/shape/RoundedCornerTreatment;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v5, Landroidx/collection/internal/Lock;

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    invoke-direct {v5, v6}, Landroidx/collection/internal/Lock;-><init>(I)V

    .line 29
    .line 30
    .line 31
    new-instance v7, Landroidx/collection/internal/Lock;

    .line 32
    .line 33
    invoke-direct {v7, v6}, Landroidx/collection/internal/Lock;-><init>(I)V

    .line 34
    .line 35
    .line 36
    new-instance v8, Landroidx/collection/internal/Lock;

    .line 37
    .line 38
    invoke-direct {v8, v6}, Landroidx/collection/internal/Lock;-><init>(I)V

    .line 39
    .line 40
    .line 41
    new-instance v9, Landroidx/collection/internal/Lock;

    .line 42
    .line 43
    invoke-direct {v9, v6}, Landroidx/collection/internal/Lock;-><init>(I)V

    .line 44
    .line 45
    .line 46
    const/high16 v6, 0x40c00000    # 6.0f

    .line 47
    .line 48
    invoke-static {v6}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    new-instance v10, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 53
    .line 54
    invoke-direct {v10, v6}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 55
    .line 56
    .line 57
    new-instance v11, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 58
    .line 59
    invoke-direct {v11, v6}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 60
    .line 61
    .line 62
    new-instance v12, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 63
    .line 64
    invoke-direct {v12, v6}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 65
    .line 66
    .line 67
    new-instance v13, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 68
    .line 69
    invoke-direct {v13, v6}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 70
    .line 71
    .line 72
    new-instance v6, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 73
    .line 74
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v1, v6, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcoil3/util/ContextsKt;

    .line 78
    .line 79
    iput-object v2, v6, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcoil3/util/ContextsKt;

    .line 80
    .line 81
    iput-object v3, v6, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcoil3/util/ContextsKt;

    .line 82
    .line 83
    iput-object v4, v6, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcoil3/util/ContextsKt;

    .line 84
    .line 85
    iput-object v10, v6, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 86
    .line 87
    iput-object v11, v6, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 88
    .line 89
    iput-object v12, v6, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 90
    .line 91
    iput-object v13, v6, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 92
    .line 93
    iput-object v5, v6, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Landroidx/collection/internal/Lock;

    .line 94
    .line 95
    iput-object v7, v6, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Landroidx/collection/internal/Lock;

    .line 96
    .line 97
    iput-object v8, v6, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Landroidx/collection/internal/Lock;

    .line 98
    .line 99
    iput-object v9, v6, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Landroidx/collection/internal/Lock;

    .line 100
    .line 101
    new-instance v15, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 102
    .line 103
    invoke-direct {v15, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const v2, 0x7f040061

    .line 111
    .line 112
    .line 113
    invoke-static {v1, v2}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v15, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Landroid/view/View;->getElevation()F

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-virtual {v15, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 136
    .line 137
    .line 138
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 139
    .line 140
    const/16 v2, 0x1c

    .line 141
    .line 142
    if-gt v1, v2, :cond_0

    .line 143
    .line 144
    const/high16 v1, 0x41800000    # 16.0f

    .line 145
    .line 146
    invoke-static {v1}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 147
    .line 148
    .line 149
    move-result v16

    .line 150
    new-instance v14, Landroid/graphics/drawable/InsetDrawable;

    .line 151
    .line 152
    move/from16 v17, v16

    .line 153
    .line 154
    move/from16 v18, v16

    .line 155
    .line 156
    move/from16 v19, v16

    .line 157
    .line 158
    invoke-direct/range {v14 .. v19}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v14}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v15}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    .line 181
    .line 182
    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    const/16 v2, 0x30

    .line 194
    .line 195
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 196
    .line 197
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 205
    .line 206
    .line 207
    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p3, 0x7f0c017e

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
    const p2, 0x7f0902d4

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const p2, 0x7f0902d5

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    move-object v3, p3

    .line 29
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    move-object v1, p1

    .line 34
    check-cast v1, Landroid/widget/LinearLayout;

    .line 35
    .line 36
    const p2, 0x7f0902d7

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    move-object v4, p3

    .line 44
    check-cast v4, Lorg/wikipedia/views/PlainPasteEditText;

    .line 45
    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    const p2, 0x7f09045a

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    move-object v5, p3

    .line 56
    check-cast v5, Landroid/widget/TextView;

    .line 57
    .line 58
    if-eqz v5, :cond_0

    .line 59
    .line 60
    new-instance v0, Lokio/internal/DefaultSocket;

    .line 61
    .line 62
    const/16 v6, 0xc

    .line 63
    .line 64
    invoke-direct/range {v0 .. v6}, Lokio/internal/DefaultSocket;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_binding:Lokio/internal/DefaultSocket;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string p1, "Missing required view with ID: "

    .line 82
    .line 83
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 p0, 0x0

    .line 91
    return-object p0
.end method

.method public final onDestroyView()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->searchJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_binding:Lokio/internal/DefaultSocket;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lorg/wikipedia/views/PlainPasteEditText;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->textWatcher:Landroidx/appcompat/widget/SearchView$10;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_binding:Lokio/internal/DefaultSocket;

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const-string p0, "textWatcher"

    .line 32
    .line 33
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->callback()Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->currentSearchTerm:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iput-object p0, p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->lastSearchTerm:Ljava/lang/String;

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    const-string v0, "lastText"

    .line 2
    .line 3
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string/jumbo v2, "useClipboardText"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "clipboard"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    check-cast v0, Landroid/content/ClipboardManager;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    add-int/lit8 v1, v1, -0x1

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-lez v1, :cond_1

    .line 80
    .line 81
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_binding:Lokio/internal/DefaultSocket;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iget-object v1, v1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v1, Lorg/wikipedia/views/PlainPasteEditText;

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_binding:Lokio/internal/DefaultSocket;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    iget-object v0, v0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Lorg/wikipedia/views/PlainPasteEditText;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-lez v1, :cond_1

    .line 122
    .line 123
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_binding:Lokio/internal/DefaultSocket;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget-object v1, v1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v1, Lorg/wikipedia/views/PlainPasteEditText;

    .line 131
    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_binding:Lokio/internal/DefaultSocket;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    iget-object v0, v0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v0, Lorg/wikipedia/views/PlainPasteEditText;

    .line 154
    .line 155
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .line 157
    .line 158
    :catch_0
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 159
    .line 160
    if-eqz p0, :cond_2

    .line 161
    .line 162
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    if-eqz p0, :cond_2

    .line 167
    .line 168
    const/4 v0, 0x5

    .line 169
    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 170
    .line 171
    .line 172
    :cond_2
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_binding:Lokio/internal/DefaultSocket;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_binding:Lokio/internal/DefaultSocket;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object p1, p1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->adapter:Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_binding:Lokio/internal/DefaultSocket;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object p1, p1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lorg/wikipedia/views/PlainPasteEditText;

    .line 44
    .line 45
    new-instance p2, Landroidx/appcompat/widget/SearchView$10;

    .line 46
    .line 47
    const/16 v0, 0x9

    .line 48
    .line 49
    invoke-direct {p2, v0, p0}, Landroidx/appcompat/widget/SearchView$10;-><init>(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 53
    .line 54
    .line 55
    iput-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->textWatcher:Landroidx/appcompat/widget/SearchView$10;

    .line 56
    .line 57
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->applyResults(Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

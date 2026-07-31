.class public final Lorg/wikipedia/page/references/ReferenceDialog;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/wikipedia/page/references/ReferenceDialog;",
        "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;",
        "<init>",
        "()V",
        "Callback",
        "ViewHolder",
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
.field public _binding:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final callback()Lorg/wikipedia/page/references/ReferenceDialog$Callback;
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
    const-class v2, Lorg/wikipedia/page/references/ReferenceDialog$Callback;

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
    check-cast p0, Lorg/wikipedia/page/references/ReferenceDialog$Callback;

    .line 68
    .line 69
    return-object p0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget p0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    .line 8
    .line 9
    invoke-direct {p1, v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p3, 0x7f0c01a7

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
    const p2, 0x7f0902e9

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 p3, 0x0

    .line 20
    if-eqz v3, :cond_3

    .line 21
    .line 22
    const p2, 0x7f0904d1

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    move-object v4, v1

    .line 30
    check-cast v4, Lcom/google/android/material/tabs/TabLayout;

    .line 31
    .line 32
    if-eqz v4, :cond_3

    .line 33
    .line 34
    const p2, 0x7f09056f

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    move-object v5, v1

    .line 42
    check-cast v5, Landroidx/viewpager2/widget/ViewPager2;

    .line 43
    .line 44
    if-eqz v5, :cond_3

    .line 45
    .line 46
    const p2, 0x7f090571

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object v6, v1

    .line 54
    check-cast v6, Lorg/wikipedia/views/AppTextView;

    .line 55
    .line 56
    if-eqz v6, :cond_3

    .line 57
    .line 58
    new-instance v1, Lokhttp3/Request$Builder;

    .line 59
    .line 60
    move-object v2, p1

    .line 61
    check-cast v2, Landroidx/core/widget/NestedScrollView;

    .line 62
    .line 63
    invoke-direct/range {v1 .. v6}, Lokhttp3/Request$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lorg/wikipedia/page/references/ReferenceDialog;->_binding:Lokhttp3/Request$Builder;

    .line 67
    .line 68
    invoke-virtual {p0}, Lorg/wikipedia/page/references/ReferenceDialog;->callback()Lorg/wikipedia/page/references/ReferenceDialog$Callback;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    invoke-interface {p1}, Lorg/wikipedia/page/references/ReferenceDialog$Callback;->getReferencesGroup()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    if-eqz p2, :cond_0

    .line 79
    .line 80
    iget-object p3, p0, Lorg/wikipedia/page/references/ReferenceDialog;->_binding:Lokhttp3/Request$Builder;

    .line 81
    .line 82
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    iget-object p3, p3, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p3, Lorg/wikipedia/views/AppTextView;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const/4 v2, 0x1

    .line 94
    new-array v3, v2, [Ljava/lang/Object;

    .line 95
    .line 96
    const-string v4, ""

    .line 97
    .line 98
    aput-object v4, v3, v0

    .line 99
    .line 100
    const v0, 0x7f120820

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    iget-object p3, p0, Lorg/wikipedia/page/references/ReferenceDialog;->_binding:Lokhttp3/Request$Builder;

    .line 111
    .line 112
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    iget-object p3, p3, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p3, Landroidx/viewpager2/widget/ViewPager2;

    .line 118
    .line 119
    const/4 v0, 0x2

    .line 120
    invoke-virtual {p3, v0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 121
    .line 122
    .line 123
    iget-object p3, p0, Lorg/wikipedia/page/references/ReferenceDialog;->_binding:Lokhttp3/Request$Builder;

    .line 124
    .line 125
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget-object p3, p3, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p3, Landroidx/viewpager2/widget/ViewPager2;

    .line 131
    .line 132
    new-instance v0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

    .line 133
    .line 134
    const/4 v1, 0x6

    .line 135
    invoke-direct {v0, v1, p0, p2}, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;-><init>(ILjava/lang/Object;Ljava/util/List;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 139
    .line 140
    .line 141
    new-instance p2, Lokhttp3/Cache$RealCacheRequest;

    .line 142
    .line 143
    iget-object p3, p0, Lorg/wikipedia/page/references/ReferenceDialog;->_binding:Lokhttp3/Request$Builder;

    .line 144
    .line 145
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    iget-object p3, p3, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast p3, Lcom/google/android/material/tabs/TabLayout;

    .line 151
    .line 152
    iget-object v0, p0, Lorg/wikipedia/page/references/ReferenceDialog;->_binding:Lokhttp3/Request$Builder;

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    iget-object v0, v0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 160
    .line 161
    new-instance v1, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;

    .line 162
    .line 163
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-direct {p2, p3, v0, v1}, Lokhttp3/Cache$RealCacheRequest;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2}, Lokhttp3/Cache$RealCacheRequest;->attach()V

    .line 170
    .line 171
    .line 172
    iget-object p2, p0, Lorg/wikipedia/page/references/ReferenceDialog;->_binding:Lokhttp3/Request$Builder;

    .line 173
    .line 174
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    iget-object p2, p2, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast p2, Landroidx/viewpager2/widget/ViewPager2;

    .line 180
    .line 181
    invoke-interface {p1}, Lorg/wikipedia/page/references/ReferenceDialog$Callback;->getSelectedReferenceIndex()I

    .line 182
    .line 183
    .line 184
    move-result p3

    .line 185
    invoke-virtual {p2, p3, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 186
    .line 187
    .line 188
    iget-object p2, p0, Lorg/wikipedia/page/references/ReferenceDialog;->_binding:Lokhttp3/Request$Builder;

    .line 189
    .line 190
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    iget-object p2, p2, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast p2, Landroidx/core/widget/NestedScrollView;

    .line 196
    .line 197
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    invoke-interface {p1}, Lorg/wikipedia/page/references/ReferenceDialog$Callback;->getLinkHandler()Lorg/wikipedia/page/LinkHandler;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1}, Lorg/wikipedia/page/LinkHandler;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    iget-object p1, p1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 209
    .line 210
    invoke-static {p2, p1}, Lcoil3/util/BitmapsKt;->setLayoutDirectionByLang(Landroid/view/View;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 214
    .line 215
    :cond_0
    if-nez p3, :cond_2

    .line 216
    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 218
    .line 219
    .line 220
    :cond_2
    iget-object p0, p0, Lorg/wikipedia/page/references/ReferenceDialog;->_binding:Lokhttp3/Request$Builder;

    .line 221
    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    iget-object p0, p0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast p0, Landroidx/core/widget/NestedScrollView;

    .line 228
    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    return-object p0

    .line 233
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    const-string p1, "Missing required view with ID: "

    .line 242
    .line 243
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    return-object p3
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
    iput-object v0, p0, Lorg/wikipedia/page/references/ReferenceDialog;->_binding:Lokhttp3/Request$Builder;

    .line 6
    .line 7
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/page/references/ReferenceDialog;->callback()Lorg/wikipedia/page/references/ReferenceDialog$Callback;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lorg/wikipedia/page/references/ReferenceDialog$Callback;->getReferencesGroup()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lorg/wikipedia/page/references/ReferenceDialog;->_binding:Lokhttp3/Request$Builder;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 31
    .line 32
    const/16 v1, 0x8

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lorg/wikipedia/page/references/ReferenceDialog;->_binding:Lokhttp3/Request$Builder;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object v0, v0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/page/references/ReferenceDialog;->_binding:Lokhttp3/Request$Builder;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p0, Landroidx/core/widget/NestedScrollView;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    check-cast p0, Landroid/view/View;

    .line 66
    .line 67
    invoke-static {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 72
    .line 73
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

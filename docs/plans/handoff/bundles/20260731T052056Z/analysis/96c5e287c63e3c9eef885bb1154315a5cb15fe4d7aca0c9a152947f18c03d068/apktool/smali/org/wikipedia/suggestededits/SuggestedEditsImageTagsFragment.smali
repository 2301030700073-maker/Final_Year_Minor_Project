.class public final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;
.super Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;",
        "Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Landroid/view/View$OnClickListener;",
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
.field public _binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

.field public lastSearchTerm:Ljava/lang/String;

.field public page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

.field public publishSuccess:Z

.field public publishing:Z

.field public final tagList:Ljava/util/ArrayList;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;

.field public wasCaptionLongClicked:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;

    .line 14
    .line 15
    const/16 v3, 0xa

    .line 16
    .line 17
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-class v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;

    .line 25
    .line 26
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 33
    .line 34
    const/16 v3, 0x12

    .line 35
    .line 36
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 40
    .line 41
    const/16 v4, 0x13

    .line 42
    .line 43
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 44
    .line 45
    .line 46
    new-instance v5, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;

    .line 47
    .line 48
    invoke-direct {v5, p0, v0, v4}, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;I)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lokhttp3/Request$Builder;

    .line 52
    .line 53
    invoke-direct {v0, v1, v2, v5, v3}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 57
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->tagList:Ljava/util/ArrayList;

    .line 64
    .line 65
    const-string v0, ""

    .line 66
    .line 67
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->lastSearchTerm:Ljava/lang/String;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final addChip(Lorg/wikipedia/suggestededits/ImageTag;Landroid/graphics/Typeface;)Lcom/google/android/material/chip/Chip;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/material/chip/Chip;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object v1, p1, Lorg/wikipedia/suggestededits/ImageTag;->label:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const v1, 0x7f1208d4

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setTextAlignment(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const v2, 0x7f040094

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v2}, Lokhttp3/Cache$Companion;->getThemedAttributeId(Landroid/content/Context;I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColorResource(I)V

    .line 47
    .line 48
    .line 49
    const/high16 v1, 0x3f800000    # 1.0f

    .line 50
    .line 51
    invoke-static {v1}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChipStrokeWidth(F)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1, v2}, Lokhttp3/Cache$Companion;->getThemedAttributeId(Landroid/content/Context;I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChipStrokeColorResource(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const v2, 0x7f04051a

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v2}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    .line 85
    .line 86
    const/4 p2, 0x1

    .line 87
    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/Chip;->setCheckable(Z)V

    .line 88
    .line 89
    .line 90
    const v1, 0x7f08013f

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChipIconResource(I)V

    .line 94
    .line 95
    .line 96
    const/4 v1, 0x0

    .line 97
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setIconEndPadding(F)V

    .line 98
    .line 99
    .line 100
    const/high16 v1, 0x40000000    # 2.0f

    .line 101
    .line 102
    invoke-static {v1}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setTextStartPadding(F)V

    .line 107
    .line 108
    .line 109
    const/high16 v1, 0x41c00000    # 24.0f

    .line 110
    .line 111
    invoke-static {v1}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChipIconSize(F)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    const v2, 0x7f0404fb

    .line 123
    .line 124
    .line 125
    invoke-static {v1, v2}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    .line 130
    .line 131
    .line 132
    const v1, 0x7f080140

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setCheckedIconResource(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/Chip;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/Chip;->setEnsureMinTouchTargetSize(Z)V

    .line 145
    .line 146
    .line 147
    const/high16 p2, 0x42400000    # 48.0f

    .line 148
    .line 149
    invoke-static {p2}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    float-to-int p2, p2

    .line 154
    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/Chip;->ensureAccessibleTouchTarget(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    if-eqz p1, :cond_1

    .line 161
    .line 162
    iget-boolean p1, p1, Lorg/wikipedia/suggestededits/ImageTag;->isSelected:Z

    .line 163
    .line 164
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 165
    .line 166
    .line 167
    :cond_1
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 168
    .line 169
    const/4 p2, -0x2

    .line 170
    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 171
    .line 172
    .line 173
    const/high16 p2, 0x41000000    # 8.0f

    .line 174
    .line 175
    invoke-static {p2}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    const/4 v1, 0x0

    .line 180
    invoke-virtual {p1, p2, v1, p2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    .line 185
    .line 186
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 187
    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectText:Landroid/view/View;

    .line 192
    .line 193
    check-cast p0, Lcom/google/android/flexbox/FlexboxLayout;

    .line 194
    .line 195
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 196
    .line 197
    .line 198
    return-object v0
.end method

.method public final atLeastOneTagChecked()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectText:Landroid/view/View;

    .line 7
    .line 8
    check-cast p0, Lcom/google/android/flexbox/FlexboxLayout;

    .line 9
    .line 10
    new-instance v0, Landroidx/core/view/ViewGroupKt$children$1;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, v1}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Landroid/view/ViewGroup;I)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Lkotlin/sequences/FilteringSequence;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    sget-object v3, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$atLeastOneTagChecked$$inlined$filterIsInstance$1;->INSTANCE:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$atLeastOneTagChecked$$inlined$filterIsInstance$1;

    .line 20
    .line 21
    invoke-direct {p0, v0, v2, v3}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lcom/google/android/material/chip/Chip;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_0

    .line 46
    .line 47
    return v2

    .line 48
    :cond_1
    return v1
.end method

.method public final callback$1()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;
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
    const-class v2, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;

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
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;

    .line 71
    .line 72
    return-object p0
.end method

.method public final getNextItem()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v4, v0

    .line 8
    check-cast v4, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->callback$1()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;->getLangCode()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object p0, v4, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 24
    .line 25
    new-instance v0, Lorg/wikipedia/util/Resource$Loading;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-virtual {p0, v5, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel$publishImageTags$$inlined$CoroutineExceptionHandler$1;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-direct {v0, v4, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel$publishImageTags$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;I)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lorg/wikipedia/readinglist/LongPressMenu$show$1$1;

    .line 48
    .line 49
    const/16 v6, 0x8

    .line 50
    .line 51
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/readinglist/LongPressMenu$show$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 52
    .line 53
    .line 54
    const/4 v2, 0x2

    .line 55
    invoke-static {p0, v0, v5, v1, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final getPageTitle()Lorg/wikipedia/page/PageTitle;
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    new-instance v1, Lorg/wikipedia/page/PageTitle;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v2, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 11
    .line 12
    invoke-direct {v1, p0, v2, v0}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    return-object v0
.end method

.method public final onBackPressed()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->atLeastOneTagChecked()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 22
    .line 23
    iput-boolean v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 24
    .line 25
    const v1, 0x7f12094c

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 29
    .line 30
    .line 31
    const v1, 0x7f1208d6

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;

    .line 38
    .line 39
    const/16 v3, 0xc

    .line 40
    .line 41
    invoke-direct {v1, v3, p0}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const p0, 0x7f120195

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    const p0, 0x7f120194

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 58
    .line 59
    .line 60
    return v2
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const v0, 0x7f040061

    .line 17
    .line 18
    .line 19
    invoke-static {p2, v0}, Lokhttp3/Cache$Companion;->getThemedAttributeId(Landroid/content/Context;I)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColorResource(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const v0, 0x7f040520

    .line 31
    .line 32
    .line 33
    invoke-static {p2, v0}, Lokhttp3/Cache$Companion;->getThemedAttributeId(Landroid/content/Context;I)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChipStrokeColorResource(I)V

    .line 38
    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const v0, 0x7f040094

    .line 50
    .line 51
    .line 52
    invoke-static {p2, v0}, Lokhttp3/Cache$Companion;->getThemedAttributeId(Landroid/content/Context;I)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColorResource(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p2, v0}, Lokhttp3/Cache$Companion;->getThemedAttributeId(Landroid/content/Context;I)I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChipStrokeColorResource(I)V

    .line 68
    .line 69
    .line 70
    const/4 p2, 0x1

    .line 71
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    if-eqz p2, :cond_1

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    check-cast p2, Lorg/wikipedia/suggestededits/ImageTag;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    iput-boolean p1, p2, Lorg/wikipedia/suggestededits/ImageTag;->isSelected:Z

    .line 94
    .line 95
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->updateLicenseTextShown()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->callback$1()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-interface {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;->updateActionButton()V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    xor-int/2addr v0, v1

    .line 18
    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 19
    .line 20
    .line 21
    iget-boolean p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->wasCaptionLongClicked:Z

    .line 22
    .line 23
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->lastSearchTerm:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance v2, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;

    .line 29
    .line 30
    invoke-direct {v2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v3, Lkotlin/Pair;

    .line 38
    .line 39
    const-string/jumbo v4, "useClipboardText"

    .line 40
    .line 41
    .line 42
    invoke-direct {v3, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Lkotlin/Pair;

    .line 46
    .line 47
    const-string v4, "lastText"

    .line 48
    .line 49
    invoke-direct {p1, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x2

    .line 53
    new-array v0, v0, [Lkotlin/Pair;

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    aput-object v3, v0, v4

    .line 57
    .line 58
    aput-object p1, v0, v1

    .line 59
    .line 60
    invoke-static {v0}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const/4 p1, 0x0

    .line 72
    invoke-virtual {v2, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 19

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0c01af

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    move-object/from16 v3, p2

    .line 11
    .line 12
    invoke-virtual {v2, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f0900cf

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    move-object v5, v2

    .line 24
    check-cast v5, Lorg/wikipedia/views/WikiErrorView;

    .line 25
    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    const v1, 0x7f0900d0

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    move-object v6, v2

    .line 36
    check-cast v6, Landroid/widget/ProgressBar;

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    const v1, 0x7f090170

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    move-object v7, v2

    .line 48
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    .line 50
    if-eqz v7, :cond_0

    .line 51
    .line 52
    const v1, 0x7f0902ba

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    move-object v8, v2

    .line 60
    check-cast v8, Landroid/widget/TextView;

    .line 61
    .line 62
    if-eqz v8, :cond_0

    .line 63
    .line 64
    const v1, 0x7f0902de

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    move-object v9, v2

    .line 72
    check-cast v9, Landroid/widget/ImageView;

    .line 73
    .line 74
    if-eqz v9, :cond_0

    .line 75
    .line 76
    const v1, 0x7f090518

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    move-object v10, v2

    .line 84
    check-cast v10, Landroid/widget/FrameLayout;

    .line 85
    .line 86
    if-eqz v10, :cond_0

    .line 87
    .line 88
    const v1, 0x7f090519

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    move-object v11, v2

    .line 96
    check-cast v11, Landroid/widget/ProgressBar;

    .line 97
    .line 98
    if-eqz v11, :cond_0

    .line 99
    .line 100
    const v1, 0x7f09051a

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    move-object v12, v2

    .line 108
    check-cast v12, Landroid/widget/ProgressBar;

    .line 109
    .line 110
    if-eqz v12, :cond_0

    .line 111
    .line 112
    const v1, 0x7f09051b

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    move-object v13, v2

    .line 120
    check-cast v13, Landroid/widget/ImageView;

    .line 121
    .line 122
    if-eqz v13, :cond_0

    .line 123
    .line 124
    const v1, 0x7f09051c

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    move-object v14, v2

    .line 132
    check-cast v14, Landroid/widget/TextView;

    .line 133
    .line 134
    if-eqz v14, :cond_0

    .line 135
    .line 136
    move-object v4, v0

    .line 137
    check-cast v4, Landroid/widget/FrameLayout;

    .line 138
    .line 139
    const v1, 0x7f090666

    .line 140
    .line 141
    .line 142
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    move-object v15, v2

    .line 147
    check-cast v15, Lcom/google/android/flexbox/FlexboxLayout;

    .line 148
    .line 149
    if-eqz v15, :cond_0

    .line 150
    .line 151
    const v1, 0x7f090667

    .line 152
    .line 153
    .line 154
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    move-object/from16 v16, v2

    .line 159
    .line 160
    check-cast v16, Landroid/widget/LinearLayout;

    .line 161
    .line 162
    if-eqz v16, :cond_0

    .line 163
    .line 164
    const v1, 0x7f090668

    .line 165
    .line 166
    .line 167
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    move-object/from16 v17, v2

    .line 172
    .line 173
    check-cast v17, Landroid/widget/TextView;

    .line 174
    .line 175
    if-eqz v17, :cond_0

    .line 176
    .line 177
    const v1, 0x7f090669

    .line 178
    .line 179
    .line 180
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    move-object/from16 v18, v2

    .line 185
    .line 186
    check-cast v18, Landroid/widget/TextView;

    .line 187
    .line 188
    if-eqz v18, :cond_0

    .line 189
    .line 190
    new-instance v3, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 191
    .line 192
    invoke-direct/range {v3 .. v18}, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;-><init>(Landroid/widget/FrameLayout;Lorg/wikipedia/views/WikiErrorView;Landroid/widget/ProgressBar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/google/android/flexbox/FlexboxLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 193
    .line 194
    .line 195
    move-object/from16 v0, p0

    .line 196
    .line 197
    iput-object v3, v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    return-object v4

    .line 203
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    const-string v1, "Missing required view with ID: "

    .line 212
    .line 213
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const/4 v0, 0x0

    .line 221
    return-object v0
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 6
    .line 7
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->callback$1()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;->updateActionButton()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlayHeadings:Landroid/view/View;

    .line 10
    .line 11
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->callback$1()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-interface {p2}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;->getLangCode()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {p1, p2}, Lcoil3/util/BitmapsKt;->setLayoutDirectionByLang(Landroid/view/View;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlay:Landroid/view/ViewGroup;

    .line 30
    .line 31
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 32
    .line 33
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-direct {p2, p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlay:Landroid/view/ViewGroup;

    .line 48
    .line 49
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 50
    .line 51
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    invoke-direct {p2, p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyToolbar:Landroid/view/View;

    .line 66
    .line 67
    check-cast p1, Landroid/widget/LinearLayout;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    const v2, 0x7f0404e7

    .line 74
    .line 75
    .line 76
    invoke-static {p2, v2}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    const v3, 0xffffff

    .line 81
    .line 82
    .line 83
    and-int/2addr p2, v3

    .line 84
    const/high16 v4, -0x34000000    # -3.3554432E7f

    .line 85
    .line 86
    or-int/2addr p2, v4

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->learnMoreButton:Landroid/widget/TextView;

    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-static {p2, v2}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    and-int/2addr p2, v3

    .line 106
    or-int/2addr p2, v4

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->rootView:Landroid/view/View;

    .line 116
    .line 117
    check-cast p1, Landroid/widget/FrameLayout;

    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-static {p2, v2}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    and-int/2addr p2, v3

    .line 128
    or-int/2addr p2, v4

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->rootView:Landroid/view/View;

    .line 138
    .line 139
    check-cast p1, Landroid/widget/FrameLayout;

    .line 140
    .line 141
    const/16 p2, 0x8

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 147
    .line 148
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iget-object p1, p1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 153
    .line 154
    invoke-virtual {p1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_0

    .line 159
    .line 160
    const/4 p1, -0x1

    .line 161
    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const v2, 0x7f040520

    .line 167
    .line 168
    .line 169
    invoke-static {p1, v2}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    :goto_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->progressBar:Landroid/view/View;

    .line 186
    .line 187
    check-cast v2, Landroid/widget/ProgressBar;

    .line 188
    .line 189
    invoke-virtual {v2, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 190
    .line 191
    .line 192
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 193
    .line 194
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 198
    .line 199
    check-cast v2, Landroid/widget/ProgressBar;

    .line 200
    .line 201
    invoke-virtual {v2, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 202
    .line 203
    .line 204
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 205
    .line 206
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectLayout:Landroid/view/View;

    .line 210
    .line 211
    check-cast v2, Landroid/widget/ImageView;

    .line 212
    .line 213
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 214
    .line 215
    .line 216
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyNextButton:Landroid/widget/TextView;

    .line 222
    .line 223
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 224
    .line 225
    .line 226
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 227
    .line 228
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->threadItemView:Landroid/view/View;

    .line 232
    .line 233
    check-cast p1, Landroid/widget/TextView;

    .line 234
    .line 235
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 236
    .line 237
    const v2, 0x7f1209aa

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    const v3, 0x7f1200b9

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    const/4 v4, 0x2

    .line 252
    new-array v5, v4, [Ljava/lang/Object;

    .line 253
    .line 254
    aput-object v2, v5, v0

    .line 255
    .line 256
    aput-object v3, v5, v1

    .line 257
    .line 258
    const v1, 0x7f12088c

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0, v1, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    .line 271
    .line 272
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 273
    .line 274
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->threadItemView:Landroid/view/View;

    .line 278
    .line 279
    check-cast p1, Landroid/widget/TextView;

    .line 280
    .line 281
    sget-object v1, Landroidx/core/text/method/LinkMovementMethodCompat;->sInstance:Landroidx/core/text/method/LinkMovementMethodCompat;

    .line 282
    .line 283
    if-nez v1, :cond_1

    .line 284
    .line 285
    new-instance v1, Landroidx/core/text/method/LinkMovementMethodCompat;

    .line 286
    .line 287
    invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 288
    .line 289
    .line 290
    sput-object v1, Landroidx/core/text/method/LinkMovementMethodCompat;->sInstance:Landroidx/core/text/method/LinkMovementMethodCompat;

    .line 291
    .line 292
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 293
    .line 294
    .line 295
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 296
    .line 297
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->footerContainer:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast p1, Landroid/widget/ImageView;

    .line 303
    .line 304
    new-instance v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda0;

    .line 305
    .line 306
    invoke-direct {v1, p0, v4}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->callback$1()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-interface {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;->getSinglePage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    if-eqz p1, :cond_2

    .line 321
    .line 322
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->callback$1()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-interface {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;->getSinglePage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 331
    .line 332
    :cond_2
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 333
    .line 334
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->learnMoreButton:Landroid/widget/TextView;

    .line 338
    .line 339
    new-instance v1, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;

    .line 340
    .line 341
    invoke-direct {v1, p2, p0}, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->getNextItem()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->updateTagChips()V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;

    .line 362
    .line 363
    const/4 v1, 0x0

    .line 364
    invoke-direct {p2, p0, v1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 365
    .line 366
    .line 367
    const/4 p0, 0x3

    .line 368
    invoke-static {p1, v1, v1, p2, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 369
    .line 370
    .line 371
    return-void
.end method

.method public final publish()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishing:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishSuccess:Z

    .line 6
    .line 7
    if-nez v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectText:Landroid/view/View;

    .line 15
    .line 16
    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->tagList:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lorg/wikipedia/suggestededits/ImageTag;

    .line 48
    .line 49
    iget-boolean v2, v1, Lorg/wikipedia/suggestededits/ImageTag;->isSelected:Z

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishing:Z

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishSuccess:Z

    .line 73
    .line 74
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    sget-object v2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    const-string v2, "saveAttempt"

    .line 86
    .line 87
    const-string v4, "other"

    .line 88
    .line 89
    invoke-static {v2, v4, v1}, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;->submitEditAttemptEvent(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyNextButton:Landroid/widget/TextView;

    .line 98
    .line 99
    const v2, 0x7f1208dd

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectLayout:Landroid/view/View;

    .line 111
    .line 112
    check-cast v1, Landroid/widget/ImageView;

    .line 113
    .line 114
    const/16 v2, 0x8

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->rootView:Landroid/view/View;

    .line 125
    .line 126
    check-cast v1, Landroid/widget/FrameLayout;

    .line 127
    .line 128
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 137
    .line 138
    check-cast v1, Landroid/widget/ProgressBar;

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->progressBar:Landroid/view/View;

    .line 149
    .line 150
    check-cast v1, Landroid/widget/ProgressBar;

    .line 151
    .line 152
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 156
    .line 157
    if-eqz v2, :cond_5

    .line 158
    .line 159
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 160
    .line 161
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    move-object v4, p0

    .line 166
    check-cast v4, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;

    .line 167
    .line 168
    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    new-instance v7, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel$publishImageTags$$inlined$CoroutineExceptionHandler$1;

    .line 173
    .line 174
    invoke-direct {v7, v4, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel$publishImageTags$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;I)V

    .line 175
    .line 176
    .line 177
    new-instance v1, Lcoil3/RealImageLoader$execute$2;

    .line 178
    .line 179
    const/16 v6, 0x1c

    .line 180
    .line 181
    const/4 v5, 0x0

    .line 182
    invoke-direct/range {v1 .. v6}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 183
    .line 184
    .line 185
    const/4 v0, 0x2

    .line 186
    invoke-static {p0, v7, v5, v1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 187
    .line 188
    .line 189
    :cond_5
    :goto_1
    return-void
.end method

.method public final publishEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishSuccess:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->atLeastOneTagChecked()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final updateLicenseTextShown()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishSuccess:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->threadItemView:Landroid/view/View;

    .line 14
    .line 15
    check-cast v0, Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->talkScrollContainer:Landroid/view/View;

    .line 26
    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 28
    .line 29
    const v2, 0x7f1208dc

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->talkScrollContainer:Landroid/view/View;

    .line 41
    .line 42
    check-cast p0, Landroid/widget/TextView;

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->atLeastOneTagChecked()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object v0, v3, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->threadItemView:Landroid/view/View;

    .line 60
    .line 61
    check-cast v0, Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->talkScrollContainer:Landroid/view/View;

    .line 72
    .line 73
    check-cast p0, Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    iget-object v0, v3, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->threadItemView:Landroid/view/View;

    .line 83
    .line 84
    check-cast v0, Landroid/widget/TextView;

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->talkScrollContainer:Landroid/view/View;

    .line 95
    .line 96
    check-cast p0, Landroid/widget/TextView;

    .line 97
    .line 98
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final updateTagChips()V
    .locals 6

    .line 1
    const-string v0, "sans-serif-medium"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectText:Landroid/view/View;

    .line 14
    .line 15
    check-cast v2, Lcom/google/android/flexbox/FlexboxLayout;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 18
    .line 19
    .line 20
    iget-boolean v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishSuccess:Z

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {p0, v2, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->addChip(Lorg/wikipedia/suggestededits/ImageTag;Landroid/graphics/Typeface;)Lcom/google/android/material/chip/Chip;

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->tagList:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lorg/wikipedia/suggestededits/ImageTag;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v3, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->addChip(Lorg/wikipedia/suggestededits/ImageTag;Landroid/graphics/Typeface;)Lcom/google/android/material/chip/Chip;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    iget-boolean v3, v3, Lorg/wikipedia/suggestededits/ImageTag;->isSelected:Z

    .line 57
    .line 58
    invoke-virtual {v4, v3}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 59
    .line 60
    .line 61
    iget-boolean v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishSuccess:Z

    .line 62
    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const v5, 0x7f04002d

    .line 79
    .line 80
    .line 81
    invoke-static {v3, v5}, Lokhttp3/Cache$Companion;->getThemedAttributeId(Landroid/content/Context;I)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-virtual {v4, v3}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColorResource(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const v5, 0x7f0405d1

    .line 93
    .line 94
    .line 95
    invoke-static {v3, v5}, Lokhttp3/Cache$Companion;->getThemedAttributeId(Landroid/content/Context;I)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {v4, v3}, Lcom/google/android/material/chip/Chip;->setChipStrokeColorResource(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const v5, 0x7f040094

    .line 108
    .line 109
    .line 110
    invoke-static {v3, v5}, Lokhttp3/Cache$Companion;->getThemedAttributeId(Landroid/content/Context;I)I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-virtual {v4, v3}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColorResource(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static {v3, v5}, Lokhttp3/Cache$Companion;->getThemedAttributeId(Landroid/content/Context;I)I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-virtual {v4, v3}, Lcom/google/android/material/chip/Chip;->setChipStrokeColorResource(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->updateLicenseTextShown()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->callback$1()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-interface {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;->updateActionButton()V

    .line 137
    .line 138
    .line 139
    return-void
.end method

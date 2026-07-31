.class public final Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001:\u0005\u0004\u0005\u0006\u0007\u0008B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "<init>",
        "()V",
        "CategoryMemberDiffCallback",
        "CategoryMembersAdapter",
        "InsertMediaItemHolder",
        "SearchCallback",
        "Companion",
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


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public actionMode:Landroidx/appcompat/view/ActionMode;

.field public binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

.field public insertMediaAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

.field public insertMediaAdvancedSettingsFragment:Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;

.field public insertMediaSettingsFragment:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

.field public final onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

.field public final searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 11
    .line 12
    new-instance v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$special$$inlined$viewModels$default$1;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v0, p0, v2}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;I)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lokhttp3/Request$Builder;

    .line 19
    .line 20
    const-class v3, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 21
    .line 22
    sget-object v4, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 23
    .line 24
    invoke-virtual {v4, v3}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    new-instance v4, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$special$$inlined$viewModels$default$1;

    .line 29
    .line 30
    invoke-direct {v4, p0, v1}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;I)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$special$$inlined$viewModels$default$1;

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    invoke-direct {v1, p0, v5}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;I)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v3, v4, v0, v1}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 43
    .line 44
    new-instance v0, Landroidx/fragment/app/FragmentManager$1;

    .line 45
    .line 46
    const/4 v1, 0x5

    .line 47
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/FragmentManager$1;-><init>(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final adjustRefreshViewLayoutParams(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 2
    .line 3
    const-string v1, "binding"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapViewButton:Landroid/view/View;

    .line 9
    .line 10
    check-cast v0, Landroid/widget/FrameLayout;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eqz v3, :cond_4

    .line 17
    .line 18
    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    move-object v4, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v4, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    .line 25
    .line 26
    invoke-direct {v4}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;-><init>()V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const v5, 0x7f040006

    .line 36
    .line 37
    .line 38
    filled-new-array {v5}, [I

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move v6, v4

    .line 62
    :goto_1
    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 68
    .line 69
    if-eqz p0, :cond_3

    .line 70
    .line 71
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->tabsButton:Landroid/view/ViewGroup;

    .line 72
    .line 73
    check-cast p0, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 83
    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    const/4 v4, 0x5

    .line 88
    :goto_2
    iput v4, p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 89
    .line 90
    return-void

    .line 91
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v2

    .line 95
    :cond_4
    const-string p0, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams"

    .line 96
    .line 97
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v2
.end method

.method public final applyActionBarButtonStyle$1(Landroid/view/MenuItem;Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0c02fb

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    check-cast v0, Landroid/widget/Button;

    .line 17
    .line 18
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    const p2, 0x7f040520

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const p2, 0x7f0404fb

    .line 35
    .line 36
    .line 37
    :goto_0
    new-instance v1, Landroid/util/TypedValue;

    .line 38
    .line 39
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v4, 0x1

    .line 47
    invoke-virtual {v2, p2, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    move-object v3, v1

    .line 54
    :cond_1
    if-eqz v3, :cond_2

    .line 55
    .line 56
    iget p2, v3, Landroid/util/TypedValue;->data:I

    .line 57
    .line 58
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 69
    .line 70
    .line 71
    new-instance p1, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda1;

    .line 72
    .line 73
    invoke-direct {p1, p0, v4}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    const-string p0, "Attribute not found; ID="

    .line 81
    .line 82
    invoke-static {p2, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_3
    const-string p0, "rootView"

    .line 91
    .line 92
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const v2, 0x7f0c0024

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const v2, 0x7f090211

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    move-object v8, v5

    .line 27
    check-cast v8, Landroid/widget/LinearLayout;

    .line 28
    .line 29
    if-eqz v8, :cond_10

    .line 30
    .line 31
    const v2, 0x7f090212

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    move-object v9, v5

    .line 39
    check-cast v9, Landroid/widget/TextView;

    .line 40
    .line 41
    if-eqz v9, :cond_10

    .line 42
    .line 43
    const v2, 0x7f0902c0

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    move-object v10, v5

    .line 51
    check-cast v10, Landroid/widget/ImageView;

    .line 52
    .line 53
    if-eqz v10, :cond_10

    .line 54
    .line 55
    const v2, 0x7f0902c1

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    move-object v11, v5

    .line 63
    check-cast v11, Landroid/widget/FrameLayout;

    .line 64
    .line 65
    if-eqz v11, :cond_10

    .line 66
    .line 67
    const v2, 0x7f0902e0

    .line 68
    .line 69
    .line 70
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    move-object v12, v5

    .line 75
    check-cast v12, Landroid/widget/FrameLayout;

    .line 76
    .line 77
    if-eqz v12, :cond_10

    .line 78
    .line 79
    const v2, 0x7f0902f3

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Landroidx/fragment/app/FragmentContainerView;

    .line 87
    .line 88
    if-eqz v5, :cond_10

    .line 89
    .line 90
    const v5, 0x7f0902f5

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Landroidx/fragment/app/FragmentContainerView;

    .line 98
    .line 99
    if-eqz v6, :cond_f

    .line 100
    .line 101
    move-object v7, v1

    .line 102
    check-cast v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 103
    .line 104
    const v6, 0x7f090513

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v6}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v13

    .line 111
    check-cast v13, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 112
    .line 113
    if-eqz v13, :cond_e

    .line 114
    .line 115
    const v6, 0x7f090569

    .line 116
    .line 117
    .line 118
    invoke-static {v1, v6}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v14

    .line 122
    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    .line 123
    .line 124
    if-eqz v14, :cond_e

    .line 125
    .line 126
    const v6, 0x7f090573

    .line 127
    .line 128
    .line 129
    invoke-static {v1, v6}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v15

    .line 133
    check-cast v15, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 134
    .line 135
    if-eqz v15, :cond_e

    .line 136
    .line 137
    const v6, 0x7f0905b1

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v6}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v16

    .line 144
    check-cast v16, Landroid/widget/FrameLayout;

    .line 145
    .line 146
    if-eqz v16, :cond_e

    .line 147
    .line 148
    const v6, 0x7f0905c0

    .line 149
    .line 150
    .line 151
    invoke-static {v1, v6}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v17

    .line 155
    check-cast v17, Lorg/wikipedia/views/WikiCardView;

    .line 156
    .line 157
    if-eqz v17, :cond_e

    .line 158
    .line 159
    const v6, 0x7f0905b7

    .line 160
    .line 161
    .line 162
    invoke-static {v1, v6}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v18

    .line 166
    check-cast v18, Landroid/widget/TextView;

    .line 167
    .line 168
    if-eqz v18, :cond_e

    .line 169
    .line 170
    const v6, 0x7f0905e6

    .line 171
    .line 172
    .line 173
    invoke-static {v1, v6}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v19

    .line 177
    check-cast v19, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 178
    .line 179
    if-eqz v19, :cond_e

    .line 180
    .line 181
    const v6, 0x7f0905e7

    .line 182
    .line 183
    .line 184
    invoke-static {v1, v6}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v20

    .line 188
    check-cast v20, Landroid/widget/FrameLayout;

    .line 189
    .line 190
    if-eqz v20, :cond_e

    .line 191
    .line 192
    const v6, 0x7f0906cb

    .line 193
    .line 194
    .line 195
    invoke-static {v1, v6}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v21

    .line 199
    check-cast v21, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 200
    .line 201
    if-eqz v21, :cond_e

    .line 202
    .line 203
    const v6, 0x7f0906cc

    .line 204
    .line 205
    .line 206
    invoke-static {v1, v6}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v22

    .line 210
    check-cast v22, Lcom/google/android/material/appbar/AppBarLayout;

    .line 211
    .line 212
    if-eqz v22, :cond_e

    .line 213
    .line 214
    new-instance v6, Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 215
    .line 216
    invoke-direct/range {v6 .. v22}, Lorg/wikipedia/databinding/FragmentPlacesBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Landroidx/recyclerview/widget/RecyclerView;Lorg/wikipedia/views/WikiSwipeRefreshLayout;Landroid/widget/FrameLayout;Lorg/wikipedia/views/WikiCardView;Landroid/widget/TextView;Lorg/wikipedia/views/FaceAndColorDetectImageView;Landroid/widget/FrameLayout;Lcom/google/android/material/appbar/MaterialToolbar;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 217
    .line 218
    .line 219
    iput-object v6, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 220
    .line 221
    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 222
    .line 223
    .line 224
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 225
    .line 226
    const-string v6, "binding"

    .line 227
    .line 228
    if-eqz v1, :cond_d

    .line 229
    .line 230
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->tabsButton:Landroid/view/ViewGroup;

    .line 231
    .line 232
    check-cast v1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 235
    .line 236
    .line 237
    new-instance v1, Lorg/wikipedia/views/ImageZoomHelper;

    .line 238
    .line 239
    invoke-direct {v1, v0}, Lorg/wikipedia/views/ImageZoomHelper;-><init>(Lorg/wikipedia/activity/BaseActivity;)V

    .line 240
    .line 241
    .line 242
    iput-object v1, v0, Lorg/wikipedia/activity/BaseActivity;->imageZoomHelper:Lorg/wikipedia/views/ImageZoomHelper;

    .line 243
    .line 244
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    if-eqz v1, :cond_0

    .line 249
    .line 250
    const v7, 0x7f120327

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    invoke-virtual {v1, v7}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    :cond_0
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    iget-object v7, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 265
    .line 266
    invoke-virtual {v1, v7, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/fragment/app/FragmentManager$1;Landroidx/lifecycle/LifecycleOwner;)V

    .line 267
    .line 268
    .line 269
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 270
    .line 271
    if-eqz v1, :cond_c

    .line 272
    .line 273
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listViewButton:Landroid/view/View;

    .line 274
    .line 275
    check-cast v1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 276
    .line 277
    new-instance v7, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 278
    .line 279
    const/16 v8, 0xe

    .line 280
    .line 281
    invoke-direct {v7, v8, v0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 285
    .line 286
    .line 287
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 288
    .line 289
    if-eqz v1, :cond_b

    .line 290
    .line 291
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchContainer:Lorg/wikipedia/views/WikiCardView;

    .line 292
    .line 293
    new-instance v7, Landroid/util/TypedValue;

    .line 294
    .line 295
    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    const/4 v9, 0x1

    .line 303
    const v10, 0x7f040061

    .line 304
    .line 305
    .line 306
    invoke-virtual {v8, v10, v7, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 307
    .line 308
    .line 309
    move-result v8

    .line 310
    if-eqz v8, :cond_1

    .line 311
    .line 312
    goto :goto_0

    .line 313
    :cond_1
    move-object v7, v3

    .line 314
    :goto_0
    if-eqz v7, :cond_a

    .line 315
    .line 316
    iget v7, v7, Landroid/util/TypedValue;->data:I

    .line 317
    .line 318
    invoke-virtual {v1, v7}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 319
    .line 320
    .line 321
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 322
    .line 323
    if-eqz v1, :cond_9

    .line 324
    .line 325
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 326
    .line 327
    new-instance v7, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 328
    .line 329
    const/4 v8, 0x3

    .line 330
    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    iget-object v1, v1, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 341
    .line 342
    sget-object v7, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ADD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 343
    .line 344
    if-eq v1, v7, :cond_3

    .line 345
    .line 346
    new-instance v1, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 347
    .line 348
    invoke-direct {v1, v0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;)V

    .line 349
    .line 350
    .line 351
    iput-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 352
    .line 353
    iget-object v9, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 354
    .line 355
    if-eqz v9, :cond_2

    .line 356
    .line 357
    iget-object v9, v9, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 358
    .line 359
    invoke-virtual {v9, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 360
    .line 361
    .line 362
    goto :goto_1

    .line 363
    :cond_2
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    throw v3

    .line 367
    :cond_3
    :goto_1
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    new-instance v9, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2;

    .line 372
    .line 373
    invoke-direct {v9, v0, v3, v4}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;Lkotlin/coroutines/Continuation;I)V

    .line 374
    .line 375
    .line 376
    invoke-static {v1, v3, v3, v9, v8}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    .line 389
    .line 390
    check-cast v1, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

    .line 391
    .line 392
    iput-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaSettingsFragment:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

    .line 393
    .line 394
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    check-cast v1, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;

    .line 406
    .line 407
    iput-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaAdvancedSettingsFragment:Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;

    .line 408
    .line 409
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 410
    .line 411
    if-eqz v1, :cond_8

    .line 412
    .line 413
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchTextView:Landroid/widget/TextView;

    .line 414
    .line 415
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    iget-object v2, v2, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->searchQuery:Ljava/lang/String;

    .line 420
    .line 421
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    .line 423
    .line 424
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 425
    .line 426
    if-eqz v1, :cond_7

    .line 427
    .line 428
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchContainer:Lorg/wikipedia/views/WikiCardView;

    .line 429
    .line 430
    new-instance v2, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda1;

    .line 431
    .line 432
    invoke-direct {v2, v0, v4}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;I)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, v4}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->adjustRefreshViewLayoutParams(Z)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    iget-object v1, v1, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 446
    .line 447
    if-ne v1, v7, :cond_6

    .line 448
    .line 449
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    iget-object v1, v1, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImage:Lorg/wikipedia/page/PageTitle;

    .line 454
    .line 455
    if-eqz v1, :cond_6

    .line 456
    .line 457
    if-nez p1, :cond_6

    .line 458
    .line 459
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 460
    .line 461
    if-eqz v1, :cond_5

    .line 462
    .line 463
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->rootView:Landroid/widget/FrameLayout;

    .line 464
    .line 465
    const/16 v2, 0x8

    .line 466
    .line 467
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 468
    .line 469
    .line 470
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 471
    .line 472
    if-eqz v1, :cond_4

    .line 473
    .line 474
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchCloseBtn:Landroid/view/View;

    .line 475
    .line 476
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 477
    .line 478
    new-instance v2, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 479
    .line 480
    const/4 v3, 0x7

    .line 481
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 485
    .line 486
    .line 487
    return-void

    .line 488
    :cond_4
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    throw v3

    .line 492
    :cond_5
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    throw v3

    .line 496
    :cond_6
    return-void

    .line 497
    :cond_7
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    throw v3

    .line 501
    :cond_8
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    throw v3

    .line 505
    :cond_9
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    throw v3

    .line 509
    :cond_a
    const-string v0, "Attribute not found; ID=2130968673"

    .line 510
    .line 511
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    return-void

    .line 515
    :cond_b
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    throw v3

    .line 519
    :cond_c
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    throw v3

    .line 523
    :cond_d
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    throw v3

    .line 527
    :cond_e
    move v2, v6

    .line 528
    goto :goto_2

    .line 529
    :cond_f
    move v2, v5

    .line 530
    :cond_10
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    const-string v1, "Missing required view with ID: "

    .line 539
    .line 540
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const v0, 0x7f0e0011

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v1, v1, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImage:Lorg/wikipedia/page/PageTitle;

    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const v3, 0x7f0903cf

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->showMediaSettingsFragment()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v4}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->adjustRefreshViewLayoutParams(Z)V

    .line 26
    .line 27
    .line 28
    return v4

    .line 29
    :cond_0
    const v3, 0x7f0903e3

    .line 30
    .line 31
    .line 32
    const-string v5, "caption_entry"

    .line 33
    .line 34
    if-ne v2, v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v2, v2, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 41
    .line 42
    sget-object v3, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ADD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 43
    .line 44
    if-ne v2, v3, :cond_1

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    sget-object v6, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 49
    .line 50
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v8, v2, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImageSource:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iget-object v9, v2, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImageSourceProjects:Ljava/lang/String;

    .line 65
    .line 66
    const/4 v15, 0x0

    .line 67
    const/16 v16, 0x1e8

    .line 68
    .line 69
    const/4 v10, 0x0

    .line 70
    const-string v11, "accepted"

    .line 71
    .line 72
    const/4 v12, 0x0

    .line 73
    const/4 v13, 0x0

    .line 74
    const/4 v14, 0x0

    .line 75
    invoke-static/range {v6 .. v16}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->getActionDataString$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iget-object v1, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 80
    .line 81
    iget-object v1, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 82
    .line 83
    const-string v3, "advanced_setting_save"

    .line 84
    .line 85
    invoke-static {v3, v5, v2, v1}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 93
    .line 94
    .line 95
    return v4

    .line 96
    :cond_2
    const v3, 0x7f0903b9

    .line 97
    .line 98
    .line 99
    if-ne v2, v3, :cond_b

    .line 100
    .line 101
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iget-object v2, v2, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 106
    .line 107
    sget-object v3, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ADD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 108
    .line 109
    const/4 v6, 0x0

    .line 110
    const-string v7, "insertMediaSettingsFragment"

    .line 111
    .line 112
    if-ne v2, v3, :cond_7

    .line 113
    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    sget-object v8, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 117
    .line 118
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    iget-object v10, v2, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImageSource:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iget-object v11, v2, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImageSourceProjects:Ljava/lang/String;

    .line 133
    .line 134
    iget-object v2, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaSettingsFragment:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

    .line 135
    .line 136
    if-eqz v2, :cond_6

    .line 137
    .line 138
    invoke-virtual {v2}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->getCaptionText()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    const/4 v3, 0x0

    .line 147
    if-lez v2, :cond_3

    .line 148
    .line 149
    move v2, v4

    .line 150
    goto :goto_0

    .line 151
    :cond_3
    move v2, v3

    .line 152
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 153
    .line 154
    .line 155
    move-result-object v15

    .line 156
    iget-object v2, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaSettingsFragment:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

    .line 157
    .line 158
    if-eqz v2, :cond_5

    .line 159
    .line 160
    invoke-virtual {v2}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->getAlternativeText()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-lez v2, :cond_4

    .line 169
    .line 170
    move v3, v4

    .line 171
    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 172
    .line 173
    .line 174
    move-result-object v16

    .line 175
    const/16 v17, 0x0

    .line 176
    .line 177
    const/16 v18, 0x128

    .line 178
    .line 179
    const/4 v12, 0x0

    .line 180
    const-string v13, "accepted"

    .line 181
    .line 182
    const/4 v14, 0x0

    .line 183
    invoke-static/range {v8 .. v18}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->getActionDataString$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    iget-object v3, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 188
    .line 189
    iget-object v3, v3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 190
    .line 191
    const-string v8, "caption_continue"

    .line 192
    .line 193
    invoke-static {v8, v5, v2, v3}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_5
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw v6

    .line 201
    :cond_6
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw v6

    .line 205
    :cond_7
    :goto_1
    if-eqz v1, :cond_a

    .line 206
    .line 207
    new-instance v2, Landroid/content/Intent;

    .line 208
    .line 209
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v3, "imageTitle"

    .line 213
    .line 214
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    iget-object v2, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaSettingsFragment:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

    .line 219
    .line 220
    if-eqz v2, :cond_9

    .line 221
    .line 222
    invoke-virtual {v2}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->getCaptionText()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    const-string v3, "resultImageCaption"

    .line 227
    .line 228
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    iget-object v2, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaSettingsFragment:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

    .line 233
    .line 234
    if-eqz v2, :cond_8

    .line 235
    .line 236
    invoke-virtual {v2}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->getAlternativeText()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    const-string v3, "resultImageAlt"

    .line 241
    .line 242
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    iget-object v2, v2, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->imageType:Ljava/lang/String;

    .line 251
    .line 252
    const-string v3, "resultImageType"

    .line 253
    .line 254
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    iget-object v2, v2, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->imagePosition:Ljava/lang/String;

    .line 263
    .line 264
    const-string v3, "resultImagePos"

    .line 265
    .line 266
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    iget-object v2, v2, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->imageSize:Ljava/lang/String;

    .line 275
    .line 276
    const-string v3, "resultImageSize"

    .line 277
    .line 278
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    const/16 v2, 0x64

    .line 286
    .line 287
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 291
    .line 292
    .line 293
    return v4

    .line 294
    :cond_8
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw v6

    .line 298
    :cond_9
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw v6

    .line 302
    :cond_a
    return v4

    .line 303
    :cond_b
    invoke-super/range {p0 .. p1}, Lorg/wikipedia/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    return v0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0903cf

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f0903e3

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v2, 0x7f0903b9

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaSettingsFragment:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    const-string v5, "insertMediaSettingsFragment"

    .line 29
    .line 30
    if-eqz v3, :cond_c

    .line 31
    .line 32
    iget-object v3, v3, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v3, Landroid/widget/ScrollView;

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const-string v6, "insertMediaAdvancedSettingsFragment"

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x1

    .line 49
    if-nez v3, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v3, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaAdvancedSettingsFragment:Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;

    .line 53
    .line 54
    if-eqz v3, :cond_b

    .line 55
    .line 56
    iget-object v3, v3, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->_binding:Lokhttp3/Request$Builder;

    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-object v3, v3, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v3, Landroid/widget/ScrollView;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_1

    .line 70
    .line 71
    :goto_0
    move v3, v7

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move v3, v8

    .line 74
    :goto_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaAdvancedSettingsFragment:Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;

    .line 78
    .line 79
    if-eqz v3, :cond_a

    .line 80
    .line 81
    iget-object v3, v3, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->_binding:Lokhttp3/Request$Builder;

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iget-object v3, v3, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v3, Landroid/widget/ScrollView;

    .line 89
    .line 90
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-nez v3, :cond_2

    .line 95
    .line 96
    move v3, v8

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    move v3, v7

    .line 99
    :goto_2
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 100
    .line 101
    .line 102
    iget-object v3, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaSettingsFragment:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

    .line 103
    .line 104
    if-eqz v3, :cond_9

    .line 105
    .line 106
    iget-object v3, v3, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v3, Landroid/widget/ScrollView;

    .line 114
    .line 115
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-nez v3, :cond_3

    .line 120
    .line 121
    move v3, v8

    .line 122
    goto :goto_3

    .line 123
    :cond_3
    move v3, v7

    .line 124
    :goto_3
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    iget-object v3, v3, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 132
    .line 133
    sget-object v6, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ADD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 134
    .line 135
    if-ne v3, v6, :cond_4

    .line 136
    .line 137
    const v3, 0x7f120507

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    goto :goto_4

    .line 145
    :cond_4
    const v3, 0x7f12031e

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    :goto_4
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    iget-object v3, v3, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImage:Lorg/wikipedia/page/PageTitle;

    .line 160
    .line 161
    if-eqz v3, :cond_5

    .line 162
    .line 163
    move v3, v8

    .line 164
    goto :goto_5

    .line 165
    :cond_5
    move v3, v7

    .line 166
    :goto_5
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 167
    .line 168
    .line 169
    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    invoke-virtual {p0, v0, v3}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->applyActionBarButtonStyle$1(Landroid/view/MenuItem;Z)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaSettingsFragment:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

    .line 177
    .line 178
    if-eqz v0, :cond_8

    .line 179
    .line 180
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->getCaptionText()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-lez v0, :cond_7

    .line 189
    .line 190
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaSettingsFragment:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

    .line 191
    .line 192
    if-eqz v0, :cond_6

    .line 193
    .line 194
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->getAlternativeText()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-lez v0, :cond_7

    .line 203
    .line 204
    move v7, v8

    .line 205
    goto :goto_6

    .line 206
    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw v4

    .line 210
    :cond_7
    :goto_6
    invoke-virtual {p0, v2, v7}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->applyActionBarButtonStyle$1(Landroid/view/MenuItem;Z)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    invoke-virtual {p0, v1, v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->applyActionBarButtonStyle$1(Landroid/view/MenuItem;Z)V

    .line 218
    .line 219
    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    return p0

    .line 225
    :cond_8
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v4

    .line 229
    :cond_9
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw v4

    .line 233
    :cond_a
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw v4

    .line 237
    :cond_b
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw v4

    .line 241
    :cond_c
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw v4
.end method

.method public final showMediaSettingsFragment()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "binding"

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->rootView:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    const/16 v3, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchContainer:Lorg/wikipedia/views/WikiCardView;

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listEmptyContainer:Landroid/view/View;

    .line 29
    .line 30
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaSettingsFragment:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->show()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    const-string p0, "insertMediaSettingsFragment"

    .line 44
    .line 45
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v1

    .line 53
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v1

    .line 57
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1
.end method

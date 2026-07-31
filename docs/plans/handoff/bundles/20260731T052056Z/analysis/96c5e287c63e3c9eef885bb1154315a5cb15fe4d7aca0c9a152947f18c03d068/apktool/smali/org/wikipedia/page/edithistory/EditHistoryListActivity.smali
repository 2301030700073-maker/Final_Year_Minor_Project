.class public final Lorg/wikipedia/page/edithistory/EditHistoryListActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0007\u0018\u00002\u00020\u0001:\u000e\u0004\u0005\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/wikipedia/page/edithistory/EditHistoryListActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "<init>",
        "()V",
        "AppIconAdapter",
        "StatsItemAdapter",
        "LoadingItemAdapter",
        "CategoryMemberDiffCallback",
        "CategoryMembersAdapter",
        "LoadingViewHolder",
        "StatsViewHolder",
        "SeparatorViewHolder",
        "SearchBarViewHolder",
        "EmptyMessagesViewHolder",
        "EditHistoryListItemHolder",
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

.field public binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

.field public final editHistoryEmptyMessagesAdapter:Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsItemAdapter;

.field public final editHistoryListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

.field public final editHistorySearchBarAdapter:Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

.field public final editHistoryStatsAdapter:Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsItemAdapter;

.field public final loadFooter:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

.field public final loadHeader:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

.field public final onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

.field public final searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->editHistoryListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 10
    .line 11
    new-instance v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsItemAdapter;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsItemAdapter;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->editHistoryStatsAdapter:Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsItemAdapter;

    .line 18
    .line 19
    new-instance v0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->editHistorySearchBarAdapter:Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

    .line 25
    .line 26
    new-instance v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsItemAdapter;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-direct {v0, p0, v2}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsItemAdapter;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->editHistoryEmptyMessagesAdapter:Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsItemAdapter;

    .line 33
    .line 34
    new-instance v0, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 35
    .line 36
    new-instance v3, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    invoke-direct {v3, p0, v1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;I)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0, v3, v2}, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;I)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->loadHeader:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 45
    .line 46
    new-instance v0, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 47
    .line 48
    new-instance v3, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda0;

    .line 49
    .line 50
    invoke-direct {v3, p0, v2}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;I)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p0, v3, v2}, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;I)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->loadFooter:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 57
    .line 58
    new-instance v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$special$$inlined$viewModels$default$1;

    .line 59
    .line 60
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;I)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lokhttp3/Request$Builder;

    .line 64
    .line 65
    const-class v3, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 66
    .line 67
    sget-object v4, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 68
    .line 69
    invoke-virtual {v4, v3}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    new-instance v4, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$special$$inlined$viewModels$default$1;

    .line 74
    .line 75
    invoke-direct {v4, p0, v2}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;I)V

    .line 76
    .line 77
    .line 78
    new-instance v2, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$special$$inlined$viewModels$default$1;

    .line 79
    .line 80
    const/4 v5, 0x2

    .line 81
    invoke-direct {v2, p0, v5}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;I)V

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, v3, v4, v0, v2}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 85
    .line 86
    .line 87
    iput-object v1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 88
    .line 89
    new-instance v0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 90
    .line 91
    const/4 v1, 0x3

    .line 92
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;-><init>(ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 96
    .line 97
    new-instance v0, Landroidx/fragment/app/FragmentManager$1;

    .line 98
    .line 99
    const/16 v1, 0x9

    .line 100
    .line 101
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/FragmentManager$1;-><init>(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 105
    .line 106
    return-void
.end method


# virtual methods
.method public final enableCompareButton(Landroid/widget/TextView;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6
    .line 7
    .line 8
    new-instance p2, Landroid/util/TypedValue;

    .line 9
    .line 10
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const v2, 0x7f040520

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    move-object v0, p2

    .line 27
    :cond_0
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget p0, v0, Landroid/util/TypedValue;->data:I

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    const-string p0, "Attribute not found; ID=2130969888"

    .line 36
    .line 37
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    const/4 p2, 0x0

    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 43
    .line 44
    .line 45
    new-instance p2, Landroid/util/TypedValue;

    .line 46
    .line 47
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const v2, 0x7f04054f

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v2, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    move-object v0, p2

    .line 64
    :cond_3
    if-eqz v0, :cond_4

    .line 65
    .line 66
    iget p0, v0, Landroid/util/TypedValue;->data:I

    .line 67
    .line 68
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    const-string p0, "Attribute not found; ID=2130969935"

    .line 73
    .line 74
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 18

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
    const v2, 0x7f0c0020

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
    const v2, 0x7f09015e

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
    check-cast v8, Landroid/widget/Button;

    .line 28
    .line 29
    if-eqz v8, :cond_b

    .line 30
    .line 31
    const v2, 0x7f09015f

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
    check-cast v9, Landroid/widget/Button;

    .line 40
    .line 41
    if-eqz v9, :cond_b

    .line 42
    .line 43
    const v2, 0x7f090160

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
    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    .line 53
    if-eqz v10, :cond_b

    .line 54
    .line 55
    const v2, 0x7f090161

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
    check-cast v11, Lcom/google/android/material/card/MaterialCardView;

    .line 64
    .line 65
    if-eqz v11, :cond_b

    .line 66
    .line 67
    const v2, 0x7f090162

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
    check-cast v12, Landroid/widget/TextView;

    .line 76
    .line 77
    if-eqz v12, :cond_b

    .line 78
    .line 79
    const v2, 0x7f090163

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    move-object v13, v5

    .line 87
    check-cast v13, Lcom/google/android/material/card/MaterialCardView;

    .line 88
    .line 89
    if-eqz v13, :cond_b

    .line 90
    .line 91
    const v2, 0x7f090164

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    move-object v14, v5

    .line 99
    check-cast v14, Landroid/widget/TextView;

    .line 100
    .line 101
    if-eqz v14, :cond_b

    .line 102
    .line 103
    const v2, 0x7f0901fa

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 111
    .line 112
    if-eqz v5, :cond_b

    .line 113
    .line 114
    const v2, 0x7f0901fb

    .line 115
    .line 116
    .line 117
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    check-cast v5, Landroid/widget/TextView;

    .line 122
    .line 123
    if-eqz v5, :cond_b

    .line 124
    .line 125
    const v2, 0x7f0901fc

    .line 126
    .line 127
    .line 128
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    move-object v15, v5

    .line 133
    check-cast v15, Landroidx/recyclerview/widget/RecyclerView;

    .line 134
    .line 135
    if-eqz v15, :cond_b

    .line 136
    .line 137
    const v2, 0x7f0901fd

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    move-object/from16 v16, v5

    .line 145
    .line 146
    check-cast v16, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 147
    .line 148
    if-eqz v16, :cond_b

    .line 149
    .line 150
    const v2, 0x7f0901fe

    .line 151
    .line 152
    .line 153
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    check-cast v5, Landroid/widget/LinearLayout;

    .line 158
    .line 159
    if-eqz v5, :cond_b

    .line 160
    .line 161
    const v2, 0x7f0901ff

    .line 162
    .line 163
    .line 164
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    check-cast v5, Landroid/widget/TextView;

    .line 169
    .line 170
    if-eqz v5, :cond_b

    .line 171
    .line 172
    const v2, 0x7f0906cb

    .line 173
    .line 174
    .line 175
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    move-object/from16 v17, v5

    .line 180
    .line 181
    check-cast v17, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 182
    .line 183
    if-eqz v17, :cond_b

    .line 184
    .line 185
    new-instance v6, Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 186
    .line 187
    move-object v7, v1

    .line 188
    check-cast v7, Landroid/widget/LinearLayout;

    .line 189
    .line 190
    invoke-direct/range {v6 .. v17}, Lorg/wikipedia/databinding/ActivityLoginBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lorg/wikipedia/views/WikiSwipeRefreshLayout;Lcom/google/android/material/appbar/MaterialToolbar;)V

    .line 191
    .line 192
    .line 193
    iput-object v6, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 194
    .line 195
    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 196
    .line 197
    .line 198
    iget-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 199
    .line 200
    const-string v2, "binding"

    .line 201
    .line 202
    if-eqz v1, :cond_a

    .line 203
    .line 204
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->toolbar:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    const/4 v5, 0x1

    .line 216
    if-eqz v1, :cond_0

    .line 217
    .line 218
    sget-object v6, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 219
    .line 220
    invoke-virtual {v0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    iget-object v6, v6, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 225
    .line 226
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    invoke-static {v6}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    new-array v7, v5, [Ljava/lang/Object;

    .line 235
    .line 236
    aput-object v6, v7, v4

    .line 237
    .line 238
    const v6, 0x7f12051d

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-virtual {v1, v6}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 246
    .line 247
    .line 248
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    if-eqz v1, :cond_1

    .line 253
    .line 254
    invoke-virtual {v1, v4}, Lcoil3/util/ContextsKt;->setDisplayShowTitleEnabled(Z)V

    .line 255
    .line 256
    .line 257
    :cond_1
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    iget-object v6, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 262
    .line 263
    invoke-virtual {v1, v6, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/fragment/app/FragmentManager$1;Landroidx/lifecycle/LifecycleOwner;)V

    .line 264
    .line 265
    .line 266
    const v1, 0x1010031

    .line 267
    .line 268
    .line 269
    invoke-static {v0, v1}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    iget-object v6, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 274
    .line 275
    if-eqz v6, :cond_9

    .line 276
    .line 277
    iget-object v6, v6, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v6, Lcom/google/android/material/card/MaterialCardView;

    .line 280
    .line 281
    const v7, 0x7f040520

    .line 282
    .line 283
    .line 284
    invoke-static {v0, v7}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 285
    .line 286
    .line 287
    move-result v7

    .line 288
    const v8, 0x3d4ccccd    # 0.05f

    .line 289
    .line 290
    .line 291
    invoke-static {v1, v8, v7}, Landroidx/core/graphics/ColorUtils;->blendARGB(IFI)I

    .line 292
    .line 293
    .line 294
    move-result v7

    .line 295
    invoke-virtual {v6, v7}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 296
    .line 297
    .line 298
    iget-object v6, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 299
    .line 300
    if-eqz v6, :cond_8

    .line 301
    .line 302
    iget-object v6, v6, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v6, Lcom/google/android/material/card/MaterialCardView;

    .line 305
    .line 306
    const v7, 0x7f0406cf

    .line 307
    .line 308
    .line 309
    invoke-static {v0, v7}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 310
    .line 311
    .line 312
    move-result v7

    .line 313
    invoke-static {v1, v8, v7}, Landroidx/core/graphics/ColorUtils;->blendARGB(IFI)I

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    invoke-virtual {v6, v1}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->updateCompareState()V

    .line 321
    .line 322
    .line 323
    iget-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 324
    .line 325
    if-eqz v1, :cond_7

    .line 326
    .line 327
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v1, Landroid/widget/Button;

    .line 330
    .line 331
    new-instance v6, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda2;

    .line 332
    .line 333
    invoke-direct {v6, v0, v4}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    .line 338
    .line 339
    iget-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 340
    .line 341
    if-eqz v1, :cond_6

    .line 342
    .line 343
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v1, Landroid/widget/Button;

    .line 346
    .line 347
    new-instance v6, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda2;

    .line 348
    .line 349
    invoke-direct {v6, v0, v5}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;I)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    .line 354
    .line 355
    iget-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 356
    .line 357
    if-eqz v1, :cond_5

    .line 358
    .line 359
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast v1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 362
    .line 363
    new-instance v6, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda6;

    .line 364
    .line 365
    invoke-direct {v6, v0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda6;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 369
    .line 370
    .line 371
    iget-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 372
    .line 373
    if-eqz v1, :cond_4

    .line 374
    .line 375
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 378
    .line 379
    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 380
    .line 381
    invoke-direct {v6, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->setupAdapters()V

    .line 388
    .line 389
    .line 390
    iget-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 391
    .line 392
    if-eqz v1, :cond_3

    .line 393
    .line 394
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 397
    .line 398
    new-instance v2, Landroidx/recyclerview/widget/FastScroller$2;

    .line 399
    .line 400
    const/4 v5, 0x2

    .line 401
    invoke-direct {v2, v5, v0}, Landroidx/recyclerview/widget/FastScroller$2;-><init>(ILjava/lang/Object;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 405
    .line 406
    .line 407
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    new-instance v2, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5;

    .line 412
    .line 413
    invoke-direct {v2, v0, v3, v4}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;Lkotlin/coroutines/Continuation;I)V

    .line 414
    .line 415
    .line 416
    const/4 v4, 0x3

    .line 417
    invoke-static {v1, v3, v3, v2, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    iget-object v1, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->editHistoryStatsData:Landroidx/lifecycle/MutableLiveData;

    .line 425
    .line 426
    new-instance v2, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 427
    .line 428
    const/16 v3, 0x14

    .line 429
    .line 430
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    new-instance v3, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;

    .line 434
    .line 435
    const/4 v4, 0x5

    .line 436
    invoke-direct {v3, v2, v4}, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1, v0, v3}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    iget-boolean v1, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->actionModeActive:Z

    .line 447
    .line 448
    if-eqz v1, :cond_2

    .line 449
    .line 450
    iget-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 451
    .line 452
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    iput-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 457
    .line 458
    :cond_2
    return-void

    .line 459
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    throw v3

    .line 463
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    throw v3

    .line 467
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    throw v3

    .line 471
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    throw v3

    .line 475
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    throw v3

    .line 479
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    throw v3

    .line 483
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    throw v3

    .line 487
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    throw v3

    .line 491
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    const-string v1, "Missing required view with ID: "

    .line 500
    .line 501
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    return-void
.end method

.method public final setupAdapters()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->loadFooter:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 7
    .line 8
    iget-object v4, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->editHistoryListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 9
    .line 10
    const-string v5, "binding"

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object p0, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    invoke-virtual {v4, v3}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->withLoadStateFooter(Landroidx/paging/LoadStateAdapter;)Landroidx/recyclerview/widget/ConcatAdapter;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v2

    .line 32
    :cond_1
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v0, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    iget-object v1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->loadHeader:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 39
    .line 40
    invoke-virtual {v4, v1, v3}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->withLoadStateHeaderAndFooter(Landroidx/paging/LoadStateAdapter;Landroidx/paging/LoadStateAdapter;)Landroidx/recyclerview/widget/ConcatAdapter;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x0

    .line 45
    iget-object v3, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->editHistoryStatsAdapter:Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsItemAdapter;

    .line 46
    .line 47
    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->editHistorySearchBarAdapter:Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

    .line 52
    .line 53
    invoke-virtual {v1, v2, p0}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v2
.end method

.method public final showFilterOverflowMenu()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->editHistoryStatsData:Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lorg/wikipedia/util/Resource;

    .line 14
    .line 15
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Success;

    .line 16
    .line 17
    if-eqz v2, :cond_9

    .line 18
    .line 19
    iget-object v2, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object v2, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 24
    .line 25
    iget-object v2, v2, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 26
    .line 27
    check-cast v2, Lorg/wikipedia/views/SearchAndFilterActionProvider;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget-object v2, v2, Lorg/wikipedia/views/SearchAndFilterActionProvider;->filterIcon:Landroid/widget/ImageView;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v2, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->editHistorySearchBarAdapter:Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

    .line 35
    .line 36
    iget-object v2, v2, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$SearchBarViewHolder;

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    iget-object v2, v2, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$SearchBarViewHolder;->binding:Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;

    .line 43
    .line 44
    iget-object v2, v2, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->filterButton:Landroid/widget/ImageView;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v2, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 48
    .line 49
    if-eqz v2, :cond_8

    .line 50
    .line 51
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Landroid/widget/LinearLayout;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    :goto_0
    new-instance v3, Lorg/wikipedia/views/ReadingListsOverflowView;

    .line 59
    .line 60
    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const v5, 0x7f0c05c6

    .line 68
    .line 69
    .line 70
    const/4 v6, 0x0

    .line 71
    invoke-virtual {v4, v5, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    const v5, 0x7f09023e

    .line 79
    .line 80
    .line 81
    invoke-static {v4, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    check-cast v7, Landroid/widget/TextView;

    .line 86
    .line 87
    if-eqz v7, :cond_7

    .line 88
    .line 89
    const v5, 0x7f09023f

    .line 90
    .line 91
    .line 92
    invoke-static {v4, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    check-cast v8, Landroid/widget/LinearLayout;

    .line 97
    .line 98
    if-eqz v8, :cond_7

    .line 99
    .line 100
    const v5, 0x7f090240

    .line 101
    .line 102
    .line 103
    invoke-static {v4, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    check-cast v9, Landroid/widget/ImageView;

    .line 108
    .line 109
    if-eqz v9, :cond_7

    .line 110
    .line 111
    const v5, 0x7f090241

    .line 112
    .line 113
    .line 114
    invoke-static {v4, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    check-cast v10, Landroid/widget/TextView;

    .line 119
    .line 120
    if-eqz v10, :cond_7

    .line 121
    .line 122
    const v5, 0x7f090242

    .line 123
    .line 124
    .line 125
    invoke-static {v4, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    check-cast v11, Landroid/widget/LinearLayout;

    .line 130
    .line 131
    if-eqz v11, :cond_7

    .line 132
    .line 133
    const v5, 0x7f090243

    .line 134
    .line 135
    .line 136
    invoke-static {v4, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    check-cast v12, Landroid/widget/ImageView;

    .line 141
    .line 142
    if-eqz v12, :cond_7

    .line 143
    .line 144
    const v5, 0x7f090244

    .line 145
    .line 146
    .line 147
    invoke-static {v4, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v13

    .line 151
    check-cast v13, Landroid/widget/TextView;

    .line 152
    .line 153
    if-eqz v13, :cond_7

    .line 154
    .line 155
    const v5, 0x7f090245

    .line 156
    .line 157
    .line 158
    invoke-static {v4, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v14

    .line 162
    check-cast v14, Landroid/widget/LinearLayout;

    .line 163
    .line 164
    if-eqz v14, :cond_7

    .line 165
    .line 166
    const v5, 0x7f090246

    .line 167
    .line 168
    .line 169
    invoke-static {v4, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v14

    .line 173
    check-cast v14, Landroid/widget/ImageView;

    .line 174
    .line 175
    if-eqz v14, :cond_7

    .line 176
    .line 177
    const v5, 0x7f090247

    .line 178
    .line 179
    .line 180
    invoke-static {v4, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v15

    .line 184
    check-cast v15, Landroid/widget/TextView;

    .line 185
    .line 186
    if-eqz v15, :cond_7

    .line 187
    .line 188
    const v5, 0x7f090248

    .line 189
    .line 190
    .line 191
    invoke-static {v4, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v16

    .line 195
    move-object/from16 v5, v16

    .line 196
    .line 197
    check-cast v5, Landroid/widget/LinearLayout;

    .line 198
    .line 199
    if-eqz v5, :cond_6

    .line 200
    .line 201
    const v6, 0x7f090249

    .line 202
    .line 203
    .line 204
    invoke-static {v4, v6}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object v17

    .line 208
    move-object/from16 v6, v17

    .line 209
    .line 210
    check-cast v6, Landroid/widget/ImageView;

    .line 211
    .line 212
    if-eqz v6, :cond_5

    .line 213
    .line 214
    check-cast v4, Lorg/wikipedia/views/WikiCardView;

    .line 215
    .line 216
    new-instance v4, Lorg/wikipedia/views/EditHistoryFilterOverflowView$$ExternalSyntheticLambda0;

    .line 217
    .line 218
    move-object/from16 v18, v1

    .line 219
    .line 220
    const/4 v1, 0x0

    .line 221
    invoke-direct {v4, v3, v1}, Lorg/wikipedia/views/EditHistoryFilterOverflowView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/views/ReadingListsOverflowView;I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v8, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    .line 226
    .line 227
    new-instance v1, Lorg/wikipedia/views/EditHistoryFilterOverflowView$$ExternalSyntheticLambda0;

    .line 228
    .line 229
    const/4 v4, 0x1

    .line 230
    invoke-direct {v1, v3, v4}, Lorg/wikipedia/views/EditHistoryFilterOverflowView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/views/ReadingListsOverflowView;I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    .line 235
    .line 236
    new-instance v1, Lorg/wikipedia/views/EditHistoryFilterOverflowView$$ExternalSyntheticLambda0;

    .line 237
    .line 238
    const/4 v5, 0x2

    .line 239
    invoke-direct {v1, v3, v5}, Lorg/wikipedia/views/EditHistoryFilterOverflowView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/views/ReadingListsOverflowView;I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v11, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    .line 244
    .line 245
    move-object/from16 v1, v18

    .line 246
    .line 247
    check-cast v1, Lorg/wikipedia/util/Resource$Success;

    .line 248
    .line 249
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryStats;

    .line 252
    .line 253
    new-instance v5, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda6;

    .line 254
    .line 255
    invoke-direct {v5, v0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda6;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    iput-object v5, v3, Lorg/wikipedia/views/ReadingListsOverflowView;->callback:Ljava/lang/Object;

    .line 262
    .line 263
    new-instance v0, Landroid/widget/PopupWindow;

    .line 264
    .line 265
    const/4 v5, -0x2

    .line 266
    invoke-direct {v0, v3, v5, v5, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 267
    .line 268
    .line 269
    iput-object v0, v3, Lorg/wikipedia/views/ReadingListsOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 270
    .line 271
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 272
    .line 273
    const/4 v8, 0x0

    .line 274
    invoke-direct {v5, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 281
    .line 282
    .line 283
    const v5, 0x800005

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v2, v8, v8, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 287
    .line 288
    .line 289
    iget-object v0, v3, Lorg/wikipedia/views/ReadingListsOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 290
    .line 291
    if-eqz v0, :cond_2

    .line 292
    .line 293
    new-instance v2, Lorg/wikipedia/views/EditHistoryFilterOverflowView$$ExternalSyntheticLambda3;

    .line 294
    .line 295
    invoke-direct {v2, v3}, Lorg/wikipedia/views/EditHistoryFilterOverflowView$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/views/ReadingListsOverflowView;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 299
    .line 300
    .line 301
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 306
    .line 307
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    iget-object v5, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryStats;->allEdits:Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 315
    .line 316
    iget v5, v5, Lorg/wikipedia/dataclient/restbase/EditCount;->count:I

    .line 317
    .line 318
    move-object v8, v6

    .line 319
    int-to-long v5, v5

    .line 320
    invoke-static {v2, v5, v6}, Lorg/wikipedia/util/StringUtil;->getPageViewText(Landroid/content/Context;J)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    new-array v5, v4, [Ljava/lang/Object;

    .line 325
    .line 326
    const/16 v16, 0x0

    .line 327
    .line 328
    aput-object v2, v5, v16

    .line 329
    .line 330
    const v2, 0x7f120522

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    iget-object v5, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryStats;->userEdits:Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 352
    .line 353
    iget v5, v5, Lorg/wikipedia/dataclient/restbase/EditCount;->count:I

    .line 354
    .line 355
    int-to-long v5, v5

    .line 356
    invoke-static {v2, v5, v6}, Lorg/wikipedia/util/StringUtil;->getPageViewText(Landroid/content/Context;J)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    new-array v5, v4, [Ljava/lang/Object;

    .line 361
    .line 362
    const/16 v16, 0x0

    .line 363
    .line 364
    aput-object v2, v5, v16

    .line 365
    .line 366
    const v2, 0x7f120525

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    iget-object v5, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryStats;->anonEdits:Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 388
    .line 389
    iget v5, v5, Lorg/wikipedia/dataclient/restbase/EditCount;->count:I

    .line 390
    .line 391
    int-to-long v5, v5

    .line 392
    invoke-static {v2, v5, v6}, Lorg/wikipedia/util/StringUtil;->getPageViewText(Landroid/content/Context;J)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    new-array v5, v4, [Ljava/lang/Object;

    .line 397
    .line 398
    const/16 v16, 0x0

    .line 399
    .line 400
    aput-object v2, v5, v16

    .line 401
    .line 402
    const v2, 0x7f120523

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    iget-object v1, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryStats;->botEdits:Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 424
    .line 425
    iget v1, v1, Lorg/wikipedia/dataclient/restbase/EditCount;->count:I

    .line 426
    .line 427
    int-to-long v5, v1

    .line 428
    invoke-static {v2, v5, v6}, Lorg/wikipedia/util/StringUtil;->getPageViewText(Landroid/content/Context;J)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    new-array v2, v4, [Ljava/lang/Object;

    .line 433
    .line 434
    const/16 v16, 0x0

    .line 435
    .line 436
    aput-object v1, v2, v16

    .line 437
    .line 438
    const v1, 0x7f120524

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    .line 447
    .line 448
    const/4 v0, 0x4

    .line 449
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    .line 460
    .line 461
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 462
    .line 463
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getEditHistoryFilterType()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    const-string v1, "anonymous"

    .line 468
    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    if-eqz v1, :cond_3

    .line 474
    .line 475
    const/4 v1, 0x0

    .line 476
    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 477
    .line 478
    .line 479
    return-void

    .line 480
    :cond_3
    const/4 v1, 0x0

    .line 481
    const-string v2, "editors"

    .line 482
    .line 483
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    if-eqz v0, :cond_4

    .line 488
    .line 489
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    .line 491
    .line 492
    return-void

    .line 493
    :cond_4
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    .line 495
    .line 496
    return-void

    .line 497
    :cond_5
    const v5, 0x7f090249

    .line 498
    .line 499
    .line 500
    goto :goto_1

    .line 501
    :cond_6
    const v5, 0x7f090248

    .line 502
    .line 503
    .line 504
    :cond_7
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    const-string v1, "Missing required view with ID: "

    .line 513
    .line 514
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    return-void

    .line 522
    :cond_8
    const-string v0, "binding"

    .line 523
    .line 524
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    const/4 v0, 0x0

    .line 528
    throw v0

    .line 529
    :cond_9
    return-void
.end method

.method public final updateCompareState()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    const-string v1, "binding"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->captchaContainer:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget-boolean v3, v3, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->comparing:Z

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    move v3, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v3, 0x8

    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 29
    .line 30
    if-eqz v0, :cond_5

    .line 31
    .line 32
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Landroid/widget/Button;

    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-boolean v1, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->comparing:Z

    .line 41
    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    const v1, 0x7f120829

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/high16 v1, 0x1040000

    .line 49
    .line 50
    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->editHistoryListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 58
    .line 59
    invoke-virtual {v0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->getItemCount()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0, v4, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-boolean v0, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->comparing:Z

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    const v0, 0x1010031

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    const v0, 0x7f0404e7

    .line 79
    .line 80
    .line 81
    :goto_2
    new-instance v1, Landroid/util/TypedValue;

    .line 82
    .line 83
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    const/4 v4, 0x1

    .line 91
    invoke-virtual {v3, v0, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_3

    .line 96
    .line 97
    move-object v2, v1

    .line 98
    :cond_3
    if-eqz v2, :cond_4

    .line 99
    .line 100
    iget v0, v2, Landroid/util/TypedValue;->data:I

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lorg/wikipedia/activity/BaseActivity;->setNavigationBarColor(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->updateCompareStateItems()V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_4
    const-string p0, "Attribute not found; ID="

    .line 110
    .line 111
    invoke-static {v0, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v2

    .line 123
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v2
.end method

.method public final updateCompareStateItems()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "binding"

    .line 5
    .line 6
    if-eqz v0, :cond_9

    .line 7
    .line 8
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget-object v3, v3, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 17
    .line 18
    const/16 v4, 0x8

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    move v3, v5

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v3, v4

    .line 26
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v0, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 34
    .line 35
    const-string v3, "MMM d HH:mm"

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Landroid/widget/TextView;

    .line 46
    .line 47
    sget-object v6, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 48
    .line 49
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    iget-object v6, v6, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object v6, v6, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->timeStamp:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {v6}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-static {v3, v6}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v1

    .line 79
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 80
    .line 81
    if-eqz v0, :cond_8

    .line 82
    .line 83
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    .line 86
    .line 87
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    iget-object v6, v6, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 92
    .line 93
    if-eqz v6, :cond_3

    .line 94
    .line 95
    move v4, v5

    .line 96
    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v0, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 104
    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    iget-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 108
    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v0, Landroid/widget/TextView;

    .line 114
    .line 115
    sget-object v4, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 116
    .line 117
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    iget-object v4, v4, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 122
    .line 123
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    iget-object v4, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->timeStamp:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-static {v4}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-static {v3, v4}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v1

    .line 147
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 148
    .line 149
    if-eqz v0, :cond_7

    .line 150
    .line 151
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v0, Landroid/widget/Button;

    .line 154
    .line 155
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    iget-object v1, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 160
    .line 161
    if-eqz v1, :cond_6

    .line 162
    .line 163
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    iget-object v1, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 168
    .line 169
    if-eqz v1, :cond_6

    .line 170
    .line 171
    const/4 v5, 0x1

    .line 172
    :cond_6
    invoke-virtual {p0, v0, v5}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->enableCompareButton(Landroid/widget/TextView;Z)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw v1

    .line 180
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v1

    .line 184
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v1
.end method

.class public final Lorg/wikipedia/feed/onthisday/OnThisDayFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001:\u0004\u0004\u0005\u0006\u0007B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0008"
    }
    d2 = {
        "Lorg/wikipedia/feed/onthisday/OnThisDayFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "RecyclerAdapter",
        "EventsViewHolder",
        "FooterViewHolder",
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
.field public _binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

.field public final offsetChangedListener:Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;

    .line 14
    .line 15
    const/16 v3, 0xa

    .line 16
    .line 17
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-class v1, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;

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
    new-instance v2, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 33
    .line 34
    const/16 v3, 0x12

    .line 35
    .line 36
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 40
    .line 41
    const/16 v4, 0x13

    .line 42
    .line 43
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 44
    .line 45
    .line 46
    new-instance v4, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;

    .line 47
    .line 48
    const/4 v5, 0x4

    .line 49
    invoke-direct {v4, p0, v0, v5}, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;I)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lokhttp3/Request$Builder;

    .line 53
    .line 54
    invoke-direct {v0, v1, v2, v4, v3}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 58
    .line 59
    new-instance v0, Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    const/4 v1, 0x2

    .line 62
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->offsetChangedListener:Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final getViewModel()Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final maybeHideDateIndicator()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->rootView:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->getViewModel()Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v1, v1, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->date:Ljava/util/Calendar;

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x5

    .line 29
    if-ne v1, v3, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->getViewModel()Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v1, v1, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->date:Ljava/util/Calendar;

    .line 36
    .line 37
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-ne v1, v3, :cond_0

    .line 50
    .line 51
    const/16 v1, 0x8

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move v1, v4

    .line 55
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->tempAccountName:Landroid/view/View;

    .line 64
    .line 65
    check-cast v0, Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const/4 v5, 0x1

    .line 84
    new-array v6, v5, [Ljava/lang/Object;

    .line 85
    .line 86
    aput-object v3, v6, v4

    .line 87
    .line 88
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const-string v4, "%d"

    .line 93
    .line 94
    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->tempAccountName:Landroid/view/View;

    .line 107
    .line 108
    check-cast p0, Landroid/widget/TextView;

    .line 109
    .line 110
    const/4 v0, 0x4

    .line 111
    const/16 v1, 0xa

    .line 112
    .line 113
    invoke-static {p0, v0, v1, v2}, Lkotlin/uuid/UuidKt;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;III)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final onCalendarClicked()V
    .locals 5

    .line 1
    new-instance v0, Lorg/wikipedia/views/CustomDatePicker;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/wikipedia/views/CustomDatePicker;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->getViewModel()Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v1, v1, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->date:Ljava/util/Calendar;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->getViewModel()Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v2, v2, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->date:Ljava/util/Calendar;

    .line 22
    .line 23
    const/4 v3, 0x5

    .line 24
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object v3, v0, Lorg/wikipedia/views/CustomDatePicker;->selectedDay:Ljava/util/Calendar;

    .line 29
    .line 30
    const/16 v4, 0x7e0

    .line 31
    .line 32
    invoke-virtual {v3, v4, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 33
    .line 34
    .line 35
    iget-object v3, v0, Lorg/wikipedia/views/CustomDatePicker;->callbackDay:Ljava/util/Calendar;

    .line 36
    .line 37
    invoke-virtual {v3, v4, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 38
    .line 39
    .line 40
    iput-object p0, v0, Lorg/wikipedia/views/CustomDatePicker;->callback:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string v1, "datePicker"

    .line 47
    .line 48
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0c019c

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move-object/from16 v3, p1

    .line 11
    .line 12
    move-object/from16 v4, p2

    .line 13
    .line 14
    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v3, 0x7f090069

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    move-object v7, v4

    .line 26
    check-cast v7, Lcom/google/android/material/appbar/AppBarLayout;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v7, :cond_5

    .line 30
    .line 31
    const v3, 0x7f09015b

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    move-object v8, v5

    .line 39
    check-cast v8, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 40
    .line 41
    if-eqz v8, :cond_5

    .line 42
    .line 43
    const v3, 0x7f090196

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    move-object v9, v5

    .line 51
    check-cast v9, Landroid/widget/TextView;

    .line 52
    .line 53
    if-eqz v9, :cond_5

    .line 54
    .line 55
    const v3, 0x7f090198

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    move-object v10, v5

    .line 63
    check-cast v10, Landroid/widget/LinearLayout;

    .line 64
    .line 65
    if-eqz v10, :cond_5

    .line 66
    .line 67
    const v3, 0x7f090199

    .line 68
    .line 69
    .line 70
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    move-object v11, v5

    .line 75
    check-cast v11, Landroid/widget/TextView;

    .line 76
    .line 77
    if-eqz v11, :cond_5

    .line 78
    .line 79
    const v3, 0x7f0901e1

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Landroid/widget/ImageView;

    .line 87
    .line 88
    if-eqz v5, :cond_5

    .line 89
    .line 90
    const v3, 0x7f0901e2

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    move-object v12, v5

    .line 98
    check-cast v12, Landroid/widget/ImageView;

    .line 99
    .line 100
    if-eqz v12, :cond_5

    .line 101
    .line 102
    const v3, 0x7f090221

    .line 103
    .line 104
    .line 105
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    move-object v13, v5

    .line 110
    check-cast v13, Lorg/wikipedia/views/WikiErrorView;

    .line 111
    .line 112
    if-eqz v13, :cond_5

    .line 113
    .line 114
    const v3, 0x7f090223

    .line 115
    .line 116
    .line 117
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    move-object v14, v5

    .line 122
    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    .line 123
    .line 124
    if-eqz v14, :cond_5

    .line 125
    .line 126
    const v3, 0x7f090298

    .line 127
    .line 128
    .line 129
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    move-object v15, v5

    .line 134
    check-cast v15, Landroid/widget/LinearLayout;

    .line 135
    .line 136
    if-eqz v15, :cond_5

    .line 137
    .line 138
    const v3, 0x7f0902e8

    .line 139
    .line 140
    .line 141
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    move-object/from16 v16, v5

    .line 146
    .line 147
    check-cast v16, Landroid/widget/TextView;

    .line 148
    .line 149
    if-eqz v16, :cond_5

    .line 150
    .line 151
    const v3, 0x7f0902ea

    .line 152
    .line 153
    .line 154
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    move-object/from16 v17, v5

    .line 159
    .line 160
    check-cast v17, Landroid/widget/FrameLayout;

    .line 161
    .line 162
    if-eqz v17, :cond_5

    .line 163
    .line 164
    const v3, 0x7f09048a

    .line 165
    .line 166
    .line 167
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    move-object/from16 v18, v5

    .line 172
    .line 173
    check-cast v18, Landroid/widget/TextView;

    .line 174
    .line 175
    if-eqz v18, :cond_5

    .line 176
    .line 177
    const v3, 0x7f090514

    .line 178
    .line 179
    .line 180
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    move-object/from16 v19, v5

    .line 185
    .line 186
    check-cast v19, Landroid/widget/ProgressBar;

    .line 187
    .line 188
    if-eqz v19, :cond_5

    .line 189
    .line 190
    const v3, 0x7f0906cb

    .line 191
    .line 192
    .line 193
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    move-object/from16 v20, v5

    .line 198
    .line 199
    check-cast v20, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 200
    .line 201
    if-eqz v20, :cond_5

    .line 202
    .line 203
    const v3, 0x7f0906cf

    .line 204
    .line 205
    .line 206
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    move-object/from16 v21, v5

    .line 211
    .line 212
    check-cast v21, Landroid/widget/TextView;

    .line 213
    .line 214
    if-eqz v21, :cond_5

    .line 215
    .line 216
    const v3, 0x7f0906d0

    .line 217
    .line 218
    .line 219
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    move-object/from16 v22, v5

    .line 224
    .line 225
    check-cast v22, Landroid/widget/LinearLayout;

    .line 226
    .line 227
    if-eqz v22, :cond_5

    .line 228
    .line 229
    new-instance v5, Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 230
    .line 231
    move-object v6, v1

    .line 232
    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 233
    .line 234
    invoke-direct/range {v5 .. v22}, Lorg/wikipedia/databinding/ViewMainDrawerBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Lorg/wikipedia/views/WikiErrorView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;Lcom/google/android/material/appbar/MaterialToolbar;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    .line 235
    .line 236
    .line 237
    iput-object v5, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 238
    .line 239
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 240
    .line 241
    const/4 v3, 0x1

    .line 242
    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v14, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 246
    .line 247
    .line 248
    iget-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTalkContainer:Landroid/view/ViewGroup;

    .line 254
    .line 255
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 256
    .line 257
    new-instance v5, Lorg/wikipedia/views/HeaderMarginItemDecoration;

    .line 258
    .line 259
    const/high16 v6, 0x41c00000    # 24.0f

    .line 260
    .line 261
    invoke-static {v6}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    const/4 v7, 0x0

    .line 266
    invoke-static {v7}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 267
    .line 268
    .line 269
    move-result v7

    .line 270
    invoke-direct {v5, v2, v6, v2, v7}, Lorg/wikipedia/views/MarginItemDecoration;-><init>(IIII)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 274
    .line 275
    .line 276
    iget-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTalkContainer:Landroid/view/ViewGroup;

    .line 282
    .line 283
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 284
    .line 285
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 286
    .line 287
    .line 288
    iget-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTalkContainer:Landroid/view/ViewGroup;

    .line 294
    .line 295
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 296
    .line 297
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 298
    .line 299
    .line 300
    iget-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 301
    .line 302
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerSettingsContainer:Landroid/view/View;

    .line 306
    .line 307
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 308
    .line 309
    new-instance v5, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$$ExternalSyntheticLambda3;

    .line 310
    .line 311
    invoke-direct {v5, v0, v2}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, v5}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    .line 316
    .line 317
    iget-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 318
    .line 319
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountContainer:Landroid/widget/LinearLayout;

    .line 323
    .line 324
    new-instance v2, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$$ExternalSyntheticLambda3;

    .line 325
    .line 326
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    .line 331
    .line 332
    iget-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 333
    .line 334
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerDonateContainer:Landroid/widget/LinearLayout;

    .line 338
    .line 339
    new-instance v2, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$$ExternalSyntheticLambda3;

    .line 340
    .line 341
    const/4 v5, 0x2

    .line 342
    invoke-direct {v2, v0, v5}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    .line 347
    .line 348
    iget-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 349
    .line 350
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->rootView:Landroid/widget/FrameLayout;

    .line 354
    .line 355
    new-instance v2, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$$ExternalSyntheticLambda3;

    .line 356
    .line 357
    const/4 v5, 0x3

    .line 358
    invoke-direct {v2, v0, v5}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    iget-object v2, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 369
    .line 370
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    iget-object v2, v2, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerYearInReviewContainer:Landroid/view/ViewGroup;

    .line 374
    .line 375
    check-cast v2, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 376
    .line 377
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    if-eqz v2, :cond_0

    .line 385
    .line 386
    invoke-virtual {v2, v3}, Lcoil3/util/ContextsKt;->setDisplayHomeAsUpEnabled(Z)V

    .line 387
    .line 388
    .line 389
    :cond_0
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    if-eqz v1, :cond_1

    .line 394
    .line 395
    const-string v2, ""

    .line 396
    .line 397
    invoke-virtual {v1, v2}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 398
    .line 399
    .line 400
    :cond_1
    iget-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 401
    .line 402
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerPlacesContainer:Landroid/view/View;

    .line 406
    .line 407
    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 408
    .line 409
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    new-instance v5, Landroid/util/TypedValue;

    .line 414
    .line 415
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    const v6, 0x7f04051a

    .line 423
    .line 424
    .line 425
    invoke-virtual {v2, v6, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    if-eqz v2, :cond_2

    .line 430
    .line 431
    goto :goto_0

    .line 432
    :cond_2
    move-object v5, v4

    .line 433
    :goto_0
    if-eqz v5, :cond_4

    .line 434
    .line 435
    iget v2, v5, Landroid/util/TypedValue;->data:I

    .line 436
    .line 437
    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setCollapsedTitleTextColor(I)V

    .line 438
    .line 439
    .line 440
    iget-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 441
    .line 442
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    .line 444
    .line 445
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountName:Landroid/widget/TextView;

    .line 446
    .line 447
    sget-object v2, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 448
    .line 449
    invoke-virtual {v0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->getViewModel()Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    iget-object v2, v2, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->date:Ljava/util/Calendar;

    .line 454
    .line 455
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    .line 461
    .line 462
    const-string v3, "MMMM d"

    .line 463
    .line 464
    invoke-static {v3, v2}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->maybeHideDateIndicator()V

    .line 472
    .line 473
    .line 474
    iget-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 475
    .line 476
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 477
    .line 478
    .line 479
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerGamesHubContainer:Landroid/view/View;

    .line 480
    .line 481
    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 482
    .line 483
    iget-object v2, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->offsetChangedListener:Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;

    .line 484
    .line 485
    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    invoke-virtual {v1}, Landroid/view/Window;->getSharedElementEnterTransition()Landroid/transition/Transition;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    if-eqz v1, :cond_3

    .line 501
    .line 502
    if-nez p3, :cond_3

    .line 503
    .line 504
    const-wide/16 v1, 0x1f4

    .line 505
    .line 506
    goto :goto_1

    .line 507
    :cond_3
    const-wide/16 v1, 0x0

    .line 508
    .line 509
    :goto_1
    iget-object v3, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 510
    .line 511
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    .line 513
    .line 514
    iget-object v3, v3, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTempAccountContainer:Landroid/view/View;

    .line 515
    .line 516
    check-cast v3, Landroid/widget/TextView;

    .line 517
    .line 518
    new-instance v4, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 519
    .line 520
    const/16 v5, 0x8

    .line 521
    .line 522
    invoke-direct {v4, v5, v0}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v3, v4, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 526
    .line 527
    .line 528
    iget-object v0, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 529
    .line 530
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    .line 532
    .line 533
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerEditContainer:Landroid/view/ViewGroup;

    .line 534
    .line 535
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 536
    .line 537
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 538
    .line 539
    .line 540
    return-object v0

    .line 541
    :cond_4
    const-string v0, "Attribute not found; ID=2130969882"

    .line 542
    .line 543
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    return-object v4

    .line 547
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    const-string v1, "Missing required view with ID: "

    .line 556
    .line 557
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    return-object v4
.end method

.method public final onDatePicked(Ljava/util/Calendar;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTalkContainer:Landroid/view/ViewGroup;

    .line 10
    .line 11
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->getViewModel()Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->date:Ljava/util/Calendar;

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v0, 0x5

    .line 30
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/16 v2, 0x7e0

    .line 37
    .line 38
    invoke-virtual/range {v1 .. v6}, Ljava/util/Calendar;->set(IIIII)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountName:Landroid/widget/TextView;

    .line 47
    .line 48
    sget-object v1, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->getViewModel()Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v1, v1, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->date:Ljava/util/Calendar;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const-string v2, "MMMM d"

    .line 64
    .line 65
    invoke-static {v2, v1}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerGamesHubContainer:Landroid/view/View;

    .line 78
    .line 79
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->getViewModel()Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->loadOnThisDay(Ljava/util/Calendar;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->maybeHideDateIndicator()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final onDestroyView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTalkContainer:Landroid/view/ViewGroup;

    .line 7
    .line 8
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerGamesHubContainer:Landroid/view/View;

    .line 20
    .line 21
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 22
    .line 23
    iget-object v2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->offsetChangedListener:Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 32
    .line 33
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance p2, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$onViewCreated$1;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {p2, p0, v1, v0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$onViewCreated$1;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;Lkotlin/coroutines/Continuation;I)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x3

    .line 20
    invoke-static {p1, v1, v1, p2, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 21
    .line 22
    .line 23
    return-void
.end method

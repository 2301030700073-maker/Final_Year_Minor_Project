.class public final Lorg/wikipedia/views/SearchAndFilterActionProvider;
.super Landroidx/core/view/ActionProvider;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lokio/internal/DefaultSocket;

.field public final callback:Lretrofit2/OkHttpCall$1;

.field public final filterIcon:Landroid/widget/ImageView;

.field public final searchHintString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lretrofit2/OkHttpCall$1;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/wikipedia/views/SearchAndFilterActionProvider;->searchHintString:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lorg/wikipedia/views/SearchAndFilterActionProvider;->callback:Lretrofit2/OkHttpCall$1;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const p2, 0x7f0c05ef

    .line 13
    .line 14
    .line 15
    const/4 p3, 0x0

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const p2, 0x7f09024c

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
    check-cast v3, Landroid/widget/TextView;

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    const p2, 0x7f09024e

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    move-object v4, p3

    .line 41
    check-cast v4, Landroid/widget/ImageView;

    .line 42
    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    const p2, 0x7f0905c9

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    move-object v5, p3

    .line 53
    check-cast v5, Lorg/wikipedia/views/CabSearchView;

    .line 54
    .line 55
    if-eqz v5, :cond_0

    .line 56
    .line 57
    new-instance v1, Lokio/internal/DefaultSocket;

    .line 58
    .line 59
    move-object v2, p1

    .line 60
    check-cast v2, Landroid/widget/LinearLayout;

    .line 61
    .line 62
    const/16 v6, 0x19

    .line 63
    .line 64
    invoke-direct/range {v1 .. v6}, Lokio/internal/DefaultSocket;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lorg/wikipedia/views/SearchAndFilterActionProvider;->binding:Lokio/internal/DefaultSocket;

    .line 68
    .line 69
    iput-object v4, p0, Lorg/wikipedia/views/SearchAndFilterActionProvider;->filterIcon:Landroid/widget/ImageView;

    .line 70
    .line 71
    return-void

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string p1, "Missing required view with ID: "

    .line 81
    .line 82
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v0
.end method


# virtual methods
.method public final onCreateActionView()Landroid/view/View;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/wikipedia/views/SearchAndFilterActionProvider;->binding:Lokio/internal/DefaultSocket;

    .line 2
    .line 3
    iget-object v1, v0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/widget/ImageView;

    .line 6
    .line 7
    iget-object v2, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lorg/wikipedia/views/CabSearchView;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 17
    .line 18
    .line 19
    const v5, 0x7fffffff

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView;->setInputType(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v5, p0, Lorg/wikipedia/views/SearchAndFilterActionProvider;->searchHintString:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object v5, p0, Landroidx/core/view/ActionProvider;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v5}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    const v8, 0x7f04054f

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v8, v6, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    const/4 v8, 0x0

    .line 54
    if-eqz v7, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move-object v6, v8

    .line 58
    :goto_0
    if-eqz v6, :cond_2

    .line 59
    .line 60
    iget v6, v6, Landroid/util/TypedValue;->data:I

    .line 61
    .line 62
    invoke-virtual {v2, v6}, Lorg/wikipedia/views/CabSearchView;->setSearchHintTextColor(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lorg/wikipedia/views/SearchAndFilterActionProvider;->updateFilterIconAndText()V

    .line 66
    .line 67
    .line 68
    new-instance v6, Lorg/wikipedia/media/AvPlayer;

    .line 69
    .line 70
    const/16 v7, 0x1c

    .line 71
    .line 72
    invoke-direct {v6, v7, p0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 76
    .line 77
    .line 78
    new-instance v6, Lorg/wikipedia/views/SearchActionProvider$$ExternalSyntheticLambda0;

    .line 79
    .line 80
    invoke-direct {v6, p0, v3}, Lorg/wikipedia/views/SearchActionProvider$$ExternalSyntheticLambda0;-><init>(Landroidx/core/view/ActionProvider;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 84
    .line 85
    .line 86
    new-instance v6, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;

    .line 87
    .line 88
    const/4 v7, 0x4

    .line 89
    invoke-direct {v6, v7, p0}, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lorg/wikipedia/views/SearchAndFilterActionProvider;->callback:Lretrofit2/OkHttpCall$1;

    .line 96
    .line 97
    iget p0, p0, Lretrofit2/OkHttpCall$1;->$r8$classId:I

    .line 98
    .line 99
    const v6, 0x7f120521

    .line 100
    .line 101
    .line 102
    sparse-switch p0, :sswitch_data_0

    .line 103
    .line 104
    .line 105
    const v6, 0x7f120a40

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :sswitch_0
    const v6, 0x7f1204a0

    .line 110
    .line 111
    .line 112
    :goto_1
    :sswitch_1
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {v1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    new-array p0, v3, [Landroid/view/View;

    .line 120
    .line 121
    aput-object v1, p0, v4

    .line 122
    .line 123
    aget-object p0, p0, v4

    .line 124
    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {p0, v1}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    const p0, 0x7f0905d0

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    if-eqz p0, :cond_1

    .line 140
    .line 141
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 142
    .line 143
    .line 144
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    const-string v1, "input_method"

    .line 149
    .line 150
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 158
    .line 159
    invoke-virtual {p0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 160
    .line 161
    .line 162
    iget-object p0, v0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p0, Landroid/widget/LinearLayout;

    .line 165
    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    return-object p0

    .line 170
    :cond_2
    const-string p0, "Attribute not found; ID=2130969935"

    .line 171
    .line 172
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-object v8

    .line 176
    nop

    .line 177
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x16 -> :sswitch_1
        0x18 -> :sswitch_1
    .end sparse-switch
.end method

.method public final overridesItemVisibility()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final updateFilterIconAndText()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/views/SearchAndFilterActionProvider;->callback:Lretrofit2/OkHttpCall$1;

    .line 2
    .line 3
    iget v1, v0, Lretrofit2/OkHttpCall$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sparse-switch v1, :sswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/wikipedia/watchlist/WatchlistFragment;->getViewModel()Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lorg/wikipedia/watchlist/WatchlistViewModel;->filtersCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :sswitch_0
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 22
    .line 23
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getUserContribFilterExcludedNs()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    goto :goto_0

    .line 32
    :sswitch_1
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion;->filtersCount()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    goto :goto_0

    .line 37
    :sswitch_2
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 38
    .line 39
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getEditHistoryFilterType()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-lez v0, :cond_0

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move v0, v2

    .line 52
    goto :goto_0

    .line 53
    :sswitch_3
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lorg/wikipedia/notifications/NotificationActivity;

    .line 56
    .line 57
    sget v1, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 58
    .line 59
    invoke-virtual {v0}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lorg/wikipedia/notifications/NotificationViewModel;->excludedFiltersCount()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    :goto_0
    iget-object v1, p0, Lorg/wikipedia/views/SearchAndFilterActionProvider;->binding:Lokio/internal/DefaultSocket;

    .line 68
    .line 69
    iget-object v3, v1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v3, Landroid/widget/ImageView;

    .line 72
    .line 73
    iget-object v1, v1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Landroid/widget/TextView;

    .line 76
    .line 77
    iget-object p0, p0, Landroidx/core/view/ActionProvider;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    if-nez v0, :cond_1

    .line 80
    .line 81
    const/16 v0, 0x8

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    const v0, 0x7f04051a

    .line 90
    .line 91
    .line 92
    invoke-static {p0, v0}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    const v0, 0x7f040520

    .line 114
    .line 115
    .line 116
    invoke-static {p0, v0}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    nop

    .line 125
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x16 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

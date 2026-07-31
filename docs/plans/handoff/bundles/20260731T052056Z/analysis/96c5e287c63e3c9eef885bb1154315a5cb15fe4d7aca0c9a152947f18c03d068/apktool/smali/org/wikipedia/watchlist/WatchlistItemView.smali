.class public final Lorg/wikipedia/watchlist/WatchlistItemView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lorg/wikipedia/databinding/ItemWatchlistBinding;

.field public callback:Lorg/wikipedia/watchlist/WatchlistItemView$Callback;

.field public item:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const v1, 0x7f0c0321

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    move-object v4, p1

    .line 21
    check-cast v4, Lorg/wikipedia/views/WikiCardView;

    .line 22
    .line 23
    const v1, 0x7f0901c4

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    move-object v5, v3

    .line 31
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 32
    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    const v1, 0x7f09031e

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    move-object v6, v3

    .line 43
    check-cast v6, Lorg/wikipedia/views/LangCodeView;

    .line 44
    .line 45
    if-eqz v6, :cond_1

    .line 46
    .line 47
    const v1, 0x7f090640

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    move-object v7, v3

    .line 55
    check-cast v7, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 56
    .line 57
    if-eqz v7, :cond_1

    .line 58
    .line 59
    const v1, 0x7f0906c2

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    move-object v8, v3

    .line 67
    check-cast v8, Landroid/widget/TextView;

    .line 68
    .line 69
    if-eqz v8, :cond_1

    .line 70
    .line 71
    const v1, 0x7f0906c6

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    move-object v9, v3

    .line 79
    check-cast v9, Landroid/widget/TextView;

    .line 80
    .line 81
    if-eqz v9, :cond_1

    .line 82
    .line 83
    const v1, 0x7f090702

    .line 84
    .line 85
    .line 86
    invoke-static {p1, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    move-object v10, v3

    .line 91
    check-cast v10, Lcom/google/android/material/button/MaterialButton;

    .line 92
    .line 93
    if-eqz v10, :cond_1

    .line 94
    .line 95
    new-instance v3, Lorg/wikipedia/databinding/ItemWatchlistBinding;

    .line 96
    .line 97
    invoke-direct/range {v3 .. v10}, Lorg/wikipedia/databinding/ItemWatchlistBinding;-><init>(Lorg/wikipedia/views/WikiCardView;Lcom/google/android/material/button/MaterialButton;Lorg/wikipedia/views/LangCodeView;Lorg/wikipedia/views/GoneIfEmptyTextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;)V

    .line 98
    .line 99
    .line 100
    iput-object v3, p0, Lorg/wikipedia/watchlist/WatchlistItemView;->binding:Lorg/wikipedia/databinding/ItemWatchlistBinding;

    .line 101
    .line 102
    new-instance p1, Lorg/wikipedia/watchlist/WatchlistItemView$$ExternalSyntheticLambda0;

    .line 103
    .line 104
    invoke-direct {p1, p0, v2}, Lorg/wikipedia/watchlist/WatchlistItemView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/watchlist/WatchlistItemView;I)V

    .line 105
    .line 106
    .line 107
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 108
    .line 109
    const/4 v1, -0x1

    .line 110
    const/4 v3, -0x2

    .line 111
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    new-instance p1, Lorg/wikipedia/watchlist/WatchlistItemView$$ExternalSyntheticLambda0;

    .line 124
    .line 125
    const/4 v0, 0x1

    .line 126
    invoke-direct {p1, p0, v0}, Lorg/wikipedia/watchlist/WatchlistItemView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/watchlist/WatchlistItemView;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v10, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 133
    .line 134
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    check-cast p0, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 141
    .line 142
    .line 143
    move-result p0

    .line 144
    if-ne p0, v0, :cond_0

    .line 145
    .line 146
    const/16 p0, 0x8

    .line 147
    .line 148
    invoke-virtual {v6, p0}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_0
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    const-string p1, "Missing required view with ID: "

    .line 165
    .line 166
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v0
.end method


# virtual methods
.method public final getBinding()Lorg/wikipedia/databinding/ItemWatchlistBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistItemView;->binding:Lorg/wikipedia/databinding/ItemWatchlistBinding;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCallback()Lorg/wikipedia/watchlist/WatchlistItemView$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistItemView;->callback:Lorg/wikipedia/watchlist/WatchlistItemView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setButtonTextAndIconColor(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const v1, 0x7f040094

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistItemView;->binding:Lorg/wikipedia/databinding/ItemWatchlistBinding;

    .line 16
    .line 17
    iget-object v1, p0, Lorg/wikipedia/databinding/ItemWatchlistBinding;->diffText:Lcom/google/android/material/button/MaterialButton;

    .line 18
    .line 19
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lorg/wikipedia/databinding/ItemWatchlistBinding;->diffText:Lcom/google/android/material/button/MaterialButton;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final setCallback(Lorg/wikipedia/watchlist/WatchlistItemView$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/watchlist/WatchlistItemView;->callback:Lorg/wikipedia/watchlist/WatchlistItemView$Callback;

    .line 2
    .line 3
    return-void
.end method

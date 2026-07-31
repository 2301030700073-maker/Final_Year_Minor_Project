.class public final Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarAdapter;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarAdapter;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarAdapter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 1
    iget p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarAdapter;->$r8$classId:I

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$EmptyMessagesViewHolder;

    .line 9
    .line 10
    iget-object p0, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$EmptyMessagesViewHolder;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 11
    .line 12
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$EmptyMessagesViewHolder;->binding:Lokio/internal/DefaultSocket;

    .line 13
    .line 14
    iget-object v1, p1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Landroid/widget/LinearLayout;

    .line 17
    .line 18
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion;->filtersCount()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-lez v2, :cond_0

    .line 23
    .line 24
    move v2, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v2, 0x8

    .line 27
    .line 28
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion;->filtersCount()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion;->filtersCount()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    new-array v4, p2, [Ljava/lang/Object;

    .line 48
    .line 49
    aput-object v3, v4, v0

    .line 50
    .line 51
    const v3, 0x7f10001d

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-object p1, p1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, Landroid/widget/TextView;

    .line 64
    .line 65
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 66
    .line 67
    const-string v2, "<a href=\"#\">"

    .line 68
    .line 69
    const-string v3, "</a>"

    .line 70
    .line 71
    invoke-static {v2, v1, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    new-array p2, p2, [Ljava/lang/Object;

    .line 76
    .line 77
    aput-object v1, p2, v0

    .line 78
    .line 79
    const v0, 0x7f120582

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_0
    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarViewHolder;

    .line 95
    .line 96
    iget-object p0, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarViewHolder;->binding:Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;

    .line 97
    .line 98
    iget-object v1, p0, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->rootView:Lorg/wikipedia/views/WikiCardView;

    .line 99
    .line 100
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->filterButton:Landroid/widget/ImageView;

    .line 101
    .line 102
    iget-object v2, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarViewHolder;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 103
    .line 104
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    new-instance v4, Landroid/util/TypedValue;

    .line 109
    .line 110
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const v5, 0x7f040061

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v5, v4, p2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_1
    const/4 v4, 0x0

    .line 128
    :goto_1
    if-eqz v4, :cond_2

    .line 129
    .line 130
    iget v3, v4, Landroid/util/TypedValue;->data:I

    .line 131
    .line 132
    invoke-virtual {v1, v3}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 136
    .line 137
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda5;

    .line 138
    .line 139
    invoke-direct {v3, v2, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    .line 144
    .line 145
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda5;

    .line 146
    .line 147
    const/4 v3, 0x2

    .line 148
    invoke-direct {p1, v2, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    new-array p1, p2, [Landroid/view/View;

    .line 155
    .line 156
    aput-object p0, p1, v0

    .line 157
    .line 158
    aget-object p0, p1, v0

    .line 159
    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-static {p0, p1}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_2
    const-string p0, "Attribute not found; ID=2130968673"

    .line 175
    .line 176
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :goto_2
    return-void

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    iget p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarAdapter;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarAdapter;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$EmptyMessagesViewHolder;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0, p1}, Lokio/internal/DefaultSocket;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lokio/internal/DefaultSocket;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p2, p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$EmptyMessagesViewHolder;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;Lokio/internal/DefaultSocket;)V

    .line 19
    .line 20
    .line 21
    return-object p2

    .line 22
    :pswitch_0
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarViewHolder;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, p1}, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p2, p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarViewHolder;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;)V

    .line 33
    .line 34
    .line 35
    return-object p2

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

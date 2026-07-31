.class public final Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/talk/template/TalkTemplatesItemView$Callback;


# instance fields
.field public checkboxEnabled:Z

.field public final templatesList:Ljava/util/ArrayList;

.field public final synthetic this$0:Lorg/wikipedia/talk/template/TalkTemplatesFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/talk/template/TalkTemplatesFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;->this$0:Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;->templatesList:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;->templatesList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .line 1
    check-cast p1, Lorg/wikipedia/talk/template/TalkTemplatesFragment$TalkTemplatesItemViewHolder;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;->templatesList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iput-object v0, p1, Lorg/wikipedia/talk/template/TalkTemplatesFragment$TalkTemplatesItemViewHolder;->entry:Lorg/wikipedia/talk/db/TalkTemplate;

    .line 15
    .line 16
    iget-object v1, p1, Lorg/wikipedia/talk/template/TalkTemplatesFragment$TalkTemplatesItemViewHolder;->templatesItemView:Lorg/wikipedia/talk/template/TalkTemplatesItemView;

    .line 17
    .line 18
    iget-object p1, p1, Lorg/wikipedia/talk/template/TalkTemplatesFragment$TalkTemplatesItemViewHolder;->this$0:Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 19
    .line 20
    iget-object p1, p1, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x1

    .line 35
    if-ne p1, v3, :cond_0

    .line 36
    .line 37
    move p1, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move p1, v2

    .line 40
    :goto_0
    iget-object v4, v1, Lorg/wikipedia/talk/template/TalkTemplatesItemView;->binding:Lretrofit2/Retrofit;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    if-nez p2, :cond_1

    .line 45
    .line 46
    move p1, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move p1, v2

    .line 49
    :goto_1
    iget-object v5, v4, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v5, Landroid/widget/TextView;

    .line 52
    .line 53
    iget-object v6, v4, Lretrofit2/Retrofit;->baseUrl:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v6, Landroid/widget/LinearLayout;

    .line 56
    .line 57
    iget-object v7, v4, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v7, Landroid/widget/TextView;

    .line 60
    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    move v8, v2

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const/16 v8, 0x8

    .line 66
    .line 67
    :goto_2
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object v5, v4, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v5, Landroid/widget/TextView;

    .line 73
    .line 74
    iget-object v8, v0, Lorg/wikipedia/talk/db/TalkTemplate;->subject:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    iget-object v5, v0, Lorg/wikipedia/talk/db/TalkTemplate;->message:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 85
    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    const/4 v8, 0x2

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    move v8, v2

    .line 91
    :goto_3
    invoke-virtual {v7, v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 92
    .line 93
    .line 94
    xor-int/lit8 v5, p1, 0x1

    .line 95
    .line 96
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    if-eqz p1, :cond_4

    .line 107
    .line 108
    const v8, 0x7f040061

    .line 109
    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_4
    const v8, 0x101030e

    .line 113
    .line 114
    .line 115
    :goto_4
    new-instance v9, Landroid/util/TypedValue;

    .line 116
    .line 117
    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v5, v8, v9, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    const/4 v10, 0x0

    .line 129
    if-eqz v5, :cond_5

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_5
    move-object v9, v10

    .line 133
    :goto_5
    if-eqz v9, :cond_8

    .line 134
    .line 135
    iget v5, v9, Landroid/util/TypedValue;->resourceId:I

    .line 136
    .line 137
    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 138
    .line 139
    .line 140
    if-eqz p1, :cond_6

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_6
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 144
    .line 145
    :goto_6
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 146
    .line 147
    .line 148
    new-instance p1, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda0;

    .line 149
    .line 150
    invoke-direct {p1, p2, v2, v1}, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    new-instance p1, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda1;

    .line 157
    .line 158
    invoke-direct {p1, v1, p2}, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/talk/template/TalkTemplatesItemView;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 162
    .line 163
    .line 164
    iget-object p1, v4, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast p1, Landroid/widget/CheckBox;

    .line 167
    .line 168
    new-instance v4, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda2;

    .line 169
    .line 170
    invoke-direct {v4, v1, p2}, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/talk/template/TalkTemplatesItemView;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 174
    .line 175
    .line 176
    iget-boolean p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;->checkboxEnabled:Z

    .line 177
    .line 178
    invoke-virtual {v1, p1}, Lorg/wikipedia/talk/template/TalkTemplatesItemView;->setCheckBoxEnabled(Z)V

    .line 179
    .line 180
    .line 181
    iget-object p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;->this$0:Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 182
    .line 183
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->selectedItems:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    invoke-virtual {v1, p1}, Lorg/wikipedia/talk/template/TalkTemplatesItemView;->setCheckBoxChecked(Z)V

    .line 190
    .line 191
    .line 192
    iget-object p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 193
    .line 194
    if-eqz p0, :cond_7

    .line 195
    .line 196
    move v2, v3

    .line 197
    :cond_7
    invoke-virtual {v1, v2}, Lorg/wikipedia/talk/template/TalkTemplatesItemView;->setDragHandleEnabled(Z)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_8
    const-string p0, "Attribute not found; ID="

    .line 202
    .line 203
    invoke-static {v8, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    .line 1
    new-instance p1, Lorg/wikipedia/talk/template/TalkTemplatesFragment$TalkTemplatesItemViewHolder;

    .line 2
    .line 3
    new-instance v1, Lorg/wikipedia/talk/template/TalkTemplatesItemView;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;->this$0:Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const v3, 0x7f0c0319

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    const v2, 0x7f0900ef

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroid/widget/CheckBox;

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    const v2, 0x7f0901db

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Landroid/widget/ImageView;

    .line 44
    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    const v2, 0x7f090343

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Landroid/widget/LinearLayout;

    .line 55
    .line 56
    if-eqz v5, :cond_0

    .line 57
    .line 58
    const v2, 0x7f090344

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    check-cast v6, Landroid/widget/TextView;

    .line 66
    .line 67
    if-eqz v6, :cond_0

    .line 68
    .line 69
    const v2, 0x7f090349

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    check-cast v7, Landroid/widget/TextView;

    .line 77
    .line 78
    if-eqz v7, :cond_0

    .line 79
    .line 80
    new-instance v0, Lretrofit2/Retrofit;

    .line 81
    .line 82
    move-object v2, v3

    .line 83
    move-object v3, v4

    .line 84
    move-object v4, v5

    .line 85
    move-object v5, v6

    .line 86
    move-object v6, v7

    .line 87
    invoke-direct/range {v0 .. v6}, Lretrofit2/Retrofit;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, v1, Lorg/wikipedia/talk/template/TalkTemplatesItemView;->binding:Lretrofit2/Retrofit;

    .line 91
    .line 92
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 93
    .line 94
    const/4 v2, -0x1

    .line 95
    const/4 v3, -0x2

    .line 96
    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    .line 101
    .line 102
    const v0, 0x7f0404e7

    .line 103
    .line 104
    .line 105
    invoke-static {p2, v0}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 110
    .line 111
    .line 112
    const v0, 0x7f040554

    .line 113
    .line 114
    .line 115
    invoke-static {p2, v0}, Lokhttp3/Cache$Companion;->getThemedAttributeId(Landroid/content/Context;I)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    invoke-static {p2, v0}, Lkotlin/TuplesKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {v1, p2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 124
    .line 125
    .line 126
    const/4 p2, 0x1

    .line 127
    new-array p2, p2, [Landroid/view/View;

    .line 128
    .line 129
    const/4 v0, 0x0

    .line 130
    aput-object v1, p2, v0

    .line 131
    .line 132
    aget-object p2, p2, v0

    .line 133
    .line 134
    new-instance v0, Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda0;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 140
    .line 141
    .line 142
    invoke-direct {p1, p0, v1}, Lorg/wikipedia/talk/template/TalkTemplatesFragment$TalkTemplatesItemViewHolder;-><init>(Lorg/wikipedia/talk/template/TalkTemplatesFragment;Lorg/wikipedia/talk/template/TalkTemplatesItemView;)V

    .line 143
    .line 144
    .line 145
    return-object p1

    .line 146
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    const-string p1, "Missing required view with ID: "

    .line 155
    .line 156
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-object v0
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 1
    check-cast p1, Lorg/wikipedia/talk/template/TalkTemplatesFragment$TalkTemplatesItemViewHolder;

    .line 2
    .line 3
    iget-object v0, p1, Lorg/wikipedia/talk/template/TalkTemplatesFragment$TalkTemplatesItemViewHolder;->templatesItemView:Lorg/wikipedia/talk/template/TalkTemplatesItemView;

    .line 4
    .line 5
    new-instance v1, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iget-object v3, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;->this$0:Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 9
    .line 10
    invoke-direct {v1, v3, p1, v2}, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/Fragment;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lorg/wikipedia/talk/template/TalkTemplatesItemView;->setDragHandleTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lorg/wikipedia/talk/template/TalkTemplatesItemView;->setCallback(Lorg/wikipedia/talk/template/TalkTemplatesItemView$Callback;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/wikipedia/talk/template/TalkTemplatesFragment$TalkTemplatesItemViewHolder;

    .line 2
    .line 3
    iget-object p0, p1, Lorg/wikipedia/talk/template/TalkTemplatesFragment$TalkTemplatesItemViewHolder;->templatesItemView:Lorg/wikipedia/talk/template/TalkTemplatesItemView;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/template/TalkTemplatesItemView;->setDragHandleTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/template/TalkTemplatesItemView;->setCallback(Lorg/wikipedia/talk/template/TalkTemplatesItemView$Callback;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

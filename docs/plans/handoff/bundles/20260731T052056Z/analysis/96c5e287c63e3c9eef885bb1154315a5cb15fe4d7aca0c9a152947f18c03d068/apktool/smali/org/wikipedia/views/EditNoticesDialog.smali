.class public final Lorg/wikipedia/views/EditNoticesDialog;
.super Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public dialog:Landroidx/appcompat/app/AlertDialog;

.field public final editNotices:Ljava/lang/Object;

.field public final movementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

.field public final wikiSite:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/dataclient/WikiSite;Ljava/util/ArrayList;Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda23;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lorg/wikipedia/views/EditNoticesDialog;->$r8$classId:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 203
    iput-object p3, p0, Lorg/wikipedia/views/EditNoticesDialog;->wikiSite:Ljava/lang/Object;

    .line 204
    iput-object p4, p0, Lorg/wikipedia/views/EditNoticesDialog;->editNotices:Ljava/lang/Object;

    .line 205
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0c0185

    const/4 p4, 0x0

    .line 206
    invoke-virtual {p1, p3, p4, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090568

    .line 207
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_0

    .line 208
    check-cast p1, Landroid/widget/FrameLayout;

    .line 209
    new-instance p2, Lorg/wikipedia/page/LinkMovementMethodExt;

    new-instance p4, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    const/16 v1, 0x1c

    invoke-direct {p4, v1, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, p4}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithText;)V

    iput-object p2, p0, Lorg/wikipedia/views/EditNoticesDialog;->movementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 210
    iget-object p2, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    check-cast p2, Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, p2, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 211
    new-instance p1, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p0}, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 212
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 213
    iget-object p2, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    check-cast p2, Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p2, p2, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 214
    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 215
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 216
    new-instance p1, Lorg/wikipedia/views/DrawableItemDecoration;

    .line 217
    iget-object p0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    const/16 p2, 0x10

    .line 218
    invoke-direct {p1, p0, v0, v0, p2}, Lorg/wikipedia/views/DrawableItemDecoration;-><init>(Landroid/content/Context;ZZI)V

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void

    .line 219
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 220
    const-string p1, "Missing required view with ID: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    throw p4
.end method

.method public constructor <init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;Lorg/wikipedia/edit/EditSectionActivity;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/views/EditNoticesDialog;->$r8$classId:I

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p3, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lorg/wikipedia/views/EditNoticesDialog;->wikiSite:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p2, p0, Lorg/wikipedia/views/EditNoticesDialog;->editNotices:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const p2, 0x7f0c017a

    .line 22
    .line 23
    .line 24
    const/4 p3, 0x0

    .line 25
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const p2, 0x7f0901ee

    .line 30
    .line 31
    .line 32
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/CheckBox;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    const p2, 0x7f0901ef

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroid/widget/ImageView;

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    const p2, 0x7f0901f0

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Landroid/widget/TextView;

    .line 59
    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    const p2, 0x7f0901f1

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Landroid/widget/ImageView;

    .line 70
    .line 71
    if-eqz v2, :cond_0

    .line 72
    .line 73
    const p2, 0x7f0901f2

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    .line 82
    if-eqz v2, :cond_0

    .line 83
    .line 84
    const p2, 0x7f0901f3

    .line 85
    .line 86
    .line 87
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Landroid/widget/TextView;

    .line 92
    .line 93
    if-eqz v3, :cond_0

    .line 94
    .line 95
    check-cast p1, Landroid/widget/FrameLayout;

    .line 96
    .line 97
    new-instance p2, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 98
    .line 99
    new-instance p3, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;

    .line 100
    .line 101
    const/16 v3, 0xd

    .line 102
    .line 103
    invoke-direct {p3, v3, p0}, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {p2, p3}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 107
    .line 108
    .line 109
    iput-object p2, p0, Lorg/wikipedia/views/EditNoticesDialog;->movementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 110
    .line 111
    iget-object p2, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p2, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 114
    .line 115
    iput-object p1, p2, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 116
    .line 117
    new-instance p1, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;

    .line 118
    .line 119
    const/16 p2, 0x1d

    .line 120
    .line 121
    invoke-direct {p1, p2, p0}, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    .line 126
    .line 127
    new-instance p1, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 128
    .line 129
    invoke-direct {p1, v3, p0}, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;-><init>(ILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 133
    .line 134
    .line 135
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 136
    .line 137
    iget-object p2, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast p2, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 140
    .line 141
    iget-object p2, p2, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 142
    .line 143
    const/4 p2, 0x1

    .line 144
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 148
    .line 149
    .line 150
    new-instance p1, Lorg/wikipedia/views/DrawableItemDecoration;

    .line 151
    .line 152
    iget-object p0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast p0, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 155
    .line 156
    iget-object p0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 157
    .line 158
    const/16 p3, 0x10

    .line 159
    .line 160
    invoke-direct {p1, p0, p2, p2, p3}, Lorg/wikipedia/views/DrawableItemDecoration;-><init>(Landroid/content/Context;ZZI)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 164
    .line 165
    .line 166
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 167
    .line 168
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getAutoShowEditNotices()Z

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 173
    .line 174
    .line 175
    new-instance p0, Lorg/wikipedia/views/EditNoticesDialog$$ExternalSyntheticLambda2;

    .line 176
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    const-string p1, "Missing required view with ID: "

    .line 193
    .line 194
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p3
.end method


# virtual methods
.method public final show()Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/views/EditNoticesDialog;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lorg/wikipedia/views/EditNoticesDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 11
    .line 12
    return-object v0

    .line 13
    :pswitch_0
    invoke-super {p0}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lorg/wikipedia/views/EditNoticesDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 18
    .line 19
    return-object v0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

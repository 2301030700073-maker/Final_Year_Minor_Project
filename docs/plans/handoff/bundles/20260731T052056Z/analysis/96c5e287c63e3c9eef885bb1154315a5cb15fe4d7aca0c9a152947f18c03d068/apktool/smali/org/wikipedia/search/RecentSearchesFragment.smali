.class public final Lorg/wikipedia/search/RecentSearchesFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001:\u0005\u0004\u0005\u0006\u0007\u0006B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0008"
    }
    d2 = {
        "Lorg/wikipedia/search/RecentSearchesFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "org/wikipedia/search/SearchFragment",
        "RecentSearchItemViewHolder",
        "NamespaceAdapter",
        "NamespaceItemViewHolder",
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
.field public _binding:Landroidx/compose/ui/node/NodeChain;

.field public callback:Lorg/wikipedia/search/SearchFragment;

.field public final coroutineExceptionHandler:Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

.field public final namespaceHints:Ljava/util/List;

.field public final namespaceMap:Lj$/util/concurrent/ConcurrentHashMap;

.field public final recentSearchList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    new-array v0, v0, [Lorg/wikipedia/page/Namespace;

    .line 6
    .line 7
    sget-object v1, Lorg/wikipedia/page/Namespace;->USER:Lorg/wikipedia/page/Namespace;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v1, v0, v2

    .line 11
    .line 12
    sget-object v1, Lorg/wikipedia/page/Namespace;->PORTAL:Lorg/wikipedia/page/Namespace;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    aput-object v1, v0, v2

    .line 16
    .line 17
    sget-object v1, Lorg/wikipedia/page/Namespace;->HELP:Lorg/wikipedia/page/Namespace;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    aput-object v1, v0, v2

    .line 21
    .line 22
    sget-object v1, Lorg/wikipedia/page/Namespace;->PROJECT:Lorg/wikipedia/page/Namespace;

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    aput-object v1, v0, v2

    .line 26
    .line 27
    sget-object v1, Lorg/wikipedia/page/Namespace;->TEMPLATE:Lorg/wikipedia/page/Namespace;

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    aput-object v1, v0, v2

    .line 31
    .line 32
    invoke-static {v0}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lorg/wikipedia/search/RecentSearchesFragment;->namespaceHints:Ljava/util/List;

    .line 37
    .line 38
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lorg/wikipedia/search/RecentSearchesFragment;->namespaceMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    sget-object v0, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 46
    .line 47
    new-instance v1, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 48
    .line 49
    const/16 v2, 0x9

    .line 50
    .line 51
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->coroutineExceptionHandler:Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 55
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lorg/wikipedia/search/RecentSearchesFragment;->recentSearchList:Ljava/util/ArrayList;

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0c01a9

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
    const v3, 0x7f090054

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
    check-cast v7, Landroid/widget/Button;

    .line 27
    .line 28
    if-eqz v7, :cond_0

    .line 29
    .line 30
    const v3, 0x7f09034f

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    const v3, 0x7f09043a

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    move-object v8, v4

    .line 49
    check-cast v8, Landroid/widget/LinearLayout;

    .line 50
    .line 51
    if-eqz v8, :cond_0

    .line 52
    .line 53
    const v3, 0x7f09043b

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    move-object v9, v4

    .line 61
    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    if-eqz v9, :cond_0

    .line 64
    .line 65
    const v3, 0x7f090563

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    move-object v10, v4

    .line 73
    check-cast v10, Landroid/widget/LinearLayout;

    .line 74
    .line 75
    if-eqz v10, :cond_0

    .line 76
    .line 77
    move-object v6, v1

    .line 78
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 79
    .line 80
    const v3, 0x7f090565

    .line 81
    .line 82
    .line 83
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    move-object v12, v4

    .line 88
    check-cast v12, Landroid/widget/ImageView;

    .line 89
    .line 90
    if-eqz v12, :cond_0

    .line 91
    .line 92
    const v3, 0x7f090562

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Landroid/widget/FrameLayout;

    .line 100
    .line 101
    if-eqz v4, :cond_0

    .line 102
    .line 103
    const v3, 0x7f090566

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    move-object v13, v4

    .line 111
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    .line 113
    if-eqz v13, :cond_0

    .line 114
    .line 115
    const v3, 0x7f0905c2

    .line 116
    .line 117
    .line 118
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    move-object v14, v4

    .line 123
    check-cast v14, Landroid/widget/LinearLayout;

    .line 124
    .line 125
    if-eqz v14, :cond_0

    .line 126
    .line 127
    const v3, 0x7f0905c3

    .line 128
    .line 129
    .line 130
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    check-cast v4, Landroid/widget/ImageView;

    .line 135
    .line 136
    if-eqz v4, :cond_0

    .line 137
    .line 138
    const v3, 0x7f0905c4

    .line 139
    .line 140
    .line 141
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    move-object v15, v4

    .line 146
    check-cast v15, Landroid/widget/TextView;

    .line 147
    .line 148
    if-eqz v15, :cond_0

    .line 149
    .line 150
    new-instance v5, Landroidx/compose/ui/node/NodeChain;

    .line 151
    .line 152
    const/16 v16, 0x5

    .line 153
    .line 154
    move-object v11, v6

    .line 155
    invoke-direct/range {v5 .. v16}, Landroidx/compose/ui/node/NodeChain;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 156
    .line 157
    .line 158
    iput-object v5, v0, Lorg/wikipedia/search/RecentSearchesFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 159
    .line 160
    new-instance v1, Lorg/wikipedia/search/RecentSearchesFragment$$ExternalSyntheticLambda0;

    .line 161
    .line 162
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/search/RecentSearchesFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/search/RecentSearchesFragment;I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v12, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, v0, Lorg/wikipedia/search/RecentSearchesFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->sentinelHead:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v1, Landroid/widget/Button;

    .line 176
    .line 177
    new-instance v3, Lorg/wikipedia/search/RecentSearchesFragment$$ExternalSyntheticLambda0;

    .line 178
    .line 179
    const/4 v4, 0x1

    .line 180
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/search/RecentSearchesFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/search/RecentSearchesFragment;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    iget-object v1, v0, Lorg/wikipedia/search/RecentSearchesFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 194
    .line 195
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 196
    .line 197
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 198
    .line 199
    .line 200
    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 204
    .line 205
    .line 206
    iget-object v1, v0, Lorg/wikipedia/search/RecentSearchesFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 214
    .line 215
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 216
    .line 217
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 218
    .line 219
    .line 220
    invoke-direct {v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 224
    .line 225
    .line 226
    iget-object v1, v0, Lorg/wikipedia/search/RecentSearchesFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 234
    .line 235
    new-instance v3, Lorg/wikipedia/search/RecentSearchesFragment$NamespaceAdapter;

    .line 236
    .line 237
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/search/RecentSearchesFragment$NamespaceAdapter;-><init>(Lorg/wikipedia/search/RecentSearchesFragment;I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 241
    .line 242
    .line 243
    new-instance v1, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;

    .line 244
    .line 245
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-direct {v1, v3}, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;-><init>(Landroid/content/Context;)V

    .line 250
    .line 251
    .line 252
    iput-boolean v4, v1, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeableEnabled:Z

    .line 253
    .line 254
    new-instance v3, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 255
    .line 256
    invoke-direct {v3, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 257
    .line 258
    .line 259
    iget-object v1, v0, Lorg/wikipedia/search/RecentSearchesFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 260
    .line 261
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 267
    .line 268
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 269
    .line 270
    .line 271
    iget-object v1, v0, Lorg/wikipedia/search/RecentSearchesFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v1, Landroid/widget/ImageView;

    .line 279
    .line 280
    new-array v3, v4, [Landroid/view/View;

    .line 281
    .line 282
    aput-object v1, v3, v2

    .line 283
    .line 284
    aget-object v1, v3, v2

    .line 285
    .line 286
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-static {v1, v2}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 291
    .line 292
    .line 293
    iget-object v0, v0, Lorg/wikipedia/search/RecentSearchesFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    return-object v0

    .line 306
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    const-string v1, "Missing required view with ID: "

    .line 315
    .line 316
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    const/4 v0, 0x0

    .line 324
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
    iput-object v0, p0, Lorg/wikipedia/search/RecentSearchesFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 6
    .line 7
    return-void
.end method

.method public final updateList(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 14

    .line 1
    instance-of v0, p1, Lorg/wikipedia/search/RecentSearchesFragment$updateList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/search/RecentSearchesFragment$updateList$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/search/RecentSearchesFragment$updateList$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/wikipedia/search/RecentSearchesFragment$updateList$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lorg/wikipedia/search/RecentSearchesFragment$updateList$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/search/RecentSearchesFragment$updateList$1;-><init>(Lorg/wikipedia/search/RecentSearchesFragment;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p1, v6, Lorg/wikipedia/search/RecentSearchesFragment$updateList$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v1, v6, Lorg/wikipedia/search/RecentSearchesFragment$updateList$1;->label:I

    .line 32
    .line 33
    const-string v7, ""

    .line 34
    .line 35
    const/4 v8, 0x2

    .line 36
    iget-object v9, p0, Lorg/wikipedia/search/RecentSearchesFragment;->namespaceMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    const/4 v10, 0x0

    .line 39
    const/4 v11, 0x1

    .line 40
    const/4 v12, 0x0

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    if-eq v1, v11, :cond_2

    .line 44
    .line 45
    if-ne v1, v8, :cond_1

    .line 46
    .line 47
    iget-object v0, v6, Lorg/wikipedia/search/RecentSearchesFragment$updateList$1;->L$1:Ljava/io/Serializable;

    .line 48
    .line 49
    check-cast v0, Ljava/lang/String;

    .line 50
    .line 51
    iget-object v1, v6, Lorg/wikipedia/search/RecentSearchesFragment$updateList$1;->L$0:Ljava/lang/String;

    .line 52
    .line 53
    check-cast v1, Ljava/util/Map;

    .line 54
    .line 55
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_8

    .line 59
    .line 60
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v10

    .line 66
    :cond_2
    iget-object v1, v6, Lorg/wikipedia/search/RecentSearchesFragment$updateList$1;->L$1:Ljava/io/Serializable;

    .line 67
    .line 68
    check-cast v1, Ljava/util/Map;

    .line 69
    .line 70
    iget-object v2, v6, Lorg/wikipedia/search/RecentSearchesFragment$updateList$1;->L$0:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->callback:Lorg/wikipedia/search/SearchFragment;

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    iget-object p1, p1, Lorg/wikipedia/search/SearchFragment;->searchLanguageCode:Ljava/lang/String;

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    move-object p1, v10

    .line 87
    :goto_2
    if-nez p1, :cond_5

    .line 88
    .line 89
    move-object p1, v7

    .line 90
    :cond_5
    invoke-virtual {v9, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_c

    .line 95
    .line 96
    new-instance v13, Ljava/util/LinkedHashMap;

    .line 97
    .line 98
    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9, p1, v13}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 105
    .line 106
    sget-object v1, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iput-object p1, v6, Lorg/wikipedia/search/RecentSearchesFragment$updateList$1;->L$0:Ljava/lang/String;

    .line 120
    .line 121
    iput-object v13, v6, Lorg/wikipedia/search/RecentSearchesFragment$updateList$1;->L$1:Ljava/io/Serializable;

    .line 122
    .line 123
    iput v11, v6, Lorg/wikipedia/search/RecentSearchesFragment$updateList$1;->label:I

    .line 124
    .line 125
    const/4 v2, 0x0

    .line 126
    const/4 v3, 0x0

    .line 127
    const/4 v4, 0x0

    .line 128
    const/4 v5, 0x0

    .line 129
    invoke-interface/range {v1 .. v6}, Lorg/wikipedia/dataclient/Service;->getPageNamespaceWithSiteInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    if-ne v1, v0, :cond_6

    .line 134
    .line 135
    goto :goto_7

    .line 136
    :cond_6
    move-object v2, p1

    .line 137
    move-object p1, v1

    .line 138
    move-object v1, v13

    .line 139
    :goto_3
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 140
    .line 141
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 142
    .line 143
    if-eqz p1, :cond_7

    .line 144
    .line 145
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->namespaces:Ljava/util/Map;

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_7
    move-object p1, v10

    .line 149
    :goto_4
    if-nez p1, :cond_8

    .line 150
    .line 151
    sget-object p1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 152
    .line 153
    :cond_8
    iget-object v3, p0, Lorg/wikipedia/search/RecentSearchesFragment;->namespaceHints:Ljava/util/List;

    .line 154
    .line 155
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-eqz v4, :cond_b

    .line 164
    .line 165
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    check-cast v4, Lorg/wikipedia/page/Namespace;

    .line 170
    .line 171
    invoke-virtual {v4}, Lorg/wikipedia/page/Namespace;->code()I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    check-cast v5, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Namespace;

    .line 184
    .line 185
    if-eqz v5, :cond_9

    .line 186
    .line 187
    iget-object v5, v5, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Namespace;->name:Ljava/lang/String;

    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_9
    move-object v5, v10

    .line 191
    :goto_6
    if-nez v5, :cond_a

    .line 192
    .line 193
    move-object v5, v7

    .line 194
    :cond_a
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_b
    move-object p1, v2

    .line 199
    :cond_c
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 200
    .line 201
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->recentSearchDao()Lorg/wikipedia/search/db/RecentSearchDao_Impl;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    iput-object v10, v6, Lorg/wikipedia/search/RecentSearchesFragment$updateList$1;->L$0:Ljava/lang/String;

    .line 210
    .line 211
    iput-object p1, v6, Lorg/wikipedia/search/RecentSearchesFragment$updateList$1;->L$1:Ljava/io/Serializable;

    .line 212
    .line 213
    iput v8, v6, Lorg/wikipedia/search/RecentSearchesFragment$updateList$1;->label:I

    .line 214
    .line 215
    iget-object v2, v1, Lorg/wikipedia/search/db/RecentSearchDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 216
    .line 217
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 218
    .line 219
    const/16 v4, 0x14

    .line 220
    .line 221
    invoke-direct {v3, v4, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    invoke-static {v2, v11, v12, v3, v6}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    if-ne v1, v0, :cond_d

    .line 229
    .line 230
    :goto_7
    return-object v0

    .line 231
    :cond_d
    move-object v0, p1

    .line 232
    move-object p1, v1

    .line 233
    :goto_8
    check-cast p1, Ljava/util/List;

    .line 234
    .line 235
    iget-object v1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->recentSearchList:Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    iget-object v1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 255
    .line 256
    new-instance v2, Lorg/wikipedia/search/RecentSearchesFragment$NamespaceAdapter;

    .line 257
    .line 258
    invoke-direct {v2, p0, v12}, Lorg/wikipedia/search/RecentSearchesFragment$NamespaceAdapter;-><init>(Lorg/wikipedia/search/RecentSearchesFragment;I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 262
    .line 263
    .line 264
    iget-object v1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 272
    .line 273
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    if-eqz v1, :cond_e

    .line 278
    .line 279
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 280
    .line 281
    .line 282
    :cond_e
    iget-object v1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 283
    .line 284
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v1, Landroid/widget/LinearLayout;

    .line 290
    .line 291
    const/4 v2, 0x4

    .line 292
    if-nez p1, :cond_f

    .line 293
    .line 294
    move v3, v2

    .line 295
    goto :goto_9

    .line 296
    :cond_f
    move v3, v12

    .line 297
    :goto_9
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 298
    .line 299
    .line 300
    iget-object v1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 301
    .line 302
    const/16 v3, 0x8

    .line 303
    .line 304
    if-eqz p1, :cond_11

    .line 305
    .line 306
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v1, Landroid/widget/LinearLayout;

    .line 312
    .line 313
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 314
    .line 315
    .line 316
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 317
    .line 318
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    check-cast v1, Ljava/util/ArrayList;

    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    iget-object v4, p0, Lorg/wikipedia/search/RecentSearchesFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 329
    .line 330
    if-ne v1, v11, :cond_10

    .line 331
    .line 332
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    iget-object v1, v4, Landroidx/compose/ui/node/NodeChain;->sentinelHead:Ljava/lang/Object;

    .line 336
    .line 337
    check-cast v1, Landroid/widget/Button;

    .line 338
    .line 339
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 340
    .line 341
    .line 342
    iget-object v1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 343
    .line 344
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v1, Landroid/widget/TextView;

    .line 350
    .line 351
    const v4, 0x7f120843

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    .line 360
    .line 361
    goto :goto_a

    .line 362
    :cond_10
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    iget-object v1, v4, Landroidx/compose/ui/node/NodeChain;->sentinelHead:Ljava/lang/Object;

    .line 366
    .line 367
    check-cast v1, Landroid/widget/Button;

    .line 368
    .line 369
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 370
    .line 371
    .line 372
    iget-object v1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 373
    .line 374
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    .line 376
    .line 377
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v1, Landroid/widget/TextView;

    .line 380
    .line 381
    const v4, 0x7f120842

    .line 382
    .line 383
    .line 384
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    .line 390
    .line 391
    goto :goto_a

    .line 392
    :cond_11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    .line 396
    .line 397
    check-cast v1, Landroid/widget/LinearLayout;

    .line 398
    .line 399
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 400
    .line 401
    .line 402
    :goto_a
    iget-object v1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 403
    .line 404
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    .line 406
    .line 407
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast v1, Landroid/widget/LinearLayout;

    .line 410
    .line 411
    if-eqz p1, :cond_12

    .line 412
    .line 413
    goto :goto_b

    .line 414
    :cond_12
    move v2, v12

    .line 415
    :goto_b
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 416
    .line 417
    .line 418
    iget-object p0, p0, Lorg/wikipedia/search/RecentSearchesFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 419
    .line 420
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast p0, Landroid/widget/LinearLayout;

    .line 426
    .line 427
    invoke-virtual {v9, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    check-cast p1, Ljava/util/Map;

    .line 432
    .line 433
    if-eqz p1, :cond_13

    .line 434
    .line 435
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 436
    .line 437
    .line 438
    move-result p1

    .line 439
    if-eqz p1, :cond_14

    .line 440
    .line 441
    :cond_13
    move v12, v3

    .line 442
    :cond_14
    invoke-virtual {p0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 443
    .line 444
    .line 445
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 446
    .line 447
    return-object p0
.end method

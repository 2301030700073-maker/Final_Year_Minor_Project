.class public final Lorg/wikipedia/page/tabs/TabActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lorg/wikipedia/page/tabs/TabActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "<init>",
        "()V",
        "TabViewHolder",
        "DiffLinesAdapter",
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
.field public final app:Lorg/wikipedia/WikipediaApp;

.field public binding:Lokio/internal/DefaultSocket;

.field public launchedFromPageActivity:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 5
    .line 6
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f0c0034

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const v0, 0x7f090651

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    move-object v6, v3

    .line 25
    check-cast v6, Lorg/wikipedia/views/NotificationButtonView;

    .line 26
    .line 27
    if-eqz v6, :cond_a

    .line 28
    .line 29
    move-object v5, p1

    .line 30
    check-cast v5, Landroid/widget/FrameLayout;

    .line 31
    .line 32
    const v0, 0x7f090653

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    move-object v7, v3

    .line 40
    check-cast v7, Lorg/wikipedia/views/TabCountsView;

    .line 41
    .line 42
    if-eqz v7, :cond_a

    .line 43
    .line 44
    const v0, 0x7f090650

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    move-object v8, v3

    .line 52
    check-cast v8, Lorg/wikipedia/views/AutoFitRecyclerView;

    .line 53
    .line 54
    if-eqz v8, :cond_a

    .line 55
    .line 56
    const v0, 0x7f090654

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    move-object v9, v3

    .line 64
    check-cast v9, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 65
    .line 66
    if-eqz v9, :cond_a

    .line 67
    .line 68
    new-instance v4, Lokio/internal/DefaultSocket;

    .line 69
    .line 70
    const/16 v10, 0xb

    .line 71
    .line 72
    invoke-direct/range {v4 .. v10}, Lokio/internal/DefaultSocket;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 73
    .line 74
    .line 75
    iput-object v4, p0, Lorg/wikipedia/page/tabs/TabActivity;->binding:Lokio/internal/DefaultSocket;

    .line 76
    .line 77
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->binding:Lokio/internal/DefaultSocket;

    .line 81
    .line 82
    const-string v0, "binding"

    .line 83
    .line 84
    if-eqz p1, :cond_9

    .line 85
    .line 86
    iget-object p1, p1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p1, Lorg/wikipedia/views/TabCountsView;

    .line 89
    .line 90
    invoke-virtual {p1, v2}, Lorg/wikipedia/views/TabCountsView;->updateTabCount(Z)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->binding:Lokio/internal/DefaultSocket;

    .line 94
    .line 95
    if-eqz p1, :cond_8

    .line 96
    .line 97
    iget-object p1, p1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Lorg/wikipedia/views/TabCountsView;

    .line 100
    .line 101
    new-instance v3, Lorg/wikipedia/page/tabs/TabActivity$$ExternalSyntheticLambda1;

    .line 102
    .line 103
    invoke-direct {v3, p0, v2}, Lorg/wikipedia/page/tabs/TabActivity$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/page/tabs/TabActivity;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->binding:Lokio/internal/DefaultSocket;

    .line 110
    .line 111
    if-eqz p1, :cond_7

    .line 112
    .line 113
    iget-object v3, p1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v3, Lorg/wikipedia/views/TabCountsView;

    .line 116
    .line 117
    if-eqz p1, :cond_6

    .line 118
    .line 119
    iget-object p1, p1, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast p1, Lorg/wikipedia/views/NotificationButtonView;

    .line 122
    .line 123
    const/4 v4, 0x2

    .line 124
    new-array v5, v4, [Landroid/view/View;

    .line 125
    .line 126
    aput-object v3, v5, v2

    .line 127
    .line 128
    const/4 v3, 0x1

    .line 129
    aput-object p1, v5, v3

    .line 130
    .line 131
    :goto_0
    if-ge v2, v4, :cond_0

    .line 132
    .line 133
    aget-object p1, v5, v2

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-static {p1, v6}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    add-int/lit8 v2, v2, 0x1

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->binding:Lokio/internal/DefaultSocket;

    .line 146
    .line 147
    if-eqz p1, :cond_5

    .line 148
    .line 149
    iget-object p1, p1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast p1, Lorg/wikipedia/views/AutoFitRecyclerView;

    .line 152
    .line 153
    new-instance v2, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 154
    .line 155
    const/4 v4, 0x4

    .line 156
    invoke-direct {v2, v4, p0}, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;-><init>(ILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 160
    .line 161
    .line 162
    new-instance p1, Lorg/wikipedia/page/tabs/SwipeableTabTouchHelperCallback;

    .line 163
    .line 164
    invoke-direct {p1, p0}, Lorg/wikipedia/page/tabs/SwipeableTabTouchHelperCallback;-><init>(Lorg/wikipedia/page/tabs/TabActivity;)V

    .line 165
    .line 166
    .line 167
    iput-boolean v3, p1, Lorg/wikipedia/page/tabs/SwipeableTabTouchHelperCallback;->swipeableEnabled:Z

    .line 168
    .line 169
    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 170
    .line 171
    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->binding:Lokio/internal/DefaultSocket;

    .line 175
    .line 176
    if-eqz p1, :cond_4

    .line 177
    .line 178
    iget-object p1, p1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast p1, Lorg/wikipedia/views/AutoFitRecyclerView;

    .line 181
    .line 182
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    const-string v2, "launchedFromPageActivity"

    .line 190
    .line 191
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    iput-boolean p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->launchedFromPageActivity:Z

    .line 196
    .line 197
    const p1, 0x1010031

    .line 198
    .line 199
    .line 200
    invoke-static {p0, p1}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    invoke-virtual {p0, v2}, Lorg/wikipedia/activity/BaseActivity;->setStatusBarColor(I)V

    .line 205
    .line 206
    .line 207
    invoke-static {p0, p1}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    invoke-virtual {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->setNavigationBarColor(I)V

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->binding:Lokio/internal/DefaultSocket;

    .line 215
    .line 216
    if-eqz p1, :cond_3

    .line 217
    .line 218
    iget-object p1, p1, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 221
    .line 222
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    if-eqz p1, :cond_1

    .line 230
    .line 231
    invoke-virtual {p1, v3}, Lcoil3/util/ContextsKt;->setDisplayHomeAsUpEnabled(Z)V

    .line 232
    .line 233
    .line 234
    const-string v2, ""

    .line 235
    .line 236
    invoke-virtual {p1, v2}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->binding:Lokio/internal/DefaultSocket;

    .line 240
    .line 241
    if-eqz p1, :cond_2

    .line 242
    .line 243
    iget-object p1, p1, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast p1, Lorg/wikipedia/views/NotificationButtonView;

    .line 246
    .line 247
    new-instance v0, Lorg/wikipedia/page/tabs/TabActivity$$ExternalSyntheticLambda1;

    .line 248
    .line 249
    invoke-direct {v0, p0, v3}, Lorg/wikipedia/page/tabs/TabActivity$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/page/tabs/TabActivity;I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw v1

    .line 260
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw v1

    .line 264
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw v1

    .line 268
    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw v1

    .line 272
    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw v1

    .line 276
    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw v1

    .line 280
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    throw v1

    .line 284
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw v1

    .line 288
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    const-string p1, "Missing required view with ID: "

    .line 297
    .line 298
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
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
    const v0, 0x7f0e0024

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
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x102002c

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v1, :cond_8

    .line 13
    .line 14
    const v1, 0x7f0903d4

    .line 15
    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    const v1, 0x7f09039c

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    iget-object v5, p0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 27
    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    iget-object p1, v5, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_5

    .line 37
    .line 38
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 39
    .line 40
    invoke-direct {p1, p0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 41
    .line 42
    .line 43
    const v0, 0x7f1200c4

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;

    .line 50
    .line 51
    const/4 v1, 0x5

    .line 52
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;-><init>(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const p0, 0x7f1200c6

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p0, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    const p0, 0x7f1200c5

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p0, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 68
    .line 69
    .line 70
    return v2

    .line 71
    :cond_1
    const v1, 0x7f0903e4

    .line 72
    .line 73
    .line 74
    if-ne v0, v1, :cond_6

    .line 75
    .line 76
    iget-object p1, v5, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_5

    .line 83
    .line 84
    iget-object p1, v5, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 85
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    move-object v5, v1

    .line 106
    check-cast v5, Lorg/wikipedia/page/tabs/Tab;

    .line 107
    .line 108
    invoke-virtual {v5}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    if-eqz v5, :cond_2

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 119
    .line 120
    const/16 v1, 0xa

    .line 121
    .line 122
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_4

    .line 138
    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Lorg/wikipedia/page/tabs/Tab;

    .line 144
    .line 145
    invoke-virtual {v1}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->TABS_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    new-instance v1, Lorg/wikipedia/readinglist/AddToReadingListDialog;

    .line 166
    .line 167
    invoke-direct {v1}, Lorg/wikipedia/readinglist/AddToReadingListDialog;-><init>()V

    .line 168
    .line 169
    .line 170
    new-instance v5, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 173
    .line 174
    .line 175
    new-instance p1, Lkotlin/Pair;

    .line 176
    .line 177
    const-string v6, "pageTitleList"

    .line 178
    .line 179
    invoke-direct {p1, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    new-instance v5, Lkotlin/Pair;

    .line 183
    .line 184
    const-string v6, "invokeSource"

    .line 185
    .line 186
    invoke-direct {v5, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 190
    .line 191
    new-instance v6, Lkotlin/Pair;

    .line 192
    .line 193
    const-string v7, "showDefaultList"

    .line 194
    .line 195
    invoke-direct {v6, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    const/4 v0, 0x3

    .line 199
    new-array v0, v0, [Lkotlin/Pair;

    .line 200
    .line 201
    aput-object p1, v0, v3

    .line 202
    .line 203
    aput-object v5, v0, v2

    .line 204
    .line 205
    const/4 p1, 0x2

    .line 206
    aput-object v6, v0, p1

    .line 207
    .line 208
    invoke-static {v0}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 213
    .line 214
    .line 215
    iput-object v4, v1, Lorg/wikipedia/readinglist/AddToReadingListDialog;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 216
    .line 217
    invoke-static {p0, v1}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 218
    .line 219
    .line 220
    :cond_5
    return v2

    .line 221
    :cond_6
    const v1, 0x7f0903b7

    .line 222
    .line 223
    .line 224
    if-ne v0, v1, :cond_7

    .line 225
    .line 226
    new-instance p1, Landroid/content/Intent;

    .line 227
    .line 228
    const-class v0, Lorg/wikipedia/main/MainActivity;

    .line 229
    .line 230
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .line 232
    .line 233
    const/high16 v0, 0x4000000

    .line 234
    .line 235
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    const-string v0, "returnToMain"

    .line 240
    .line 241
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    sget-object v0, Lorg/wikipedia/navtab/NavTab;->HOME:Lorg/wikipedia/navtab/NavTab;

    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    const-string v1, "goToMainTab"

    .line 252
    .line 253
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 261
    .line 262
    .line 263
    return v2

    .line 264
    :cond_7
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 265
    .line 266
    .line 267
    move-result p0

    .line 268
    return p0

    .line 269
    :cond_8
    :goto_2
    iget-boolean p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->launchedFromPageActivity:Z

    .line 270
    .line 271
    if-eqz p1, :cond_9

    .line 272
    .line 273
    const/16 p1, 0xb

    .line 274
    .line 275
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 276
    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_9
    new-instance p1, Landroid/content/Intent;

    .line 280
    .line 281
    const-string v0, "org.wikipedia.create_new_tab"

    .line 282
    .line 283
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    const-class v0, Lorg/wikipedia/page/PageActivity;

    .line 287
    .line 288
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 296
    .line 297
    .line 298
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 299
    .line 300
    .line 301
    return v2
.end method

.method public final onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->commitTabState()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lorg/wikipedia/page/tabs/TabActivity;->updateNotificationsButton$1(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onUnreadNotification()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/wikipedia/page/tabs/TabActivity;->updateNotificationsButton$1(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final updateNotificationsButton$1(Z)V
    .locals 5

    .line 1
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lorg/wikipedia/page/tabs/TabActivity;->binding:Lokio/internal/DefaultSocket;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "binding"

    .line 9
    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    if-eqz v1, :cond_5

    .line 13
    .line 14
    iget-object v0, v1, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lorg/wikipedia/views/NotificationButtonView;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 23
    .line 24
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getNotificationUnreadCount()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v4, p0, Lorg/wikipedia/page/tabs/TabActivity;->binding:Lokio/internal/DefaultSocket;

    .line 29
    .line 30
    if-lez v0, :cond_3

    .line 31
    .line 32
    if-eqz v4, :cond_2

    .line 33
    .line 34
    iget-object v0, v4, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lorg/wikipedia/views/NotificationButtonView;

    .line 37
    .line 38
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getNotificationUnreadCount()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Lorg/wikipedia/views/NotificationButtonView;->setUnreadCount(I)V

    .line 43
    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iget-object p0, p0, Lorg/wikipedia/page/tabs/TabActivity;->binding:Lokio/internal/DefaultSocket;

    .line 48
    .line 49
    if-eqz p0, :cond_0

    .line 50
    .line 51
    iget-object p0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Lorg/wikipedia/views/NotificationButtonView;

    .line 54
    .line 55
    invoke-virtual {p0}, Lorg/wikipedia/views/NotificationButtonView;->runAnimation()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v2

    .line 63
    :cond_1
    return-void

    .line 64
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v2

    .line 68
    :cond_3
    if-eqz v4, :cond_4

    .line 69
    .line 70
    iget-object p0, v4, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p0, Lorg/wikipedia/views/NotificationButtonView;

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Lorg/wikipedia/views/NotificationButtonView;->setUnreadCount(I)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v2

    .line 82
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v2

    .line 86
    :cond_6
    if-eqz v1, :cond_7

    .line 87
    .line 88
    iget-object p0, v1, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p0, Lorg/wikipedia/views/NotificationButtonView;

    .line 91
    .line 92
    const/16 p1, 0x8

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v2
.end method

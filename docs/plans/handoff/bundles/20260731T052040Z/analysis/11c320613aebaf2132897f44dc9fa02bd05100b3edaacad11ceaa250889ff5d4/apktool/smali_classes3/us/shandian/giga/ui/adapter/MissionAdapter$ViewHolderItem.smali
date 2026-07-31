.class public final Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final cancel:Landroid/view/MenuItem;

.field public final checksum:Landroid/view/MenuItem;

.field public final date:Landroid/widget/TextView;

.field public final delete:Landroid/view/MenuItem;

.field public final icon:Landroid/widget/ImageView;

.field public item:Lokio/PriorityQueue;

.field public lastDone:D

.field public final lastSpeed:[F

.field public lastSpeedIdx:I

.field public lastTimestamp:J

.field public final name:Landroid/widget/TextView;

.field public final open:Landroid/view/MenuItem;

.field public final pause:Landroid/view/MenuItem;

.field public final popupMenu:Landroid/widget/PopupMenu;

.field public final progress:Lus/shandian/giga/ui/common/ProgressDrawable;

.field public final queue:Landroid/view/MenuItem;

.field public final retry:Landroid/view/MenuItem;

.field public final showError:Landroid/view/MenuItem;

.field public final size:Landroid/widget/TextView;

.field public final source:Landroid/view/MenuItem;

.field public final start:Landroid/view/MenuItem;

.field public final status:Landroid/widget/TextView;

.field public final synthetic this$0:Lus/shandian/giga/ui/adapter/MissionAdapter;


# direct methods
.method public constructor <init>(Lus/shandian/giga/ui/adapter/MissionAdapter;Landroid/view/View;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->this$0:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    iput-wide v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimestamp:J

    .line 9
    .line 10
    const/4 p2, 0x3

    .line 11
    new-array p2, p2, [F

    .line 12
    .line 13
    iput-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeed:[F

    .line 14
    .line 15
    new-instance p2, Lus/shandian/giga/ui/common/ProgressDrawable;

    .line 16
    .line 17
    invoke-direct {p2}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p2, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p2, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeProgress:F

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput v0, p2, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeSize:I

    .line 28
    .line 29
    const-wide/16 v1, 0x0

    .line 30
    .line 31
    iput-wide v1, p2, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeNext:J

    .line 32
    .line 33
    iput-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 36
    .line 37
    const v2, 0x7f0a01f5

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 48
    .line 49
    const v1, 0x7f0a01fb

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    .line 59
    .line 60
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 61
    .line 62
    const v1, 0x7f0a01f9

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Landroid/widget/TextView;

    .line 70
    .line 71
    iput-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->name:Landroid/widget/TextView;

    .line 72
    .line 73
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 74
    .line 75
    const v2, 0x7f0a01f7

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroid/widget/ImageView;

    .line 83
    .line 84
    iput-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->icon:Landroid/widget/ImageView;

    .line 85
    .line 86
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 87
    .line 88
    const v2, 0x7f0a01fa

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Landroid/widget/TextView;

    .line 96
    .line 97
    iput-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    .line 98
    .line 99
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 100
    .line 101
    const v2, 0x7f0a01f6

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Landroid/widget/TextView;

    .line 109
    .line 110
    iput-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->date:Landroid/widget/TextView;

    .line 111
    .line 112
    const/4 v1, 0x1

    .line 113
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 114
    .line 115
    .line 116
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 117
    .line 118
    const v2, 0x7f0a01f8

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    check-cast p2, Landroid/widget/ImageView;

    .line 126
    .line 127
    new-instance v2, Landroid/widget/PopupMenu;

    .line 128
    .line 129
    iget-object p1, p1, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    .line 130
    .line 131
    invoke-direct {v2, p1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    const p1, 0x7f0f0012

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 138
    .line 139
    .line 140
    new-instance p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda3;

    .line 141
    .line 142
    invoke-direct {p1, p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda3;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 146
    .line 147
    .line 148
    iput-object v2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->popupMenu:Landroid/widget/PopupMenu;

    .line 149
    .line 150
    new-instance p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda0;

    .line 151
    .line 152
    invoke-direct {p1, p0, v0}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    const p2, 0x7f0a0335

    .line 163
    .line 164
    .line 165
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    iput-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->retry:Landroid/view/MenuItem;

    .line 170
    .line 171
    const p2, 0x7f0a009a

    .line 172
    .line 173
    .line 174
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    iput-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->cancel:Landroid/view/MenuItem;

    .line 179
    .line 180
    const p2, 0x7f0a0393

    .line 181
    .line 182
    .line 183
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    iput-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->start:Landroid/view/MenuItem;

    .line 188
    .line 189
    const p2, 0x7f0a02d5

    .line 190
    .line 191
    .line 192
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    iput-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->pause:Landroid/view/MenuItem;

    .line 197
    .line 198
    const p2, 0x7f0a024d

    .line 199
    .line 200
    .line 201
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    iput-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->open:Landroid/view/MenuItem;

    .line 206
    .line 207
    const p2, 0x7f0a0324

    .line 208
    .line 209
    .line 210
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    iput-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    .line 215
    .line 216
    const p2, 0x7f0a0159

    .line 217
    .line 218
    .line 219
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    iput-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showError:Landroid/view/MenuItem;

    .line 224
    .line 225
    const p2, 0x7f0a00e8

    .line 226
    .line 227
    .line 228
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    iput-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->delete:Landroid/view/MenuItem;

    .line 233
    .line 234
    const p2, 0x7f0a0383

    .line 235
    .line 236
    .line 237
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    iput-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->source:Landroid/view/MenuItem;

    .line 242
    .line 243
    const p2, 0x7f0a00b2

    .line 244
    .line 245
    .line 246
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->checksum:Landroid/view/MenuItem;

    .line 251
    .line 252
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 253
    .line 254
    invoke-virtual {p1, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 255
    .line 256
    .line 257
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 258
    .line 259
    new-instance p2, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda0;

    .line 260
    .line 261
    invoke-direct {p2, p0, v1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    .line 266
    .line 267
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 268
    .line 269
    new-instance p2, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda11;

    .line 270
    .line 271
    const/4 v0, 0x5

    .line 272
    invoke-direct {p2, p0, v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 276
    .line 277
    .line 278
    return-void
.end method


# virtual methods
.method public final showPopupMenu()V
    .locals 5

    .line 1
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->retry:Landroid/view/MenuItem;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->cancel:Landroid/view/MenuItem;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->start:Landroid/view/MenuItem;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->pause:Landroid/view/MenuItem;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->open:Landroid/view/MenuItem;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showError:Landroid/view/MenuItem;

    .line 33
    .line 34
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->delete:Landroid/view/MenuItem;

    .line 38
    .line 39
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->source:Landroid/view/MenuItem;

    .line 43
    .line 44
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->checksum:Landroid/view/MenuItem;

    .line 48
    .line 49
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lokio/PriorityQueue;

    .line 53
    .line 54
    iget-object v0, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lus/shandian/giga/get/Mission;

    .line 57
    .line 58
    instance-of v2, v0, Lus/shandian/giga/get/DownloadMission;

    .line 59
    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    check-cast v0, Lus/shandian/giga/get/DownloadMission;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    const/4 v2, 0x1

    .line 67
    if-eqz v0, :cond_8

    .line 68
    .line 69
    iget-object v3, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 70
    .line 71
    if-eqz v3, :cond_7

    .line 72
    .line 73
    invoke-virtual {v3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->existsAsFile()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_3

    .line 85
    .line 86
    iget v0, v0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 87
    .line 88
    const/16 v1, 0x3f1

    .line 89
    .line 90
    if-eq v0, v1, :cond_2

    .line 91
    .line 92
    const/16 v1, 0x3f2

    .line 93
    .line 94
    if-eq v0, v1, :cond_2

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->retry:Landroid/view/MenuItem;

    .line 98
    .line 99
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->cancel:Landroid/view/MenuItem;

    .line 103
    .line 104
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showError:Landroid/view/MenuItem;

    .line 108
    .line 109
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    iget-boolean v3, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 114
    .line 115
    if-eqz v3, :cond_4

    .line 116
    .line 117
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->pause:Landroid/view/MenuItem;

    .line 118
    .line 119
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    iget v3, v0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 124
    .line 125
    const/4 v4, -0x1

    .line 126
    if-eq v3, v4, :cond_5

    .line 127
    .line 128
    iget-object v3, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showError:Landroid/view/MenuItem;

    .line 129
    .line 130
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 131
    .line 132
    .line 133
    :cond_5
    iget-object v3, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    .line 134
    .line 135
    iget-boolean v4, v0, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    .line 136
    .line 137
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 138
    .line 139
    .line 140
    iget-object v3, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->delete:Landroid/view/MenuItem;

    .line 141
    .line 142
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->isPsFailed()Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-nez v3, :cond_6

    .line 150
    .line 151
    iget-object v0, v0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    .line 152
    .line 153
    array-length v0, v0

    .line 154
    if-lez v0, :cond_6

    .line 155
    .line 156
    move v1, v2

    .line 157
    :cond_6
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->start:Landroid/view/MenuItem;

    .line 158
    .line 159
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    .line 163
    .line 164
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_7
    :goto_1
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->retry:Landroid/view/MenuItem;

    .line 169
    .line 170
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->delete:Landroid/view/MenuItem;

    .line 174
    .line 175
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showError:Landroid/view/MenuItem;

    .line 179
    .line 180
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_8
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->open:Landroid/view/MenuItem;

    .line 185
    .line 186
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->delete:Landroid/view/MenuItem;

    .line 190
    .line 191
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->checksum:Landroid/view/MenuItem;

    .line 195
    .line 196
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 197
    .line 198
    .line 199
    :goto_2
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lokio/PriorityQueue;

    .line 200
    .line 201
    iget-object v0, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v0, Lus/shandian/giga/get/Mission;

    .line 204
    .line 205
    iget-object v0, v0, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    .line 206
    .line 207
    if-eqz v0, :cond_9

    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-nez v0, :cond_9

    .line 214
    .line 215
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->source:Landroid/view/MenuItem;

    .line 216
    .line 217
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 218
    .line 219
    .line 220
    :cond_9
    iget-object p0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->popupMenu:Landroid/widget/PopupMenu;

    .line 221
    .line 222
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->show()V

    .line 223
    .line 224
    .line 225
    return-void
.end method

.class public final Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public clock:Ljava/lang/Object;

.field public formatter:Ljava/lang/Object;

.field public fullDumpCooldown:J

.field public lastFullDumpTimestamp:Ljava/lang/Object;

.field public logTag:Ljava/lang/Object;

.field public logger:Ljava/lang/Object;


# direct methods
.method public static inferViewPager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string v0, "Expected ViewPager2 instance. Got: "

    .line 13
    .line 14
    invoke-static {p0, v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method


# virtual methods
.method public updateFragmentMaxLifecycle(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->lastFullDumpTimestamp:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mFragmentEventDispatcher:Landroidx/fragment/app/Fragment$7;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    goto/16 :goto_6

    .line 18
    .line 19
    :cond_0
    iget-object v4, p0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->formatter:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v4, Landroidx/viewpager2/widget/ViewPager2;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    goto/16 :goto_6

    .line 30
    .line 31
    :cond_1
    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_d

    .line 36
    .line 37
    iget-object v4, v0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->messageList:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    goto/16 :goto_6

    .line 46
    .line 47
    :cond_2
    iget-object v4, p0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->formatter:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v4, Landroidx/viewpager2/widget/ViewPager2;

    .line 50
    .line 51
    invoke-virtual {v4}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    iget-object v5, v0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->messageList:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-lt v4, v5, :cond_3

    .line 62
    .line 63
    goto/16 :goto_6

    .line 64
    .line 65
    :cond_3
    invoke-virtual {v0, v4}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->getItemId(I)J

    .line 66
    .line 67
    .line 68
    move-result-wide v4

    .line 69
    iget-wide v6, p0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->fullDumpCooldown:J

    .line 70
    .line 71
    cmp-long v0, v4, v6

    .line 72
    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    if-nez p1, :cond_4

    .line 76
    .line 77
    goto/16 :goto_6

    .line 78
    .line 79
    :cond_4
    invoke-virtual {v2, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 84
    .line 85
    if-eqz p1, :cond_d

    .line 86
    .line 87
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_5

    .line 92
    .line 93
    goto/16 :goto_6

    .line 94
    .line 95
    :cond_5
    iput-wide v4, p0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->fullDumpCooldown:J

    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    new-instance p1, Landroidx/fragment/app/BackStackRecord;

    .line 101
    .line 102
    invoke-direct {p1, v3}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 103
    .line 104
    .line 105
    new-instance v0, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    const/4 v3, 0x0

    .line 111
    const/4 v4, 0x0

    .line 112
    move v5, v3

    .line 113
    :goto_0
    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-ge v5, v6, :cond_a

    .line 118
    .line 119
    invoke-virtual {v2, v5}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    .line 120
    .line 121
    .line 122
    move-result-wide v6

    .line 123
    invoke-virtual {v2, v5}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    check-cast v8, Landroidx/fragment/app/Fragment;

    .line 128
    .line 129
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-nez v9, :cond_6

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_6
    iget-wide v9, p0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->fullDumpCooldown:J

    .line 137
    .line 138
    cmp-long v9, v6, v9

    .line 139
    .line 140
    if-eqz v9, :cond_8

    .line 141
    .line 142
    sget-object v9, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 143
    .line 144
    invoke-virtual {p1, v8, v9}, Landroidx/fragment/app/BackStackRecord;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    new-instance v9, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    iget-object v10, v1, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v10, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 158
    .line 159
    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v11

    .line 167
    if-nez v11, :cond_7

    .line 168
    .line 169
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_7
    invoke-static {v10}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    throw p0

    .line 178
    :cond_8
    move-object v4, v8

    .line 179
    :goto_1
    iget-wide v9, p0, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->fullDumpCooldown:J

    .line 180
    .line 181
    cmp-long v6, v6, v9

    .line 182
    .line 183
    if-nez v6, :cond_9

    .line 184
    .line 185
    const/4 v6, 0x1

    .line 186
    goto :goto_2

    .line 187
    :cond_9
    move v6, v3

    .line 188
    :goto_2
    invoke-virtual {v8, v6}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 189
    .line 190
    .line 191
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_a
    if-eqz v4, :cond_c

    .line 195
    .line 196
    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 197
    .line 198
    invoke-virtual {p1, v4, p0}, Landroidx/fragment/app/BackStackRecord;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    new-instance p0, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .line 208
    .line 209
    iget-object v2, v1, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 212
    .line 213
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-nez v3, :cond_b

    .line 222
    .line 223
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_b
    invoke-static {v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    throw p0

    .line 232
    :cond_c
    :goto_4
    iget-object p0, p1, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 235
    .line 236
    .line 237
    move-result p0

    .line 238
    if-nez p0, :cond_d

    .line 239
    .line 240
    invoke-virtual {p1}, Landroidx/fragment/app/BackStackRecord;->commitNow()V

    .line 241
    .line 242
    .line 243
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    if-eqz p1, :cond_d

    .line 255
    .line 256
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    check-cast p1, Ljava/util/List;

    .line 261
    .line 262
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    invoke-static {p1}, Landroidx/fragment/app/Fragment$7;->dispatchPostEvents(Ljava/util/List;)V

    .line 266
    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_d
    :goto_6
    return-void
.end method

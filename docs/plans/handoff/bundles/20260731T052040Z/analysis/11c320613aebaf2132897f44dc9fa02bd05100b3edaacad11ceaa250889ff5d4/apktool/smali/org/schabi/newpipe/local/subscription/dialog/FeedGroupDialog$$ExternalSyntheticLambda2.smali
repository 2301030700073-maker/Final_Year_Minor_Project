.class public final synthetic Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$DialogEvent;

    .line 13
    .line 14
    sget-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$DialogEvent$ProcessingEvent;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$DialogEvent$ProcessingEvent;

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->deleteButton:Landroid/widget/ImageButton;

    .line 27
    .line 28
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->confirmButton:Landroid/widget/Button;

    .line 36
    .line 37
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->cancelButton:Landroid/widget/Button;

    .line 45
    .line 46
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iput-boolean v3, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    .line 50
    .line 51
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->inputMethodManager$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 59
    .line 60
    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 65
    .line 66
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v1, 0x2

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    sget-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$DialogEvent$SuccessEvent;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$DialogEvent$SuccessEvent;

    .line 93
    .line 94
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_5

    .line 99
    .line 100
    invoke-virtual {p0, v3, v3}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 101
    .line 102
    .line 103
    :goto_0
    move-object v1, v2

    .line 104
    goto :goto_1

    .line 105
    :cond_5
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 106
    .line 107
    .line 108
    :goto_1
    return-object v1

    .line 109
    :pswitch_0
    check-cast p1, Lkotlin/Pair;

    .line 110
    .line 111
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Ljava/util/List;

    .line 116
    .line 117
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Ljava/util/Set;

    .line 122
    .line 123
    iget-object v4, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionEmptyFooter:Lcom/xwray/groupie/Section;

    .line 124
    .line 125
    iget-boolean v5, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->wasSubscriptionSelectionChanged:Z

    .line 126
    .line 127
    if-nez v5, :cond_6

    .line 128
    .line 129
    iget-object v5, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    .line 130
    .line 131
    check-cast p1, Ljava/util/Collection;

    .line 132
    .line 133
    invoke-virtual {v5, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 134
    .line 135
    .line 136
    :cond_6
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->updateSubscriptionSelectedCount()V

    .line 137
    .line 138
    .line 139
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_7

    .line 144
    .line 145
    invoke-virtual {v4}, Lcom/xwray/groupie/Section;->clear()V

    .line 146
    .line 147
    .line 148
    new-instance p1, Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;

    .line 149
    .line 150
    invoke-direct {p1}, Lcom/xwray/groupie/Item;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v4}, Lcom/xwray/groupie/Item;->registerGroupDataObserver(Lcom/xwray/groupie/GroupDataObserver;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4}, Lcom/xwray/groupie/Section;->getItemCountWithoutFooter()I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    iget-object v6, v4, Lcom/xwray/groupie/Section;->children:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    const/4 p1, 0x1

    .line 166
    invoke-virtual {v4, v5, p1}, Lcom/xwray/groupie/Section;->notifyItemRangeInserted(II)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4}, Lcom/xwray/groupie/Section;->refreshEmptyState()V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_7
    invoke-virtual {v4}, Lcom/xwray/groupie/Section;->clear()V

    .line 174
    .line 175
    .line 176
    :goto_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_8

    .line 185
    .line 186
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    check-cast v4, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;

    .line 191
    .line 192
    iget-object v5, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    .line 193
    .line 194
    iget-object v6, v4, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->subscriptionEntity:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 195
    .line 196
    iget-wide v6, v6, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    .line 197
    .line 198
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    iput-boolean v5, v4, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->isSelected:Z

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_8
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionMainSection:Lcom/xwray/groupie/Section;

    .line 210
    .line 211
    invoke-virtual {p1, v0, v3}, Lcom/xwray/groupie/Section;->update(Ljava/util/Collection;Z)V

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsListState:Landroid/os/Parcelable;

    .line 215
    .line 216
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 217
    .line 218
    if-eqz p1, :cond_a

    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    iget-object p1, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsSelectorList:Landroidx/recyclerview/widget/RecyclerView;

    .line 224
    .line 225
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    if-eqz p1, :cond_9

    .line 230
    .line 231
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsListState:Landroid/os/Parcelable;

    .line 232
    .line 233
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 234
    .line 235
    .line 236
    :cond_9
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsListState:Landroid/os/Parcelable;

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    iget-object p0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsSelectorList:Landroidx/recyclerview/widget/RecyclerView;

    .line 243
    .line 244
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 245
    .line 246
    .line 247
    :goto_4
    return-object v2

    .line 248
    nop

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

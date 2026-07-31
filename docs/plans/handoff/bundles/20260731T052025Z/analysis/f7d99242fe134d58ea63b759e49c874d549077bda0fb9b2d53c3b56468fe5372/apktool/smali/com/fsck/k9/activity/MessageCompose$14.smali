.class public final Lcom/fsck/k9/activity/MessageCompose$14;
.super Landroid/os/Handler;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/activity/MessageCompose;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/fsck/k9/activity/MessageCompose$14;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$14;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Looper;I)V
    .locals 0

    .line 10
    iput p3, p0, Lcom/fsck/k9/activity/MessageCompose$14;->$r8$classId:I

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$14;->this$0:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/MessageCompose$14;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget p1, p1, Landroid/os/Message;->what:I

    .line 9
    .line 10
    if-eq p1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose$14;->this$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 18
    .line 19
    iget-object p1, p1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    new-instance v0, Landroidx/preference/PreferenceGroupAdapter;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->onAttached()V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void

    .line 37
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 38
    .line 39
    if-eq v0, v2, :cond_2

    .line 40
    .line 41
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose$14;->this$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 48
    .line 49
    :cond_3
    iget-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 50
    .line 51
    monitor-enter v0

    .line 52
    :try_start_0
    iget-object p1, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-gtz p1, :cond_4

    .line 59
    .line 60
    monitor-exit v0

    .line 61
    :goto_1
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_4

    .line 64
    :cond_4
    new-array v2, p1, [Landroidx/compose/ui/platform/WeakCache;

    .line 65
    .line 66
    iget-object v3, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 74
    .line 75
    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    move v0, v1

    .line 78
    :goto_2
    if-ge v0, p1, :cond_3

    .line 79
    .line 80
    aget-object v3, v2, v0

    .line 81
    .line 82
    iget-object v4, v3, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v4, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    move v5, v1

    .line 91
    :goto_3
    if-ge v5, v4, :cond_6

    .line 92
    .line 93
    iget-object v6, v3, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v6, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    check-cast v6, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    .line 102
    .line 103
    iget-boolean v7, v6, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    .line 104
    .line 105
    if-nez v7, :cond_5

    .line 106
    .line 107
    iget-object v6, v6, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    .line 108
    .line 109
    iget-object v7, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 110
    .line 111
    iget-object v8, v3, Landroidx/compose/ui/platform/WeakCache;->values:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v8, Landroid/content/Intent;

    .line 114
    .line 115
    invoke-virtual {v6, v7, v8}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 116
    .line 117
    .line 118
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    throw p0

    .line 126
    :pswitch_1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$14;->this$0:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v0, Lcom/fsck/k9/activity/MessageCompose;

    .line 129
    .line 130
    iget v3, p1, Landroid/os/Message;->what:I

    .line 131
    .line 132
    if-eq v3, v2, :cond_a

    .line 133
    .line 134
    const/4 v4, 0x2

    .line 135
    if-eq v3, v4, :cond_9

    .line 136
    .line 137
    const/4 v1, 0x4

    .line 138
    if-eq v3, v1, :cond_8

    .line 139
    .line 140
    const/4 v1, 0x5

    .line 141
    if-eq v3, v1, :cond_7

    .line 142
    .line 143
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 144
    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_7
    const p0, 0x7f120443

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 159
    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_8
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p0, Ljava/lang/Long;

    .line 165
    .line 166
    iput-object p0, v0, Lcom/fsck/k9/activity/MessageCompose;->draftMessageId:Ljava/lang/Long;

    .line 167
    .line 168
    const p0, 0x7f12045b

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 180
    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_9
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 184
    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_a
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 188
    .line 189
    .line 190
    :goto_5
    return-void

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

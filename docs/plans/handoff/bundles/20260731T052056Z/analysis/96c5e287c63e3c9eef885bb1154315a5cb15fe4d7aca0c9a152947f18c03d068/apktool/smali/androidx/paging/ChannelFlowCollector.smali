.class public final Landroidx/paging/ChannelFlowCollector;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final channel:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 13
    iput p1, p0, Landroidx/paging/ChannelFlowCollector;->$r8$classId:I

    iput-object p2, p0, Landroidx/paging/ChannelFlowCollector;->channel:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/channels/SendChannel;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/paging/ChannelFlowCollector;->$r8$classId:I

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/paging/ChannelFlowCollector;->channel:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method private final emit$org$wikipedia$notifications$NotificationActivity$onCreate$7$1$1(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lorg/wikipedia/util/Resource;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/paging/ChannelFlowCollector;->channel:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/wikipedia/notifications/NotificationActivity;

    .line 6
    .line 7
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Success;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const-string v1, "binding"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/16 v3, 0x8

    .line 14
    .line 15
    if-eqz p2, :cond_5

    .line 16
    .line 17
    check-cast p1, Lorg/wikipedia/util/Resource$Success;

    .line 18
    .line 19
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lkotlin/Pair;

    .line 22
    .line 23
    iget-object p2, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p2, Ljava/util/List;

    .line 26
    .line 27
    iget-object p1, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    sget v4, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 36
    .line 37
    iget-object v4, p0, Lorg/wikipedia/notifications/NotificationActivity;->notificationContainerList:Ljava/util/ArrayList;

    .line 38
    .line 39
    iget-object v5, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 40
    .line 41
    if-eqz v5, :cond_4

    .line 42
    .line 43
    iget-object v5, v5, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeImage:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v5, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 46
    .line 47
    invoke-virtual {v5, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v5, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 51
    .line 52
    if-eqz v5, :cond_3

    .line 53
    .line 54
    iget-object v5, v5, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v5, Landroid/widget/ProgressBar;

    .line 57
    .line 58
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-object v5, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 62
    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    iget-object v5, v5, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemImage:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v5, Lorg/wikipedia/views/WikiErrorView;

    .line 68
    .line 69
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    iget-object v3, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 73
    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    iget-object v3, v3, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    .line 80
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 84
    .line 85
    if-eqz v3, :cond_0

    .line 86
    .line 87
    iget-object v1, v3, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    iput-boolean p1, p0, Lorg/wikipedia/notifications/NotificationActivity;->fromContinuation:Z

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lorg/wikipedia/notifications/NotificationActivity;->postprocessAndDisplay(Ljava/lang/Integer;)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v0

    .line 111
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v0

    .line 119
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :cond_5
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Error;

    .line 128
    .line 129
    if-eqz p2, :cond_d

    .line 130
    .line 131
    check-cast p1, Lorg/wikipedia/util/Resource$Error;

    .line 132
    .line 133
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 134
    .line 135
    sget p2, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 136
    .line 137
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 141
    .line 142
    if-eqz p2, :cond_c

    .line 143
    .line 144
    iget-object p2, p2, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeImage:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p2, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 147
    .line 148
    invoke-virtual {p2, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 149
    .line 150
    .line 151
    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 152
    .line 153
    if-eqz p2, :cond_b

    .line 154
    .line 155
    iget-object p2, p2, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p2, Landroid/widget/ProgressBar;

    .line 158
    .line 159
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 163
    .line 164
    if-eqz p2, :cond_a

    .line 165
    .line 166
    iget-object p2, p2, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 169
    .line 170
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 174
    .line 175
    if-eqz p2, :cond_9

    .line 176
    .line 177
    iget-object p2, p2, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTitle:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast p2, Landroid/widget/LinearLayout;

    .line 180
    .line 181
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 185
    .line 186
    if-eqz p2, :cond_8

    .line 187
    .line 188
    iget-object p2, p2, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast p2, Landroid/widget/LinearLayout;

    .line 191
    .line 192
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 196
    .line 197
    if-eqz p2, :cond_7

    .line 198
    .line 199
    iget-object p2, p2, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemImage:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast p2, Lorg/wikipedia/views/WikiErrorView;

    .line 202
    .line 203
    sget v3, Lorg/wikipedia/views/WikiErrorView;->$r8$clinit:I

    .line 204
    .line 205
    invoke-virtual {p2, p1, v0}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 206
    .line 207
    .line 208
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 209
    .line 210
    if-eqz p0, :cond_6

    .line 211
    .line 212
    iget-object p0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemImage:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast p0, Lorg/wikipedia/views/WikiErrorView;

    .line 215
    .line 216
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw v0

    .line 224
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v0

    .line 228
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v0

    .line 232
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v0

    .line 236
    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw v0

    .line 240
    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw v0

    .line 244
    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw v0

    .line 248
    :cond_d
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 249
    .line 250
    return-object p0
.end method

.method private final emit$org$wikipedia$page$linkpreview$LinkPreviewDialog$onCreateView$4$1$1(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/paging/ChannelFlowCollector;->channel:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 6
    .line 7
    instance-of p2, p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Loading;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewProgress:Landroid/widget/ProgressBar;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_7

    .line 23
    .line 24
    :cond_0
    instance-of p2, p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Error;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    const/16 v2, 0x8

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    check-cast p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Error;

    .line 32
    .line 33
    iget-object p1, p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Error;->throwable:Ljava/lang/Throwable;

    .line 34
    .line 35
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object p2, p2, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewTitle:Landroid/widget/TextView;

    .line 44
    .line 45
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    iget-object v3, v3, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 52
    .line 53
    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget-object p2, p2, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->dialogLinkPreviewContainer:Landroid/widget/LinearLayout;

    .line 70
    .line 71
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 72
    .line 73
    .line 74
    iget-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget-object p2, p2, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->dialogLinkPreviewContainer:Landroid/widget/LinearLayout;

    .line 80
    .line 81
    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 82
    .line 83
    .line 84
    iget-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    iget-object p2, p2, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewProgress:Landroid/widget/ProgressBar;

    .line 90
    .line 91
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    iget-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    iget-object p2, p2, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->dialogLinkPreviewContentContainer:Landroid/widget/LinearLayout;

    .line 100
    .line 101
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    iget-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    iget-object p2, p2, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->dialogLinkPreviewErrorContainer:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    .line 110
    .line 111
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    iget-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    iget-object p2, p2, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->dialogLinkPreviewErrorContainer:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    .line 120
    .line 121
    invoke-virtual {p2, p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->setCallback(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;)V

    .line 122
    .line 123
    .line 124
    iget-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    iget-object p2, p2, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->dialogLinkPreviewErrorContainer:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    .line 130
    .line 131
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v0, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 136
    .line 137
    invoke-virtual {p2, p1, v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 138
    .line 139
    .line 140
    sget-object p2, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->Companion:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType$Companion;

    .line 141
    .line 142
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object v0, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 147
    .line 148
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-static {p1, v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType$Companion;->get(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iget-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    .line 156
    .line 157
    if-eqz p2, :cond_14

    .line 158
    .line 159
    iget-object v0, p2, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 160
    .line 161
    iget-object v3, v0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v3, Landroid/widget/Button;

    .line 164
    .line 165
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    .line 167
    .line 168
    iget-object v0, v0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v0, Landroid/widget/Button;

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->getButtonText()I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {p2, v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->setPrimaryButtonText(Ljava/lang/CharSequence;)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->dialogLinkPreviewErrorContainer:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    .line 196
    .line 197
    invoke-virtual {p1, v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->buttonAction(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;)Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {p2, v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->setCallback(Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;)V

    .line 202
    .line 203
    .line 204
    sget-object p2, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->OFFLINE:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 205
    .line 206
    if-eq p1, p2, :cond_14

    .line 207
    .line 208
    iget-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    iget-object p1, p1, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewToolbar:Landroid/widget/LinearLayout;

    .line 214
    .line 215
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    .line 217
    .line 218
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 219
    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    iget-object p0, p0, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewOverflowButton:Landroid/widget/ImageView;

    .line 224
    .line 225
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_7

    .line 229
    .line 230
    :cond_1
    instance-of p2, p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Content;

    .line 231
    .line 232
    const/4 v3, 0x2

    .line 233
    if-eqz p2, :cond_10

    .line 234
    .line 235
    check-cast p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Content;

    .line 236
    .line 237
    iget-object p1, p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Content;->data:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 238
    .line 239
    new-instance p2, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent;

    .line 240
    .line 241
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    iget-object v4, v4, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 246
    .line 247
    iget-object v4, v4, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 248
    .line 249
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    iget v5, p1, Lorg/wikipedia/dataclient/page/PageSummary;->pageId:I

    .line 254
    .line 255
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    iget-object v6, v6, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->historyEntry:Lorg/wikipedia/history/HistoryEntry;

    .line 260
    .line 261
    iget v6, v6, Lorg/wikipedia/history/HistoryEntry;->source:I

    .line 262
    .line 263
    invoke-direct {p2, v4, v5, v6}, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent;-><init>(Ljava/lang/String;II)V

    .line 264
    .line 265
    .line 266
    iput-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->articleLinkPreviewInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent;

    .line 267
    .line 268
    sget-object v4, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 269
    .line 270
    new-instance v5, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;

    .line 271
    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 273
    .line 274
    .line 275
    move-result-wide v6

    .line 276
    iget-wide v8, p2, Lorg/wikipedia/analytics/eventplatform/TimedEvent;->startTime:J

    .line 277
    .line 278
    sub-long/2addr v6, v8

    .line 279
    long-to-int v7, v6

    .line 280
    iget-object v10, p2, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent;->wikiDb:Ljava/lang/String;

    .line 281
    .line 282
    iget v8, p2, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent;->pageId:I

    .line 283
    .line 284
    iget v6, p2, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent;->source:I

    .line 285
    .line 286
    const-string v9, "linkclick"

    .line 287
    .line 288
    invoke-direct/range {v5 .. v10}, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-static {v5}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 292
    .line 293
    .line 294
    iget-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 295
    .line 296
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    iget-object p2, p2, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewTitle:Landroid/widget/TextView;

    .line 300
    .line 301
    sget-object v4, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 302
    .line 303
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 315
    .line 316
    .line 317
    move-result-object p2

    .line 318
    iget-boolean p2, p2, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->fromPlaces:Z

    .line 319
    .line 320
    if-eqz p2, :cond_2

    .line 321
    .line 322
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 323
    .line 324
    .line 325
    move-result-object p2

    .line 326
    iget-object p2, p2, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->location:Landroid/location/Location;

    .line 327
    .line 328
    if-eqz p2, :cond_2

    .line 329
    .line 330
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    iget-object v4, v4, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->lastKnownLocation:Landroid/location/Location;

    .line 335
    .line 336
    if-eqz v4, :cond_2

    .line 337
    .line 338
    iget-object v5, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 339
    .line 340
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    iget-object v5, v5, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewDistance:Landroid/widget/TextView;

    .line 344
    .line 345
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 346
    .line 347
    .line 348
    iget-object v5, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 349
    .line 350
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    iget-object v5, v5, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewDistance:Landroid/widget/TextView;

    .line 354
    .line 355
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    invoke-static {p2, v4, v6}, Lorg/wikipedia/util/GeoUtil;->getDistanceWithUnit(Landroid/location/Location;Landroid/location/Location;Ljava/util/Locale;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object p2

    .line 366
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    .line 368
    .line 369
    :cond_2
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 370
    .line 371
    .line 372
    move-result-object p2

    .line 373
    iget-object p2, p2, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 374
    .line 375
    iget-object p2, p2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 376
    .line 377
    iget-object v4, p1, Lorg/wikipedia/dataclient/page/PageSummary;->extractHtml:Ljava/lang/String;

    .line 378
    .line 379
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    invoke-virtual {p1, p2}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 383
    .line 384
    .line 385
    move-result-object p2

    .line 386
    iget-object v5, p1, Lorg/wikipedia/dataclient/page/PageSummary;->namespace:Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;

    .line 387
    .line 388
    iget-object p1, p1, Lorg/wikipedia/dataclient/page/PageSummary;->type:Ljava/lang/String;

    .line 389
    .line 390
    const-string v6, "disambiguation"

    .line 391
    .line 392
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result p1

    .line 396
    if-eqz p1, :cond_3

    .line 397
    .line 398
    const v6, 0x7f12033c

    .line 399
    .line 400
    .line 401
    invoke-static {v6, p2}, Lorg/jsoup/nodes/NodeUtils;->getString(ILorg/wikipedia/page/PageTitle;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v6

    .line 405
    const-string v7, "<p>"

    .line 406
    .line 407
    const-string v8, "</p>"

    .line 408
    .line 409
    invoke-static {v7, v6, v8, v4}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    :cond_3
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 414
    .line 415
    .line 416
    move-result-object v6

    .line 417
    sget-object v7, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 418
    .line 419
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isImageDownloadEnabled()Z

    .line 420
    .line 421
    .line 422
    move-result v7

    .line 423
    if-eqz v7, :cond_4

    .line 424
    .line 425
    iget-object v7, v6, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 426
    .line 427
    invoke-virtual {v7}, Lorg/wikipedia/page/PageTitle;->isFilePage()Z

    .line 428
    .line 429
    .line 430
    move-result v7

    .line 431
    if-nez v7, :cond_4

    .line 432
    .line 433
    invoke-static {v6}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 434
    .line 435
    .line 436
    move-result-object v7

    .line 437
    sget-object v8, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 438
    .line 439
    new-instance v9, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 440
    .line 441
    const/16 v10, 0x17

    .line 442
    .line 443
    invoke-direct {v9, v8, v10}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 444
    .line 445
    .line 446
    new-instance v8, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;

    .line 447
    .line 448
    invoke-direct {v8, v6, v1, v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 449
    .line 450
    .line 451
    invoke-static {v7, v9, v1, v8, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 452
    .line 453
    .line 454
    goto :goto_0

    .line 455
    :cond_4
    iget-object v3, v6, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 456
    .line 457
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 458
    .line 459
    .line 460
    sget-object v6, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Completed;->INSTANCE:Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Completed;

    .line 461
    .line 462
    invoke-virtual {v3, v1, v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    :goto_0
    if-eqz v4, :cond_5

    .line 466
    .line 467
    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    if-eqz v3, :cond_6

    .line 472
    .line 473
    :cond_5
    if-eqz v5, :cond_6

    .line 474
    .line 475
    iget v3, v5, Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;->id:I

    .line 476
    .line 477
    sget-object v5, Lorg/wikipedia/page/Namespace;->MAIN:Lorg/wikipedia/page/Namespace;

    .line 478
    .line 479
    invoke-virtual {v5}, Lorg/wikipedia/page/Namespace;->code()I

    .line 480
    .line 481
    .line 482
    move-result v5

    .line 483
    if-ne v3, v5, :cond_6

    .line 484
    .line 485
    const/4 v3, 0x1

    .line 486
    goto :goto_1

    .line 487
    :cond_6
    move v3, v0

    .line 488
    :goto_1
    iget-object v5, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 489
    .line 490
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    .line 492
    .line 493
    iget-object v5, v5, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewEditButton:Lcom/google/android/material/button/MaterialButton;

    .line 494
    .line 495
    if-eqz v3, :cond_7

    .line 496
    .line 497
    move v6, v0

    .line 498
    goto :goto_2

    .line 499
    :cond_7
    move v6, v2

    .line 500
    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 501
    .line 502
    .line 503
    iget-object v5, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 504
    .line 505
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 506
    .line 507
    .line 508
    iget-object v5, v5, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewThumbnailGallery:Lorg/wikipedia/gallery/GalleryThumbnailScrollView;

    .line 509
    .line 510
    if-nez v3, :cond_8

    .line 511
    .line 512
    move v2, v0

    .line 513
    :cond_8
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 514
    .line 515
    .line 516
    if-eqz v3, :cond_9

    .line 517
    .line 518
    const v2, 0x7f12033d

    .line 519
    .line 520
    .line 521
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    const-string v3, "<i>"

    .line 526
    .line 527
    const-string v4, "</i>"

    .line 528
    .line 529
    invoke-static {v3, v2, v4}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    :cond_9
    iget-object v2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 534
    .line 535
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 536
    .line 537
    .line 538
    iget-object v2, v2, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewExtract:Landroid/widget/TextView;

    .line 539
    .line 540
    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    .line 546
    .line 547
    iget-object p2, p2, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 548
    .line 549
    if-eqz p2, :cond_a

    .line 550
    .line 551
    iget-object v2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 552
    .line 553
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    iget-object v2, v2, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewThumbnail:Landroid/widget/ImageView;

    .line 557
    .line 558
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 559
    .line 560
    .line 561
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 562
    .line 563
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 564
    .line 565
    .line 566
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewThumbnail:Landroid/widget/ImageView;

    .line 567
    .line 568
    const/16 v2, 0x1c

    .line 569
    .line 570
    invoke-static {v0, p2, v1, v2}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 571
    .line 572
    .line 573
    :cond_a
    iget-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    .line 574
    .line 575
    if-eqz p2, :cond_14

    .line 576
    .line 577
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    iget-boolean v0, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->fromPlaces:Z

    .line 582
    .line 583
    if-nez v0, :cond_e

    .line 584
    .line 585
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    iget-object v1, v1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 594
    .line 595
    if-eqz p1, :cond_b

    .line 596
    .line 597
    const p0, 0x7f1200aa

    .line 598
    .line 599
    .line 600
    goto :goto_4

    .line 601
    :cond_b
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 602
    .line 603
    .line 604
    move-result-object p1

    .line 605
    iget-object p1, p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 606
    .line 607
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 608
    .line 609
    .line 610
    move-result-object p1

    .line 611
    sget-object v2, Lorg/wikipedia/page/Namespace;->TALK:Lorg/wikipedia/page/Namespace;

    .line 612
    .line 613
    if-eq p1, v2, :cond_d

    .line 614
    .line 615
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 616
    .line 617
    .line 618
    move-result-object p0

    .line 619
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 620
    .line 621
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 622
    .line 623
    .line 624
    move-result-object p0

    .line 625
    sget-object p1, Lorg/wikipedia/page/Namespace;->USER_TALK:Lorg/wikipedia/page/Namespace;

    .line 626
    .line 627
    if-ne p0, p1, :cond_c

    .line 628
    .line 629
    goto :goto_3

    .line 630
    :cond_c
    const p0, 0x7f1200a9

    .line 631
    .line 632
    .line 633
    goto :goto_4

    .line 634
    :cond_d
    :goto_3
    const p0, 0x7f1200ab

    .line 635
    .line 636
    .line 637
    :goto_4
    invoke-static {v0, v1, p0}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;I)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object p0

    .line 641
    invoke-virtual {p2, p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->setPrimaryButtonText(Ljava/lang/CharSequence;)V

    .line 642
    .line 643
    .line 644
    goto/16 :goto_7

    .line 645
    .line 646
    :cond_e
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 647
    .line 648
    .line 649
    move-result-object p1

    .line 650
    iget-boolean p1, p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->fromPlaces:Z

    .line 651
    .line 652
    if-eqz p1, :cond_14

    .line 653
    .line 654
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 655
    .line 656
    .line 657
    move-result-object p1

    .line 658
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    iget-object v0, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 663
    .line 664
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 665
    .line 666
    .line 667
    move-result-object p0

    .line 668
    iget-boolean p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->isInReadingList:Z

    .line 669
    .line 670
    if-eqz p0, :cond_f

    .line 671
    .line 672
    const p0, 0x7f12033a

    .line 673
    .line 674
    .line 675
    goto :goto_5

    .line 676
    :cond_f
    const p0, 0x7f120339

    .line 677
    .line 678
    .line 679
    :goto_5
    invoke-static {p1, v0, p0}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;I)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object p0

    .line 683
    invoke-virtual {p2, p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->setSecondaryButtonText(Ljava/lang/CharSequence;)V

    .line 684
    .line 685
    .line 686
    goto/16 :goto_7

    .line 687
    .line 688
    :cond_10
    instance-of p2, p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Gallery;

    .line 689
    .line 690
    if-eqz p2, :cond_11

    .line 691
    .line 692
    check-cast p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Gallery;

    .line 693
    .line 694
    iget-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 695
    .line 696
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 697
    .line 698
    .line 699
    iget-object p2, p2, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewThumbnailGallery:Lorg/wikipedia/gallery/GalleryThumbnailScrollView;

    .line 700
    .line 701
    iget-object p1, p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Gallery;->data:Ljava/util/List;

    .line 702
    .line 703
    invoke-virtual {p2, p1}, Lorg/wikipedia/gallery/GalleryThumbnailScrollView;->setGalleryList(Ljava/util/List;)V

    .line 704
    .line 705
    .line 706
    iget-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 707
    .line 708
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 709
    .line 710
    .line 711
    iget-object p1, p1, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewThumbnailGallery:Lorg/wikipedia/gallery/GalleryThumbnailScrollView;

    .line 712
    .line 713
    iget-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->galleryViewListener:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda3;

    .line 714
    .line 715
    invoke-virtual {p1, p2}, Lorg/wikipedia/gallery/GalleryThumbnailScrollView;->setListener(Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;)V

    .line 716
    .line 717
    .line 718
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 719
    .line 720
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 721
    .line 722
    .line 723
    iget-object p0, p0, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewProgress:Landroid/widget/ProgressBar;

    .line 724
    .line 725
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 726
    .line 727
    .line 728
    goto :goto_7

    .line 729
    :cond_11
    instance-of p2, p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Watch;

    .line 730
    .line 731
    if-eqz p2, :cond_13

    .line 732
    .line 733
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 734
    .line 735
    .line 736
    move-result-object p2

    .line 737
    check-cast p2, Lorg/wikipedia/activity/BaseActivity;

    .line 738
    .line 739
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 744
    .line 745
    .line 746
    move-result-object v1

    .line 747
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    iget-object v2, v2, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 752
    .line 753
    check-cast p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Watch;

    .line 754
    .line 755
    iget-object p1, p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Watch;->data:Lkotlin/Pair;

    .line 756
    .line 757
    iget-object v4, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 758
    .line 759
    check-cast v4, Ljava/lang/Boolean;

    .line 760
    .line 761
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 762
    .line 763
    .line 764
    move-result v4

    .line 765
    iget-object p1, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 766
    .line 767
    check-cast p1, Ljava/lang/String;

    .line 768
    .line 769
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 770
    .line 771
    .line 772
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 773
    .line 774
    .line 775
    if-nez v4, :cond_12

    .line 776
    .line 777
    invoke-static {p2, p1, v0}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 778
    .line 779
    .line 780
    goto :goto_6

    .line 781
    :cond_12
    const/16 v4, 0xc

    .line 782
    .line 783
    invoke-static {p2, p1, v0, v4}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 784
    .line 785
    .line 786
    move-result-object p1

    .line 787
    new-instance p2, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda3;

    .line 788
    .line 789
    invoke-direct {p2, v3, v1, v2}, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 790
    .line 791
    .line 792
    const v0, 0x7f120a36

    .line 793
    .line 794
    .line 795
    invoke-virtual {p1, v0, p2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 799
    .line 800
    .line 801
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 802
    .line 803
    .line 804
    goto :goto_7

    .line 805
    :cond_13
    instance-of p1, p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Completed;

    .line 806
    .line 807
    if-eqz p1, :cond_15

    .line 808
    .line 809
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 810
    .line 811
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 812
    .line 813
    .line 814
    iget-object p0, p0, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewProgress:Landroid/widget/ProgressBar;

    .line 815
    .line 816
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 817
    .line 818
    .line 819
    :cond_14
    :goto_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 820
    .line 821
    return-object p0

    .line 822
    :cond_15
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 823
    .line 824
    .line 825
    return-object v1
.end method

.method private final emit$org$wikipedia$suggestededits$SuggestedEditsCardsFragment$onViewCreated$3$1$1(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lorg/wikipedia/util/Resource;

    .line 2
    .line 3
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Success;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/paging/ChannelFlowCollector;->channel:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 10
    .line 11
    check-cast p1, Lorg/wikipedia/util/Resource$Success;

    .line 12
    .line 13
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Ljava/util/List;

    .line 16
    .line 17
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object p2, p2, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p2, Landroid/widget/LinearLayout;

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object p2, p2, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p2, Landroid/widget/Spinner;

    .line 40
    .line 41
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const v2, 0x7f0c0306

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-object p2, p2, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p2, Landroid/widget/Spinner;

    .line 64
    .line 65
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p1, Landroid/widget/Spinner;

    .line 85
    .line 86
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 87
    .line 88
    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->langToCode:Ljava/lang/String;

    .line 101
    .line 102
    check-cast p2, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p1, Landroid/widget/Spinner;

    .line 119
    .line 120
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;

    .line 121
    .line 122
    const/4 v0, 0x1

    .line 123
    invoke-direct {p2, p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast p1, Landroid/widget/Spinner;

    .line 137
    .line 138
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;

    .line 139
    .line 140
    const/4 v0, 0x0

    .line 141
    invoke-direct {p2, p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast p1, Landroid/widget/ImageView;

    .line 155
    .line 156
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$$ExternalSyntheticLambda0;

    .line 157
    .line 158
    const/4 v0, 0x3

    .line 159
    invoke-direct {p2, p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    .line 164
    .line 165
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 166
    .line 167
    return-object p0
.end method

.method private final emit$org$wikipedia$suggestededits$SuggestedEditsCardsItemFragment$onViewCreated$5$1$1$1(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lorg/wikipedia/util/Resource;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/paging/ChannelFlowCollector;->channel:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    .line 6
    .line 7
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Loading;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerGamesHubContainer:Landroid/view/View;

    .line 20
    .line 21
    check-cast p1, Landroid/widget/ProgressBar;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->rootView:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    check-cast p1, Landroid/widget/ScrollView;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountAvatar:Landroid/view/View;

    .line 44
    .line 45
    check-cast p0, Lorg/wikipedia/views/WikiErrorView;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_13

    .line 51
    .line 52
    :cond_0
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Success;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    if-eqz p2, :cond_1c

    .line 56
    .line 57
    check-cast p1, Lorg/wikipedia/util/Resource$Success;

    .line 58
    .line 59
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Lkotlin/Pair;

    .line 62
    .line 63
    iget-object p2, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p2, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 66
    .line 67
    iput-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 68
    .line 69
    iget-object p1, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 72
    .line 73
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->targetSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 74
    .line 75
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountAvatar:Landroid/view/View;

    .line 81
    .line 82
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->rootView:Landroid/widget/FrameLayout;

    .line 93
    .line 94
    check-cast p1, Landroid/widget/ScrollView;

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerGamesHubContainer:Landroid/view/View;

    .line 105
    .line 106
    check-cast p1, Landroid/widget/ProgressBar;

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerPlacesContainer:Landroid/view/View;

    .line 117
    .line 118
    check-cast p1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 119
    .line 120
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 121
    .line 122
    if-eqz p2, :cond_1

    .line 123
    .line 124
    iget-object p2, p2, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->displayTitle:Ljava/lang/String;

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    move-object p2, v2

    .line 128
    :goto_0
    const/4 v3, 0x1

    .line 129
    new-array v4, v3, [Ljava/lang/Object;

    .line 130
    .line 131
    aput-object p2, v4, v1

    .line 132
    .line 133
    const p2, 0x7f1202ee

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerPlacesContainer:Landroid/view/View;

    .line 149
    .line 150
    check-cast p1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    if-eqz p2, :cond_3

    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    instance-of p2, p2, Ljava/lang/Integer;

    .line 163
    .line 164
    if-nez p2, :cond_2

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    check-cast p2, Ljava/lang/Integer;

    .line 175
    .line 176
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    goto :goto_2

    .line 181
    :cond_3
    :goto_1
    move p2, v1

    .line 182
    :goto_2
    or-int/2addr p2, v3

    .line 183
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 199
    .line 200
    sget-object p2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 201
    .line 202
    if-eq p1, p2, :cond_13

    .line 203
    .line 204
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 213
    .line 214
    sget-object p2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 215
    .line 216
    if-ne p1, p2, :cond_4

    .line 217
    .line 218
    goto/16 :goto_d

    .line 219
    .line 220
    :cond_4
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerLoginButton:Landroid/widget/TextView;

    .line 226
    .line 227
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 228
    .line 229
    .line 230
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 231
    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerDonateContainer:Landroid/widget/LinearLayout;

    .line 236
    .line 237
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    .line 239
    .line 240
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->addedContribution:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 243
    .line 244
    .line 245
    move-result p2

    .line 246
    if-nez p2, :cond_5

    .line 247
    .line 248
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 249
    .line 250
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    iget-object p1, p1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->description:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 259
    .line 260
    .line 261
    move-result p2

    .line 262
    if-nez p2, :cond_5

    .line 263
    .line 264
    const p1, 0x7f1208ed

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    :cond_5
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 275
    .line 276
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    iget-object p2, p2, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerSettingsContainer:Landroid/view/View;

    .line 280
    .line 281
    check-cast p2, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 282
    .line 283
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 284
    .line 285
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    .line 299
    .line 300
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 301
    .line 302
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerWatchlistContainer:Landroid/view/View;

    .line 306
    .line 307
    check-cast p1, Lorg/wikipedia/views/ImageDetailHorizontalView;

    .line 308
    .line 309
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 310
    .line 311
    if-eqz p2, :cond_6

    .line 312
    .line 313
    iget-object p2, p2, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->displayTitle:Ljava/lang/String;

    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_6
    move-object p2, v2

    .line 317
    :goto_3
    const-string v1, ""

    .line 318
    .line 319
    if-nez p2, :cond_7

    .line 320
    .line 321
    move-object p2, v1

    .line 322
    :cond_7
    const/16 v3, 0x3a

    .line 323
    .line 324
    invoke-static {p2, v3}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    invoke-virtual {p1, p2}, Lorg/wikipedia/views/ImageDetailHorizontalView;->setDetailText(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 332
    .line 333
    if-eqz p1, :cond_8

    .line 334
    .line 335
    iget-object p1, p1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->user:Ljava/lang/String;

    .line 336
    .line 337
    goto :goto_4

    .line 338
    :cond_8
    move-object p1, v2

    .line 339
    :goto_4
    if-eqz p1, :cond_b

    .line 340
    .line 341
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    if-nez p1, :cond_9

    .line 346
    .line 347
    goto :goto_6

    .line 348
    :cond_9
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 349
    .line 350
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTalkContainer:Landroid/view/ViewGroup;

    .line 354
    .line 355
    check-cast p1, Lorg/wikipedia/views/ImageDetailHorizontalView;

    .line 356
    .line 357
    const p2, 0x7f1208bd

    .line 358
    .line 359
    .line 360
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p2

    .line 364
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    invoke-virtual {p1, p2}, Lorg/wikipedia/views/ImageDetailHorizontalView;->setTitleText(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 371
    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTalkContainer:Landroid/view/ViewGroup;

    .line 376
    .line 377
    check-cast p1, Lorg/wikipedia/views/ImageDetailHorizontalView;

    .line 378
    .line 379
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 380
    .line 381
    if-eqz p2, :cond_a

    .line 382
    .line 383
    iget-object p2, p2, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->user:Ljava/lang/String;

    .line 384
    .line 385
    goto :goto_5

    .line 386
    :cond_a
    move-object p2, v2

    .line 387
    :goto_5
    invoke-virtual {p1, p2}, Lorg/wikipedia/views/ImageDetailHorizontalView;->setDetailText(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    goto :goto_9

    .line 391
    :cond_b
    :goto_6
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 392
    .line 393
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 394
    .line 395
    .line 396
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTalkContainer:Landroid/view/ViewGroup;

    .line 397
    .line 398
    check-cast p1, Lorg/wikipedia/views/ImageDetailHorizontalView;

    .line 399
    .line 400
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 401
    .line 402
    if-eqz p2, :cond_d

    .line 403
    .line 404
    iget-object p2, p2, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 405
    .line 406
    if-eqz p2, :cond_d

    .line 407
    .line 408
    iget-object p2, p2, Lorg/wikipedia/gallery/ExtMetadata;->artist:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 409
    .line 410
    if-eqz p2, :cond_c

    .line 411
    .line 412
    iget-object p2, p2, Lorg/wikipedia/gallery/ExtMetadata$Values;->value:Ljava/lang/String;

    .line 413
    .line 414
    goto :goto_7

    .line 415
    :cond_c
    move-object p2, v2

    .line 416
    :goto_7
    if-nez p2, :cond_e

    .line 417
    .line 418
    move-object p2, v1

    .line 419
    goto :goto_8

    .line 420
    :cond_d
    move-object p2, v2

    .line 421
    :cond_e
    :goto_8
    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p2

    .line 425
    invoke-virtual {p1, p2}, Lorg/wikipedia/views/ImageDetailHorizontalView;->setTitleText(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    :goto_9
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 429
    .line 430
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    .line 432
    .line 433
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTempAccountContainer:Landroid/view/View;

    .line 434
    .line 435
    check-cast p1, Lorg/wikipedia/views/ImageDetailHorizontalView;

    .line 436
    .line 437
    sget-object p2, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 438
    .line 439
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 440
    .line 441
    .line 442
    move-result-object p2

    .line 443
    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 444
    .line 445
    if-eqz v3, :cond_f

    .line 446
    .line 447
    iget-object v3, v3, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->timestamp:Ljava/lang/String;

    .line 448
    .line 449
    goto :goto_a

    .line 450
    :cond_f
    move-object v3, v2

    .line 451
    :goto_a
    if-nez v3, :cond_10

    .line 452
    .line 453
    move-object v3, v1

    .line 454
    :cond_10
    invoke-static {p2, v3}, Lorg/wikipedia/util/DateUtil;->getTimeAndDateString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object p2

    .line 458
    invoke-virtual {p1, p2}, Lorg/wikipedia/views/ImageDetailHorizontalView;->setDetailText(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 462
    .line 463
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 464
    .line 465
    .line 466
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->tempAccountName:Landroid/view/View;

    .line 467
    .line 468
    check-cast p1, Lorg/wikipedia/views/ImageDetailHorizontalView;

    .line 469
    .line 470
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 471
    .line 472
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    iget-object p2, p2, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 476
    .line 477
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    .line 479
    .line 480
    iget-object p2, p2, Lorg/wikipedia/gallery/ExtMetadata;->credit:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 481
    .line 482
    if-eqz p2, :cond_11

    .line 483
    .line 484
    iget-object p2, p2, Lorg/wikipedia/gallery/ExtMetadata$Values;->value:Ljava/lang/String;

    .line 485
    .line 486
    goto :goto_b

    .line 487
    :cond_11
    move-object p2, v2

    .line 488
    :goto_b
    if-nez p2, :cond_12

    .line 489
    .line 490
    goto :goto_c

    .line 491
    :cond_12
    move-object v1, p2

    .line 492
    :goto_c
    invoke-virtual {p1, v1}, Lorg/wikipedia/views/ImageDetailHorizontalView;->setDetailText(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 496
    .line 497
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    .line 499
    .line 500
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerYearInReviewContainer:Landroid/view/ViewGroup;

    .line 501
    .line 502
    check-cast p1, Lorg/wikipedia/views/ImageDetailHorizontalView;

    .line 503
    .line 504
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 505
    .line 506
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 507
    .line 508
    .line 509
    iget-object p2, p2, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 510
    .line 511
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    .line 513
    .line 514
    invoke-virtual {p2}, Lorg/wikipedia/gallery/ExtMetadata;->licenseShortName()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object p2

    .line 518
    invoke-virtual {p1, p2}, Lorg/wikipedia/views/ImageDetailHorizontalView;->setDetailText(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 522
    .line 523
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 524
    .line 525
    .line 526
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerPlacesContainer:Landroid/view/View;

    .line 527
    .line 528
    check-cast p1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 529
    .line 530
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 531
    .line 532
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 533
    .line 534
    .line 535
    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPreferredSizeThumbnailUrl()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object p2

    .line 539
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 540
    .line 541
    .line 542
    move-result-object p2

    .line 543
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    invoke-virtual {p1, p2, v2}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;Lorg/wikipedia/views/imageservice/ImageLoadListener;)V

    .line 547
    .line 548
    .line 549
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 550
    .line 551
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 552
    .line 553
    .line 554
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountName:Landroid/widget/TextView;

    .line 555
    .line 556
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 557
    .line 558
    .line 559
    goto/16 :goto_13

    .line 560
    .line 561
    :cond_13
    :goto_d
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 562
    .line 563
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 564
    .line 565
    .line 566
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerLoginButton:Landroid/widget/TextView;

    .line 567
    .line 568
    sget-object p2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 569
    .line 570
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 571
    .line 572
    if-eqz p2, :cond_14

    .line 573
    .line 574
    iget-object p2, p2, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->displayTitle:Ljava/lang/String;

    .line 575
    .line 576
    goto :goto_e

    .line 577
    :cond_14
    move-object p2, v2

    .line 578
    :goto_e
    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 579
    .line 580
    .line 581
    move-result-object p2

    .line 582
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    .line 584
    .line 585
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 586
    .line 587
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 588
    .line 589
    .line 590
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerLoginButton:Landroid/widget/TextView;

    .line 591
    .line 592
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 596
    .line 597
    .line 598
    move-result-object p1

    .line 599
    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 600
    .line 601
    .line 602
    move-result-object p1

    .line 603
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 604
    .line 605
    sget-object p2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 606
    .line 607
    if-ne p1, p2, :cond_17

    .line 608
    .line 609
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 610
    .line 611
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 612
    .line 613
    .line 614
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerDonateContainer:Landroid/widget/LinearLayout;

    .line 615
    .line 616
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 617
    .line 618
    .line 619
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 620
    .line 621
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 622
    .line 623
    .line 624
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerSettingsContainer:Landroid/view/View;

    .line 625
    .line 626
    check-cast p1, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 627
    .line 628
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->addedContribution:Ljava/lang/String;

    .line 629
    .line 630
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 631
    .line 632
    .line 633
    move-result v3

    .line 634
    if-nez v3, :cond_16

    .line 635
    .line 636
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 637
    .line 638
    if-eqz p2, :cond_15

    .line 639
    .line 640
    iget-object p2, p2, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->description:Ljava/lang/String;

    .line 641
    .line 642
    goto :goto_f

    .line 643
    :cond_15
    move-object p2, v2

    .line 644
    :cond_16
    :goto_f
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    .line 646
    .line 647
    :cond_17
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 648
    .line 649
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 650
    .line 651
    .line 652
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerEditContainer:Landroid/view/ViewGroup;

    .line 653
    .line 654
    check-cast p1, Landroid/widget/LinearLayout;

    .line 655
    .line 656
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 657
    .line 658
    .line 659
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 660
    .line 661
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 662
    .line 663
    .line 664
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountName:Landroid/widget/TextView;

    .line 665
    .line 666
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 667
    .line 668
    if-eqz p2, :cond_18

    .line 669
    .line 670
    iget-object p2, p2, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->extractHtml:Ljava/lang/String;

    .line 671
    .line 672
    goto :goto_10

    .line 673
    :cond_18
    move-object p2, v2

    .line 674
    :goto_10
    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object p2

    .line 678
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    .line 680
    .line 681
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 682
    .line 683
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 684
    .line 685
    .line 686
    iget-object p1, p1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->thumbnailUrl:Ljava/lang/String;

    .line 687
    .line 688
    if-eqz p1, :cond_1b

    .line 689
    .line 690
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 691
    .line 692
    .line 693
    move-result p1

    .line 694
    if-eqz p1, :cond_19

    .line 695
    .line 696
    goto :goto_12

    .line 697
    :cond_19
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 698
    .line 699
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 700
    .line 701
    .line 702
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerContribsContainer:Landroid/widget/LinearLayout;

    .line 703
    .line 704
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 705
    .line 706
    .line 707
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 708
    .line 709
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 710
    .line 711
    .line 712
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerPlacesContainer:Landroid/view/View;

    .line 713
    .line 714
    check-cast p1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 715
    .line 716
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 717
    .line 718
    if-eqz p0, :cond_1a

    .line 719
    .line 720
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPreferredSizeThumbnailUrl()Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object p0

    .line 724
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 725
    .line 726
    .line 727
    move-result-object p0

    .line 728
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 729
    .line 730
    .line 731
    goto :goto_11

    .line 732
    :cond_1a
    move-object p0, v2

    .line 733
    :goto_11
    invoke-virtual {p1, p0, v2}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;Lorg/wikipedia/views/imageservice/ImageLoadListener;)V

    .line 734
    .line 735
    .line 736
    goto :goto_13

    .line 737
    :cond_1b
    :goto_12
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 738
    .line 739
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 740
    .line 741
    .line 742
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerContribsContainer:Landroid/widget/LinearLayout;

    .line 743
    .line 744
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 745
    .line 746
    .line 747
    goto :goto_13

    .line 748
    :cond_1c
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Error;

    .line 749
    .line 750
    if-eqz p2, :cond_1d

    .line 751
    .line 752
    check-cast p1, Lorg/wikipedia/util/Resource$Error;

    .line 753
    .line 754
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 755
    .line 756
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 757
    .line 758
    .line 759
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 760
    .line 761
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 762
    .line 763
    .line 764
    iget-object p2, p2, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountAvatar:Landroid/view/View;

    .line 765
    .line 766
    check-cast p2, Lorg/wikipedia/views/WikiErrorView;

    .line 767
    .line 768
    sget v3, Lorg/wikipedia/views/WikiErrorView;->$r8$clinit:I

    .line 769
    .line 770
    invoke-virtual {p2, p1, v2}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 771
    .line 772
    .line 773
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 774
    .line 775
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 776
    .line 777
    .line 778
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountAvatar:Landroid/view/View;

    .line 779
    .line 780
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 781
    .line 782
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 783
    .line 784
    .line 785
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 786
    .line 787
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 788
    .line 789
    .line 790
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerGamesHubContainer:Landroid/view/View;

    .line 791
    .line 792
    check-cast p1, Landroid/widget/ProgressBar;

    .line 793
    .line 794
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 795
    .line 796
    .line 797
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 798
    .line 799
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 800
    .line 801
    .line 802
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->rootView:Landroid/widget/FrameLayout;

    .line 803
    .line 804
    check-cast p0, Landroid/widget/ScrollView;

    .line 805
    .line 806
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 807
    .line 808
    .line 809
    :cond_1d
    :goto_13
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 810
    .line 811
    return-object p0
.end method

.method private final emit$org$wikipedia$suggestededits$SuggestedEditsImageRecsFragment$onViewCreated$13$1$1(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lorg/wikipedia/util/Resource;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/paging/ChannelFlowCollector;->channel:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;

    .line 6
    .line 7
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Loading;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingMapListenerList:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Landroid/widget/ProgressBar;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartRenderingMapListenerList:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingFrameWithStatsList:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraDidChangeListenerList:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onCanRemoveUnusedStyleImageListenerList:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Landroid/widget/LinearLayout;

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_0
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Success;

    .line 77
    .line 78
    const/16 v2, 0xf

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    if-eqz p2, :cond_b

    .line 82
    .line 83
    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->isLoaded:Z

    .line 85
    .line 86
    iget-boolean p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->isVisibleToUser:Z

    .line 87
    .line 88
    if-eqz p2, :cond_1

    .line 89
    .line 90
    iget-boolean p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->isImpressionLogged:Z

    .line 91
    .line 92
    if-nez p2, :cond_1

    .line 93
    .line 94
    sget-object p2, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 95
    .line 96
    invoke-static {p0, v3, v3, v3, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getActionStringForAnalytics$default(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    iget-object v4, v4, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    const-string p2, "recommendedimagetoolbar"

    .line 110
    .line 111
    invoke-static {p2, v2, v4}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logImpression(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iput-boolean p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->isImpressionLogged:Z

    .line 115
    .line 116
    :cond_1
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    iget-object p2, p2, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingMapListenerList:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p2, Landroid/widget/ProgressBar;

    .line 124
    .line 125
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 129
    .line 130
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    iget-object p2, p2, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartRenderingMapListenerList:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast p2, Lorg/wikipedia/views/WikiErrorView;

    .line 136
    .line 137
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 141
    .line 142
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    iget-object p2, p2, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingFrameWithStatsList:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 148
    .line 149
    invoke-virtual {p2, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 153
    .line 154
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    iget-object p2, p2, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraDidChangeListenerList:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast p2, Landroidx/core/widget/NestedScrollView;

    .line 160
    .line 161
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 165
    .line 166
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    iget-object p2, p2, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingFrameList:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast p2, Landroid/widget/TextView;

    .line 172
    .line 173
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 174
    .line 175
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    iget-object v2, v2, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->summary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 180
    .line 181
    const-string v4, "summary"

    .line 182
    .line 183
    if-eqz v2, :cond_a

    .line 184
    .line 185
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 197
    .line 198
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    iget-object p2, p2, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartLoadingMapListenerList:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast p2, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 204
    .line 205
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    iget-object v2, v2, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->summary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 210
    .line 211
    if-eqz v2, :cond_9

    .line 212
    .line 213
    iget-object v2, v2, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    iget-object p2, p2, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFailLoadingMapListenerList:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast p2, Landroid/widget/TextView;

    .line 226
    .line 227
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    iget-object v2, v2, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->summary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 232
    .line 233
    if-eqz v2, :cond_8

    .line 234
    .line 235
    iget-object v2, v2, Lorg/wikipedia/dataclient/page/PageSummary;->extractHtml:Ljava/lang/String;

    .line 236
    .line 237
    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    .line 247
    .line 248
    sget-object p2, Lorg/wikipedia/util/ImageUrlUtil;->WIDTH_IN_IMAGE_URL_REGEX:Ljava/util/regex/Pattern;

    .line 249
    .line 250
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getRecommendation()Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    iget-object p2, p2, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;->images:Ljava/util/List;

    .line 259
    .line 260
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    check-cast p2, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;

    .line 265
    .line 266
    iget-object p2, p2, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->metadata:Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;

    .line 267
    .line 268
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    iget-object p2, p2, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->thumbUrl:Ljava/lang/String;

    .line 272
    .line 273
    const/16 v2, 0x3c0

    .line 274
    .line 275
    invoke-static {v2, p2}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(ILjava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    const-string v2, "//"

    .line 280
    .line 281
    invoke-static {p2, v2, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-eqz v2, :cond_2

    .line 286
    .line 287
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 288
    .line 289
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->scheme()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    const-string v4, ":"

    .line 302
    .line 303
    invoke-static {v2, v4, p2}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    :cond_2
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    iget-object v2, v2, Lorg/maplibre/android/maps/MapChangeReceiver;->onGlyphsLoadedList:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast v2, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 315
    .line 316
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    new-instance v4, Lorg/wikipedia/media/AvPlayer;

    .line 324
    .line 325
    const/16 v5, 0x16

    .line 326
    .line 327
    invoke-direct {v4, v5, p0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, p2, v4}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;Lorg/wikipedia/views/imageservice/ImageLoadListener;)V

    .line 331
    .line 332
    .line 333
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 334
    .line 335
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    iget-object p2, p2, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidBecomeIdleListenerList:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast p2, Landroid/widget/TextView;

    .line 341
    .line 342
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getRecommendation()Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    iget-object v2, v2, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;->images:Ljava/util/List;

    .line 351
    .line 352
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    check-cast v2, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;

    .line 357
    .line 358
    iget-object v2, v2, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->metadata:Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;

    .line 359
    .line 360
    if-eqz v2, :cond_3

    .line 361
    .line 362
    iget-object v2, v2, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->caption:Ljava/lang/String;

    .line 363
    .line 364
    goto :goto_0

    .line 365
    :cond_3
    move-object v2, v3

    .line 366
    :goto_0
    if-nez v2, :cond_4

    .line 367
    .line 368
    const-string v2, ""

    .line 369
    .line 370
    :cond_4
    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    .line 380
    .line 381
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 382
    .line 383
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    .line 385
    .line 386
    iget-object p2, p2, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidBecomeIdleListenerList:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast p2, Landroid/widget/TextView;

    .line 389
    .line 390
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 391
    .line 392
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    iget-object v2, v2, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidBecomeIdleListenerList:Ljava/lang/Object;

    .line 396
    .line 397
    check-cast v2, Landroid/widget/TextView;

    .line 398
    .line 399
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    .line 405
    .line 406
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    if-lez v2, :cond_5

    .line 411
    .line 412
    move v0, v1

    .line 413
    :cond_5
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 414
    .line 415
    .line 416
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 417
    .line 418
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    .line 420
    .line 421
    iget-object p2, p2, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartRenderingFrameList:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast p2, Landroid/widget/Space;

    .line 424
    .line 425
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda12;

    .line 426
    .line 427
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda12;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;I)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 431
    .line 432
    .line 433
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 434
    .line 435
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    iget-object p2, p2, Lorg/maplibre/android/maps/MapChangeReceiver;->onSourceChangedListenerList:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast p2, Landroid/widget/TextView;

    .line 441
    .line 442
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getRecommendation()Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    iget-object v0, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;->images:Ljava/util/List;

    .line 451
    .line 452
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    check-cast v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;

    .line 457
    .line 458
    iget-object v0, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->displayFilename:Ljava/lang/String;

    .line 459
    .line 460
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    .line 462
    .line 463
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 464
    .line 465
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    iget-object p2, p2, Lorg/maplibre/android/maps/MapChangeReceiver;->onShaderCompileFailedList:Ljava/lang/Object;

    .line 469
    .line 470
    check-cast p2, Landroid/widget/TextView;

    .line 471
    .line 472
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getRecommendation()Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    iget-object v0, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;->images:Ljava/util/List;

    .line 481
    .line 482
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    check-cast v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;

    .line 487
    .line 488
    iget-object v0, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->metadata:Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;

    .line 489
    .line 490
    if-eqz v0, :cond_6

    .line 491
    .line 492
    iget-object v3, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->reason:Ljava/lang/String;

    .line 493
    .line 494
    :cond_6
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    .line 496
    .line 497
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 498
    .line 499
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    .line 501
    .line 502
    iget-object p2, p2, Lorg/maplibre/android/maps/MapChangeReceiver;->onPostCompileShaderList:Ljava/lang/Object;

    .line 503
    .line 504
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 505
    .line 506
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 510
    .line 511
    .line 512
    move-result-object p2

    .line 513
    invoke-virtual {p2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 514
    .line 515
    .line 516
    sget-object p2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 517
    .line 518
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getSuggestedEditsImageRecsOnboardingShown()Z

    .line 519
    .line 520
    .line 521
    move-result p2

    .line 522
    if-nez p2, :cond_7

    .line 523
    .line 524
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 525
    .line 526
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 527
    .line 528
    .line 529
    iget-object p2, p2, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraWillChangeListenerList:Ljava/lang/Object;

    .line 530
    .line 531
    check-cast p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 532
    .line 533
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda12;

    .line 534
    .line 535
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda12;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;I)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 539
    .line 540
    .line 541
    :cond_7
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->callback()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;

    .line 542
    .line 543
    .line 544
    move-result-object p0

    .line 545
    invoke-interface {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;->updateActionButton()V

    .line 546
    .line 547
    .line 548
    goto/16 :goto_1

    .line 549
    .line 550
    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    throw v3

    .line 554
    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    throw v3

    .line 558
    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    throw v3

    .line 562
    :cond_b
    instance-of p2, p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$Depleted;

    .line 563
    .line 564
    if-eqz p2, :cond_c

    .line 565
    .line 566
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 567
    .line 568
    invoke-static {p0, v3, v3, v3, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getActionStringForAnalytics$default(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object p2

    .line 572
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    iget-object v2, v2, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 577
    .line 578
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 579
    .line 580
    .line 581
    const-string p1, "nosuggestions_dialog"

    .line 582
    .line 583
    invoke-static {p1, p2, v2}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logImpression(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 587
    .line 588
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 589
    .line 590
    .line 591
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingFrameWithStatsList:Ljava/lang/Object;

    .line 592
    .line 593
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 594
    .line 595
    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 596
    .line 597
    .line 598
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 599
    .line 600
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    .line 602
    .line 603
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraDidChangeListenerList:Ljava/lang/Object;

    .line 604
    .line 605
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 606
    .line 607
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 608
    .line 609
    .line 610
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 611
    .line 612
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 613
    .line 614
    .line 615
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingMapListenerList:Ljava/lang/Object;

    .line 616
    .line 617
    check-cast p1, Landroid/widget/ProgressBar;

    .line 618
    .line 619
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 620
    .line 621
    .line 622
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 623
    .line 624
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 625
    .line 626
    .line 627
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartRenderingMapListenerList:Ljava/lang/Object;

    .line 628
    .line 629
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 630
    .line 631
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 632
    .line 633
    .line 634
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 635
    .line 636
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 637
    .line 638
    .line 639
    iget-object p0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onCanRemoveUnusedStyleImageListenerList:Ljava/lang/Object;

    .line 640
    .line 641
    check-cast p0, Landroid/widget/LinearLayout;

    .line 642
    .line 643
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 644
    .line 645
    .line 646
    goto :goto_1

    .line 647
    :cond_c
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Error;

    .line 648
    .line 649
    if-eqz p2, :cond_d

    .line 650
    .line 651
    check-cast p1, Lorg/wikipedia/util/Resource$Error;

    .line 652
    .line 653
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 654
    .line 655
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 656
    .line 657
    .line 658
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 659
    .line 660
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 661
    .line 662
    .line 663
    iget-object p2, p2, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingMapListenerList:Ljava/lang/Object;

    .line 664
    .line 665
    check-cast p2, Landroid/widget/ProgressBar;

    .line 666
    .line 667
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 668
    .line 669
    .line 670
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 671
    .line 672
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 673
    .line 674
    .line 675
    iget-object p2, p2, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingFrameWithStatsList:Ljava/lang/Object;

    .line 676
    .line 677
    check-cast p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 678
    .line 679
    invoke-virtual {p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 680
    .line 681
    .line 682
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 683
    .line 684
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 685
    .line 686
    .line 687
    iget-object p2, p2, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraDidChangeListenerList:Ljava/lang/Object;

    .line 688
    .line 689
    check-cast p2, Landroidx/core/widget/NestedScrollView;

    .line 690
    .line 691
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 692
    .line 693
    .line 694
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 695
    .line 696
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 697
    .line 698
    .line 699
    iget-object p2, p2, Lorg/maplibre/android/maps/MapChangeReceiver;->onCanRemoveUnusedStyleImageListenerList:Ljava/lang/Object;

    .line 700
    .line 701
    check-cast p2, Landroid/widget/LinearLayout;

    .line 702
    .line 703
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 704
    .line 705
    .line 706
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 707
    .line 708
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 709
    .line 710
    .line 711
    iget-object p2, p2, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartRenderingMapListenerList:Ljava/lang/Object;

    .line 712
    .line 713
    check-cast p2, Lorg/wikipedia/views/WikiErrorView;

    .line 714
    .line 715
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 716
    .line 717
    .line 718
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 719
    .line 720
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 721
    .line 722
    .line 723
    iget-object p0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartRenderingMapListenerList:Ljava/lang/Object;

    .line 724
    .line 725
    check-cast p0, Lorg/wikipedia/views/WikiErrorView;

    .line 726
    .line 727
    invoke-virtual {p0, p1, v3}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 728
    .line 729
    .line 730
    :cond_d
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 731
    .line 732
    return-object p0
.end method

.method private final emit$org$wikipedia$suggestededits$SuggestedEditsTasksFragment$onViewCreated$4$1$1$1(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lorg/wikipedia/util/Resource;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/paging/ChannelFlowCollector;->channel:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    .line 6
    .line 7
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Loading;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, Landroidx/core/widget/NestedScrollView;

    .line 32
    .line 33
    const/16 p1, 0x8

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Success;

    .line 40
    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->setFinalUIState()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    instance-of p2, p1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$RequireLogin;

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->clearContents(Z)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Lorg/wikipedia/views/MessageCardView;

    .line 63
    .line 64
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda1;

    .line 65
    .line 66
    const/4 v1, 0x5

    .line 67
    invoke-direct {p2, p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lorg/wikipedia/views/MessageCardView;->setRequiredLogin(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p0, Lorg/wikipedia/views/MessageCardView;

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Error;

    .line 87
    .line 88
    if-eqz p2, :cond_3

    .line 89
    .line 90
    check-cast p1, Lorg/wikipedia/util/Resource$Error;

    .line 91
    .line 92
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 93
    .line 94
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->clearContents(Z)V

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    iget-object p2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p2, Lorg/wikipedia/views/WikiErrorView;

    .line 105
    .line 106
    sget v1, Lorg/wikipedia/views/WikiErrorView;->$r8$clinit:I

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    invoke-virtual {p2, p1, v1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p0, Lorg/wikipedia/views/WikiErrorView;

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 125
    .line 126
    return-object p0
.end method

.method private final emit$org$wikipedia$usercontrib$UserInformationDialog$setupDialog$1$1$1(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lorg/wikipedia/util/Resource;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/paging/ChannelFlowCollector;->channel:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/wikipedia/usercontrib/UserInformationDialog;

    .line 6
    .line 7
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Loading;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lorg/wikipedia/usercontrib/UserInformationDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Landroid/widget/LinearLayout;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lorg/wikipedia/usercontrib/UserInformationDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Landroid/widget/ProgressBar;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserInformationDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Lorg/wikipedia/views/WikiErrorView;

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Success;

    .line 52
    .line 53
    if-eqz p2, :cond_1

    .line 54
    .line 55
    check-cast p1, Lorg/wikipedia/util/Resource$Success;

    .line 56
    .line 57
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Lkotlin/Pair;

    .line 60
    .line 61
    iget-object p2, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p2, Ljava/lang/String;

    .line 64
    .line 65
    iget-object p1, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p1, Ljava/util/Date;

    .line 68
    .line 69
    invoke-virtual {p0, p2, p1}, Lorg/wikipedia/usercontrib/UserInformationDialog;->onSuccess(Ljava/lang/String;Ljava/util/Date;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Error;

    .line 74
    .line 75
    if-eqz p2, :cond_2

    .line 76
    .line 77
    check-cast p1, Lorg/wikipedia/util/Resource$Error;

    .line 78
    .line 79
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 80
    .line 81
    iget-object p2, p0, Lorg/wikipedia/usercontrib/UserInformationDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iget-object p2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p2, Landroid/widget/LinearLayout;

    .line 89
    .line 90
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    iget-object p2, p0, Lorg/wikipedia/usercontrib/UserInformationDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    iget-object p2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p2, Landroid/widget/ProgressBar;

    .line 101
    .line 102
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    iget-object p2, p0, Lorg/wikipedia/usercontrib/UserInformationDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iget-object p2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p2, Lorg/wikipedia/views/WikiErrorView;

    .line 113
    .line 114
    sget v1, Lorg/wikipedia/views/WikiErrorView;->$r8$clinit:I

    .line 115
    .line 116
    const/4 v1, 0x0

    .line 117
    invoke-virtual {p2, p1, v1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 118
    .line 119
    .line 120
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserInformationDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast p0, Lorg/wikipedia/views/WikiErrorView;

    .line 128
    .line 129
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 133
    .line 134
    return-object p0
.end method

.method private final emit$org$wikipedia$watchlist$WatchlistExpiryDialog$onViewCreated$1$1$1(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lorg/wikipedia/util/Resource;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/paging/ChannelFlowCollector;->channel:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/wikipedia/watchlist/WatchlistExpiryDialog;

    .line 6
    .line 7
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Success;

    .line 8
    .line 9
    if-eqz p2, :cond_5

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p1, Lorg/wikipedia/util/Resource$Success;

    .line 16
    .line 17
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Lorg/wikipedia/watchlist/WatchlistExpiryDialogViewModel$WatchlistExpiryChangeSuccess;

    .line 20
    .line 21
    iget-object v0, p1, Lorg/wikipedia/watchlist/WatchlistExpiryDialogViewModel$WatchlistExpiryChangeSuccess;->message:Ljava/lang/String;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const/16 v2, 0xc

    .line 25
    .line 26
    invoke-static {p2, v0, v1, v2}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 31
    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-class v1, Lorg/wikipedia/watchlist/WatchlistExpiryDialog$Callback;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object p2, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 52
    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_1

    .line 60
    .line 61
    iget-object p2, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    iget-object p2, p2, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 69
    .line 70
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    iget-object p2, p2, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-eqz p2, :cond_3

    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    const/4 p2, 0x0

    .line 99
    :goto_0
    check-cast p2, Lorg/wikipedia/watchlist/WatchlistExpiryDialog$Callback;

    .line 100
    .line 101
    if-eqz p2, :cond_4

    .line 102
    .line 103
    iget-object p1, p1, Lorg/wikipedia/watchlist/WatchlistExpiryDialogViewModel$WatchlistExpiryChangeSuccess;->expiry:Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 104
    .line 105
    invoke-interface {p2, p1}, Lorg/wikipedia/watchlist/WatchlistExpiryDialog$Callback;->onExpiryChanged(Lorg/wikipedia/watchlist/WatchlistExpiry;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Error;

    .line 113
    .line 114
    if-eqz p2, :cond_6

    .line 115
    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    check-cast p1, Lorg/wikipedia/util/Resource$Error;

    .line 121
    .line 122
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 123
    .line 124
    invoke-static {p2, p1}, Lorg/wikipedia/util/ShareUtil;->showError$default(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 128
    .line 129
    .line 130
    :cond_6
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 131
    .line 132
    return-object p0
.end method


# virtual methods
.method public emit(Landroidx/paging/PageEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1;

    iget v1, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1;

    invoke-direct {v0, p0, p2}, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1;-><init>(Landroidx/paging/ChannelFlowCollector;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1;->result:Ljava/lang/Object;

    .line 3140
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 3141
    iget v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3142
    :try_start_1
    iget-object p0, p0, Landroidx/paging/ChannelFlowCollector;->channel:Ljava/lang/Object;

    check-cast p0, Landroidx/paging/SimpleProducerScopeImpl;

    iput v3, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1;->label:I

    .line 3143
    iget-object p0, p0, Landroidx/paging/SimpleProducerScopeImpl;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 3144
    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v1, :cond_3

    return-object v1

    .line 3145
    :catch_0
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Landroidx/paging/ChannelFlowCollector;->$r8$classId:I

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const-string v5, ""

    .line 11
    .line 12
    const/16 v6, 0x8

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    .line 17
    const/4 v9, 0x1

    .line 18
    iget-object v10, v0, Landroidx/paging/ChannelFlowCollector;->channel:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v11, 0x0

    .line 21
    packed-switch v3, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    move-object v0, v1

    .line 25
    check-cast v0, Lorg/wikipedia/util/Resource;

    .line 26
    .line 27
    check-cast v10, Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 28
    .line 29
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Loading;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v0, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->_binding:Lcom/hcaptcha/sdk/HCaptcha;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Landroid/widget/LinearLayout;

    .line 41
    .line 42
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->_binding:Lcom/hcaptcha/sdk/HCaptcha;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptcha;->handler:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    .line 54
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->_binding:Lcom/hcaptcha/sdk/HCaptcha;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 65
    .line 66
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->_binding:Lcom/hcaptcha/sdk/HCaptcha;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptcha;->onOpenListeners:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Landroid/widget/ProgressBar;

    .line 77
    .line 78
    iget-object v1, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->_binding:Lcom/hcaptcha/sdk/HCaptcha;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    iget-object v1, v1, Lcom/hcaptcha/sdk/HCaptcha;->activity:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 86
    .line 87
    iget-boolean v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 88
    .line 89
    if-nez v1, :cond_0

    .line 90
    .line 91
    move v6, v11

    .line 92
    :cond_0
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_3

    .line 96
    .line 97
    :cond_1
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Success;

    .line 98
    .line 99
    if-eqz v1, :cond_8

    .line 100
    .line 101
    iget-object v0, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->_binding:Lcom/hcaptcha/sdk/HCaptcha;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 109
    .line 110
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    iget-object v0, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->_binding:Lcom/hcaptcha/sdk/HCaptcha;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptcha;->activity:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v0, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 121
    .line 122
    invoke-virtual {v0, v11}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 123
    .line 124
    .line 125
    iget-object v0, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->_binding:Lcom/hcaptcha/sdk/HCaptcha;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptcha;->onOpenListeners:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v0, Landroid/widget/ProgressBar;

    .line 133
    .line 134
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    iget-object v0, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->_binding:Lcom/hcaptcha/sdk/HCaptcha;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptcha;->handler:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 145
    .line 146
    new-instance v1, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

    .line 147
    .line 148
    invoke-virtual {v10}, Lorg/wikipedia/watchlist/WatchlistFragment;->getViewModel()Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    iget-object v2, v2, Lorg/wikipedia/watchlist/WatchlistViewModel;->finalList:Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-direct {v1, v10, v2}, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;-><init>(Lorg/wikipedia/watchlist/WatchlistFragment;Ljava/util/List;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v10}, Lorg/wikipedia/watchlist/WatchlistFragment;->getViewModel()Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iget-object v1, v1, Lorg/wikipedia/watchlist/WatchlistViewModel;->finalList:Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    sget-object v2, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 175
    .line 176
    new-instance v2, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;

    .line 177
    .line 178
    invoke-static {v0, v7}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->getReadableScreenName(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const-string v3, "Watchlist.itemCount:"

    .line 183
    .line 184
    const-string v4, ".displayed"

    .line 185
    .line 186
    invoke-static {v1, v3, v4}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-direct {v2, v0, v1}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v2}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->_binding:Lcom/hcaptcha/sdk/HCaptcha;

    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptcha;->handler:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 204
    .line 205
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v10}, Lorg/wikipedia/watchlist/WatchlistFragment;->getViewModel()Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    iget-object v0, v0, Lorg/wikipedia/watchlist/WatchlistViewModel;->finalList:Ljava/util/ArrayList;

    .line 213
    .line 214
    new-instance v1, Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_3

    .line 228
    .line 229
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-nez v3, :cond_2

    .line 238
    .line 239
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    goto :goto_0

    .line 243
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    iget-object v1, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->_binding:Lcom/hcaptcha/sdk/HCaptcha;

    .line 248
    .line 249
    if-eqz v0, :cond_7

    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    iget-object v0, v1, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast v0, Landroid/widget/LinearLayout;

    .line 257
    .line 258
    iget-object v1, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 259
    .line 260
    if-nez v1, :cond_4

    .line 261
    .line 262
    invoke-virtual {v10}, Lorg/wikipedia/watchlist/WatchlistFragment;->getViewModel()Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 263
    .line 264
    .line 265
    invoke-static {}, Lorg/wikipedia/watchlist/WatchlistViewModel;->filtersCount()I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-nez v1, :cond_4

    .line 270
    .line 271
    move v1, v11

    .line 272
    goto :goto_1

    .line 273
    :cond_4
    move v1, v6

    .line 274
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .line 276
    .line 277
    iget-object v0, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->_binding:Lcom/hcaptcha/sdk/HCaptcha;

    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptcha;->captchaVerifier:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v0, Landroid/widget/LinearLayout;

    .line 285
    .line 286
    invoke-virtual {v10}, Lorg/wikipedia/watchlist/WatchlistFragment;->getViewModel()Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 287
    .line 288
    .line 289
    invoke-static {}, Lorg/wikipedia/watchlist/WatchlistViewModel;->filtersCount()I

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-eqz v1, :cond_5

    .line 294
    .line 295
    move v1, v11

    .line 296
    goto :goto_2

    .line 297
    :cond_5
    move v1, v6

    .line 298
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    .line 300
    .line 301
    iget-object v0, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->_binding:Lcom/hcaptcha/sdk/HCaptcha;

    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptcha;->internalConfig:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast v0, Landroid/widget/TextView;

    .line 309
    .line 310
    iget-object v1, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 311
    .line 312
    if-eqz v1, :cond_6

    .line 313
    .line 314
    move v6, v11

    .line 315
    :cond_6
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {v10}, Lorg/wikipedia/watchlist/WatchlistFragment;->getViewModel()Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 323
    .line 324
    .line 325
    invoke-static {}, Lorg/wikipedia/watchlist/WatchlistViewModel;->filtersCount()I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    invoke-virtual {v10}, Lorg/wikipedia/watchlist/WatchlistFragment;->getViewModel()Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 330
    .line 331
    .line 332
    invoke-static {}, Lorg/wikipedia/watchlist/WatchlistViewModel;->filtersCount()I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    new-array v3, v9, [Ljava/lang/Object;

    .line 341
    .line 342
    aput-object v2, v3, v11

    .line 343
    .line 344
    const v2, 0x7f10003d

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    .line 353
    .line 354
    iget-object v1, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->_binding:Lcom/hcaptcha/sdk/HCaptcha;

    .line 355
    .line 356
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    .line 358
    .line 359
    iget-object v1, v1, Lcom/hcaptcha/sdk/HCaptcha;->onSuccessListeners:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast v1, Landroid/widget/TextView;

    .line 362
    .line 363
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 364
    .line 365
    const-string v2, "<a href=\"#\">"

    .line 366
    .line 367
    const-string v3, "</a>"

    .line 368
    .line 369
    invoke-static {v2, v0, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    new-array v2, v9, [Ljava/lang/Object;

    .line 374
    .line 375
    aput-object v0, v2, v11

    .line 376
    .line 377
    const v0, 0x7f120a01

    .line 378
    .line 379
    .line 380
    invoke-virtual {v10, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    .line 390
    .line 391
    iget-object v0, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->_binding:Lcom/hcaptcha/sdk/HCaptcha;

    .line 392
    .line 393
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 394
    .line 395
    .line 396
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptcha;->onSuccessListeners:Ljava/lang/Object;

    .line 397
    .line 398
    check-cast v0, Landroid/widget/TextView;

    .line 399
    .line 400
    new-instance v1, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 401
    .line 402
    new-instance v2, Lorg/wikipedia/watchlist/WatchlistFragment$$ExternalSyntheticLambda0;

    .line 403
    .line 404
    invoke-direct {v2, v10}, Lorg/wikipedia/watchlist/WatchlistFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/watchlist/WatchlistFragment;)V

    .line 405
    .line 406
    .line 407
    invoke-direct {v1, v2}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 411
    .line 412
    .line 413
    goto/16 :goto_3

    .line 414
    .line 415
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    iget-object v0, v1, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 419
    .line 420
    check-cast v0, Landroid/widget/LinearLayout;

    .line 421
    .line 422
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 423
    .line 424
    .line 425
    iget-object v0, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->_binding:Lcom/hcaptcha/sdk/HCaptcha;

    .line 426
    .line 427
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    .line 429
    .line 430
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptcha;->captchaVerifier:Ljava/lang/Object;

    .line 431
    .line 432
    check-cast v0, Landroid/widget/LinearLayout;

    .line 433
    .line 434
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 435
    .line 436
    .line 437
    iget-object v0, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->_binding:Lcom/hcaptcha/sdk/HCaptcha;

    .line 438
    .line 439
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 440
    .line 441
    .line 442
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptcha;->internalConfig:Ljava/lang/Object;

    .line 443
    .line 444
    check-cast v0, Landroid/widget/TextView;

    .line 445
    .line 446
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 447
    .line 448
    .line 449
    goto :goto_3

    .line 450
    :cond_8
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Error;

    .line 451
    .line 452
    if-eqz v1, :cond_a

    .line 453
    .line 454
    check-cast v0, Lorg/wikipedia/util/Resource$Error;

    .line 455
    .line 456
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 457
    .line 458
    instance-of v1, v0, Lorg/wikipedia/dataclient/mwapi/MwNotLoggedInException;

    .line 459
    .line 460
    if-eqz v1, :cond_9

    .line 461
    .line 462
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 467
    .line 468
    .line 469
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 470
    .line 471
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 472
    .line 473
    .line 474
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->resetAfterLogOut()V

    .line 475
    .line 476
    .line 477
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 478
    .line 479
    invoke-static {v9}, Lorg/wikipedia/settings/Prefs;->setQueueLoggedOutInBackgroundDialog(Z)V

    .line 480
    .line 481
    .line 482
    new-instance v0, Lorg/wikipedia/events/LoggedOutInBackgroundEvent;

    .line 483
    .line 484
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 485
    .line 486
    .line 487
    invoke-static {v0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    goto :goto_3

    .line 491
    :cond_9
    iget-object v1, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->_binding:Lcom/hcaptcha/sdk/HCaptcha;

    .line 492
    .line 493
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 494
    .line 495
    .line 496
    iget-object v1, v1, Lcom/hcaptcha/sdk/HCaptcha;->activity:Ljava/lang/Object;

    .line 497
    .line 498
    check-cast v1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 499
    .line 500
    invoke-virtual {v1, v11}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 501
    .line 502
    .line 503
    iget-object v1, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->_binding:Lcom/hcaptcha/sdk/HCaptcha;

    .line 504
    .line 505
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 506
    .line 507
    .line 508
    iget-object v1, v1, Lcom/hcaptcha/sdk/HCaptcha;->onOpenListeners:Ljava/lang/Object;

    .line 509
    .line 510
    check-cast v1, Landroid/widget/ProgressBar;

    .line 511
    .line 512
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 513
    .line 514
    .line 515
    iget-object v1, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->_binding:Lcom/hcaptcha/sdk/HCaptcha;

    .line 516
    .line 517
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 518
    .line 519
    .line 520
    iget-object v1, v1, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 523
    .line 524
    sget v2, Lorg/wikipedia/views/WikiErrorView;->$r8$clinit:I

    .line 525
    .line 526
    invoke-virtual {v1, v0, v7}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 527
    .line 528
    .line 529
    iget-object v0, v10, Lorg/wikipedia/watchlist/WatchlistFragment;->_binding:Lcom/hcaptcha/sdk/HCaptcha;

    .line 530
    .line 531
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    iget-object v0, v0, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 535
    .line 536
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 537
    .line 538
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 539
    .line 540
    .line 541
    :cond_a
    :goto_3
    return-object v8

    .line 542
    :pswitch_0
    invoke-direct/range {p0 .. p2}, Landroidx/paging/ChannelFlowCollector;->emit$org$wikipedia$watchlist$WatchlistExpiryDialog$onViewCreated$1$1$1(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    return-object v0

    .line 547
    :pswitch_1
    invoke-direct/range {p0 .. p2}, Landroidx/paging/ChannelFlowCollector;->emit$org$wikipedia$usercontrib$UserInformationDialog$setupDialog$1$1$1(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    return-object v0

    .line 552
    :pswitch_2
    invoke-direct/range {p0 .. p2}, Landroidx/paging/ChannelFlowCollector;->emit$org$wikipedia$suggestededits$SuggestedEditsTasksFragment$onViewCreated$4$1$1$1(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    return-object v0

    .line 557
    :pswitch_3
    invoke-direct/range {p0 .. p2}, Landroidx/paging/ChannelFlowCollector;->emit$org$wikipedia$suggestededits$SuggestedEditsImageRecsFragment$onViewCreated$13$1$1(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    return-object v0

    .line 562
    :pswitch_4
    invoke-direct/range {p0 .. p2}, Landroidx/paging/ChannelFlowCollector;->emit$org$wikipedia$suggestededits$SuggestedEditsCardsItemFragment$onViewCreated$5$1$1$1(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    return-object v0

    .line 567
    :pswitch_5
    invoke-direct/range {p0 .. p2}, Landroidx/paging/ChannelFlowCollector;->emit$org$wikipedia$suggestededits$SuggestedEditsCardsFragment$onViewCreated$3$1$1(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    return-object v0

    .line 572
    :pswitch_6
    instance-of v0, v1, Lorg/wikipedia/events/NewRecommendedReadingListEvent;

    .line 573
    .line 574
    if-eqz v0, :cond_b

    .line 575
    .line 576
    check-cast v10, Landroidx/compose/runtime/MutableState;

    .line 577
    .line 578
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 579
    .line 580
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isNewRecommendedReadingListGenerated()Z

    .line 581
    .line 582
    .line 583
    move-result v0

    .line 584
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    invoke-interface {v10, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 589
    .line 590
    .line 591
    :cond_b
    return-object v8

    .line 592
    :pswitch_7
    invoke-direct/range {p0 .. p2}, Landroidx/paging/ChannelFlowCollector;->emit$org$wikipedia$page$linkpreview$LinkPreviewDialog$onCreateView$4$1$1(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    return-object v0

    .line 597
    :pswitch_8
    invoke-direct/range {p0 .. p2}, Landroidx/paging/ChannelFlowCollector;->emit$org$wikipedia$notifications$NotificationActivity$onCreate$7$1$1(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    return-object v0

    .line 602
    :pswitch_9
    move-object v0, v1

    .line 603
    check-cast v0, Lorg/wikipedia/util/Resource;

    .line 604
    .line 605
    check-cast v10, Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 606
    .line 607
    iget-object v1, v10, Lorg/wikipedia/gallery/GalleryItemFragment;->activityViewModel$delegate:Lokhttp3/Request$Builder;

    .line 608
    .line 609
    instance-of v2, v0, Lorg/wikipedia/util/Resource$Loading;

    .line 610
    .line 611
    if-eqz v2, :cond_c

    .line 612
    .line 613
    invoke-virtual {v10, v9}, Lorg/wikipedia/gallery/GalleryItemFragment;->onLoading(Z)V

    .line 614
    .line 615
    .line 616
    goto/16 :goto_a

    .line 617
    .line 618
    :cond_c
    instance-of v2, v0, Lorg/wikipedia/util/Resource$Success;

    .line 619
    .line 620
    if-eqz v2, :cond_1a

    .line 621
    .line 622
    check-cast v0, Lorg/wikipedia/util/Resource$Success;

    .line 623
    .line 624
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 625
    .line 626
    check-cast v0, Ljava/lang/Boolean;

    .line 627
    .line 628
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 629
    .line 630
    .line 631
    move-result v0

    .line 632
    const/16 v2, 0xf

    .line 633
    .line 634
    if-eqz v0, :cond_e

    .line 635
    .line 636
    iget-object v0, v10, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 637
    .line 638
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 639
    .line 640
    .line 641
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 642
    .line 643
    check-cast v0, Landroid/widget/FrameLayout;

    .line 644
    .line 645
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 646
    .line 647
    .line 648
    iget-object v0, v10, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 649
    .line 650
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 651
    .line 652
    .line 653
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 654
    .line 655
    check-cast v0, Landroid/widget/ImageView;

    .line 656
    .line 657
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 658
    .line 659
    .line 660
    iget-object v0, v10, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 661
    .line 662
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 663
    .line 664
    .line 665
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 666
    .line 667
    check-cast v0, Landroid/widget/VideoView;

    .line 668
    .line 669
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v10}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    if-eqz v0, :cond_d

    .line 677
    .line 678
    iget-object v0, v0, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 679
    .line 680
    if-eqz v0, :cond_d

    .line 681
    .line 682
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 683
    .line 684
    .line 685
    move-result v0

    .line 686
    if-lez v0, :cond_d

    .line 687
    .line 688
    iget-object v0, v10, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 689
    .line 690
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 691
    .line 692
    .line 693
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 694
    .line 695
    check-cast v0, Landroid/widget/ImageView;

    .line 696
    .line 697
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 698
    .line 699
    .line 700
    iget-object v0, v10, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 701
    .line 702
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 703
    .line 704
    .line 705
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 706
    .line 707
    check-cast v0, Landroid/widget/ImageView;

    .line 708
    .line 709
    invoke-virtual {v10}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 710
    .line 711
    .line 712
    move-result-object v1

    .line 713
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 714
    .line 715
    .line 716
    iget-object v1, v1, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 717
    .line 718
    new-instance v3, Lretrofit2/OkHttpCall$1;

    .line 719
    .line 720
    iget-object v4, v10, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 721
    .line 722
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 723
    .line 724
    .line 725
    iget-object v4, v4, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 726
    .line 727
    check-cast v4, Landroid/widget/ImageView;

    .line 728
    .line 729
    invoke-direct {v3, v2, v10, v4, v11}, Lretrofit2/OkHttpCall$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 730
    .line 731
    .line 732
    invoke-static {v0, v1, v3, v6}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 733
    .line 734
    .line 735
    goto :goto_4

    .line 736
    :cond_d
    iget-object v0, v10, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 737
    .line 738
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 739
    .line 740
    .line 741
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 742
    .line 743
    check-cast v0, Landroid/widget/ImageView;

    .line 744
    .line 745
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 746
    .line 747
    .line 748
    :goto_4
    iget-object v0, v10, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 749
    .line 750
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 751
    .line 752
    .line 753
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 754
    .line 755
    check-cast v0, Landroid/widget/ImageView;

    .line 756
    .line 757
    iget-object v1, v10, Lorg/wikipedia/gallery/GalleryItemFragment;->videoThumbnailClickListener:Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1;

    .line 758
    .line 759
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    .line 761
    .line 762
    goto/16 :goto_9

    .line 763
    .line 764
    :cond_e
    sget-object v0, Lorg/wikipedia/util/ImageUrlUtil;->WIDTH_IN_IMAGE_URL_REGEX:Ljava/util/regex/Pattern;

    .line 765
    .line 766
    invoke-virtual {v10}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 767
    .line 768
    .line 769
    move-result-object v0

    .line 770
    if-eqz v0, :cond_f

    .line 771
    .line 772
    iget-object v0, v0, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 773
    .line 774
    goto :goto_5

    .line 775
    :cond_f
    move-object v0, v7

    .line 776
    :goto_5
    if-nez v0, :cond_10

    .line 777
    .line 778
    move-object v0, v5

    .line 779
    :cond_10
    const/16 v3, 0x500

    .line 780
    .line 781
    invoke-static {v3, v0}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(ILjava/lang/String;)Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    invoke-virtual {v10}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 786
    .line 787
    .line 788
    move-result-object v3

    .line 789
    if-eqz v3, :cond_17

    .line 790
    .line 791
    iget-object v3, v3, Lorg/wikipedia/gallery/ImageInfo;->mime:Ljava/lang/String;

    .line 792
    .line 793
    if-eqz v3, :cond_17

    .line 794
    .line 795
    const-string v12, "svg"

    .line 796
    .line 797
    invoke-static {v3, v12, v11}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 798
    .line 799
    .line 800
    move-result v3

    .line 801
    if-ne v3, v9, :cond_17

    .line 802
    .line 803
    invoke-virtual {v10}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 804
    .line 805
    .line 806
    move-result-object v3

    .line 807
    if-eqz v3, :cond_17

    .line 808
    .line 809
    iget-object v3, v3, Lorg/wikipedia/gallery/ImageInfo;->plainMetadata:Ljava/util/List;

    .line 810
    .line 811
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 812
    .line 813
    .line 814
    move-result-object v3

    .line 815
    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 816
    .line 817
    .line 818
    move-result v12

    .line 819
    if-eqz v12, :cond_12

    .line 820
    .line 821
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v12

    .line 825
    move-object v13, v12

    .line 826
    check-cast v13, Lorg/wikipedia/gallery/ImageInfo$MetadataItem;

    .line 827
    .line 828
    iget-object v13, v13, Lorg/wikipedia/gallery/ImageInfo$MetadataItem;->name:Ljava/lang/String;

    .line 829
    .line 830
    const-string/jumbo v14, "translations"

    .line 831
    .line 832
    .line 833
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 834
    .line 835
    .line 836
    move-result v13

    .line 837
    if-eqz v13, :cond_11

    .line 838
    .line 839
    move-object v7, v12

    .line 840
    :cond_12
    check-cast v7, Lorg/wikipedia/gallery/ImageInfo$MetadataItem;

    .line 841
    .line 842
    if-eqz v7, :cond_13

    .line 843
    .line 844
    iget-object v3, v7, Lorg/wikipedia/gallery/ImageInfo$MetadataItem;->value:Lkotlinx/serialization/json/JsonElement;

    .line 845
    .line 846
    instance-of v7, v3, Lkotlinx/serialization/json/JsonArray;

    .line 847
    .line 848
    if-eqz v7, :cond_13

    .line 849
    .line 850
    sget-object v7, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 851
    .line 852
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 853
    .line 854
    .line 855
    new-instance v12, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 856
    .line 857
    sget-object v13, Lorg/wikipedia/gallery/ImageInfo$MetadataItem;->Companion:Lorg/wikipedia/gallery/ImageInfo$MetadataItem$Companion;

    .line 858
    .line 859
    invoke-virtual {v13}, Lorg/wikipedia/gallery/ImageInfo$MetadataItem$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 860
    .line 861
    .line 862
    move-result-object v13

    .line 863
    invoke-direct {v12, v13, v9}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 864
    .line 865
    .line 866
    invoke-virtual {v7, v12, v3}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 867
    .line 868
    .line 869
    move-result-object v3

    .line 870
    check-cast v3, Ljava/util/List;

    .line 871
    .line 872
    new-instance v7, Ljava/util/ArrayList;

    .line 873
    .line 874
    const/16 v12, 0xa

    .line 875
    .line 876
    invoke-static {v3, v12}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 877
    .line 878
    .line 879
    move-result v12

    .line 880
    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 881
    .line 882
    .line 883
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 884
    .line 885
    .line 886
    move-result-object v3

    .line 887
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 888
    .line 889
    .line 890
    move-result v12

    .line 891
    if-eqz v12, :cond_14

    .line 892
    .line 893
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object v12

    .line 897
    check-cast v12, Lorg/wikipedia/gallery/ImageInfo$MetadataItem;

    .line 898
    .line 899
    iget-object v12, v12, Lorg/wikipedia/gallery/ImageInfo$MetadataItem;->name:Ljava/lang/String;

    .line 900
    .line 901
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    .line 903
    .line 904
    goto :goto_6

    .line 905
    :cond_13
    sget-object v7, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 906
    .line 907
    :cond_14
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 908
    .line 909
    .line 910
    move-result-object v3

    .line 911
    check-cast v3, Lorg/wikipedia/gallery/GalleryViewModel;

    .line 912
    .line 913
    iget-object v3, v3, Lorg/wikipedia/gallery/GalleryViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 914
    .line 915
    iget-object v3, v3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 916
    .line 917
    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 918
    .line 919
    .line 920
    move-result v3

    .line 921
    if-ne v3, v9, :cond_17

    .line 922
    .line 923
    sget-object v3, Lorg/wikipedia/util/ImageUrlUtil;->WIDTH_IN_IMAGE_URL_REGEX:Ljava/util/regex/Pattern;

    .line 924
    .line 925
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    move-result-object v1

    .line 929
    check-cast v1, Lorg/wikipedia/gallery/GalleryViewModel;

    .line 930
    .line 931
    iget-object v1, v1, Lorg/wikipedia/gallery/GalleryViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 932
    .line 933
    iget-object v1, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 934
    .line 935
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 936
    .line 937
    .line 938
    sget-object v3, Lorg/wikipedia/util/ImageUrlUtil;->WIDTH_IN_IMAGE_URL_REGEX:Ljava/util/regex/Pattern;

    .line 939
    .line 940
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 941
    .line 942
    .line 943
    move-result-object v3

    .line 944
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 945
    .line 946
    .line 947
    move-result v7

    .line 948
    if-eqz v7, :cond_19

    .line 949
    .line 950
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v7

    .line 954
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 955
    .line 956
    .line 957
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 958
    .line 959
    .line 960
    move-result v7

    .line 961
    if-lez v7, :cond_19

    .line 962
    .line 963
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    if-nez v0, :cond_15

    .line 968
    .line 969
    move-object v0, v5

    .line 970
    :cond_15
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 971
    .line 972
    .line 973
    move-result-object v4

    .line 974
    if-nez v4, :cond_16

    .line 975
    .line 976
    goto :goto_7

    .line 977
    :cond_16
    move-object v5, v4

    .line 978
    :goto_7
    const-string v4, "lang"

    .line 979
    .line 980
    const-string v7, "-"

    .line 981
    .line 982
    const-string v12, "/"

    .line 983
    .line 984
    invoke-static {v12, v0, v4, v1, v7}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    .line 986
    .line 987
    move-result-object v0

    .line 988
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    .line 990
    .line 991
    const-string v1, "$3"

    .line 992
    .line 993
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    .line 995
    .line 996
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v0

    .line 1000
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v0

    .line 1004
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1005
    .line 1006
    .line 1007
    goto :goto_8

    .line 1008
    :cond_17
    invoke-virtual {v10}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v1

    .line 1012
    if-eqz v1, :cond_19

    .line 1013
    .line 1014
    iget-object v1, v1, Lorg/wikipedia/gallery/ImageInfo;->mime:Ljava/lang/String;

    .line 1015
    .line 1016
    if-eqz v1, :cond_19

    .line 1017
    .line 1018
    const-string v3, "gif"

    .line 1019
    .line 1020
    invoke-static {v1, v3, v11}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 1021
    .line 1022
    .line 1023
    move-result v1

    .line 1024
    if-ne v1, v9, :cond_19

    .line 1025
    .line 1026
    invoke-virtual {v10}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v1

    .line 1030
    if-eqz v1, :cond_19

    .line 1031
    .line 1032
    iget-object v1, v1, Lorg/wikipedia/gallery/ImageInfo;->originalUrl:Ljava/lang/String;

    .line 1033
    .line 1034
    if-nez v1, :cond_18

    .line 1035
    .line 1036
    goto :goto_8

    .line 1037
    :cond_18
    move-object v0, v1

    .line 1038
    :cond_19
    :goto_8
    iget-object v1, v10, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 1039
    .line 1040
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1041
    .line 1042
    .line 1043
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 1044
    .line 1045
    check-cast v1, Lio/getstream/photoview/PhotoView;

    .line 1046
    .line 1047
    const/4 v3, 0x4

    .line 1048
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v10, v9}, Lorg/wikipedia/gallery/GalleryItemFragment;->onLoading(Z)V

    .line 1052
    .line 1053
    .line 1054
    iget-object v1, v10, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 1055
    .line 1056
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1057
    .line 1058
    .line 1059
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 1060
    .line 1061
    check-cast v1, Lio/getstream/photoview/PhotoView;

    .line 1062
    .line 1063
    new-instance v3, Lretrofit2/OkHttpCall$1;

    .line 1064
    .line 1065
    iget-object v4, v10, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 1066
    .line 1067
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1068
    .line 1069
    .line 1070
    iget-object v4, v4, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 1071
    .line 1072
    check-cast v4, Lio/getstream/photoview/PhotoView;

    .line 1073
    .line 1074
    invoke-direct {v3, v2, v10, v4, v11}, Lretrofit2/OkHttpCall$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 1075
    .line 1076
    .line 1077
    invoke-static {v1, v0, v3, v6}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 1078
    .line 1079
    .line 1080
    :goto_9
    invoke-virtual {v10, v11}, Lorg/wikipedia/gallery/GalleryItemFragment;->onLoading(Z)V

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v0

    .line 1094
    check-cast v0, Lorg/wikipedia/gallery/GalleryActivity;

    .line 1095
    .line 1096
    invoke-virtual {v0, v10}, Lorg/wikipedia/gallery/GalleryActivity;->fetchGalleryDescription(Lorg/wikipedia/gallery/GalleryItemFragment;)V

    .line 1097
    .line 1098
    .line 1099
    goto :goto_a

    .line 1100
    :cond_1a
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Error;

    .line 1101
    .line 1102
    if-eqz v1, :cond_1b

    .line 1103
    .line 1104
    check-cast v0, Lorg/wikipedia/util/Resource$Error;

    .line 1105
    .line 1106
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 1107
    .line 1108
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v1

    .line 1112
    const v2, 0x7f120251

    .line 1113
    .line 1114
    .line 1115
    invoke-static {v1, v2}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 1116
    .line 1117
    .line 1118
    sget-object v1, Lorg/wikipedia/util/log/L;->LEVEL_D:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 1119
    .line 1120
    invoke-virtual {v1, v5, v0}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1121
    .line 1122
    .line 1123
    :cond_1b
    :goto_a
    return-object v8

    .line 1124
    :pswitch_a
    move-object v0, v1

    .line 1125
    check-cast v0, Lorg/wikipedia/util/Resource;

    .line 1126
    .line 1127
    check-cast v10, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    .line 1128
    .line 1129
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Loading;

    .line 1130
    .line 1131
    if-eqz v1, :cond_1c

    .line 1132
    .line 1133
    iget-object v0, v10, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 1134
    .line 1135
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1136
    .line 1137
    .line 1138
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerWatchlistContainer:Landroid/view/View;

    .line 1139
    .line 1140
    check-cast v0, Landroid/widget/ProgressBar;

    .line 1141
    .line 1142
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1143
    .line 1144
    .line 1145
    iget-object v0, v10, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 1146
    .line 1147
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1148
    .line 1149
    .line 1150
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTalkContainer:Landroid/view/ViewGroup;

    .line 1151
    .line 1152
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 1153
    .line 1154
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1155
    .line 1156
    .line 1157
    iget-object v0, v10, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 1158
    .line 1159
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1160
    .line 1161
    .line 1162
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerSettingsContainer:Landroid/view/View;

    .line 1163
    .line 1164
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 1165
    .line 1166
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1167
    .line 1168
    .line 1169
    goto/16 :goto_b

    .line 1170
    .line 1171
    :cond_1c
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Success;

    .line 1172
    .line 1173
    if-eqz v1, :cond_20

    .line 1174
    .line 1175
    check-cast v0, Lorg/wikipedia/util/Resource$Success;

    .line 1176
    .line 1177
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 1178
    .line 1179
    check-cast v0, Ljava/util/List;

    .line 1180
    .line 1181
    iget-object v1, v10, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 1182
    .line 1183
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1184
    .line 1185
    .line 1186
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerWatchlistContainer:Landroid/view/View;

    .line 1187
    .line 1188
    check-cast v1, Landroid/widget/ProgressBar;

    .line 1189
    .line 1190
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    .line 1192
    .line 1193
    iget-object v1, v10, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 1194
    .line 1195
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1196
    .line 1197
    .line 1198
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTalkContainer:Landroid/view/ViewGroup;

    .line 1199
    .line 1200
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 1201
    .line 1202
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1203
    .line 1204
    .line 1205
    iget-object v1, v10, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 1206
    .line 1207
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1208
    .line 1209
    .line 1210
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerSettingsContainer:Landroid/view/View;

    .line 1211
    .line 1212
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 1213
    .line 1214
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1215
    .line 1216
    .line 1217
    iget-object v1, v10, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 1218
    .line 1219
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1220
    .line 1221
    .line 1222
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTalkContainer:Landroid/view/ViewGroup;

    .line 1223
    .line 1224
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 1225
    .line 1226
    new-instance v2, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;

    .line 1227
    .line 1228
    invoke-virtual {v10}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->getViewModel()Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v3

    .line 1232
    iget-object v3, v3, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1233
    .line 1234
    invoke-direct {v2, v10, v0, v3}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1238
    .line 1239
    .line 1240
    iget-object v1, v10, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 1241
    .line 1242
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1243
    .line 1244
    .line 1245
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerLoginButton:Landroid/widget/TextView;

    .line 1246
    .line 1247
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1248
    .line 1249
    .line 1250
    move-result v2

    .line 1251
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v2

    .line 1255
    sget-object v3, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 1256
    .line 1257
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v3

    .line 1261
    check-cast v3, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 1262
    .line 1263
    iget v3, v3, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 1264
    .line 1265
    invoke-static {v3}, Lorg/wikipedia/util/DateUtil;->yearToStringWithEra(I)Ljava/lang/String;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v3

    .line 1269
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v5

    .line 1273
    check-cast v5, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 1274
    .line 1275
    iget v5, v5, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 1276
    .line 1277
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v5

    .line 1281
    const/4 v6, 0x3

    .line 1282
    new-array v6, v6, [Ljava/lang/Object;

    .line 1283
    .line 1284
    aput-object v2, v6, v11

    .line 1285
    .line 1286
    aput-object v3, v6, v9

    .line 1287
    .line 1288
    aput-object v5, v6, v4

    .line 1289
    .line 1290
    const v2, 0x7f1201ec

    .line 1291
    .line 1292
    .line 1293
    invoke-virtual {v10, v2, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v2

    .line 1297
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1298
    .line 1299
    .line 1300
    invoke-static {v0}, Landroidx/room/Room;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v1

    .line 1304
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v1

    .line 1308
    :cond_1d
    move-object v2, v1

    .line 1309
    check-cast v2, Lkotlin/ranges/IntProgressionIterator;

    .line 1310
    .line 1311
    iget-boolean v2, v2, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 1312
    .line 1313
    if-eqz v2, :cond_1e

    .line 1314
    .line 1315
    move-object v2, v1

    .line 1316
    check-cast v2, Lkotlin/collections/IntIterator;

    .line 1317
    .line 1318
    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->next()Ljava/lang/Object;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v2

    .line 1322
    move-object v3, v2

    .line 1323
    check-cast v3, Ljava/lang/Number;

    .line 1324
    .line 1325
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 1326
    .line 1327
    .line 1328
    move-result v3

    .line 1329
    invoke-virtual {v10}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->getViewModel()Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v4

    .line 1333
    iget v4, v4, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->year:I

    .line 1334
    .line 1335
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v3

    .line 1339
    check-cast v3, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 1340
    .line 1341
    iget v3, v3, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 1342
    .line 1343
    if-ne v4, v3, :cond_1d

    .line 1344
    .line 1345
    move-object v7, v2

    .line 1346
    :cond_1e
    check-cast v7, Ljava/lang/Integer;

    .line 1347
    .line 1348
    if-eqz v7, :cond_1f

    .line 1349
    .line 1350
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 1351
    .line 1352
    .line 1353
    move-result v11

    .line 1354
    :cond_1f
    iget-object v0, v10, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 1355
    .line 1356
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1357
    .line 1358
    .line 1359
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTalkContainer:Landroid/view/ViewGroup;

    .line 1360
    .line 1361
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 1362
    .line 1363
    new-instance v1, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda10;

    .line 1364
    .line 1365
    const/4 v2, 0x6

    .line 1366
    invoke-direct {v1, v11, v2, v10}, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda10;-><init>(IILjava/lang/Object;)V

    .line 1367
    .line 1368
    .line 1369
    const-wide/16 v2, 0x1f4

    .line 1370
    .line 1371
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1372
    .line 1373
    .line 1374
    goto :goto_b

    .line 1375
    :cond_20
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Error;

    .line 1376
    .line 1377
    if-eqz v1, :cond_21

    .line 1378
    .line 1379
    check-cast v0, Lorg/wikipedia/util/Resource$Error;

    .line 1380
    .line 1381
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 1382
    .line 1383
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 1384
    .line 1385
    .line 1386
    iget-object v1, v10, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 1387
    .line 1388
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1389
    .line 1390
    .line 1391
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerWatchlistContainer:Landroid/view/View;

    .line 1392
    .line 1393
    check-cast v1, Landroid/widget/ProgressBar;

    .line 1394
    .line 1395
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1396
    .line 1397
    .line 1398
    iget-object v1, v10, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 1399
    .line 1400
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1401
    .line 1402
    .line 1403
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTalkContainer:Landroid/view/ViewGroup;

    .line 1404
    .line 1405
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 1406
    .line 1407
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1408
    .line 1409
    .line 1410
    iget-object v1, v10, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 1411
    .line 1412
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1413
    .line 1414
    .line 1415
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerSettingsContainer:Landroid/view/View;

    .line 1416
    .line 1417
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 1418
    .line 1419
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1420
    .line 1421
    .line 1422
    iget-object v1, v10, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 1423
    .line 1424
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1425
    .line 1426
    .line 1427
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerSettingsContainer:Landroid/view/View;

    .line 1428
    .line 1429
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 1430
    .line 1431
    invoke-virtual {v1, v0, v7}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 1432
    .line 1433
    .line 1434
    :cond_21
    :goto_b
    return-object v8

    .line 1435
    :pswitch_b
    move-object v0, v1

    .line 1436
    check-cast v0, Lkotlin/Pair;

    .line 1437
    .line 1438
    iget-object v1, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 1439
    .line 1440
    check-cast v1, Lorg/wikipedia/feed/HomeTab;

    .line 1441
    .line 1442
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 1443
    .line 1444
    check-cast v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 1445
    .line 1446
    check-cast v10, Lorg/wikipedia/feed/HomeViewModel;

    .line 1447
    .line 1448
    iget-object v2, v10, Lorg/wikipedia/feed/HomeViewModel;->_communityState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1449
    .line 1450
    iget-object v3, v10, Lorg/wikipedia/feed/HomeViewModel;->_forYouState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1451
    .line 1452
    sget-object v5, Lorg/wikipedia/feed/HomeViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 1453
    .line 1454
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 1455
    .line 1456
    .line 1457
    move-result v1

    .line 1458
    aget v1, v5, v1

    .line 1459
    .line 1460
    if-eq v1, v9, :cond_24

    .line 1461
    .line 1462
    if-ne v1, v4, :cond_23

    .line 1463
    .line 1464
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v1

    .line 1468
    check-cast v1, Lorg/wikipedia/feed/ForYouContentState;

    .line 1469
    .line 1470
    iget-object v1, v1, Lorg/wikipedia/feed/ForYouContentState;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1471
    .line 1472
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1473
    .line 1474
    .line 1475
    move-result v0

    .line 1476
    if-nez v0, :cond_22

    .line 1477
    .line 1478
    invoke-virtual {v10}, Lorg/wikipedia/feed/HomeViewModel;->refreshForYouContent()V

    .line 1479
    .line 1480
    .line 1481
    goto :goto_c

    .line 1482
    :cond_22
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v0

    .line 1486
    check-cast v0, Lorg/wikipedia/feed/ForYouContentState;

    .line 1487
    .line 1488
    iget-object v0, v0, Lorg/wikipedia/feed/ForYouContentState;->modules:Ljava/util/List;

    .line 1489
    .line 1490
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1491
    .line 1492
    .line 1493
    move-result v0

    .line 1494
    if-eqz v0, :cond_26

    .line 1495
    .line 1496
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v0

    .line 1500
    check-cast v0, Lorg/wikipedia/feed/ForYouContentState;

    .line 1501
    .line 1502
    iget-boolean v0, v0, Lorg/wikipedia/feed/ForYouContentState;->isInitialLoading:Z

    .line 1503
    .line 1504
    if-nez v0, :cond_26

    .line 1505
    .line 1506
    invoke-virtual {v10}, Lorg/wikipedia/feed/HomeViewModel;->loadForYouContent()V

    .line 1507
    .line 1508
    .line 1509
    goto :goto_c

    .line 1510
    :cond_23
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1511
    .line 1512
    .line 1513
    goto :goto_d

    .line 1514
    :cond_24
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v1

    .line 1518
    check-cast v1, Lorg/wikipedia/feed/CommunityContentState;

    .line 1519
    .line 1520
    iget-object v1, v1, Lorg/wikipedia/feed/CommunityContentState;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1521
    .line 1522
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1523
    .line 1524
    .line 1525
    move-result v0

    .line 1526
    if-nez v0, :cond_25

    .line 1527
    .line 1528
    invoke-virtual {v10}, Lorg/wikipedia/feed/HomeViewModel;->refreshCommunityContent()V

    .line 1529
    .line 1530
    .line 1531
    goto :goto_c

    .line 1532
    :cond_25
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v0

    .line 1536
    check-cast v0, Lorg/wikipedia/feed/CommunityContentState;

    .line 1537
    .line 1538
    iget-object v0, v0, Lorg/wikipedia/feed/CommunityContentState;->cards:Ljava/util/List;

    .line 1539
    .line 1540
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1541
    .line 1542
    .line 1543
    move-result v0

    .line 1544
    if-eqz v0, :cond_26

    .line 1545
    .line 1546
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v0

    .line 1550
    check-cast v0, Lorg/wikipedia/feed/CommunityContentState;

    .line 1551
    .line 1552
    iget-boolean v0, v0, Lorg/wikipedia/feed/CommunityContentState;->isInitialLoading:Z

    .line 1553
    .line 1554
    if-nez v0, :cond_26

    .line 1555
    .line 1556
    invoke-virtual {v10}, Lorg/wikipedia/feed/HomeViewModel;->loadCommunityContent()V

    .line 1557
    .line 1558
    .line 1559
    :cond_26
    :goto_c
    move-object v7, v8

    .line 1560
    :goto_d
    return-object v7

    .line 1561
    :pswitch_c
    check-cast v10, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;

    .line 1562
    .line 1563
    move-object v0, v1

    .line 1564
    check-cast v0, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$UiState;

    .line 1565
    .line 1566
    instance-of v1, v0, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$UiState$LoadTemplateData;

    .line 1567
    .line 1568
    if-eqz v1, :cond_3f

    .line 1569
    .line 1570
    check-cast v0, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$UiState$LoadTemplateData;

    .line 1571
    .line 1572
    iget-object v1, v0, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$UiState$LoadTemplateData;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1573
    .line 1574
    iget-object v0, v0, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$UiState$LoadTemplateData;->templateData:Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData;

    .line 1575
    .line 1576
    sget v2, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->$r8$clinit:I

    .line 1577
    .line 1578
    iget-object v2, v10, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 1579
    .line 1580
    const-string v3, "binding"

    .line 1581
    .line 1582
    if-eqz v2, :cond_3e

    .line 1583
    .line 1584
    iget-object v2, v2, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 1585
    .line 1586
    check-cast v2, Lorg/wikipedia/views/CabSearchView;

    .line 1587
    .line 1588
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1589
    .line 1590
    .line 1591
    iget-object v2, v10, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 1592
    .line 1593
    if-eqz v2, :cond_3d

    .line 1594
    .line 1595
    iget-object v2, v2, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 1596
    .line 1597
    check-cast v2, Landroid/widget/TextView;

    .line 1598
    .line 1599
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1600
    .line 1601
    .line 1602
    invoke-virtual {v10, v11}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->updateToolbarElevation$1(Z)V

    .line 1603
    .line 1604
    .line 1605
    iget-object v2, v10, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->insertTemplateFragment:Lorg/wikipedia/edit/templates/InsertTemplateFragment;

    .line 1606
    .line 1607
    if-eqz v2, :cond_3c

    .line 1608
    .line 1609
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1610
    .line 1611
    .line 1612
    iget-boolean v3, v0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData;->noTemplateData:Z

    .line 1613
    .line 1614
    iget-object v10, v0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData;->description:Ljava/lang/String;

    .line 1615
    .line 1616
    iget-object v12, v2, Lorg/wikipedia/edit/templates/InsertTemplateFragment;->activity:Lorg/wikipedia/edit/templates/TemplatesSearchActivity;

    .line 1617
    .line 1618
    const-string v13, "activity"

    .line 1619
    .line 1620
    if-eqz v12, :cond_3b

    .line 1621
    .line 1622
    const-string v14, "search_success"

    .line 1623
    .line 1624
    invoke-static {v12, v14}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->sendPatrollerExperienceEvent$default(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;Ljava/lang/String;)V

    .line 1625
    .line 1626
    .line 1627
    iget-object v12, v2, Lorg/wikipedia/edit/templates/InsertTemplateFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 1628
    .line 1629
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1630
    .line 1631
    .line 1632
    iget-object v12, v12, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 1633
    .line 1634
    check-cast v12, Landroid/widget/ScrollView;

    .line 1635
    .line 1636
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1637
    .line 1638
    .line 1639
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1640
    .line 1641
    .line 1642
    iget-object v12, v2, Lorg/wikipedia/edit/templates/InsertTemplateFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 1643
    .line 1644
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1645
    .line 1646
    .line 1647
    iget-object v12, v12, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 1648
    .line 1649
    check-cast v12, Landroid/widget/TextView;

    .line 1650
    .line 1651
    sget-object v14, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 1652
    .line 1653
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v14

    .line 1657
    const/16 v15, 0x3a

    .line 1658
    .line 1659
    invoke-static {v14, v15}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v14

    .line 1663
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1664
    .line 1665
    .line 1666
    iget-object v12, v2, Lorg/wikipedia/edit/templates/InsertTemplateFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 1667
    .line 1668
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1669
    .line 1670
    .line 1671
    iget-object v12, v12, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 1672
    .line 1673
    check-cast v12, Landroid/widget/TextView;

    .line 1674
    .line 1675
    if-eqz v10, :cond_28

    .line 1676
    .line 1677
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 1678
    .line 1679
    .line 1680
    move-result v14

    .line 1681
    if-nez v14, :cond_27

    .line 1682
    .line 1683
    goto :goto_e

    .line 1684
    :cond_27
    const v14, 0x7f1209a1

    .line 1685
    .line 1686
    .line 1687
    invoke-virtual {v2, v14}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 1688
    .line 1689
    .line 1690
    move-result-object v14

    .line 1691
    const-string v15, "<br><i>"

    .line 1692
    .line 1693
    const-string v7, "</i>"

    .line 1694
    .line 1695
    invoke-static {v10, v15, v14, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v7

    .line 1699
    goto :goto_f

    .line 1700
    :cond_28
    :goto_e
    iget-object v7, v0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData;->title:Ljava/lang/String;

    .line 1701
    .line 1702
    new-array v10, v9, [Ljava/lang/Object;

    .line 1703
    .line 1704
    aput-object v7, v10, v11

    .line 1705
    .line 1706
    const v7, 0x7f1209a0

    .line 1707
    .line 1708
    .line 1709
    invoke-virtual {v2, v7, v10}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1710
    .line 1711
    .line 1712
    move-result-object v7

    .line 1713
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1714
    .line 1715
    .line 1716
    :goto_f
    invoke-static {v7}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 1717
    .line 1718
    .line 1719
    move-result-object v7

    .line 1720
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1721
    .line 1722
    .line 1723
    iget-object v7, v2, Lorg/wikipedia/edit/templates/InsertTemplateFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 1724
    .line 1725
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1726
    .line 1727
    .line 1728
    iget-object v7, v7, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 1729
    .line 1730
    check-cast v7, Landroid/widget/TextView;

    .line 1731
    .line 1732
    iget-object v10, v2, Lorg/wikipedia/edit/templates/InsertTemplateFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 1733
    .line 1734
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1735
    .line 1736
    .line 1737
    iget-object v10, v10, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 1738
    .line 1739
    check-cast v10, Landroid/widget/TextView;

    .line 1740
    .line 1741
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 1742
    .line 1743
    .line 1744
    move-result-object v10

    .line 1745
    if-eqz v10, :cond_2a

    .line 1746
    .line 1747
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 1748
    .line 1749
    .line 1750
    move-result v10

    .line 1751
    if-nez v10, :cond_29

    .line 1752
    .line 1753
    goto :goto_10

    .line 1754
    :cond_29
    move v10, v11

    .line 1755
    goto :goto_11

    .line 1756
    :cond_2a
    :goto_10
    move v10, v6

    .line 1757
    :goto_11
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1758
    .line 1759
    .line 1760
    iget-object v7, v2, Lorg/wikipedia/edit/templates/InsertTemplateFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 1761
    .line 1762
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1763
    .line 1764
    .line 1765
    iget-object v7, v7, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 1766
    .line 1767
    check-cast v7, Landroid/widget/LinearLayout;

    .line 1768
    .line 1769
    if-eqz v3, :cond_2b

    .line 1770
    .line 1771
    move v10, v11

    .line 1772
    goto :goto_12

    .line 1773
    :cond_2b
    move v10, v6

    .line 1774
    :goto_12
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1775
    .line 1776
    .line 1777
    iget-object v7, v2, Lorg/wikipedia/edit/templates/InsertTemplateFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 1778
    .line 1779
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1780
    .line 1781
    .line 1782
    iget-object v7, v7, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 1783
    .line 1784
    check-cast v7, Landroid/widget/TextView;

    .line 1785
    .line 1786
    const v10, 0x7f12099e

    .line 1787
    .line 1788
    .line 1789
    invoke-virtual {v2, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 1790
    .line 1791
    .line 1792
    move-result-object v10

    .line 1793
    const v12, 0x7f12009a

    .line 1794
    .line 1795
    .line 1796
    invoke-virtual {v2, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v12

    .line 1800
    new-array v4, v4, [Ljava/lang/Object;

    .line 1801
    .line 1802
    aput-object v10, v4, v11

    .line 1803
    .line 1804
    aput-object v12, v4, v9

    .line 1805
    .line 1806
    const v10, 0x7f1209a2

    .line 1807
    .line 1808
    .line 1809
    invoke-virtual {v2, v10, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v4

    .line 1813
    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 1814
    .line 1815
    .line 1816
    move-result-object v4

    .line 1817
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1818
    .line 1819
    .line 1820
    iget-object v4, v2, Lorg/wikipedia/edit/templates/InsertTemplateFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 1821
    .line 1822
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1823
    .line 1824
    .line 1825
    iget-object v4, v4, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 1826
    .line 1827
    check-cast v4, Landroid/widget/TextView;

    .line 1828
    .line 1829
    sget v7, Lorg/wikipedia/page/LinkMovementMethodExt;->$r8$clinit:I

    .line 1830
    .line 1831
    invoke-static {}, Lokio/Path$Companion;->getExternalLinkMovementMethod$default()Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v7

    .line 1835
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1836
    .line 1837
    .line 1838
    iget-object v4, v2, Lorg/wikipedia/edit/templates/InsertTemplateFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 1839
    .line 1840
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1841
    .line 1842
    .line 1843
    iget-object v4, v4, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 1844
    .line 1845
    check-cast v4, Landroid/widget/TextView;

    .line 1846
    .line 1847
    new-instance v7, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 1848
    .line 1849
    invoke-direct {v7, v6, v2, v1}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1850
    .line 1851
    .line 1852
    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1853
    .line 1854
    .line 1855
    iget-object v1, v2, Lorg/wikipedia/edit/templates/InsertTemplateFragment;->activity:Lorg/wikipedia/edit/templates/TemplatesSearchActivity;

    .line 1856
    .line 1857
    if-eqz v1, :cond_3a

    .line 1858
    .line 1859
    invoke-virtual {v1, v9}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->updateInsertButton(Z)V

    .line 1860
    .line 1861
    .line 1862
    iget-object v1, v2, Lorg/wikipedia/edit/templates/InsertTemplateFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 1863
    .line 1864
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1865
    .line 1866
    .line 1867
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 1868
    .line 1869
    check-cast v1, Landroid/widget/LinearLayout;

    .line 1870
    .line 1871
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1872
    .line 1873
    .line 1874
    :try_start_0
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData;->params:Lkotlinx/serialization/json/JsonElement;

    .line 1875
    .line 1876
    if-eqz v0, :cond_2e

    .line 1877
    .line 1878
    instance-of v1, v0, Lkotlinx/serialization/json/JsonArray;

    .line 1879
    .line 1880
    if-nez v1, :cond_2e

    .line 1881
    .line 1882
    if-eqz v3, :cond_2d

    .line 1883
    .line 1884
    sget-object v1, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 1885
    .line 1886
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1887
    .line 1888
    .line 1889
    new-instance v3, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 1890
    .line 1891
    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 1892
    .line 1893
    sget-object v6, Lkotlinx/serialization/json/JsonArray;->Companion:Lkotlinx/serialization/json/JsonArray$Companion;

    .line 1894
    .line 1895
    invoke-virtual {v6}, Lkotlinx/serialization/json/JsonArray$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 1896
    .line 1897
    .line 1898
    move-result-object v6

    .line 1899
    invoke-direct {v3, v4, v6, v9}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 1900
    .line 1901
    .line 1902
    invoke-virtual {v1, v3, v0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 1903
    .line 1904
    .line 1905
    move-result-object v0

    .line 1906
    check-cast v0, Ljava/util/Map;

    .line 1907
    .line 1908
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 1909
    .line 1910
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 1911
    .line 1912
    .line 1913
    move-result v3

    .line 1914
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 1915
    .line 1916
    .line 1917
    move-result v3

    .line 1918
    invoke-direct {v1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1919
    .line 1920
    .line 1921
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 1922
    .line 1923
    .line 1924
    move-result-object v0

    .line 1925
    check-cast v0, Ljava/lang/Iterable;

    .line 1926
    .line 1927
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1928
    .line 1929
    .line 1930
    move-result-object v0

    .line 1931
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1932
    .line 1933
    .line 1934
    move-result v3

    .line 1935
    if-eqz v3, :cond_2c

    .line 1936
    .line 1937
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1938
    .line 1939
    .line 1940
    move-result-object v3

    .line 1941
    move-object v4, v3

    .line 1942
    check-cast v4, Ljava/util/Map$Entry;

    .line 1943
    .line 1944
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v4

    .line 1948
    check-cast v3, Ljava/util/Map$Entry;

    .line 1949
    .line 1950
    new-instance v3, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;

    .line 1951
    .line 1952
    invoke-direct {v3}, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;-><init>()V

    .line 1953
    .line 1954
    .line 1955
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1956
    .line 1957
    .line 1958
    goto :goto_13

    .line 1959
    :catch_0
    move-exception v0

    .line 1960
    goto :goto_14

    .line 1961
    :cond_2c
    move-object v0, v1

    .line 1962
    goto :goto_15

    .line 1963
    :cond_2d
    sget-object v1, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 1964
    .line 1965
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1966
    .line 1967
    .line 1968
    new-instance v3, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 1969
    .line 1970
    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 1971
    .line 1972
    sget-object v6, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->Companion:Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam$Companion;

    .line 1973
    .line 1974
    invoke-virtual {v6}, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v6

    .line 1978
    invoke-direct {v3, v4, v6, v9}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 1979
    .line 1980
    .line 1981
    invoke-virtual {v1, v3, v0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 1982
    .line 1983
    .line 1984
    move-result-object v0

    .line 1985
    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1986
    .line 1987
    goto :goto_15

    .line 1988
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1989
    .line 1990
    const-string v3, "Error on parsing params "

    .line 1991
    .line 1992
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1993
    .line 1994
    .line 1995
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1996
    .line 1997
    .line 1998
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1999
    .line 2000
    .line 2001
    move-result-object v0

    .line 2002
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 2003
    .line 2004
    .line 2005
    :cond_2e
    const/4 v0, 0x0

    .line 2006
    :goto_15
    if-eqz v0, :cond_40

    .line 2007
    .line 2008
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 2009
    .line 2010
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2011
    .line 2012
    .line 2013
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2014
    .line 2015
    .line 2016
    move-result-object v0

    .line 2017
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2018
    .line 2019
    .line 2020
    move-result-object v0

    .line 2021
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2022
    .line 2023
    .line 2024
    move-result v3

    .line 2025
    if-eqz v3, :cond_31

    .line 2026
    .line 2027
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2028
    .line 2029
    .line 2030
    move-result-object v3

    .line 2031
    check-cast v3, Ljava/util/Map$Entry;

    .line 2032
    .line 2033
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2034
    .line 2035
    .line 2036
    move-result-object v4

    .line 2037
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;

    .line 2038
    .line 2039
    iget-object v4, v4, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->deprecated:Lkotlinx/serialization/json/JsonElement;

    .line 2040
    .line 2041
    if-eqz v4, :cond_30

    .line 2042
    .line 2043
    invoke-static {v4}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 2044
    .line 2045
    .line 2046
    move-result-object v4

    .line 2047
    instance-of v6, v4, Lkotlinx/serialization/json/JsonNull;

    .line 2048
    .line 2049
    if-eqz v6, :cond_2f

    .line 2050
    .line 2051
    const/4 v4, 0x0

    .line 2052
    goto :goto_17

    .line 2053
    :cond_2f
    invoke-virtual {v4}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    .line 2054
    .line 2055
    .line 2056
    move-result-object v4

    .line 2057
    :goto_17
    const-string v6, "false"

    .line 2058
    .line 2059
    invoke-static {v4, v6, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2060
    .line 2061
    .line 2062
    move-result v4

    .line 2063
    if-nez v4, :cond_30

    .line 2064
    .line 2065
    goto :goto_16

    .line 2066
    :cond_30
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2067
    .line 2068
    .line 2069
    move-result-object v4

    .line 2070
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2071
    .line 2072
    .line 2073
    move-result-object v3

    .line 2074
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2075
    .line 2076
    .line 2077
    goto :goto_16

    .line 2078
    :cond_31
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 2079
    .line 2080
    .line 2081
    move-result-object v0

    .line 2082
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2083
    .line 2084
    .line 2085
    move-result-object v0

    .line 2086
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2087
    .line 2088
    .line 2089
    move-result v1

    .line 2090
    if-eqz v1, :cond_40

    .line 2091
    .line 2092
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2093
    .line 2094
    .line 2095
    move-result-object v1

    .line 2096
    check-cast v1, Ljava/util/Map$Entry;

    .line 2097
    .line 2098
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2099
    .line 2100
    .line 2101
    move-result-object v3

    .line 2102
    const v4, 0x7f0c0303

    .line 2103
    .line 2104
    .line 2105
    const/4 v6, 0x0

    .line 2106
    invoke-virtual {v3, v4, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 2107
    .line 2108
    .line 2109
    move-result-object v3

    .line 2110
    const v4, 0x7f0901f8

    .line 2111
    .line 2112
    .line 2113
    invoke-static {v3, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 2114
    .line 2115
    .line 2116
    move-result-object v6

    .line 2117
    check-cast v6, Lorg/wikipedia/views/PlainPasteEditText;

    .line 2118
    .line 2119
    if-eqz v6, :cond_39

    .line 2120
    .line 2121
    const v4, 0x7f09069a

    .line 2122
    .line 2123
    .line 2124
    invoke-static {v3, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 2125
    .line 2126
    .line 2127
    move-result-object v7

    .line 2128
    check-cast v7, Lcom/google/android/material/textfield/TextInputLayout;

    .line 2129
    .line 2130
    if-eqz v7, :cond_39

    .line 2131
    .line 2132
    check-cast v3, Landroid/widget/LinearLayout;

    .line 2133
    .line 2134
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2135
    .line 2136
    .line 2137
    move-result-object v4

    .line 2138
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;

    .line 2139
    .line 2140
    iget-object v4, v4, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->label:Ljava/lang/String;

    .line 2141
    .line 2142
    if-nez v4, :cond_32

    .line 2143
    .line 2144
    move-object v4, v5

    .line 2145
    :cond_32
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 2146
    .line 2147
    .line 2148
    move-result v10

    .line 2149
    if-nez v10, :cond_33

    .line 2150
    .line 2151
    sget-object v4, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 2152
    .line 2153
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2154
    .line 2155
    .line 2156
    move-result-object v4

    .line 2157
    check-cast v4, Ljava/lang/String;

    .line 2158
    .line 2159
    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    .line 2160
    .line 2161
    .line 2162
    move-result-object v4

    .line 2163
    :cond_33
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2164
    .line 2165
    invoke-virtual {v3, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2166
    .line 2167
    .line 2168
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2169
    .line 2170
    .line 2171
    move-result-object v10

    .line 2172
    check-cast v10, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;

    .line 2173
    .line 2174
    iget-boolean v10, v10, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->required:Z

    .line 2175
    .line 2176
    if-eqz v10, :cond_35

    .line 2177
    .line 2178
    invoke-virtual {v7, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 2179
    .line 2180
    .line 2181
    new-instance v4, Landroidx/appcompat/widget/SearchView$10;

    .line 2182
    .line 2183
    const/4 v10, 0x7

    .line 2184
    invoke-direct {v4, v10, v2}, Landroidx/appcompat/widget/SearchView$10;-><init>(ILjava/lang/Object;)V

    .line 2185
    .line 2186
    .line 2187
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2188
    .line 2189
    .line 2190
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2191
    .line 2192
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2193
    .line 2194
    .line 2195
    iget-object v4, v2, Lorg/wikipedia/edit/templates/InsertTemplateFragment;->activity:Lorg/wikipedia/edit/templates/TemplatesSearchActivity;

    .line 2196
    .line 2197
    if-eqz v4, :cond_34

    .line 2198
    .line 2199
    invoke-virtual {v4, v11}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->updateInsertButton(Z)V

    .line 2200
    .line 2201
    .line 2202
    goto :goto_19

    .line 2203
    :cond_34
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 2204
    .line 2205
    .line 2206
    const/16 v16, 0x0

    .line 2207
    .line 2208
    throw v16

    .line 2209
    :cond_35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2210
    .line 2211
    .line 2212
    move-result-object v6

    .line 2213
    check-cast v6, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;

    .line 2214
    .line 2215
    iget-boolean v6, v6, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->suggested:Z

    .line 2216
    .line 2217
    if-eqz v6, :cond_36

    .line 2218
    .line 2219
    new-array v6, v9, [Ljava/lang/Object;

    .line 2220
    .line 2221
    aput-object v4, v6, v11

    .line 2222
    .line 2223
    const v4, 0x7f1209a6

    .line 2224
    .line 2225
    .line 2226
    invoke-virtual {v2, v4, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 2227
    .line 2228
    .line 2229
    move-result-object v4

    .line 2230
    invoke-virtual {v7, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 2231
    .line 2232
    .line 2233
    goto :goto_19

    .line 2234
    :cond_36
    new-array v6, v9, [Ljava/lang/Object;

    .line 2235
    .line 2236
    aput-object v4, v6, v11

    .line 2237
    .line 2238
    const v4, 0x7f1209a5

    .line 2239
    .line 2240
    .line 2241
    invoke-virtual {v2, v4, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 2242
    .line 2243
    .line 2244
    move-result-object v4

    .line 2245
    invoke-virtual {v7, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 2246
    .line 2247
    .line 2248
    :goto_19
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2249
    .line 2250
    .line 2251
    move-result-object v4

    .line 2252
    invoke-virtual {v7, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2253
    .line 2254
    .line 2255
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2256
    .line 2257
    .line 2258
    move-result-object v4

    .line 2259
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;

    .line 2260
    .line 2261
    iget-object v4, v4, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->suggestedValues:Ljava/util/List;

    .line 2262
    .line 2263
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 2264
    .line 2265
    .line 2266
    move-result-object v4

    .line 2267
    check-cast v4, Ljava/lang/String;

    .line 2268
    .line 2269
    if-eqz v4, :cond_38

    .line 2270
    .line 2271
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 2272
    .line 2273
    .line 2274
    move-result v6

    .line 2275
    if-nez v6, :cond_37

    .line 2276
    .line 2277
    goto :goto_1a

    .line 2278
    :cond_37
    new-array v6, v9, [Ljava/lang/Object;

    .line 2279
    .line 2280
    aput-object v4, v6, v11

    .line 2281
    .line 2282
    const v4, 0x7f1209a7

    .line 2283
    .line 2284
    .line 2285
    invoke-virtual {v2, v4, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 2286
    .line 2287
    .line 2288
    move-result-object v4

    .line 2289
    invoke-virtual {v7, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    .line 2290
    .line 2291
    .line 2292
    :cond_38
    :goto_1a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2293
    .line 2294
    .line 2295
    move-result-object v1

    .line 2296
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;

    .line 2297
    .line 2298
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->description:Ljava/lang/String;

    .line 2299
    .line 2300
    invoke-virtual {v7, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 2301
    .line 2302
    .line 2303
    iget-object v1, v2, Lorg/wikipedia/edit/templates/InsertTemplateFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 2304
    .line 2305
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2306
    .line 2307
    .line 2308
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 2309
    .line 2310
    check-cast v1, Landroid/widget/LinearLayout;

    .line 2311
    .line 2312
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2313
    .line 2314
    .line 2315
    goto/16 :goto_18

    .line 2316
    .line 2317
    :cond_39
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2318
    .line 2319
    .line 2320
    move-result-object v0

    .line 2321
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 2322
    .line 2323
    .line 2324
    move-result-object v0

    .line 2325
    const-string v1, "Missing required view with ID: "

    .line 2326
    .line 2327
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2328
    .line 2329
    .line 2330
    move-result-object v0

    .line 2331
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 2332
    .line 2333
    .line 2334
    const/4 v7, 0x0

    .line 2335
    goto :goto_1b

    .line 2336
    :cond_3a
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 2337
    .line 2338
    .line 2339
    const/16 v16, 0x0

    .line 2340
    .line 2341
    throw v16

    .line 2342
    :cond_3b
    move-object/from16 v16, v7

    .line 2343
    .line 2344
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 2345
    .line 2346
    .line 2347
    throw v16

    .line 2348
    :cond_3c
    move-object/from16 v16, v7

    .line 2349
    .line 2350
    const-string v0, "insertTemplateFragment"

    .line 2351
    .line 2352
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 2353
    .line 2354
    .line 2355
    throw v16

    .line 2356
    :cond_3d
    move-object/from16 v16, v7

    .line 2357
    .line 2358
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 2359
    .line 2360
    .line 2361
    throw v16

    .line 2362
    :cond_3e
    move-object/from16 v16, v7

    .line 2363
    .line 2364
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 2365
    .line 2366
    .line 2367
    throw v16

    .line 2368
    :cond_3f
    instance-of v1, v0, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$UiState$LoadError;

    .line 2369
    .line 2370
    if-eqz v1, :cond_40

    .line 2371
    .line 2372
    check-cast v0, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$UiState$LoadError;

    .line 2373
    .line 2374
    iget-object v0, v0, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$UiState$LoadError;->throwable:Ljava/lang/Throwable;

    .line 2375
    .line 2376
    invoke-static {v10, v0}, Lorg/wikipedia/util/ShareUtil;->showError$default(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 2377
    .line 2378
    .line 2379
    :cond_40
    move-object v7, v8

    .line 2380
    :goto_1b
    return-object v7

    .line 2381
    :pswitch_d
    move-object v0, v1

    .line 2382
    check-cast v0, Lorg/wikipedia/util/Resource;

    .line 2383
    .line 2384
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Success;

    .line 2385
    .line 2386
    if-eqz v1, :cond_41

    .line 2387
    .line 2388
    check-cast v10, Lorg/wikipedia/edit/EditSectionActivity;

    .line 2389
    .line 2390
    new-instance v1, Lorg/wikipedia/edit/EditSuccessResult;

    .line 2391
    .line 2392
    check-cast v0, Lorg/wikipedia/util/Resource$Success;

    .line 2393
    .line 2394
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 2395
    .line 2396
    check-cast v0, Ljava/lang/Number;

    .line 2397
    .line 2398
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 2399
    .line 2400
    .line 2401
    move-result-wide v2

    .line 2402
    invoke-direct {v1, v2, v3}, Lorg/wikipedia/edit/EditSuccessResult;-><init>(J)V

    .line 2403
    .line 2404
    .line 2405
    sget v0, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 2406
    .line 2407
    invoke-virtual {v10, v1}, Lorg/wikipedia/edit/EditSectionActivity;->onEditSuccess(Lokhttp3/HttpUrl$Companion;)V

    .line 2408
    .line 2409
    .line 2410
    :cond_41
    return-object v8

    .line 2411
    :pswitch_e
    move-object v0, v1

    .line 2412
    check-cast v0, Lorg/wikipedia/util/Resource;

    .line 2413
    .line 2414
    check-cast v10, Lorg/wikipedia/donate/DonateDialog;

    .line 2415
    .line 2416
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Loading;

    .line 2417
    .line 2418
    if-eqz v1, :cond_42

    .line 2419
    .line 2420
    iget-object v0, v10, Lorg/wikipedia/donate/DonateDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 2421
    .line 2422
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2423
    .line 2424
    .line 2425
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 2426
    .line 2427
    check-cast v0, Landroid/widget/ProgressBar;

    .line 2428
    .line 2429
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2430
    .line 2431
    .line 2432
    iget-object v0, v10, Lorg/wikipedia/donate/DonateDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 2433
    .line 2434
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2435
    .line 2436
    .line 2437
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 2438
    .line 2439
    check-cast v0, Landroid/widget/LinearLayout;

    .line 2440
    .line 2441
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2442
    .line 2443
    .line 2444
    goto :goto_1d

    .line 2445
    :cond_42
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Error;

    .line 2446
    .line 2447
    if-eqz v1, :cond_44

    .line 2448
    .line 2449
    iget-object v1, v10, Lorg/wikipedia/donate/DonateDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 2450
    .line 2451
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2452
    .line 2453
    .line 2454
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 2455
    .line 2456
    check-cast v1, Landroid/widget/ProgressBar;

    .line 2457
    .line 2458
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2459
    .line 2460
    .line 2461
    check-cast v0, Lorg/wikipedia/util/Resource$Error;

    .line 2462
    .line 2463
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 2464
    .line 2465
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 2466
    .line 2467
    .line 2468
    move-result-object v0

    .line 2469
    if-nez v0, :cond_43

    .line 2470
    .line 2471
    goto :goto_1c

    .line 2472
    :cond_43
    move-object v5, v0

    .line 2473
    :goto_1c
    invoke-static {v10, v5}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 2474
    .line 2475
    .line 2476
    goto :goto_1d

    .line 2477
    :cond_44
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Success;

    .line 2478
    .line 2479
    if-eqz v1, :cond_46

    .line 2480
    .line 2481
    check-cast v0, Lorg/wikipedia/util/Resource$Success;

    .line 2482
    .line 2483
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 2484
    .line 2485
    check-cast v0, Ljava/lang/Boolean;

    .line 2486
    .line 2487
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2488
    .line 2489
    .line 2490
    move-result v0

    .line 2491
    if-nez v0, :cond_45

    .line 2492
    .line 2493
    invoke-virtual {v10}, Lorg/wikipedia/donate/DonateDialog;->onDonateClicked()V

    .line 2494
    .line 2495
    .line 2496
    goto :goto_1d

    .line 2497
    :cond_45
    iget-object v0, v10, Lorg/wikipedia/donate/DonateDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 2498
    .line 2499
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2500
    .line 2501
    .line 2502
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 2503
    .line 2504
    check-cast v0, Landroid/widget/ProgressBar;

    .line 2505
    .line 2506
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2507
    .line 2508
    .line 2509
    iget-object v0, v10, Lorg/wikipedia/donate/DonateDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 2510
    .line 2511
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2512
    .line 2513
    .line 2514
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 2515
    .line 2516
    check-cast v0, Landroid/widget/LinearLayout;

    .line 2517
    .line 2518
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2519
    .line 2520
    .line 2521
    :cond_46
    :goto_1d
    return-object v8

    .line 2522
    :pswitch_f
    move-object v0, v1

    .line 2523
    check-cast v0, Lorg/wikipedia/util/Resource;

    .line 2524
    .line 2525
    check-cast v10, Lorg/wikipedia/commons/ImagePreviewDialog;

    .line 2526
    .line 2527
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Loading;

    .line 2528
    .line 2529
    if-eqz v1, :cond_47

    .line 2530
    .line 2531
    iget-object v0, v10, Lorg/wikipedia/commons/ImagePreviewDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 2532
    .line 2533
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2534
    .line 2535
    .line 2536
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 2537
    .line 2538
    check-cast v0, Landroid/widget/ProgressBar;

    .line 2539
    .line 2540
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2541
    .line 2542
    .line 2543
    goto/16 :goto_1e

    .line 2544
    .line 2545
    :cond_47
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Success;

    .line 2546
    .line 2547
    if-eqz v1, :cond_48

    .line 2548
    .line 2549
    check-cast v0, Lorg/wikipedia/util/Resource$Success;

    .line 2550
    .line 2551
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 2552
    .line 2553
    check-cast v0, Lorg/wikipedia/commons/FilePage;

    .line 2554
    .line 2555
    iget-object v1, v10, Lorg/wikipedia/commons/ImagePreviewDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 2556
    .line 2557
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2558
    .line 2559
    .line 2560
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 2561
    .line 2562
    check-cast v1, Lorg/wikipedia/commons/FilePageView;

    .line 2563
    .line 2564
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2565
    .line 2566
    .line 2567
    iget-object v1, v10, Lorg/wikipedia/commons/ImagePreviewDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 2568
    .line 2569
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2570
    .line 2571
    .line 2572
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 2573
    .line 2574
    check-cast v1, Landroid/widget/ProgressBar;

    .line 2575
    .line 2576
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2577
    .line 2578
    .line 2579
    iget-object v1, v10, Lorg/wikipedia/commons/ImagePreviewDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 2580
    .line 2581
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2582
    .line 2583
    .line 2584
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 2585
    .line 2586
    move-object v11, v1

    .line 2587
    check-cast v11, Lorg/wikipedia/commons/FilePageView;

    .line 2588
    .line 2589
    invoke-virtual {v10}, Lorg/wikipedia/commons/ImagePreviewDialog;->getViewModel()Lorg/wikipedia/commons/ImagePreviewViewModel;

    .line 2590
    .line 2591
    .line 2592
    move-result-object v1

    .line 2593
    iget-object v12, v1, Lorg/wikipedia/commons/ImagePreviewViewModel;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 2594
    .line 2595
    iget-object v13, v0, Lorg/wikipedia/commons/FilePage;->imageTags:Ljava/util/Map;

    .line 2596
    .line 2597
    iget-object v14, v0, Lorg/wikipedia/commons/FilePage;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 2598
    .line 2599
    iget-object v1, v10, Lorg/wikipedia/commons/ImagePreviewDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 2600
    .line 2601
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2602
    .line 2603
    .line 2604
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 2605
    .line 2606
    check-cast v1, Landroid/widget/LinearLayout;

    .line 2607
    .line 2608
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 2609
    .line 2610
    .line 2611
    move-result v15

    .line 2612
    iget v1, v0, Lorg/wikipedia/commons/FilePage;->thumbnailWidth:I

    .line 2613
    .line 2614
    iget v2, v0, Lorg/wikipedia/commons/FilePage;->thumbnailHeight:I

    .line 2615
    .line 2616
    iget-boolean v3, v0, Lorg/wikipedia/commons/FilePage;->imageFromCommons:Z

    .line 2617
    .line 2618
    iget-boolean v4, v0, Lorg/wikipedia/commons/FilePage;->showFilename:Z

    .line 2619
    .line 2620
    iget-boolean v0, v0, Lorg/wikipedia/commons/FilePage;->showEditButton:Z

    .line 2621
    .line 2622
    invoke-virtual {v10}, Lorg/wikipedia/commons/ImagePreviewDialog;->getViewModel()Lorg/wikipedia/commons/ImagePreviewViewModel;

    .line 2623
    .line 2624
    .line 2625
    move-result-object v5

    .line 2626
    iget-object v5, v5, Lorg/wikipedia/commons/ImagePreviewViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 2627
    .line 2628
    const/16 v22, 0x0

    .line 2629
    .line 2630
    const/16 v23, 0x400

    .line 2631
    .line 2632
    move/from16 v20, v0

    .line 2633
    .line 2634
    move/from16 v16, v1

    .line 2635
    .line 2636
    move/from16 v17, v2

    .line 2637
    .line 2638
    move/from16 v18, v3

    .line 2639
    .line 2640
    move/from16 v19, v4

    .line 2641
    .line 2642
    move-object/from16 v21, v5

    .line 2643
    .line 2644
    invoke-static/range {v11 .. v23}, Lorg/wikipedia/commons/FilePageView;->setup$default(Lorg/wikipedia/commons/FilePageView;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Ljava/util/Map;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;IIIZZZLorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/commons/FilePageFragment;I)V

    .line 2645
    .line 2646
    .line 2647
    goto :goto_1e

    .line 2648
    :cond_48
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Error;

    .line 2649
    .line 2650
    if-eqz v1, :cond_49

    .line 2651
    .line 2652
    check-cast v0, Lorg/wikipedia/util/Resource$Error;

    .line 2653
    .line 2654
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 2655
    .line 2656
    iget-object v1, v10, Lorg/wikipedia/commons/ImagePreviewDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 2657
    .line 2658
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2659
    .line 2660
    .line 2661
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 2662
    .line 2663
    check-cast v1, Landroid/widget/LinearLayout;

    .line 2664
    .line 2665
    const/4 v2, 0x0

    .line 2666
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 2667
    .line 2668
    .line 2669
    iget-object v1, v10, Lorg/wikipedia/commons/ImagePreviewDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 2670
    .line 2671
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2672
    .line 2673
    .line 2674
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 2675
    .line 2676
    check-cast v1, Landroid/widget/LinearLayout;

    .line 2677
    .line 2678
    invoke-virtual {v1, v11}, Landroid/view/View;->setMinimumHeight(I)V

    .line 2679
    .line 2680
    .line 2681
    iget-object v1, v10, Lorg/wikipedia/commons/ImagePreviewDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 2682
    .line 2683
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2684
    .line 2685
    .line 2686
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 2687
    .line 2688
    check-cast v1, Landroid/widget/ProgressBar;

    .line 2689
    .line 2690
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2691
    .line 2692
    .line 2693
    iget-object v1, v10, Lorg/wikipedia/commons/ImagePreviewDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 2694
    .line 2695
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2696
    .line 2697
    .line 2698
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 2699
    .line 2700
    check-cast v1, Lorg/wikipedia/commons/FilePageView;

    .line 2701
    .line 2702
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2703
    .line 2704
    .line 2705
    iget-object v1, v10, Lorg/wikipedia/commons/ImagePreviewDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 2706
    .line 2707
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2708
    .line 2709
    .line 2710
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 2711
    .line 2712
    check-cast v1, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    .line 2713
    .line 2714
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2715
    .line 2716
    .line 2717
    iget-object v1, v10, Lorg/wikipedia/commons/ImagePreviewDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 2718
    .line 2719
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2720
    .line 2721
    .line 2722
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 2723
    .line 2724
    check-cast v1, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    .line 2725
    .line 2726
    invoke-virtual {v10}, Lorg/wikipedia/commons/ImagePreviewDialog;->getViewModel()Lorg/wikipedia/commons/ImagePreviewViewModel;

    .line 2727
    .line 2728
    .line 2729
    move-result-object v2

    .line 2730
    iget-object v2, v2, Lorg/wikipedia/commons/ImagePreviewViewModel;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 2731
    .line 2732
    iget-object v2, v2, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 2733
    .line 2734
    invoke-virtual {v1, v0, v2}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 2735
    .line 2736
    .line 2737
    :cond_49
    :goto_1e
    return-object v8

    .line 2738
    :pswitch_10
    move-object v0, v1

    .line 2739
    check-cast v0, Lorg/wikipedia/util/Resource;

    .line 2740
    .line 2741
    check-cast v10, Lorg/wikipedia/commons/FilePageFragment;

    .line 2742
    .line 2743
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Loading;

    .line 2744
    .line 2745
    if-eqz v1, :cond_4a

    .line 2746
    .line 2747
    iget-object v0, v10, Lorg/wikipedia/commons/FilePageFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2748
    .line 2749
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2750
    .line 2751
    .line 2752
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 2753
    .line 2754
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 2755
    .line 2756
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2757
    .line 2758
    .line 2759
    iget-object v0, v10, Lorg/wikipedia/commons/FilePageFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2760
    .line 2761
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2762
    .line 2763
    .line 2764
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 2765
    .line 2766
    check-cast v0, Lorg/wikipedia/commons/FilePageView;

    .line 2767
    .line 2768
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2769
    .line 2770
    .line 2771
    iget-object v0, v10, Lorg/wikipedia/commons/FilePageFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2772
    .line 2773
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2774
    .line 2775
    .line 2776
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 2777
    .line 2778
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 2779
    .line 2780
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2781
    .line 2782
    .line 2783
    goto/16 :goto_1f

    .line 2784
    .line 2785
    :cond_4a
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Success;

    .line 2786
    .line 2787
    if-eqz v1, :cond_4c

    .line 2788
    .line 2789
    check-cast v0, Lorg/wikipedia/util/Resource$Success;

    .line 2790
    .line 2791
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 2792
    .line 2793
    check-cast v0, Lorg/wikipedia/commons/FilePage;

    .line 2794
    .line 2795
    invoke-virtual {v10}, Lorg/wikipedia/commons/FilePageFragment;->getViewModel()Lorg/wikipedia/commons/FilePageViewModel;

    .line 2796
    .line 2797
    .line 2798
    move-result-object v1

    .line 2799
    iget-object v1, v1, Lorg/wikipedia/commons/FilePageViewModel;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 2800
    .line 2801
    if-eqz v1, :cond_4b

    .line 2802
    .line 2803
    iget-object v2, v10, Lorg/wikipedia/commons/FilePageFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2804
    .line 2805
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2806
    .line 2807
    .line 2808
    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 2809
    .line 2810
    check-cast v2, Lorg/wikipedia/commons/FilePageView;

    .line 2811
    .line 2812
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2813
    .line 2814
    .line 2815
    iget-object v2, v10, Lorg/wikipedia/commons/FilePageFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2816
    .line 2817
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2818
    .line 2819
    .line 2820
    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 2821
    .line 2822
    check-cast v2, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 2823
    .line 2824
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2825
    .line 2826
    .line 2827
    iget-object v2, v10, Lorg/wikipedia/commons/FilePageFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2828
    .line 2829
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2830
    .line 2831
    .line 2832
    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 2833
    .line 2834
    move-object/from16 v17, v2

    .line 2835
    .line 2836
    check-cast v17, Lorg/wikipedia/commons/FilePageView;

    .line 2837
    .line 2838
    iget-object v2, v0, Lorg/wikipedia/commons/FilePage;->imageTags:Ljava/util/Map;

    .line 2839
    .line 2840
    iget-object v3, v0, Lorg/wikipedia/commons/FilePage;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 2841
    .line 2842
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 2843
    .line 2844
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 2845
    .line 2846
    .line 2847
    move-result-object v4

    .line 2848
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2849
    .line 2850
    .line 2851
    move-result-object v4

    .line 2852
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2853
    .line 2854
    .line 2855
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 2856
    .line 2857
    .line 2858
    move-result-object v4

    .line 2859
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2860
    .line 2861
    .line 2862
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2863
    .line 2864
    iget v5, v0, Lorg/wikipedia/commons/FilePage;->thumbnailWidth:I

    .line 2865
    .line 2866
    iget v6, v0, Lorg/wikipedia/commons/FilePage;->thumbnailHeight:I

    .line 2867
    .line 2868
    iget-boolean v7, v0, Lorg/wikipedia/commons/FilePage;->imageFromCommons:Z

    .line 2869
    .line 2870
    iget-boolean v9, v0, Lorg/wikipedia/commons/FilePage;->showFilename:Z

    .line 2871
    .line 2872
    iget-boolean v0, v0, Lorg/wikipedia/commons/FilePage;->showEditButton:Z

    .line 2873
    .line 2874
    const/16 v27, 0x0

    .line 2875
    .line 2876
    const/16 v29, 0x200

    .line 2877
    .line 2878
    move/from16 v26, v0

    .line 2879
    .line 2880
    move-object/from16 v18, v1

    .line 2881
    .line 2882
    move-object/from16 v19, v2

    .line 2883
    .line 2884
    move-object/from16 v20, v3

    .line 2885
    .line 2886
    move/from16 v21, v4

    .line 2887
    .line 2888
    move/from16 v22, v5

    .line 2889
    .line 2890
    move/from16 v23, v6

    .line 2891
    .line 2892
    move/from16 v24, v7

    .line 2893
    .line 2894
    move/from16 v25, v9

    .line 2895
    .line 2896
    move-object/from16 v28, v10

    .line 2897
    .line 2898
    invoke-static/range {v17 .. v29}, Lorg/wikipedia/commons/FilePageView;->setup$default(Lorg/wikipedia/commons/FilePageView;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Ljava/util/Map;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;IIIZZZLorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/commons/FilePageFragment;I)V

    .line 2899
    .line 2900
    .line 2901
    :cond_4b
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 2902
    .line 2903
    .line 2904
    move-result-object v0

    .line 2905
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2906
    .line 2907
    .line 2908
    goto :goto_1f

    .line 2909
    :cond_4c
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Error;

    .line 2910
    .line 2911
    if-eqz v1, :cond_4d

    .line 2912
    .line 2913
    check-cast v0, Lorg/wikipedia/util/Resource$Error;

    .line 2914
    .line 2915
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 2916
    .line 2917
    iget-object v1, v10, Lorg/wikipedia/commons/FilePageFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2918
    .line 2919
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2920
    .line 2921
    .line 2922
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 2923
    .line 2924
    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 2925
    .line 2926
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2927
    .line 2928
    .line 2929
    iget-object v1, v10, Lorg/wikipedia/commons/FilePageFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2930
    .line 2931
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2932
    .line 2933
    .line 2934
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 2935
    .line 2936
    check-cast v1, Lorg/wikipedia/commons/FilePageView;

    .line 2937
    .line 2938
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2939
    .line 2940
    .line 2941
    iget-object v1, v10, Lorg/wikipedia/commons/FilePageFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2942
    .line 2943
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2944
    .line 2945
    .line 2946
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 2947
    .line 2948
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 2949
    .line 2950
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2951
    .line 2952
    .line 2953
    iget-object v1, v10, Lorg/wikipedia/commons/FilePageFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2954
    .line 2955
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2956
    .line 2957
    .line 2958
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 2959
    .line 2960
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 2961
    .line 2962
    const/4 v6, 0x0

    .line 2963
    invoke-virtual {v1, v0, v6}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 2964
    .line 2965
    .line 2966
    :cond_4d
    :goto_1f
    return-object v8

    .line 2967
    :pswitch_11
    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2968
    .line 2969
    iput-object v1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2970
    .line 2971
    new-instance v1, Lkotlinx/coroutines/flow/internal/AbortFlowException;

    .line 2972
    .line 2973
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/internal/AbortFlowException;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 2974
    .line 2975
    .line 2976
    throw v1

    .line 2977
    :pswitch_12
    move-object v6, v7

    .line 2978
    instance-of v3, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$values$1$1$emit$1;

    .line 2979
    .line 2980
    if-eqz v3, :cond_4e

    .line 2981
    .line 2982
    move-object v3, v2

    .line 2983
    check-cast v3, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$values$1$1$emit$1;

    .line 2984
    .line 2985
    iget v4, v3, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$values$1$1$emit$1;->label:I

    .line 2986
    .line 2987
    const/high16 v5, -0x80000000

    .line 2988
    .line 2989
    and-int v7, v4, v5

    .line 2990
    .line 2991
    if-eqz v7, :cond_4e

    .line 2992
    .line 2993
    sub-int/2addr v4, v5

    .line 2994
    iput v4, v3, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$values$1$1$emit$1;->label:I

    .line 2995
    .line 2996
    goto :goto_20

    .line 2997
    :cond_4e
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$values$1$1$emit$1;

    .line 2998
    .line 2999
    invoke-direct {v3, v0, v2}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$values$1$1$emit$1;-><init>(Landroidx/paging/ChannelFlowCollector;Lkotlin/coroutines/Continuation;)V

    .line 3000
    .line 3001
    .line 3002
    :goto_20
    iget-object v0, v3, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$values$1$1$emit$1;->result:Ljava/lang/Object;

    .line 3003
    .line 3004
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 3005
    .line 3006
    iget v4, v3, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$values$1$1$emit$1;->label:I

    .line 3007
    .line 3008
    if-eqz v4, :cond_50

    .line 3009
    .line 3010
    if-ne v4, v9, :cond_4f

    .line 3011
    .line 3012
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3013
    .line 3014
    .line 3015
    goto :goto_22

    .line 3016
    :cond_4f
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 3017
    .line 3018
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 3019
    .line 3020
    .line 3021
    move-object v7, v6

    .line 3022
    goto :goto_23

    .line 3023
    :cond_50
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3024
    .line 3025
    .line 3026
    check-cast v10, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 3027
    .line 3028
    if-nez v1, :cond_51

    .line 3029
    .line 3030
    sget-object v0, Lkotlinx/coroutines/flow/internal/CombineKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    .line 3031
    .line 3032
    goto :goto_21

    .line 3033
    :cond_51
    move-object v0, v1

    .line 3034
    :goto_21
    iput v9, v3, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$values$1$1$emit$1;->label:I

    .line 3035
    .line 3036
    iget-object v1, v10, Lkotlinx/coroutines/channels/ProducerCoroutine;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 3037
    .line 3038
    invoke-interface {v1, v0, v3}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 3039
    .line 3040
    .line 3041
    move-result-object v0

    .line 3042
    if-ne v0, v2, :cond_52

    .line 3043
    .line 3044
    move-object v7, v2

    .line 3045
    goto :goto_23

    .line 3046
    :cond_52
    :goto_22
    move-object v7, v8

    .line 3047
    :goto_23
    return-object v7

    .line 3048
    :pswitch_13
    move-object v0, v1

    .line 3049
    check-cast v0, Landroidx/paging/CombinedLoadStates;

    .line 3050
    .line 3051
    check-cast v10, Landroidx/paging/compose/LazyPagingItems;

    .line 3052
    .line 3053
    iget-object v1, v10, Landroidx/paging/compose/LazyPagingItems;->loadState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 3054
    .line 3055
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 3056
    .line 3057
    .line 3058
    return-object v8

    .line 3059
    :pswitch_14
    move-object v0, v1

    .line 3060
    check-cast v0, Lkotlin/Unit;

    .line 3061
    .line 3062
    check-cast v10, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 3063
    .line 3064
    invoke-interface {v10, v0}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3065
    .line 3066
    .line 3067
    return-object v8

    .line 3068
    :pswitch_15
    check-cast v1, Landroidx/paging/PageEvent;

    .line 3069
    .line 3070
    invoke-virtual {v0, v1, v2}, Landroidx/paging/ChannelFlowCollector;->emit(Landroidx/paging/PageEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 3071
    .line 3072
    .line 3073
    move-result-object v0

    .line 3074
    return-object v0

    .line 3075
    :pswitch_16
    check-cast v1, Lkotlin/collections/IndexedValue;

    .line 3076
    .line 3077
    invoke-virtual {v0, v1, v2}, Landroidx/paging/ChannelFlowCollector;->emit(Lkotlin/collections/IndexedValue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 3078
    .line 3079
    .line 3080
    move-result-object v0

    .line 3081
    return-object v0

    .line 3082
    :pswitch_17
    move-object v0, v1

    .line 3083
    check-cast v0, Ljava/lang/Number;

    .line 3084
    .line 3085
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 3086
    .line 3087
    .line 3088
    move-result v0

    .line 3089
    check-cast v10, Landroidx/compose/ui/platform/MotionDurationScaleImpl;

    .line 3090
    .line 3091
    iget-object v1, v10, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->_scaleFactor$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 3092
    .line 3093
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 3094
    .line 3095
    .line 3096
    return-object v8

    .line 3097
    :pswitch_18
    move-object v0, v1

    .line 3098
    check-cast v0, Lkotlin/Unit;

    .line 3099
    .line 3100
    check-cast v10, Landroidx/cardview/widget/CardView$1;

    .line 3101
    .line 3102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3103
    .line 3104
    const/16 v1, 0x22

    .line 3105
    .line 3106
    if-lt v0, v1, :cond_53

    .line 3107
    .line 3108
    invoke-virtual {v10}, Landroidx/cardview/widget/CardView$1;->getImm()Landroid/view/inputmethod/InputMethodManager;

    .line 3109
    .line 3110
    .line 3111
    move-result-object v0

    .line 3112
    iget-object v1, v10, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 3113
    .line 3114
    check-cast v1, Landroid/view/View;

    .line 3115
    .line 3116
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/input/internal/Api34StartStylusHandwriting;->startStylusHandwriting(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    .line 3117
    .line 3118
    .line 3119
    :cond_53
    return-object v8

    .line 3120
    :pswitch_19
    check-cast v10, Lkotlinx/coroutines/channels/SendChannel;

    .line 3121
    .line 3122
    invoke-interface {v10, v1, v2}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 3123
    .line 3124
    .line 3125
    move-result-object v0

    .line 3126
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 3127
    .line 3128
    if-ne v0, v1, :cond_54

    .line 3129
    .line 3130
    move-object v8, v0

    .line 3131
    :cond_54
    return-object v8

    .line 3132
    nop

    .line 3133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public emit(Lkotlin/collections/IndexedValue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Landroidx/paging/ChannelFlowCollector;->channel:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Request$Builder;

    instance-of v1, p2, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;

    iget v2, v1, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;

    invoke-direct {v1, p0, p2}, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;-><init>(Landroidx/paging/ChannelFlowCollector;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p0, v1, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;->result:Ljava/lang/Object;

    .line 3133
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 3134
    iget v2, v1, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-object p1, v1, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;->L$0:Lkotlin/collections/IndexedValue;

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3135
    iget-object p0, v0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 3136
    iput-object p1, v1, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;->L$0:Lkotlin/collections/IndexedValue;

    iput v5, v1, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;->label:I

    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_4

    goto :goto_2

    .line 3137
    :cond_4
    :goto_1
    iget-object p0, v0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/http/StatusLine;

    .line 3138
    iput-object v3, v1, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;->L$0:Lkotlin/collections/IndexedValue;

    iput v4, v1, Landroidx/paging/CachedPageEventFlow$job$1$1$emit$1;->label:I

    invoke-virtual {p0, p1, v1}, Lokhttp3/internal/http/StatusLine;->record(Lkotlin/collections/IndexedValue;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_5

    :goto_2
    return-object p2

    .line 3139
    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

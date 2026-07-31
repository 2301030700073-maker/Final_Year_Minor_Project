.class public final Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Object;

.field public final synthetic val$item:Ljava/lang/Object;

.field public final synthetic val$menu:Ljava/lang/Object;

.field public final synthetic val$nextInfo:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/cardview/widget/CardView$1;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$item:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$menu:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->this$1:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 16
    iput p5, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->this$1:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$item:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$menu:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$menu:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->this$1:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v5, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$item:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p0, Ljava/lang/String;

    .line 17
    .line 18
    check-cast v5, Lcoil3/memory/MemoryCacheService;

    .line 19
    .line 20
    iget-object v0, v5, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Landroid/os/Messenger;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v4, Lcoil3/memory/MemoryCacheService;

    .line 29
    .line 30
    iget-object v4, v4, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v4, Landroidx/media/MediaBrowserServiceCompat;

    .line 33
    .line 34
    iget-object v4, v4, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    .line 35
    .line 36
    invoke-virtual {v4, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 41
    .line 42
    const-string v4, "MBServiceCompat"

    .line 43
    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v1, "removeSubscription for callback that isn\'t registered id="

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_0
    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    .line 65
    .line 66
    check-cast v3, Landroid/os/IBinder;

    .line 67
    .line 68
    if-nez v3, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_1
    :goto_0
    move v1, v2

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Ljava/util/List;

    .line 84
    .line 85
    if-eqz v5, :cond_1

    .line 86
    .line 87
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_4

    .line 96
    .line 97
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    check-cast v7, Landroidx/core/util/Pair;

    .line 102
    .line 103
    iget-object v7, v7, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    .line 104
    .line 105
    if-ne v3, v7, :cond_3

    .line 106
    .line 107
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 108
    .line 109
    .line 110
    move v2, v1

    .line 111
    goto :goto_1

    .line 112
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_1

    .line 117
    .line 118
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :goto_2
    if-nez v1, :cond_5

    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v1, "removeSubscription called for "

    .line 127
    .line 128
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string p0, " which is not subscribed"

    .line 135
    .line 136
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    :cond_5
    :goto_3
    return-void

    .line 147
    :pswitch_0
    check-cast v5, Landroid/view/View;

    .line 148
    .line 149
    check-cast p0, Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 150
    .line 151
    check-cast v3, Landroidx/cardview/widget/CardView$1;

    .line 152
    .line 153
    invoke-static {v5, p0, v3}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->dispatchOnStart(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/cardview/widget/CardView$1;)V

    .line 154
    .line 155
    .line 156
    check-cast v4, Landroid/animation/ValueAnimator;

    .line 157
    .line 158
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :pswitch_1
    check-cast v4, Landroidx/appcompat/widget/PopupMenu$1;

    .line 163
    .line 164
    iget-object v0, v4, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;

    .line 167
    .line 168
    check-cast p0, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 169
    .line 170
    check-cast v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 171
    .line 172
    if-eqz v5, :cond_6

    .line 173
    .line 174
    iput-boolean v1, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    .line 175
    .line 176
    iget-object v1, v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 179
    .line 180
    .line 181
    iput-boolean v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    .line 182
    .line 183
    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_7

    .line 188
    .line 189
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_7

    .line 194
    .line 195
    check-cast v3, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 196
    .line 197
    const/4 v0, 0x4

    .line 198
    const/4 v1, 0x0

    .line 199
    invoke-virtual {v3, p0, v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    .line 200
    .line 201
    .line 202
    :cond_7
    return-void

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

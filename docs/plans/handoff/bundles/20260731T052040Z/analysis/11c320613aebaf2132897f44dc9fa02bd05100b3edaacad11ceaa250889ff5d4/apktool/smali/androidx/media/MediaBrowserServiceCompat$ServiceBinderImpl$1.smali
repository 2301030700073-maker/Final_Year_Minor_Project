.class public final Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcoil3/memory/MemoryCacheService;

.field public final synthetic val$callbacks:Lcoil3/memory/MemoryCacheService;

.field public final synthetic val$pid:I

.field public final synthetic val$pkg:Ljava/lang/String;

.field public final synthetic val$rootHints:Landroid/os/Bundle;

.field public final synthetic val$uid:I


# direct methods
.method public constructor <init>(IILandroid/os/Bundle;Lcoil3/memory/MemoryCacheService;Lcoil3/memory/MemoryCacheService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Lcoil3/memory/MemoryCacheService;

    .line 5
    .line 6
    iput-object p5, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Lcoil3/memory/MemoryCacheService;

    .line 7
    .line 8
    iput-object p6, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    .line 9
    .line 10
    iput p1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pid:I

    .line 11
    .line 12
    iput p2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$uid:I

    .line 13
    .line 14
    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$rootHints:Landroid/os/Bundle;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v5, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Lcoil3/memory/MemoryCacheService;

    .line 2
    .line 3
    iget-object v0, v5, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/os/Messenger;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v6

    .line 11
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Lcoil3/memory/MemoryCacheService;

    .line 12
    .line 13
    iget-object v1, v0, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 16
    .line 17
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v1, v6}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-object v1, v0

    .line 23
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 24
    .line 25
    iget-object v1, v1, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 28
    .line 29
    iget v3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pid:I

    .line 30
    .line 31
    iget v4, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$uid:I

    .line 32
    .line 33
    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct/range {v0 .. v5}, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILcoil3/memory/MemoryCacheService;)V

    .line 36
    .line 37
    .line 38
    iget v3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$uid:I

    .line 39
    .line 40
    iget-object p0, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$rootHints:Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-virtual {v1, v2, v3, p0}, Landroidx/media/MediaBrowserServiceCompat;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    iput-object p0, v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 47
    .line 48
    const/4 v3, 0x2

    .line 49
    const-string v4, "MBServiceCompat"

    .line 50
    .line 51
    if-nez p0, :cond_0

    .line 52
    .line 53
    const-string p0, "No root for client "

    .line 54
    .line 55
    const-string v0, " from service "

    .line 56
    .line 57
    invoke-static {p0, v2, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-class v0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    :try_start_0
    invoke-virtual {v5, v3, p0}, Lcoil3/memory/MemoryCacheService;->sendRequest(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :catch_0
    const-string p0, "Calling onConnectFailed() failed. Ignoring. pkg="

    .line 83
    .line 84
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    :try_start_1
    iget-object p0, v1, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    .line 93
    .line 94
    invoke-virtual {p0, v6, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    const/4 p0, 0x0

    .line 98
    invoke-interface {v6, v0, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 99
    .line 100
    .line 101
    iget-object p0, v1, Landroidx/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 102
    .line 103
    if-eqz p0, :cond_2

    .line 104
    .line 105
    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    const-string v7, "//org.schabi.newpipe"

    .line 111
    .line 112
    iget-object v0, v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Landroid/os/Bundle;

    .line 113
    .line 114
    if-nez v0, :cond_1

    .line 115
    .line 116
    new-instance v0, Landroid/os/Bundle;

    .line 117
    .line 118
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .line 120
    .line 121
    :cond_1
    const-string v8, "extra_service_version"

    .line 122
    .line 123
    invoke-virtual {v0, v8, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    new-instance v3, Landroid/os/Bundle;

    .line 127
    .line 128
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v8, "data_media_item_id"

    .line 132
    .line 133
    invoke-virtual {v3, v8, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v7, "data_media_session_token"

    .line 137
    .line 138
    invoke-virtual {v3, v7, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    .line 140
    .line 141
    const-string p0, "data_root_hints"

    .line 142
    .line 143
    invoke-virtual {v3, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 144
    .line 145
    .line 146
    const/4 p0, 0x1

    .line 147
    invoke-virtual {v5, p0, v3}, Lcoil3/memory/MemoryCacheService;->sendRequest(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :catch_1
    const-string p0, "Calling onConnect() failed. Dropping client. pkg="

    .line 152
    .line 153
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    iget-object p0, v1, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    .line 161
    .line 162
    invoke-virtual {p0, v6}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    :cond_2
    :goto_0
    return-void
.end method

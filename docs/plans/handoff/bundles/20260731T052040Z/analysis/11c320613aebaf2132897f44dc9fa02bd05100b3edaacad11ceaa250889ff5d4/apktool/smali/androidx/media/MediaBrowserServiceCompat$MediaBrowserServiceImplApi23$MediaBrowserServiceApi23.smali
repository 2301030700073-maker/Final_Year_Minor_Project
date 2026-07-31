.class public Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23;
.super Landroid/service/media/MediaBrowserService;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic this$1$1:Lcoil3/ComponentRegistry$Builder;


# direct methods
.method public constructor <init>(Lcoil3/ComponentRegistry$Builder;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23;->this$1$1:Lcoil3/ComponentRegistry$Builder;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 8

    .line 1
    invoke-static {p3}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23;->this$1$1:Lcoil3/ComponentRegistry$Builder;

    .line 5
    .line 6
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v2, v0

    .line 9
    check-cast v2, Landroidx/media/MediaBrowserServiceCompat;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    move-object p3, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    move-object p3, v1

    .line 22
    :goto_0
    const/4 v1, -0x1

    .line 23
    if-eqz p3, :cond_3

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const-string v4, "extra_client_version"

    .line 27
    .line 28
    invoke-virtual {p3, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Landroid/os/Messenger;

    .line 38
    .line 39
    iget-object v4, v2, Landroidx/media/MediaBrowserServiceCompat;->mHandler:Lorg/schabi/newpipe/views/FocusOverlayView$1;

    .line 40
    .line 41
    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 42
    .line 43
    .line 44
    iput-object v3, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 45
    .line 46
    new-instance v3, Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v4, "extra_service_version"

    .line 52
    .line 53
    const/4 v5, 0x2

    .line 54
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    iget-object v4, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v4, Landroid/os/Messenger;

    .line 60
    .line 61
    invoke-virtual {v4}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    const-string v5, "extra_messenger"

    .line 66
    .line 67
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 68
    .line 69
    .line 70
    iget-object v4, v2, Landroidx/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 71
    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getExtraBinder()Landroid/support/v4/media/session/IMediaSession;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    if-nez v4, :cond_1

    .line 79
    .line 80
    move-object v4, v0

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    :goto_1
    const-string v5, "extra_session_binder"

    .line 87
    .line 88
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    iget-object v4, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v4, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :goto_2
    const-string v4, "extra_calling_pid"

    .line 100
    .line 101
    invoke-virtual {p3, v4, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    move-object v7, v3

    .line 109
    :goto_3
    move v4, v1

    .line 110
    goto :goto_4

    .line 111
    :cond_3
    move-object v7, v0

    .line 112
    goto :goto_3

    .line 113
    :goto_4
    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 114
    .line 115
    const/4 v6, 0x0

    .line 116
    move-object v3, p1

    .line 117
    move v5, p2

    .line 118
    invoke-direct/range {v1 .. v6}, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILcoil3/memory/MemoryCacheService;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v3, v5, p3}, Landroidx/media/MediaBrowserServiceCompat;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-nez p1, :cond_4

    .line 126
    .line 127
    move-object p0, v0

    .line 128
    goto :goto_6

    .line 129
    :cond_4
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p0, Landroid/os/Messenger;

    .line 132
    .line 133
    if-eqz p0, :cond_5

    .line 134
    .line 135
    iget-object p0, v2, Landroidx/media/MediaBrowserServiceCompat;->mPendingConnections:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    :cond_5
    iget-object p0, p1, Landroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Landroid/os/Bundle;

    .line 141
    .line 142
    if-nez v7, :cond_6

    .line 143
    .line 144
    move-object v7, p0

    .line 145
    goto :goto_5

    .line 146
    :cond_6
    if-eqz p0, :cond_7

    .line 147
    .line 148
    invoke-virtual {v7, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 149
    .line 150
    .line 151
    :cond_7
    :goto_5
    new-instance p0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 152
    .line 153
    invoke-direct {p0, v7}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/os/Bundle;)V

    .line 154
    .line 155
    .line 156
    :goto_6
    if-nez p0, :cond_8

    .line 157
    .line 158
    return-object v0

    .line 159
    :cond_8
    new-instance p1, Landroid/service/media/MediaBrowserService$BrowserRoot;

    .line 160
    .line 161
    const-string p2, "//org.schabi.newpipe"

    .line 162
    .line 163
    iget-object p0, p0, Landroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Landroid/os/Bundle;

    .line 164
    .line 165
    invoke-direct {p1, p2, p0}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 166
    .line 167
    .line 168
    return-object p1
.end method

.method public final onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 2

    .line 1
    new-instance v0, Lcoil3/memory/MemoryCacheService;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lcoil3/memory/MemoryCacheService;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Landroidx/media/MediaBrowserServiceCompat$3;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {p2, p1, v0, v1}, Landroidx/media/MediaBrowserServiceCompat$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23;->this$1$1:Lcoil3/ComponentRegistry$Builder;

    .line 13
    .line 14
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Landroidx/media/MediaBrowserServiceCompat;

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Landroidx/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 0

    .line 1
    new-instance p0, Lcoil3/memory/MemoryCacheService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcoil3/memory/MemoryCacheService;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcoil3/memory/MemoryCacheService;->sendResult(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

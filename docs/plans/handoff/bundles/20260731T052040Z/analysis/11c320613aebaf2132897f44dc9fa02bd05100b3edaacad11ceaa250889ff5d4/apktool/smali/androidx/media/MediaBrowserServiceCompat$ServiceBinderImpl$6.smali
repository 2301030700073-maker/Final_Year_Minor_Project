.class public final Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcoil3/memory/MemoryCacheService;

.field public final synthetic val$callbacks:Lcoil3/memory/MemoryCacheService;

.field public final synthetic val$pid:I

.field public final synthetic val$pkg:Ljava/lang/String;

.field public final synthetic val$uid:I


# direct methods
.method public constructor <init>(IILandroid/os/Bundle;Lcoil3/memory/MemoryCacheService;Lcoil3/memory/MemoryCacheService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->this$1:Lcoil3/memory/MemoryCacheService;

    .line 5
    .line 6
    iput-object p5, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$callbacks:Lcoil3/memory/MemoryCacheService;

    .line 7
    .line 8
    iput p1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$uid:I

    .line 9
    .line 10
    iput-object p6, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$pkg:Ljava/lang/String;

    .line 11
    .line 12
    iput p2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$pid:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v5, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$callbacks:Lcoil3/memory/MemoryCacheService;

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
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->this$1:Lcoil3/memory/MemoryCacheService;

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
    iget-object v0, v0, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v1, v0

    .line 25
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 26
    .line 27
    iget-object v0, v1, Landroidx/media/MediaBrowserServiceCompat;->mPendingConnections:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 45
    .line 46
    iget v3, v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->uid:I

    .line 47
    .line 48
    iget v4, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$uid:I

    .line 49
    .line 50
    if-ne v3, v4, :cond_0

    .line 51
    .line 52
    iget-object v3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$pkg:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_1

    .line 59
    .line 60
    iget v3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$pid:I

    .line 61
    .line 62
    if-gtz v3, :cond_2

    .line 63
    .line 64
    :cond_1
    move-object v2, v0

    .line 65
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 66
    .line 67
    move-object v3, v2

    .line 68
    iget-object v2, v3, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    .line 69
    .line 70
    move-object v4, v3

    .line 71
    iget v3, v4, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->pid:I

    .line 72
    .line 73
    iget v4, v4, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->uid:I

    .line 74
    .line 75
    invoke-direct/range {v0 .. v5}, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILcoil3/memory/MemoryCacheService;)V

    .line 76
    .line 77
    .line 78
    move-object v2, v0

    .line 79
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 80
    .line 81
    .line 82
    :cond_3
    if-nez v2, :cond_4

    .line 83
    .line 84
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 85
    .line 86
    iget v3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$pid:I

    .line 87
    .line 88
    iget v4, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$uid:I

    .line 89
    .line 90
    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$pkg:Ljava/lang/String;

    .line 91
    .line 92
    invoke-direct/range {v0 .. v5}, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILcoil3/memory/MemoryCacheService;)V

    .line 93
    .line 94
    .line 95
    move-object v2, v0

    .line 96
    :cond_4
    iget-object p0, v1, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    .line 97
    .line 98
    invoke-virtual {p0, v6, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    const/4 p0, 0x0

    .line 102
    :try_start_0
    invoke-interface {v6, v2, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catch_0
    const-string p0, "MBServiceCompat"

    .line 107
    .line 108
    const-string v0, "IBinder is already dead."

    .line 109
    .line 110
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    return-void
.end method

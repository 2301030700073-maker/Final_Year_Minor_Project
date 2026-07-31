.class final Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemotePlaybackClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/RemotePlaybackClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatusReceiver"
.end annotation


# static fields
.field public static final ACTION_ITEM_STATUS_CHANGED:Ljava/lang/String; = "android.support.v7.media.actions.ACTION_ITEM_STATUS_CHANGED"

.field public static final ACTION_SESSION_STATUS_CHANGED:Ljava/lang/String; = "android.support.v7.media.actions.ACTION_SESSION_STATUS_CHANGED"


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/RemotePlaybackClient;


# direct methods
.method private constructor <init>(Landroid/support/v7/media/RemotePlaybackClient;)V
    .locals 0

    .line 783
    iput-object p1, p0, Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/media/RemotePlaybackClient;Landroid/support/v7/media/RemotePlaybackClient$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/media/RemotePlaybackClient;
    .param p2, "x1"    # Landroid/support/v7/media/RemotePlaybackClient$1;

    .line 783
    invoke-direct {p0, p1}, Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;-><init>(Landroid/support/v7/media/RemotePlaybackClient;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 791
    const-string v0, "android.media.intent.extra.SESSION_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "sessionId":Ljava/lang/String;
    if-eqz v0, :cond_9

    iget-object v1, p0, Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    invoke-static {v1}, Landroid/support/v7/media/RemotePlaybackClient;->access$700(Landroid/support/v7/media/RemotePlaybackClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 798
    :cond_0
    const-string v1, "android.media.intent.extra.SESSION_STATUS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/media/MediaSessionStatus;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaSessionStatus;

    move-result-object v7

    .line 800
    .local v7, "sessionStatus":Landroid/support/v7/media/MediaSessionStatus;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 801
    .local v8, "action":Ljava/lang/String;
    const-string v1, "android.support.v7.media.actions.ACTION_ITEM_STATUS_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 802
    const-string v1, "android.media.intent.extra.ITEM_ID"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 803
    .local v9, "itemId":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 804
    const-string v1, "RemotePlaybackClient"

    const-string v2, "Discarding spurious status callback with missing item id."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    return-void

    .line 808
    :cond_1
    const-string v1, "android.media.intent.extra.ITEM_STATUS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/media/MediaItemStatus;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaItemStatus;

    move-result-object v10

    .line 810
    .local v10, "itemStatus":Landroid/support/v7/media/MediaItemStatus;
    if-nez v10, :cond_2

    .line 811
    const-string v1, "RemotePlaybackClient"

    const-string v2, "Discarding spurious status callback with missing item status."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    return-void

    .line 815
    :cond_2
    invoke-static {}, Landroid/support/v7/media/RemotePlaybackClient;->access$300()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 816
    const-string v1, "RemotePlaybackClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received item status callback: sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", sessionStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", itemId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", itemStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_3
    iget-object v1, p0, Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    invoke-static {v1}, Landroid/support/v7/media/RemotePlaybackClient;->access$800(Landroid/support/v7/media/RemotePlaybackClient;)Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 823
    iget-object v1, p0, Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    invoke-static {v1}, Landroid/support/v7/media/RemotePlaybackClient;->access$800(Landroid/support/v7/media/RemotePlaybackClient;)Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    move-object v3, v0

    move-object v4, v7

    move-object v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;->onItemStatusChanged(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v7/media/MediaSessionStatus;Ljava/lang/String;Landroid/support/v7/media/MediaItemStatus;)V

    .line 826
    .end local v9    # "itemId":Ljava/lang/String;
    .end local v10    # "itemStatus":Landroid/support/v7/media/MediaItemStatus;
    :cond_4
    goto :goto_0

    :cond_5
    const-string v1, "android.support.v7.media.actions.ACTION_SESSION_STATUS_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 827
    if-nez v7, :cond_6

    .line 828
    const-string v1, "RemotePlaybackClient"

    const-string v2, "Discarding spurious media status callback with missing session status."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    return-void

    .line 833
    :cond_6
    invoke-static {}, Landroid/support/v7/media/RemotePlaybackClient;->access$300()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 834
    const-string v1, "RemotePlaybackClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received session status callback: sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", sessionStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_7
    iget-object v1, p0, Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    invoke-static {v1}, Landroid/support/v7/media/RemotePlaybackClient;->access$800(Landroid/support/v7/media/RemotePlaybackClient;)Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 839
    iget-object v1, p0, Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    invoke-static {v1}, Landroid/support/v7/media/RemotePlaybackClient;->access$800(Landroid/support/v7/media/RemotePlaybackClient;)Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v7}, Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;->onSessionStatusChanged(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v7/media/MediaSessionStatus;)V

    .line 843
    :cond_8
    :goto_0
    return-void

    .line 793
    .end local v7    # "sessionStatus":Landroid/support/v7/media/MediaSessionStatus;
    .end local v8    # "action":Ljava/lang/String;
    :cond_9
    :goto_1
    const-string v1, "RemotePlaybackClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding spurious status callback with missing or invalid session id: sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    return-void
.end method

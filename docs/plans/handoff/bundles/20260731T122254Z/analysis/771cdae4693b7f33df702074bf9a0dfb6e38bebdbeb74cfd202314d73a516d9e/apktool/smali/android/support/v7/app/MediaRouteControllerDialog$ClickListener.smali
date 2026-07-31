.class final Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V
    .locals 0

    .line 396
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/support/v7/app/MediaRouteControllerDialog$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/app/MediaRouteControllerDialog;
    .param p2, "x1"    # Landroid/support/v7/app/MediaRouteControllerDialog$1;

    .line 396
    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 400
    .local v0, "id":I
    sget v1, Landroid/support/v7/mediarouter/R$id;->stop:I

    if-eq v0, v1, :cond_3

    sget v1, Landroid/support/v7/mediarouter/R$id;->disconnect:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    sget v1, Landroid/support/v7/mediarouter/R$id;->play_pause:I

    if-ne v0, v1, :cond_2

    .line 408
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$500(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$700(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 409
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$700(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 410
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$500(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    goto :goto_2

    .line 412
    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$500(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    goto :goto_2

    .line 415
    :cond_2
    sget v1, Landroid/support/v7/mediarouter/R$id;->settings:I

    if-ne v0, v1, :cond_6

    .line 416
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$400(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getSettingsIntent()Landroid/content/IntentSender;

    move-result-object v1

    .line 417
    .local v1, "is":Landroid/content/IntentSender;
    if-eqz v1, :cond_6

    .line 419
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V

    .line 420
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    goto :goto_2

    .line 421
    :catch_0
    move-exception v2

    .line 422
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MediaRouteControllerDialog"

    const-string v4, "Error opening route settings."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    .end local v1    # "is":Landroid/content/IntentSender;
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 401
    :cond_3
    :goto_0
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$400(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 402
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$900(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v7/media/MediaRouter;

    move-result-object v1

    sget v2, Landroid/support/v7/mediarouter/R$id;->stop:I

    if-ne v0, v2, :cond_4

    const/4 v2, 0x2

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/v7/media/MediaRouter;->unselect(I)V

    .line 406
    :cond_5
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->dismiss()V

    .line 426
    :cond_6
    :goto_2
    return-void
.end method

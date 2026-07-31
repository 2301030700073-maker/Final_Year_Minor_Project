.class public final synthetic Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 2
    .line 3
    sget v0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->$r8$clinit:I

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    if-ne p1, v1, :cond_1

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    new-instance p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$InputStreamMode;

    .line 23
    .line 24
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;

    .line 25
    .line 26
    iget v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->currentServiceId:I

    .line 27
    .line 28
    invoke-direct {p1, v1, v0}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$InputStreamMode;-><init>(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/ImportConfirmationDialog;->show(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.class public final synthetic Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->inputText:Landroid/widget/EditText;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->inputText:Landroid/widget/EditText;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    new-instance v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$ChannelUrlMode;

    .line 28
    .line 29
    iget v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->currentServiceId:I

    .line 30
    .line 31
    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$ChannelUrlMode;-><init>(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v0}, Lorg/schabi/newpipe/local/subscription/ImportConfirmationDialog;->show(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->requestImportFileLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 39
    .line 40
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 41
    .line 42
    const-string v1, "*/*"

    .line 43
    .line 44
    invoke-static {v0, v1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getPicker(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p1, v0, v1, p0}, Lokhttp3/Cookie$Companion;->launchSafe(Landroidx/activity/result/ActivityResultLauncher;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

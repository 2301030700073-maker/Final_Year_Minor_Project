.class public final Lnet/thunderbird/app/common/feature/MessageListLauncher;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/app/common/feature/MessageListLauncher;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final launch(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lnet/thunderbird/app/common/feature/MessageListLauncher;->context:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/fsck/k9/activity/MessageHomeActivity$Companion;->shortcutIntentForAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-object p1, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/fsck/k9/activity/MessageHomeActivity$Companion;->launch(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.class public final Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field public authRequestIntent:Landroid/content/Intent;

.field public authorizationLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final registry:Landroidx/activity/ComponentActivity$activityResultRegistry$1;

.field public final synthetic this$0:Lapp/k9mail/feature/settings/import/ui/AuthViewModel;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/settings/import/ui/AuthViewModel;Landroidx/activity/ComponentActivity$activityResultRegistry$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver;->this$0:Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 8
    .line 9
    iput-object p2, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver;->registry:Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3

    .line 1
    new-instance p1, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, v0}, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver$onCreate$1;

    .line 8
    .line 9
    iget-object v1, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver;->this$0:Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver$onCreate$1;-><init>(Lapp/k9mail/feature/settings/import/ui/AuthViewModel;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver;->registry:Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    .line 15
    .line 16
    const-string v2, "app.k9mail_auth"

    .line 17
    .line 18
    invoke-virtual {v1, v2, p1, v0}, Landroidx/activity/ComponentActivity$activityResultRegistry$1;->register(Ljava/lang/String;Lcom/fsck/k9/sasl/OAuthBearer;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver;->authorizationLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 23
    .line 24
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver;->authRequestIntent:Landroid/content/Intent;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver;->authRequestIntent:Landroid/content/Intent;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$AppAuthResultObserver;->authorizationLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 3
    .line 4
    return-void
.end method

.method public final onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

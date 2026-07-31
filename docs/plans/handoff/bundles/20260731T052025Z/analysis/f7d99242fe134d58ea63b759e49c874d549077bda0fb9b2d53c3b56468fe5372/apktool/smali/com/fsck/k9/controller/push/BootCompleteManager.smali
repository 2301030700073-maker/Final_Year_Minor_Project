.class public final Lcom/fsck/k9/controller/push/BootCompleteManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field public final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/fsck/k9/controller/push/BootCompleteManager;->packageManager:Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    new-instance v0, Landroid/content/ComponentName;

    .line 11
    .line 12
    const-class v1, Lcom/fsck/k9/controller/push/BootCompleteReceiver;

    .line 13
    .line 14
    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/fsck/k9/controller/push/BootCompleteManager;->componentName:Landroid/content/ComponentName;

    .line 18
    .line 19
    return-void
.end method

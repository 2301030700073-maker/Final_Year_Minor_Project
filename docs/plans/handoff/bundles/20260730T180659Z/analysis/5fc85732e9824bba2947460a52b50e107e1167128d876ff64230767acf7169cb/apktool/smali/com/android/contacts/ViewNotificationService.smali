.class public Lcom/android/contacts/ViewNotificationService;
.super Landroid/app/Service;
.source "ViewNotificationService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/android/contacts/ViewNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ViewNotificationService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/android/contacts/ViewNotificationService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 45
    new-instance p2, Lcom/android/contacts/model/ContactLoader;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lcom/android/contacts/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 46
    new-instance p1, Lcom/android/contacts/ViewNotificationService$1;

    invoke-direct {p1, p0, p3}, Lcom/android/contacts/ViewNotificationService$1;-><init>(Lcom/android/contacts/ViewNotificationService;I)V

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Landroid/content/AsyncTaskLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 67
    invoke-virtual {p2}, Landroid/content/AsyncTaskLoader;->startLoading()V

    const/4 p1, 0x3

    return p1
.end method

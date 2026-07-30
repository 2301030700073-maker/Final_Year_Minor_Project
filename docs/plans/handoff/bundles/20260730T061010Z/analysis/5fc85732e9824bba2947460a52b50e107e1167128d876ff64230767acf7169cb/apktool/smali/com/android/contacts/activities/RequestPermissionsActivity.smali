.class public Lcom/android/contacts/activities/RequestPermissionsActivity;
.super Lcom/android/contacts/activities/RequestPermissionsActivityBase;
.source "RequestPermissionsActivity.java"


# static fields
.field private static sRequiredPermissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/contacts/activities/RequestPermissionsActivityBase;-><init>()V

    return-void
.end method

.method private static getPermissions(Landroid/content/pm/PackageManager;)[Ljava/lang/String;
    .locals 2

    .line 58
    sget-object v0, Lcom/android/contacts/activities/RequestPermissionsActivity;->sRequiredPermissions:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.GET_ACCOUNTS"

    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_CONTACTS"

    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_CONTACTS"

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.hardware.telephony"

    .line 65
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "android.permission.CALL_PHONE"

    .line 70
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "android.permission.READ_PHONE_STATE"

    .line 71
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    .line 73
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    sput-object p0, Lcom/android/contacts/activities/RequestPermissionsActivity;->sRequiredPermissions:[Ljava/lang/String;

    .line 75
    :cond_1
    sget-object p0, Lcom/android/contacts/activities/RequestPermissionsActivity;->sRequiredPermissions:[Ljava/lang/String;

    return-object p0
.end method

.method public static hasRequiredPermissions(Landroid/content/Context;)Z
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/activities/RequestPermissionsActivity;->getPermissions(Landroid/content/pm/PackageManager;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/contacts/activities/RequestPermissionsActivityBase;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static startPermissionActivityIfNeeded(Landroid/app/Activity;)Z
    .locals 2

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/activities/RequestPermissionsActivity;->getPermissions(Landroid/content/pm/PackageManager;)[Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/contacts/activities/RequestPermissionsActivity;

    .line 52
    invoke-static {p0, v0, v1}, Lcom/android/contacts/activities/RequestPermissionsActivityBase;->startPermissionActivity(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected getPermissions()[Ljava/lang/String;
    .locals 1

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/activities/RequestPermissionsActivity;->getPermissions(Landroid/content/pm/PackageManager;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 81
    array-length v0, p2

    if-lez v0, :cond_1

    .line 82
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/activities/RequestPermissionsActivityBase;->isAllGranted([Ljava/lang/String;[I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 83
    iget-object p2, p0, Lcom/android/contacts/activities/RequestPermissionsActivityBase;->mPreviousActivityIntent:Landroid/content/Intent;

    const/high16 p3, 0x10000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    iget-boolean p2, p0, Lcom/android/contacts/activities/RequestPermissionsActivityBase;->mIsCallerSelf:Z

    if-eqz p2, :cond_0

    .line 85
    iget-object p2, p0, Lcom/android/contacts/activities/RequestPermissionsActivityBase;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object p2, p0, Lcom/android/contacts/activities/RequestPermissionsActivityBase;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 89
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 90
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 92
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string p3, "broadcastPermissionsGranted"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_1

    :cond_1
    const p2, 0x7f1001a7

    .line 95
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

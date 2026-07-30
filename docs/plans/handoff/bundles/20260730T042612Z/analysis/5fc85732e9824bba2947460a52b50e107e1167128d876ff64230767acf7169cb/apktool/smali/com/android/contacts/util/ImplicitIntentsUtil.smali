.class public Lcom/android/contacts/util/ImplicitIntentsUtil;
.super Ljava/lang/Object;
.source "ImplicitIntentsUtil.java"


# direct methods
.method public static composeQuickContactIntent(Landroid/content/Context;Landroid/net/Uri;I)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x4

    .line 117
    invoke-static {p0, p1, v0, p2}, Lcom/android/contacts/util/ImplicitIntentsUtil;->composeQuickContactIntent(Landroid/content/Context;Landroid/net/Uri;II)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static composeQuickContactIntent(Landroid/content/Context;Landroid/net/Uri;II)Landroid/content/Intent;
    .locals 2

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "android.provider.action.QUICK_CONTACT"

    .line 127
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "android.provider.extra.MODE"

    .line 129
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x4000000

    .line 131
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "previous_screen_type"

    .line 132
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static getIntentForAddingAccount()Landroid/content/Intent;
    .locals 3

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x80000

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.contacts"

    .line 143
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "authorities"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getIntentForAddingGoogleAccount()Landroid/content/Intent;
    .locals 3

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x80000

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.google"

    .line 154
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "account_types"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getIntentForQuickContactLauncherShortcut(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 160
    invoke-static {p0, p1, v0, v1}, Lcom/android/contacts/util/ImplicitIntentsUtil;->composeQuickContactIntent(Landroid/content/Context;Landroid/net/Uri;II)Landroid/content/Intent;

    move-result-object p1

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const p0, 0x10018000

    .line 170
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "com.android.launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    const/4 v0, 0x1

    .line 174
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "android.provider.extra.EXCLUDE_MIMES"

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method

.method private static getIntentInAppIfExists(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    const/4 v0, 0x0

    .line 187
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v2, 0x10000

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 192
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 195
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    .line 196
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 201
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 200
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static startActivityInApp(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startActivityInAppIfPossible(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 67
    invoke-static {p0, p1}, Lcom/android/contacts/util/ImplicitIntentsUtil;->getIntentInAppIfExists(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static startActivityOutsideApp(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 89
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 92
    invoke-static {p0, p1}, Lcom/android/contacts/util/ImplicitIntentsUtil;->getIntentInAppIfExists(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 93
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "startActivityOutsideApp() was called for an intent that can be handled inside the app"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 97
    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startQuickContact(Landroid/app/Activity;Landroid/net/Uri;I)V
    .locals 0

    .line 105
    invoke-static {p0, p1, p2}, Lcom/android/contacts/util/ImplicitIntentsUtil;->composeQuickContactIntent(Landroid/content/Context;Landroid/net/Uri;I)Landroid/content/Intent;

    move-result-object p1

    .line 108
    invoke-static {p0, p1}, Lcom/android/contacts/util/ImplicitIntentsUtil;->startActivityInApp(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

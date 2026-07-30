.class public abstract Lcom/android/contacts/ContactsActivity;
.super Lcom/android/contacts/activities/TransactionSafeActivity;
.source "ContactsActivity.java"

# interfaces
.implements Lcom/android/contacts/ContactSaveService$Listener;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_1

    .line 43
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInjectedServices()Lcom/android/contacts/testing/InjectedServices;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/android/contacts/testing/InjectedServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_1

    .line 48
    invoke-super {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1

    .line 56
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInjectedServices()Lcom/android/contacts/testing/InjectedServices;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/android/contacts/testing/InjectedServices;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 64
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 79
    invoke-static {p0}, Lcom/android/contacts/ContactSaveService;->registerListener(Lcom/android/contacts/ContactSaveService$Listener;)V

    .line 80
    invoke-super {p0, p1}, Lcom/android/contacts/activities/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 85
    invoke-static {p0}, Lcom/android/contacts/ContactSaveService;->unregisterListener(Lcom/android/contacts/ContactSaveService$Listener;)V

    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onServiceCompleted(Landroid/content/Intent;)V
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

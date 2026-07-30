.class Lcom/android/contacts/model/AccountTypeManagerImpl$3;
.super Landroid/database/ContentObserver;
.source "AccountTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/model/AccountTypeManagerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/contacts/model/AccountTypeManagerImpl;Landroid/os/Handler;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$3;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 0

    .line 420
    iget-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$3;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManagerImpl;->access$300(Lcom/android/contacts/model/AccountTypeManagerImpl;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 425
    iget-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$3;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManagerImpl;->access$300(Lcom/android/contacts/model/AccountTypeManagerImpl;)V

    return-void
.end method

.class Lcom/android/contacts/model/AccountTypeManagerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "AccountTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountTypeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/contacts/model/AccountTypeManagerImpl;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$2;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 370
    iget-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$2;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManagerImpl;->access$200(Lcom/android/contacts/model/AccountTypeManagerImpl;)V

    return-void
.end method

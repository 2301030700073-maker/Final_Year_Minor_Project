.class public Lcom/android/contacts/util/concurrent/ListenableFutureLoader$ForceLoadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ListenableFutureLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/concurrent/ListenableFutureLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForceLoadReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/util/concurrent/ListenableFutureLoader;


# direct methods
.method public constructor <init>(Lcom/android/contacts/util/concurrent/ListenableFutureLoader;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader$ForceLoadReceiver;->this$0:Lcom/android/contacts/util/concurrent/ListenableFutureLoader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 153
    iget-object p1, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader$ForceLoadReceiver;->this$0:Lcom/android/contacts/util/concurrent/ListenableFutureLoader;

    invoke-virtual {p1}, Landroid/content/Loader;->onContentChanged()V

    return-void
.end method

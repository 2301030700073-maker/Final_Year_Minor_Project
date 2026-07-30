.class Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;
.super Landroid/os/AsyncTask;
.source "ProviderStatusWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ProviderStatusWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ProviderStatusWatcher;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/ProviderStatusWatcher;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/ProviderStatusWatcher;Lcom/android/contacts/list/ProviderStatusWatcher$1;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;-><init>(Lcom/android/contacts/list/ProviderStatusWatcher;)V

    return-void
.end method

.method private cleanUp()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$702(Lcom/android/contacts/list/ProviderStatusWatcher;Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;)Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7

    .line 219
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-static {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$300(Lcom/android/contacts/list/ProviderStatusWatcher;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    .line 220
    invoke-static {}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$200()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 219
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_1

    .line 223
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$402(Lcom/android/contacts/list/ProviderStatusWatcher;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 227
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 239
    iget-object p1, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-static {p1}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$500(Lcom/android/contacts/list/ProviderStatusWatcher;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 240
    :try_start_3
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-static {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$500(Lcom/android/contacts/list/ProviderStatusWatcher;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 241
    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 230
    :cond_0
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 231
    throw v1
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 239
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-static {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$500(Lcom/android/contacts/list/ProviderStatusWatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 240
    :try_start_5
    iget-object v1, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-static {v1}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$500(Lcom/android/contacts/list/ProviderStatusWatcher;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 241
    monitor-exit v0

    return-object p1

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 235
    :try_start_6
    iget-object v1, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-static {v1}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$300(Lcom/android/contacts/list/ProviderStatusWatcher;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "ProviderStatusWatcher"

    const-string v3, "Security exception when querying provider status"

    invoke-static {v1, v2, v3, v0}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 239
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-static {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$500(Lcom/android/contacts/list/ProviderStatusWatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 240
    :try_start_7
    iget-object v1, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-static {v1}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$500(Lcom/android/contacts/list/ProviderStatusWatcher;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 241
    monitor-exit v0

    return-object p1

    :catchall_4
    move-exception p1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p1

    .line 239
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-static {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$500(Lcom/android/contacts/list/ProviderStatusWatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 240
    :try_start_8
    iget-object v1, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-static {v1}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$500(Lcom/android/contacts/list/ProviderStatusWatcher;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 241
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 242
    throw p1

    :catchall_5
    move-exception p1

    .line 241
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 215
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled(Ljava/lang/Boolean;)V
    .locals 0

    .line 247
    invoke-direct {p0}, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->cleanUp()V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 215
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->cleanUp()V

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->this$0:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-static {p1}, Lcom/android/contacts/list/ProviderStatusWatcher;->access$600(Lcom/android/contacts/list/ProviderStatusWatcher;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 215
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

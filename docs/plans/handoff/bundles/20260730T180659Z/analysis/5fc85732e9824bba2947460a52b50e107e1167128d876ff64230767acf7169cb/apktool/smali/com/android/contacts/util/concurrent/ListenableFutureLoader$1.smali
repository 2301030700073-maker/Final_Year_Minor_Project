.class Lcom/android/contacts/util/concurrent/ListenableFutureLoader$1;
.super Ljava/lang/Object;
.source "ListenableFutureLoader.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->onForceLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "TD;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/util/concurrent/ListenableFutureLoader;


# direct methods
.method constructor <init>(Lcom/android/contacts/util/concurrent/ListenableFutureLoader;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader$1;->this$0:Lcom/android/contacts/util/concurrent/ListenableFutureLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 106
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const-string v1, "FutureLoader"

    if-eqz v0, :cond_0

    const-string v0, "Loading cancelled"

    .line 107
    invoke-static {v1, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    iget-object p1, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader$1;->this$0:Lcom/android/contacts/util/concurrent/ListenableFutureLoader;

    invoke-virtual {p1}, Landroid/content/Loader;->rollbackContentChanged()V

    goto :goto_0

    :cond_0
    const-string v0, "Loading failed"

    .line 110
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader$1;->this$0:Lcom/android/contacts/util/concurrent/ListenableFutureLoader;

    invoke-static {v0}, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->access$000(Lcom/android/contacts/util/concurrent/ListenableFutureLoader;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader$1;->this$0:Lcom/android/contacts/util/concurrent/ListenableFutureLoader;

    invoke-static {v0}, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->access$000(Lcom/android/contacts/util/concurrent/ListenableFutureLoader;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->isSameData(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader$1;->this$0:Lcom/android/contacts/util/concurrent/ListenableFutureLoader;

    invoke-virtual {v0, p1}, Landroid/content/Loader;->deliverResult(Ljava/lang/Object;)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader$1;->this$0:Lcom/android/contacts/util/concurrent/ListenableFutureLoader;

    invoke-static {v0, p1}, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->access$002(Lcom/android/contacts/util/concurrent/ListenableFutureLoader;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object p1, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader$1;->this$0:Lcom/android/contacts/util/concurrent/ListenableFutureLoader;

    invoke-virtual {p1}, Landroid/content/Loader;->commitContentChanged()V

    return-void
.end method

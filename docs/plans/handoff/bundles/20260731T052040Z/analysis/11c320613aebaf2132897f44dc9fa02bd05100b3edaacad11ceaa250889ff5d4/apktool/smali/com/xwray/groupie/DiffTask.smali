.class public final Lcom/xwray/groupie/DiffTask;
.super Landroid/os/AsyncTask;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final asyncListDiffer:Ljava/lang/ref/WeakReference;

.field public backgroundException:Ljava/lang/Exception;

.field public final diffCallback:Lcom/xwray/groupie/DiffCallback;

.field public final onAsyncUpdateListener:Ljava/lang/ref/WeakReference;

.field public final runGeneration:I


# direct methods
.method public constructor <init>(Lcom/xwray/groupie/AsyncDiffUtil;Lcom/xwray/groupie/DiffCallback;ILorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xwray/groupie/DiffTask;->backgroundException:Ljava/lang/Exception;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/xwray/groupie/DiffTask;->diffCallback:Lcom/xwray/groupie/DiffCallback;

    .line 8
    .line 9
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/xwray/groupie/DiffTask;->asyncListDiffer:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    iput p3, p0, Lcom/xwray/groupie/DiffTask;->runGeneration:I

    .line 17
    .line 18
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/xwray/groupie/DiffTask;->onAsyncUpdateListener:Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/xwray/groupie/DiffTask;->diffCallback:Lcom/xwray/groupie/DiffCallback;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    iput-object p1, p0, Lcom/xwray/groupie/DiffTask;->backgroundException:Ljava/lang/Exception;

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/xwray/groupie/DiffTask;->backgroundException:Ljava/lang/Exception;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/xwray/groupie/DiffTask;->asyncListDiffer:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/xwray/groupie/AsyncDiffUtil;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v1, v0, Lcom/xwray/groupie/AsyncDiffUtil;->asyncDiffUtilCallback:Lokhttp3/ConnectionPool;

    .line 20
    .line 21
    iget v2, p0, Lcom/xwray/groupie/DiffTask;->runGeneration:I

    .line 22
    .line 23
    iget v3, v0, Lcom/xwray/groupie/AsyncDiffUtil;->maxScheduledGeneration:I

    .line 24
    .line 25
    if-ne v2, v3, :cond_0

    .line 26
    .line 27
    iget-object v0, v0, Lcom/xwray/groupie/AsyncDiffUtil;->groups:Ljava/util/ArrayList;

    .line 28
    .line 29
    iget-object v2, v1, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Lcom/xwray/groupie/GroupAdapter;

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Lcom/xwray/groupie/GroupAdapter;->setNewGroups(Ljava/util/Collection;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/xwray/groupie/DiffTask;->onAsyncUpdateListener:Ljava/lang/ref/WeakReference;

    .line 40
    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda1;

    .line 54
    .line 55
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda1;->onUpdateComplete()V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void

    .line 59
    :cond_1
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

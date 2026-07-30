.class Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerExecutorService;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ContactsExecutors.java"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/concurrent/ContactsExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerExecutorService"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerExecutorService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/android/contacts/util/concurrent/ContactsExecutors$1;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerExecutorService;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 161
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerExecutorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isShutdown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerExecutorService;->mHandler:Landroid/os/Handler;

    .line 113
    invoke-static {v0, p2, p3, p4, p1}, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;->fromRunnable(Landroid/os/Handler;JLjava/util/concurrent/TimeUnit;Ljava/lang/Runnable;)Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerExecutorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "TV;>;"
        }
    .end annotation

    .line 121
    new-instance v7, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;

    iget-object v1, p0, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerExecutorService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    move-object v0, v7

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;-><init>(Landroid/os/Handler;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Callable;Lcom/android/contacts/util/concurrent/ContactsExecutors$1;)V

    .line 122
    iget-object p1, p0, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerExecutorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {p1, v7, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v7
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 130
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 137
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

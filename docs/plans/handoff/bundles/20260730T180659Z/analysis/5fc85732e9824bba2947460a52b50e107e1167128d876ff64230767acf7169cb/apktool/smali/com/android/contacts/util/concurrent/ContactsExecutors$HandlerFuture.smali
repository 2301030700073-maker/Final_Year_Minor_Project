.class Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;
.super Lcom/google/common/util/concurrent/ForwardingFuture;
.source "ContactsExecutors.java"

# interfaces
.implements Ljava/util/concurrent/RunnableScheduledFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/concurrent/ContactsExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/ForwardingFuture<",
        "TT;>;",
        "Ljava/util/concurrent/RunnableScheduledFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mDelayMillis:J

.field private final mDelegate:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mStart:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mTask:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Handler;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Callable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)V"
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;-><init>()V

    .line 176
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;->mDelegate:Lcom/google/common/util/concurrent/SettableFuture;

    .line 178
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;->mStart:Ljava/util/concurrent/atomic/AtomicLong;

    .line 181
    iput-object p1, p0, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;->mHandler:Landroid/os/Handler;

    .line 182
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;->mDelayMillis:J

    .line 183
    iput-object p5, p0, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;->mTask:Ljava/util/concurrent/Callable;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Callable;Lcom/android/contacts/util/concurrent/ContactsExecutors$1;)V
    .locals 0

    .line 170
    invoke-direct/range {p0 .. p5}, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;-><init>(Landroid/os/Handler;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public static fromRunnable(Landroid/os/Handler;JLjava/util/concurrent/TimeUnit;Ljava/lang/Runnable;)Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 233
    new-instance v6, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;

    new-instance v5, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture$1;

    invoke-direct {v5, p4}, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture$1;-><init>(Ljava/lang/Runnable;)V

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;-><init>(Landroid/os/Handler;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Callable;)V

    return-object v6
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/ForwardingFuture;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 170
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .locals 4

    .line 203
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 204
    invoke-interface {p1, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 203
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;->delegate()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;->mDelegate:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 6

    .line 193
    iget-object v0, p0, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;->mStart:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 195
    iget-wide v0, p0, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;->mDelayMillis:J

    return-wide v0

    .line 197
    :cond_0
    iget-wide v2, p0, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;->mDelayMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    sub-long/2addr v2, v4

    .line 198
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isPeriodic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;->mStart:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v3, v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;->mDelegate:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;->mTask:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 227
    iget-object v1, p0, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;->mDelegate:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.class public abstract Lcom/nozbe/watermelondb/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nozbe/watermelondb/Connection$Connected;,
        Lcom/nozbe/watermelondb/Connection$Waiting;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQueue()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 21
    instance-of v0, p0, Lcom/nozbe/watermelondb/Connection$Connected;

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 23
    :cond_0
    instance-of v0, p0, Lcom/nozbe/watermelondb/Connection$Waiting;

    if-eqz v0, :cond_1

    .line 24
    move-object v0, p0

    check-cast v0, Lcom/nozbe/watermelondb/Connection$Waiting;

    iget-object v0, v0, Lcom/nozbe/watermelondb/Connection$Waiting;->queueInWaiting:Ljava/util/ArrayList;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

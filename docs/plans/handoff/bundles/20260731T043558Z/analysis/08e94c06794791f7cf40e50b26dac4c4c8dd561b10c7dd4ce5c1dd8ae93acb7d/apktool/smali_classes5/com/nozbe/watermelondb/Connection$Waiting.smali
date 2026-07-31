.class public Lcom/nozbe/watermelondb/Connection$Waiting;
.super Lcom/nozbe/watermelondb/Connection;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nozbe/watermelondb/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Waiting"
.end annotation


# instance fields
.field public final queueInWaiting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/nozbe/watermelondb/Connection;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/nozbe/watermelondb/Connection$Waiting;->queueInWaiting:Ljava/util/ArrayList;

    return-void
.end method

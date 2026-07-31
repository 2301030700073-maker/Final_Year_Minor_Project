.class public final Lkotlinx/serialization/json/internal/ComposerForUnquotedLiterals;
.super Lcom/fsck/k9/mailstore/LocalFolder$8;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final forceQuoting:Z


# direct methods
.method public constructor <init>(Lokio/PriorityQueue;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(Lokio/PriorityQueue;)V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lkotlinx/serialization/json/internal/ComposerForUnquotedLiterals;->forceQuoting:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final printQuoted(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/ComposerForUnquotedLiterals;->forceQuoting:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->printQuoted(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalFolder$8;->this$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lokio/PriorityQueue;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lokio/PriorityQueue;->write(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

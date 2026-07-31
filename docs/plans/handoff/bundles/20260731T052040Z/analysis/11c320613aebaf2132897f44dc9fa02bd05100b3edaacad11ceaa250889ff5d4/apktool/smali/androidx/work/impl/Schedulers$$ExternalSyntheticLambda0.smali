.class public final synthetic Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/work/impl/ExecutionListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroidx/work/Configuration;

.field public final synthetic f$3:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/List;Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;->f$2:Landroidx/work/Configuration;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;->f$3:Landroidx/work/impl/WorkDatabase;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V
    .locals 6

    .line 1
    new-instance v0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    iget-object v1, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;->f$2:Landroidx/work/Configuration;

    .line 7
    .line 8
    iget-object v4, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;->f$3:Landroidx/work/impl/WorkDatabase;

    .line 9
    .line 10
    move-object v2, p1

    .line 11
    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

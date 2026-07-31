.class public final Lcom/fsck/k9/account/DefaultBackgroundAccountRemover;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/account/DefaultBackgroundAccountRemover;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final removeAccountAsync(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "accountUuid"

    .line 10
    .line 11
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    new-instance p1, Landroidx/work/Data;

    .line 15
    .line 16
    invoke-direct {p1, v0}, Landroidx/work/Data;-><init>(Ljava/util/LinkedHashMap;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Landroidx/work/Data$Companion;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    .line 20
    .line 21
    .line 22
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 23
    .line 24
    const-class v1, Lcom/fsck/k9/account/AccountRemoverWorker;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Landroidx/work/WorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Landroidx/work/WorkRequest$Builder;->workSpec:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Landroidx/work/impl/model/WorkSpec;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    iput-boolean v2, v1, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 35
    .line 36
    sget-object v2, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    .line 37
    .line 38
    iput-object v2, v1, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    .line 39
    .line 40
    iput-object p1, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroidx/work/OneTimeWorkRequest;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/fsck/k9/account/DefaultBackgroundAccountRemover;->context:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {p0}, Landroidx/work/impl/WorkManagerImpl;->getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroidx/work/impl/WorkManagerImpl;->enqueue(Landroidx/work/OneTimeWorkRequest;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

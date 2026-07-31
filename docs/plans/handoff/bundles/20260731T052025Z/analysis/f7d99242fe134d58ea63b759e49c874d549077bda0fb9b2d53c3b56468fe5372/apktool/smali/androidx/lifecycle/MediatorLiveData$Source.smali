.class public final Landroidx/lifecycle/MediatorLiveData$Source;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final mLiveData:Lcom/fsck/k9/ui/messagelist/MessageListLiveData;

.field public final mObserver:Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;

.field public mVersion:I


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/messagelist/MessageListLiveData;Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/lifecycle/MediatorLiveData$Source;->mVersion:I

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/lifecycle/MediatorLiveData$Source;->mLiveData:Lcom/fsck/k9/ui/messagelist/MessageListLiveData;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/lifecycle/MediatorLiveData$Source;->mObserver:Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/MediatorLiveData$Source;->mVersion:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/lifecycle/MediatorLiveData$Source;->mLiveData:Lcom/fsck/k9/ui/messagelist/MessageListLiveData;

    .line 4
    .line 5
    iget v1, v1, Landroidx/lifecycle/LiveData;->mVersion:I

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iput v1, p0, Landroidx/lifecycle/MediatorLiveData$Source;->mVersion:I

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/lifecycle/MediatorLiveData$Source;->mObserver:Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;->onChanged(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.class public final Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
.super Landroidx/lifecycle/MutableLiveData;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mArgs:Landroid/os/Bundle;

.field public final mId:I

.field public mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public final mLoader:Landroidx/loader/content/AsyncTaskLoader;

.field public mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

.field public mPriorLoader:Landroidx/loader/content/AsyncTaskLoader;


# direct methods
.method public constructor <init>(ILandroid/os/Bundle;Landroidx/loader/content/AsyncTaskLoader;Landroidx/loader/content/AsyncTaskLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/AsyncTaskLoader;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/AsyncTaskLoader;

    .line 11
    .line 12
    iget-object p2, p3, Landroidx/loader/content/AsyncTaskLoader;->mListener:Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    iput-object p0, p3, Landroidx/loader/content/AsyncTaskLoader;->mListener:Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 17
    .line 18
    iput p1, p3, Landroidx/loader/content/AsyncTaskLoader;->mId:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string p0, "There is already a listener registered"

    .line 22
    .line 23
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    throw p0
.end method


# virtual methods
.method public final destroy(Z)Landroidx/loader/content/AsyncTaskLoader;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/AsyncTaskLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/loader/content/AsyncTaskLoader;->cancelLoad()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroidx/loader/content/AsyncTaskLoader;->mAbandoned:Z

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/loader/content/AsyncTaskLoader;->onAbandon()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-boolean v3, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    iget-object v3, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 26
    .line 27
    iget-object v4, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/AsyncTaskLoader;

    .line 28
    .line 29
    invoke-interface {v3, v4}, Landroidx/loader/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroidx/loader/content/AsyncTaskLoader;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v3, v0, Landroidx/loader/content/AsyncTaskLoader;->mListener:Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v3, :cond_5

    .line 36
    .line 37
    if-ne v3, p0, :cond_4

    .line 38
    .line 39
    iput-object v4, v0, Landroidx/loader/content/AsyncTaskLoader;->mListener:Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    iget-boolean v2, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    :cond_1
    if-eqz p1, :cond_3

    .line 48
    .line 49
    :cond_2
    iput-boolean v1, v0, Landroidx/loader/content/AsyncTaskLoader;->mReset:Z

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    iput-boolean p1, v0, Landroidx/loader/content/AsyncTaskLoader;->mStarted:Z

    .line 53
    .line 54
    iput-boolean p1, v0, Landroidx/loader/content/AsyncTaskLoader;->mAbandoned:Z

    .line 55
    .line 56
    iput-boolean p1, v0, Landroidx/loader/content/AsyncTaskLoader;->mContentChanged:Z

    .line 57
    .line 58
    iput-boolean p1, v0, Landroidx/loader/content/AsyncTaskLoader;->mProcessingChange:Z

    .line 59
    .line 60
    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/AsyncTaskLoader;

    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_3
    return-object v0

    .line 64
    :cond_4
    const-string p0, "Attempting to unregister the wrong listener"

    .line 65
    .line 66
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-object v4

    .line 70
    :cond_5
    const-string p0, "No listener register"

    .line 71
    .line 72
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-object v4
.end method

.method public final markForRedelivery()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-super {p0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onActive()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/AsyncTaskLoader;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->startLoading()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onInactive()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/AsyncTaskLoader;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mStarted:Z

    .line 5
    .line 6
    return-void
.end method

.method public final removeObserver(Landroidx/lifecycle/Observer;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 8
    .line 9
    return-void
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/AsyncTaskLoader;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p1, Landroidx/loader/content/AsyncTaskLoader;->mReset:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p1, Landroidx/loader/content/AsyncTaskLoader;->mStarted:Z

    .line 13
    .line 14
    iput-boolean v0, p1, Landroidx/loader/content/AsyncTaskLoader;->mAbandoned:Z

    .line 15
    .line 16
    iput-boolean v0, p1, Landroidx/loader/content/AsyncTaskLoader;->mContentChanged:Z

    .line 17
    .line 18
    iput-boolean v0, p1, Landroidx/loader/content/AsyncTaskLoader;->mProcessingChange:Z

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/AsyncTaskLoader;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "LoaderInfo{"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " #"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, " : "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/AsyncTaskLoader;

    .line 40
    .line 41
    invoke-static {p0, v0}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 42
    .line 43
    .line 44
    const-string/jumbo p0, "}}"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

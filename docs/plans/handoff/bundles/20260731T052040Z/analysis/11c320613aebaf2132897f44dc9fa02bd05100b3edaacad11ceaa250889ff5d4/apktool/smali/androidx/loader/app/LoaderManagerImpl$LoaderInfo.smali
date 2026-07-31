.class public final Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
.super Landroidx/lifecycle/MutableLiveData;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public final mLoader:Lcom/nononsenseapps/filepicker/FilePickerFragment$1;

.field public mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

.field public mPriorLoader:Lcom/nononsenseapps/filepicker/FilePickerFragment$1;


# direct methods
.method public constructor <init>(Lcom/nononsenseapps/filepicker/FilePickerFragment$1;Lcom/nononsenseapps/filepicker/FilePickerFragment$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/nononsenseapps/filepicker/FilePickerFragment$1;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Lcom/nononsenseapps/filepicker/FilePickerFragment$1;

    .line 7
    .line 8
    iget-object p2, p1, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mListener:Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    iput-object p0, p1, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mListener:Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p0, "There is already a listener registered"

    .line 16
    .line 17
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    throw p0
.end method


# virtual methods
.method public final destroy(Z)Lcom/nononsenseapps/filepicker/FilePickerFragment$1;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/nononsenseapps/filepicker/FilePickerFragment$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->cancelLoad()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mAbandoned:Z

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-boolean v4, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    iget-object v4, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;

    .line 24
    .line 25
    iput-boolean v3, v4, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->isLoading:Z

    .line 26
    .line 27
    :cond_0
    iget-object v4, v0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mListener:Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    if-eqz v4, :cond_6

    .line 31
    .line 32
    if-ne v4, p0, :cond_5

    .line 33
    .line 34
    iput-object v5, v0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mListener:Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iget-boolean v2, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    :cond_1
    if-eqz p1, :cond_4

    .line 43
    .line 44
    :cond_2
    iget-object p1, v0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->fileObserver:Lcom/nononsenseapps/filepicker/FilePickerFragment$1$2;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/os/FileObserver;->stopWatching()V

    .line 49
    .line 50
    .line 51
    iput-object v5, v0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->fileObserver:Lcom/nononsenseapps/filepicker/FilePickerFragment$1$2;

    .line 52
    .line 53
    :cond_3
    iput-boolean v1, v0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mReset:Z

    .line 54
    .line 55
    iput-boolean v3, v0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mStarted:Z

    .line 56
    .line 57
    iput-boolean v3, v0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mAbandoned:Z

    .line 58
    .line 59
    iput-boolean v3, v0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mContentChanged:Z

    .line 60
    .line 61
    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Lcom/nononsenseapps/filepicker/FilePickerFragment$1;

    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_4
    return-object v0

    .line 65
    :cond_5
    const-string p0, "Attempting to unregister the wrong listener"

    .line 66
    .line 67
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v5

    .line 71
    :cond_6
    const-string p0, "No listener register"

    .line 72
    .line 73
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v5
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
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/nononsenseapps/filepicker/FilePickerFragment$1;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mStarted:Z

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mReset:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mAbandoned:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->this$0:Lcom/nononsenseapps/filepicker/FilePickerFragment;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast v1, Ljava/io/File;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 26
    .line 27
    const-string v2, "/"

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, v0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    .line 33
    .line 34
    :cond_1
    new-instance v1, Lcom/nononsenseapps/filepicker/FilePickerFragment$1$2;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Ljava/io/File;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {v1, p0, v0}, Lcom/nononsenseapps/filepicker/FilePickerFragment$1$2;-><init>(Lcom/nononsenseapps/filepicker/FilePickerFragment$1;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->fileObserver:Lcom/nononsenseapps/filepicker/FilePickerFragment$1$2;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->cancelLoad()V

    .line 53
    .line 54
    .line 55
    new-instance v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;-><init>(Lcom/nononsenseapps/filepicker/FilePickerFragment$1;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->executePendingTask()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final onInactive()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/nononsenseapps/filepicker/FilePickerFragment$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mStarted:Z

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
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Lcom/nononsenseapps/filepicker/FilePickerFragment$1;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object v0, p1, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->fileObserver:Lcom/nononsenseapps/filepicker/FilePickerFragment$1$2;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p1, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->fileObserver:Lcom/nononsenseapps/filepicker/FilePickerFragment$1$2;

    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p1, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mReset:Z

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p1, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mStarted:Z

    .line 23
    .line 24
    iput-boolean v0, p1, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mAbandoned:Z

    .line 25
    .line 26
    iput-boolean v0, p1, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mContentChanged:Z

    .line 27
    .line 28
    iput-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Lcom/nononsenseapps/filepicker/FilePickerFragment$1;

    .line 29
    .line 30
    :cond_1
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
    const-string v1, " #0 : "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/nononsenseapps/filepicker/FilePickerFragment$1;

    .line 30
    .line 31
    invoke-static {p0, v0}, Lorg/jsoup/Jsoup;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 32
    .line 33
    .line 34
    const-string/jumbo p0, "}}"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

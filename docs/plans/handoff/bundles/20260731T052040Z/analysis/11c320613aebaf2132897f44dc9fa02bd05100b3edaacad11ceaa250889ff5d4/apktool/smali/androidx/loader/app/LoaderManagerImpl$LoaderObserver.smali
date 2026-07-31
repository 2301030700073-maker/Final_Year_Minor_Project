.class public final Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final mCallback:Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;

.field public mDeliveredData:Z

.field public final mLoader:Lcom/nononsenseapps/filepicker/FilePickerFragment$1;


# direct methods
.method public constructor <init>(Lcom/nononsenseapps/filepicker/FilePickerFragment$1;Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Lcom/nononsenseapps/filepicker/FilePickerFragment$1;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Lcom/nononsenseapps/filepicker/FilePickerFragment$1;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->onLoadFinished(Lcom/nononsenseapps/filepicker/FilePickerFragment$1;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    .line 10
    .line 11
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

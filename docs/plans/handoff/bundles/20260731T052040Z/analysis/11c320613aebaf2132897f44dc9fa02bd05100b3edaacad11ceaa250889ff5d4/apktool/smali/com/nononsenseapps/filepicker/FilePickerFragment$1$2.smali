.class public final Lcom/nononsenseapps/filepicker/FilePickerFragment$1$2;
.super Landroid/os/FileObserver;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic this$1:Lcom/nononsenseapps/filepicker/FilePickerFragment$1;


# direct methods
.method public constructor <init>(Lcom/nononsenseapps/filepicker/FilePickerFragment$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1$2;->this$1:Lcom/nononsenseapps/filepicker/FilePickerFragment$1;

    .line 2
    .line 3
    const/16 p1, 0x3c0

    .line 4
    .line 5
    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1$2;->this$1:Lcom/nononsenseapps/filepicker/FilePickerFragment$1;

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mStarted:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->cancelLoad()V

    .line 8
    .line 9
    .line 10
    new-instance p1, Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;-><init>(Lcom/nononsenseapps/filepicker/FilePickerFragment$1;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->executePendingTask()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mContentChanged:Z

    .line 23
    .line 24
    return-void
.end method

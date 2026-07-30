.class Lcom/android/contacts/SimImportService$StopTask;
.super Landroid/os/AsyncTask;
.source "SimImportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/SimImportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StopTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mHost:Landroid/app/Service;

.field private final mStartId:I


# direct methods
.method private constructor <init>(Landroid/app/Service;I)V
    .locals 0

    .line 241
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/android/contacts/SimImportService$StopTask;->mHost:Landroid/app/Service;

    .line 243
    iput p2, p0, Lcom/android/contacts/SimImportService$StopTask;->mStartId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Service;ILcom/android/contacts/SimImportService$1;)V
    .locals 0

    .line 237
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/SimImportService$StopTask;-><init>(Landroid/app/Service;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 237
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/SimImportService$StopTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 237
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/SimImportService$StopTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 253
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 254
    iget-object p1, p0, Lcom/android/contacts/SimImportService$StopTask;->mHost:Landroid/app/Service;

    iget v0, p0, Lcom/android/contacts/SimImportService$StopTask;->mStartId:I

    invoke-virtual {p1, v0}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method

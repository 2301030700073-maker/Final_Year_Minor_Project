.class Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;
.super Landroid/os/AsyncTask;
.source "NfcImportVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/NfcImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/android/contacts/vcard/VCardService;",
        "Ljava/lang/Void;",
        "Lcom/android/contacts/vcard/ImportRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/NfcImportVCardActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/vcard/NfcImportVCardActivity;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;->this$0:Lcom/android/contacts/vcard/NfcImportVCardActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Lcom/android/contacts/vcard/VCardService;)Lcom/android/contacts/vcard/ImportRequest;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;->this$0:Lcom/android/contacts/vcard/NfcImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->createImportRequest()Lcom/android/contacts/vcard/ImportRequest;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 82
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 84
    aget-object p1, p1, v2

    iget-object v2, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;->this$0:Lcom/android/contacts/vcard/NfcImportVCardActivity;

    invoke-virtual {p1, v1, v2}, Lcom/android/contacts/vcard/VCardService;->handleImportRequest(Ljava/util/List;Lcom/android/contacts/vcard/VCardImportExportListener;)V

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 74
    check-cast p1, [Lcom/android/contacts/vcard/VCardService;

    invoke-virtual {p0, p1}, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;->doInBackground([Lcom/android/contacts/vcard/VCardService;)Lcom/android/contacts/vcard/ImportRequest;

    move-result-object p1

    return-object p1
.end method

.method public onCancelled()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;->this$0:Lcom/android/contacts/vcard/NfcImportVCardActivity;

    invoke-virtual {v0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onPostExecute(Lcom/android/contacts/vcard/ImportRequest;)V
    .locals 0

    if-nez p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;->this$0:Lcom/android/contacts/vcard/NfcImportVCardActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;->this$0:Lcom/android/contacts/vcard/NfcImportVCardActivity;

    invoke-virtual {p1, p1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 74
    check-cast p1, Lcom/android/contacts/vcard/ImportRequest;

    invoke-virtual {p0, p1}, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;->onPostExecute(Lcom/android/contacts/vcard/ImportRequest;)V

    return-void
.end method

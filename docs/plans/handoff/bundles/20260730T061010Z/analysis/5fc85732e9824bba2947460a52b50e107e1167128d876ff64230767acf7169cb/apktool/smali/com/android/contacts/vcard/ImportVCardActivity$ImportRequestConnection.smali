.class Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportRequestConnection"
.end annotation


# instance fields
.field private mService:Lcom/android/contacts/vcard/VCardService;

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 156
    check-cast p2, Lcom/android/contacts/vcard/VCardService$MyBinder;

    invoke-virtual {p2}, Lcom/android/contacts/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/vcard/VCardService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;->mService:Lcom/android/contacts/vcard/VCardService;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 157
    iget-object p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    .line 159
    invoke-static {p2}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$200(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->getSourceUris()[Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "Connected to VCardService. Kick a vCard cache thread (uri: %s)"

    .line 158
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "VCardImport"

    .line 157
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {p1}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$200(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "VCardImport"

    const-string v0, "Disconnected from VCardService"

    .line 165
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendImportRequest(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/vcard/ImportRequest;",
            ">;)V"
        }
    .end annotation

    const-string v0, "VCardImport"

    const-string v1, "Send an import request"

    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;->mService:Lcom/android/contacts/vcard/VCardService;

    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget-object v1, v1, Lcom/android/contacts/vcard/ImportVCardActivity;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/vcard/VCardService;->handleImportRequest(Ljava/util/List;Lcom/android/contacts/vcard/VCardImportExportListener;)V

    return-void
.end method

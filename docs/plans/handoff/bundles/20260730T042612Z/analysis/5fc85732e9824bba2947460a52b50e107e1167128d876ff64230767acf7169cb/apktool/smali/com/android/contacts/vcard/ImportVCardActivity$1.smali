.class Lcom/android/contacts/vcard/ImportVCardActivity$1;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

.field final synthetic val$sourceDisplayNames:[Ljava/lang/String;

.field final synthetic val$uris:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;[Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$1;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$1;->val$uris:[Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$1;->val$sourceDisplayNames:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 407
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$1;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$1;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$1;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$1;->val$uris:[Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity$1;->val$sourceDisplayNames:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;[Landroid/net/Uri;[Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$202(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;)Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

    .line 409
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$1;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v1, Lcom/android/contacts/vcard/NotificationImportExportListener;

    invoke-direct {v1, v0}, Lcom/android/contacts/vcard/NotificationImportExportListener;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/android/contacts/vcard/ImportVCardActivity;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    .line 410
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$1;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v1, 0x7f0900aa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    :cond_0
    return-void
.end method

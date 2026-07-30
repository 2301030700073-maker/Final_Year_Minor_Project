.class public Lcom/android/contacts/vcard/CancelActivity;
.super Landroid/app/Activity;
.source "CancelActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/CancelActivity$CancelListener;,
        Lcom/android/contacts/vcard/CancelActivity$RequestCancelListener;
    }
.end annotation


# instance fields
.field private final mCancelListener:Lcom/android/contacts/vcard/CancelActivity$CancelListener;

.field private mDisplayName:Ljava/lang/String;

.field private mJobId:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    new-instance v0, Lcom/android/contacts/vcard/CancelActivity$CancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/vcard/CancelActivity$CancelListener;-><init>(Lcom/android/contacts/vcard/CancelActivity;Lcom/android/contacts/vcard/CancelActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/CancelActivity;->mCancelListener:Lcom/android/contacts/vcard/CancelActivity$CancelListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "job_id"

    .line 77
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/vcard/CancelActivity;->mJobId:I

    const-string v0, "display_name"

    .line 78
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/CancelActivity;->mDisplayName:Ljava/lang/String;

    const-string v0, "type"

    .line 79
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/contacts/vcard/CancelActivity;->mType:I

    const p1, 0x7f0900ab

    .line 80
    invoke-virtual {p0, p1}, Landroid/app/Activity;->showDialog(I)V

    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    const v0, 0x7f0900ab

    if-ne p1, v0, :cond_1

    .line 87
    iget p1, p0, Lcom/android/contacts/vcard/CancelActivity;->mType:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7f100080

    new-array v0, v0, [Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/android/contacts/vcard/CancelActivity;->mDisplayName:Ljava/lang/String;

    aput-object v1, v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f10007f

    new-array v0, v0, [Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lcom/android/contacts/vcard/CancelActivity;->mDisplayName:Ljava/lang/String;

    aput-object v1, v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 92
    :goto_0
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f10024b

    new-instance v0, Lcom/android/contacts/vcard/CancelActivity$RequestCancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/vcard/CancelActivity$RequestCancelListener;-><init>(Lcom/android/contacts/vcard/CancelActivity;Lcom/android/contacts/vcard/CancelActivity$1;)V

    .line 94
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/contacts/vcard/CancelActivity;->mCancelListener:Lcom/android/contacts/vcard/CancelActivity$CancelListener;

    .line 95
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1001c1

    iget-object v0, p0, Lcom/android/contacts/vcard/CancelActivity;->mCancelListener:Lcom/android/contacts/vcard/CancelActivity$CancelListener;

    .line 96
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1

    :cond_1
    const v0, 0x7f0900ac

    if-ne p1, v0, :cond_2

    .line 99
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f100081

    .line 100
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x1010355

    .line 101
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f100132

    .line 102
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/contacts/vcard/CancelActivity;->mCancelListener:Lcom/android/contacts/vcard/CancelActivity$CancelListener;

    .line 103
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    iget-object v0, p0, Lcom/android/contacts/vcard/CancelActivity;->mCancelListener:Lcom/android/contacts/vcard/CancelActivity$CancelListener;

    .line 104
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 107
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown dialog id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VCardCancel"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 114
    check-cast p2, Lcom/android/contacts/vcard/VCardService$MyBinder;

    invoke-virtual {p2}, Lcom/android/contacts/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/vcard/VCardService;

    move-result-object p1

    .line 117
    :try_start_0
    new-instance p2, Lcom/android/contacts/vcard/CancelRequest;

    iget v0, p0, Lcom/android/contacts/vcard/CancelActivity;->mJobId:I

    iget-object v1, p0, Lcom/android/contacts/vcard/CancelActivity;->mDisplayName:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Lcom/android/contacts/vcard/CancelRequest;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/vcard/VCardService;->handleCancelRequest(Lcom/android/contacts/vcard/CancelRequest;Lcom/android/contacts/vcard/VCardImportExportListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-virtual {p0, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :catchall_0
    move-exception p1

    .line 120
    invoke-virtual {p0, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 121
    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

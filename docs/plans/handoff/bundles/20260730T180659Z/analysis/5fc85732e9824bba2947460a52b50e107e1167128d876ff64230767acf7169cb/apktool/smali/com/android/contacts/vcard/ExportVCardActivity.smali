.class public Lcom/android/contacts/vcard/ExportVCardActivity;
.super Landroid/app/Activity;
.source "ExportVCardActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final mBidiFormatter:Landroid/text/BidiFormatter;


# instance fields
.field protected mConnected:Z

.field private mErrorReason:Ljava/lang/String;

.field private volatile mProcessOngoing:Z

.field protected mService:Lcom/android/contacts/vcard/VCardService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/vcard/ExportVCardActivity;->mBidiFormatter:Landroid/text/BidiFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    return-void
.end method

.method private connectVCardService()V
    .locals 4

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CALLING_ACTIVITY"

    .line 94
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/contacts/vcard/VCardService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "VCardExport"

    if-nez v0, :cond_0

    const-string v0, "Failed to start vCard service"

    .line 99
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->showErrorDialog()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 104
    invoke-virtual {p0, v2, p0, v0}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Failed to connect to vCard service."

    .line 105
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->showErrorDialog()V

    :cond_1
    return-void
.end method

.method private getCreateDocIntent()Landroid/content/Intent;
    .locals 4

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/x-vcard"

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    sget-object v1, Lcom/android/contacts/vcard/ExportVCardActivity;->mBidiFormatter:Landroid/text/BidiFormatter;

    const v2, 0x7f100124

    .line 123
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 122
    invoke-virtual {v1, v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static getOpenableUriDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 234
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 236
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "_display_name"

    .line 237
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 241
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_2
    throw p1

    :cond_3
    if-eqz p0, :cond_4

    .line 241
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0
.end method

.method private hasExportIntentHandler()Z
    .locals 3

    .line 112
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->getCreateDocIntent()Landroid/content/Intent;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showErrorDialog()V
    .locals 1

    const v0, 0x7f100132

    .line 128
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    const v0, 0x7f0900b2

    .line 129
    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 136
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 139
    new-instance p2, Lcom/android/contacts/vcard/ExportRequest;

    invoke-direct {p2, p1}, Lcom/android/contacts/vcard/ExportRequest;-><init>(Landroid/net/Uri;)V

    .line 141
    iget-object p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;

    new-instance p3, Lcom/android/contacts/vcard/NotificationImportExportListener;

    invoke-direct {p3, p0}, Lcom/android/contacts/vcard/NotificationImportExportListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, p2, p3}, Lcom/android/contacts/vcard/VCardService;->handleExportRequest(Lcom/android/contacts/vcard/ExportRequest;Lcom/android/contacts/vcard/VCardImportExportListener;)V

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 211
    iput-boolean p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 212
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 205
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static {p0}, Lcom/android/contacts/activities/RequestPermissionsActivity;->startPermissionActivityIfNeeded(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->hasExportIntentHandler()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "VCardExport"

    const-string v0, "Couldn\'t find export intent handler"

    .line 84
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->showErrorDialog()V

    return-void

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->connectVCardService()V

    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const v0, 0x7f0900b2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 180
    iput-boolean p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 181
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f100120

    .line 182
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f10011f

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 184
    iget-object v2, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f100132

    .line 185
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v1, p1

    .line 183
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    .line 186
    invoke-virtual {p1, p2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 187
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 190
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0, p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    .line 227
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f0900b2

    if-ne p1, v0, :cond_0

    .line 196
    check-cast p2, Landroid/app/AlertDialog;

    iget-object p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 198
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    .line 157
    :try_start_0
    iput-boolean p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    .line 158
    check-cast p2, Lcom/android/contacts/vcard/VCardService$MyBinder;

    invoke-virtual {p2}, Lcom/android/contacts/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/vcard/VCardService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;

    .line 161
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->getCreateDocIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x64

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    monitor-enter p0

    const/4 p1, 0x0

    .line 168
    :try_start_0
    iput-object p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;

    const/4 p1, 0x0

    .line 169
    iput-boolean p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    .line 170
    iget-boolean p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    if-eqz p1, :cond_0

    const-string p1, "VCardExport"

    const-string v0, "Disconnected from service during the process ongoing."

    .line 172
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;->showErrorDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 1

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

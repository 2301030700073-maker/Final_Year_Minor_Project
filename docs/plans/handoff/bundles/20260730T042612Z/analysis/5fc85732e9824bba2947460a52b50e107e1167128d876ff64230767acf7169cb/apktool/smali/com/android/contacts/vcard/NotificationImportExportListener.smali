.class public Lcom/android/contacts/vcard/NotificationImportExportListener;
.super Ljava/lang/Object;
.source "NotificationImportExportListener.java"

# interfaces
.implements Lcom/android/contacts/vcard/VCardImportExportListener;
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final mContext:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const-string v0, "notification"

    .line 60
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    .line 62
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .locals 2

    .line 251
    invoke-static {p0}, Lcom/android/contacts/util/ContactsNotificationChannelsUtil;->createDefaultChannel(Landroid/content/Context;)V

    .line 252
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v1, Lcom/android/contacts/util/ContactsNotificationChannelsUtil;->DEFAULT_CHANNEL:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 254
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x1080078

    .line 255
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f06007c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 257
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 258
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 259
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static constructFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;
    .locals 3

    .line 271
    invoke-static {p0}, Lcom/android/contacts/util/ContactsNotificationChannelsUtil;->createDefaultChannel(Landroid/content/Context;)V

    .line 272
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v1, Lcom/android/contacts/util/ContactsNotificationChannelsUtil;->DEFAULT_CHANNEL:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 274
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f0800b1

    .line 276
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 277
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 278
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p1, 0x0

    const/high16 p2, 0x4000000

    .line 279
    invoke-static {p0, p1, p3, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 280
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static constructImportFailureNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .locals 3

    .line 291
    invoke-static {p0}, Lcom/android/contacts/util/ContactsNotificationChannelsUtil;->createDefaultChannel(Landroid/content/Context;)V

    .line 292
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v1, Lcom/android/contacts/util/ContactsNotificationChannelsUtil;->DEFAULT_CHANNEL:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 294
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x1080078

    .line 296
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f100243

    .line 297
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 298
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 299
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;
    .locals 3

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/CancelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "invalidscheme"

    .line 216
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "invalidauthority"

    .line 217
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 218
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const-string v2, "job_id"

    invoke-virtual {v1, v2, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    const-string v1, "display_name"

    .line 219
    invoke-virtual {p4, v1, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    .line 220
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    const-string v1, "type"

    invoke-virtual {p4, v1, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p4

    .line 221
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 223
    new-instance p4, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p4, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 p5, 0x1

    .line 224
    invoke-virtual {p4, p5}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    sget-object v1, Lcom/android/contacts/util/ContactsNotificationChannelsUtil;->DEFAULT_CHANNEL:Ljava/lang/String;

    .line 225
    invoke-virtual {p4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 226
    invoke-virtual {p4, p5}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p6, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 227
    :goto_0
    invoke-virtual {p4, p6, p7, v2}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 228
    invoke-virtual {p4, p3}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 229
    invoke-virtual {p4, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06007c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p4, p2}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    if-ne p1, p5, :cond_1

    const p1, 0x1080081

    goto :goto_1

    :cond_1
    const p1, 0x1080088

    .line 231
    :goto_1
    invoke-virtual {p4, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const/high16 p1, 0x4000000

    .line 234
    invoke-static {p0, v1, v0, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    if-lez p6, :cond_2

    .line 237
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object p0

    int-to-double p1, p7

    int-to-double p5, p6

    div-double/2addr p1, p5

    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    .line 238
    invoke-virtual {p4, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 240
    :cond_2
    invoke-virtual {p4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 67
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1
.end method

.method public onCancelRequest(Lcom/android/contacts/vcard/CancelRequest;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 182
    iget-object p2, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v2, 0x7f100162

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/contacts/vcard/CancelRequest;->displayName:Ljava/lang/String;

    aput-object v3, v1, v0

    invoke-virtual {p2, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 183
    :cond_0
    iget-object p2, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v2, 0x7f100123

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/contacts/vcard/CancelRequest;->displayName:Ljava/lang/String;

    aput-object v3, v1, v0

    invoke-virtual {p2, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p2

    .line 185
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    iget p1, p1, Lcom/android/contacts/vcard/CancelRequest;->jobId:I

    const-string v1, "VCardServiceProgress"

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public onExportFailed(Lcom/android/contacts/vcard/ExportRequest;)V
    .locals 2

    .line 175
    iget-object p1, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v1, 0x7f100242

    .line 176
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 175
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onExportProcessed(Lcom/android/contacts/vcard/ExportRequest;I)Landroid/app/Notification;
    .locals 9

    .line 163
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    iget-object p1, p1, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/android/contacts/vcard/ExportVCardActivity;->getOpenableUriDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 165
    iget-object p1, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v0, 0x7f1000bc

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 167
    iget-object p1, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 168
    iget-object p1, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/contacts/util/ContactsNotificationChannelsUtil;->createDefaultChannel(Landroid/content/Context;)V

    .line 169
    iget-object v1, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const/4 v2, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v3, v4

    move v5, p2

    invoke-static/range {v1 .. v8}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public onImportCanceled(Lcom/android/contacts/vcard/ImportRequest;I)V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/contacts/vcard/ImportRequest;->displayName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f100162

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    .line 156
    invoke-static {v0, p1}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    .line 157
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "VCardServiceProgress"

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public onImportFailed(Lcom/android/contacts/vcard/ImportRequest;)V
    .locals 2

    .line 147
    iget-object p1, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v1, 0x7f100244

    .line 148
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 147
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onImportFinished(Lcom/android/contacts/vcard/ImportRequest;ILandroid/net/Uri;)V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/contacts/vcard/ImportRequest;->displayName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f100164

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.VIEW"

    if-eqz p3, :cond_0

    .line 126
    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 127
    iget-object p3, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    .line 128
    invoke-virtual {p3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 127
    invoke-static {p3, v1}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    .line 130
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 132
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "vnd.android.cursor.dir/contact"

    .line 133
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    :goto_0
    iget-object p3, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object p3, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 137
    invoke-static {p3, p1, v0, v1}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object p1

    .line 139
    iget-object p3, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v0, "VCardServiceProgress"

    invoke-virtual {p3, v0, p2, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public onImportParsed(Lcom/android/contacts/vcard/ImportRequest;ILcom/android/vcard/VCardEntry;II)Landroid/app/Notification;
    .locals 16

    move-object/from16 v0, p0

    .line 102
    invoke-virtual/range {p3 .. p3}, Lcom/android/vcard/VCardEntry;->isIgnorable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 106
    :cond_0
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    iget-object v2, v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f1001df

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 109
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    .line 111
    invoke-virtual/range {p3 .. p3}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v1

    .line 108
    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 112
    iget-object v1, v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v2, 0x7f100163

    new-array v3, v5, [Ljava/lang/Object;

    .line 113
    invoke-virtual/range {p3 .. p3}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 112
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 115
    iget-object v1, v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v1, p1

    iget-object v13, v1, Lcom/android/contacts/vcard/ImportRequest;->displayName:Ljava/lang/String;

    move/from16 v12, p2

    move/from16 v14, p5

    move/from16 v15, p4

    invoke-static/range {v8 .. v15}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method public onImportProcessed(Lcom/android/contacts/vcard/ImportRequest;II)Landroid/app/Notification;
    .locals 10

    .line 77
    iget-object p1, p1, Lcom/android/contacts/vcard/ImportRequest;->displayName:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v2, 0x7f100245

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v1, 0x7f100247

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object v1, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v2, 0x7f100246

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v7, p1

    move-object v5, v1

    if-nez p3, :cond_1

    .line 91
    iget-object p1, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/contacts/util/ContactsNotificationChannelsUtil;->createDefaultChannel(Landroid/content/Context;)V

    .line 95
    iget-object v2, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const/4 v3, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v4, v5

    move v6, p2

    invoke-static/range {v2 .. v9}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

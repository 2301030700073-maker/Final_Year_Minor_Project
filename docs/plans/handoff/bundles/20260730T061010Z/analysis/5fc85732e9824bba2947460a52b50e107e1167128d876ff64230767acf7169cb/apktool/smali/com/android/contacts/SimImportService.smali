.class public Lcom/android/contacts/SimImportService;
.super Landroid/app/Service;
.source "SimImportService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/SimImportService$ImportTask;,
        Lcom/android/contacts/SimImportService$StopTask;,
        Lcom/android/contacts/SimImportService$StatusProvider;
    }
.end annotation


# static fields
.field public static final BROADCAST_SERVICE_STATE_CHANGED:Ljava/lang/String;

.field public static final BROADCAST_SIM_IMPORT_COMPLETE:Ljava/lang/String;

.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field public static final EXTRA_OPERATION_REQUESTED_AT_TIME:Ljava/lang/String; = "requestedTime"

.field public static final EXTRA_RESULT_CODE:Ljava/lang/String; = "resultCode"

.field public static final EXTRA_RESULT_COUNT:Ljava/lang/String; = "count"

.field public static final EXTRA_SIM_CONTACTS:Ljava/lang/String; = "simContacts"

.field public static final EXTRA_SIM_SUBSCRIPTION_ID:Ljava/lang/String; = "simSubscriptionId"

.field private static final NOTIFICATION_ID:I = 0x64

.field public static final RESULT_FAILURE:I = 0x2

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final RESULT_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SimImportService"

.field private static sPending:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/SimImportService$ImportTask;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatusProvider:Lcom/android/contacts/SimImportService$StatusProvider;


# instance fields
.field private mExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/contacts/SimImportService;

    .line 81
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#serviceStateChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/SimImportService;->BROADCAST_SERVICE_STATE_CHANGED:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/contacts/SimImportService;

    .line 83
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#simImportComplete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/SimImportService;->BROADCAST_SIM_IMPORT_COMPLETE:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/contacts/SimImportService;->sPending:Ljava/util/List;

    .line 98
    new-instance v0, Lcom/android/contacts/SimImportService$1;

    invoke-direct {v0}, Lcom/android/contacts/SimImportService$1;-><init>()V

    sput-object v0, Lcom/android/contacts/SimImportService;->sStatusProvider:Lcom/android/contacts/SimImportService$StatusProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 93
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/SimImportService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 49
    sget-object v0, Lcom/android/contacts/SimImportService;->sPending:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/model/SimCard;)Z
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/android/contacts/SimImportService;->isImporting(Lcom/android/contacts/model/SimCard;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/contacts/SimImportService;)Landroid/app/Notification;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/contacts/SimImportService;->getImportingNotification()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/contacts/SimImportService;)Landroid/app/Notification;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/contacts/SimImportService;->getCompletedNotification()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/contacts/SimImportService;)Landroid/app/Notification;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/contacts/SimImportService;->getFailedNotification()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/contacts/SimImportService;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/contacts/SimImportService;->notifyStateChanged()V

    return-void
.end method

.method private createTaskForIntent(Landroid/content/Intent;I)Lcom/android/contacts/SimImportService$ImportTask;
    .locals 8

    const-string v0, "account"

    .line 175
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/contacts/model/account/AccountWithDataSet;

    const-string v0, "simContacts"

    .line 177
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v0, "simSubscriptionId"

    const/4 v1, -0x1

    .line 179
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 181
    invoke-static {p0}, Lcom/android/contacts/database/SimContactDao;->create(Landroid/content/Context;)Lcom/android/contacts/database/SimContactDao;

    move-result-object v6

    .line 182
    invoke-virtual {v6, p1}, Lcom/android/contacts/database/SimContactDao;->getSimBySubscriptionId(I)Lcom/android/contacts/model/SimCard;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 184
    new-instance p1, Lcom/android/contacts/SimImportService$ImportTask;

    move-object v1, p1

    move-object v2, p0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/contacts/SimImportService$ImportTask;-><init>(Lcom/android/contacts/SimImportService;Lcom/android/contacts/model/SimCard;Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/database/SimContactDao;I)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCompletedNotification()Landroid/app/Notification;
    .locals 5

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v2, Lcom/android/contacts/util/ContactsNotificationChannelsUtil;->DEFAULT_CHANNEL:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 194
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v3, 0x1

    .line 195
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    const v3, 0x7f100160

    .line 196
    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 197
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    const v3, 0x7f0800b1

    .line 198
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 199
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 200
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private getFailedNotification()Landroid/app/Notification;
    .locals 5

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v2, Lcom/android/contacts/util/ContactsNotificationChannelsUtil;->DEFAULT_CHANNEL:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 207
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v3, 0x1

    .line 208
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    const v3, 0x7f10015f

    .line 209
    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v3, 0x7f10015e

    .line 210
    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 211
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    const v3, 0x7f0800b3

    .line 212
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 213
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 214
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private getImportingNotification()Landroid/app/Notification;
    .locals 5

    .line 218
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v1, Lcom/android/contacts/util/ContactsNotificationChannelsUtil;->DEFAULT_CHANNEL:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f100161

    .line 220
    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 221
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v3, 0x0

    const/16 v4, 0x64

    .line 222
    invoke-virtual {v0, v3, v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 223
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 224
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x1080081

    .line 225
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 226
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public static getStatusProvider()Lcom/android/contacts/SimImportService$StatusProvider;
    .locals 1

    .line 125
    sget-object v0, Lcom/android/contacts/SimImportService;->sStatusProvider:Lcom/android/contacts/SimImportService$StatusProvider;

    return-object v0
.end method

.method private static isImporting(Lcom/android/contacts/model/SimCard;)Z
    .locals 2

    .line 116
    sget-object v0, Lcom/android/contacts/SimImportService;->sPending:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/SimImportService$ImportTask;

    .line 117
    invoke-virtual {v1}, Lcom/android/contacts/SimImportService$ImportTask;->getSim()Lcom/android/contacts/model/SimCard;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/contacts/model/SimCard;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private notifyStateChanged()V
    .locals 3

    .line 230
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/contacts/SimImportService;->BROADCAST_SERVICE_STATE_CHANGED:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static startImport(Landroid/content/Context;ILjava/util/ArrayList;Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/SimContact;",
            ">;",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ")V"
        }
    .end annotation

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/SimImportService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "simContacts"

    .line 142
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "simSubscriptionId"

    .line 143
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "account"

    .line 144
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 170
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 171
    iget-object v0, p0, Lcom/android/contacts/SimImportService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 156
    invoke-static {p0}, Lcom/android/contacts/util/ContactsNotificationChannelsUtil;->createDefaultChannel(Landroid/content/Context;)V

    .line 157
    invoke-direct {p0, p1, p3}, Lcom/android/contacts/SimImportService;->createTaskForIntent(Landroid/content/Intent;I)Lcom/android/contacts/SimImportService$ImportTask;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 159
    new-instance p1, Lcom/android/contacts/SimImportService$StopTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p3, v0}, Lcom/android/contacts/SimImportService$StopTask;-><init>(Landroid/app/Service;ILcom/android/contacts/SimImportService$1;)V

    iget-object p3, p0, Lcom/android/contacts/SimImportService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p3, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 p1, 0x2

    return p1

    .line 162
    :cond_0
    sget-object p3, Lcom/android/contacts/SimImportService;->sPending:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object p3, p0, Lcom/android/contacts/SimImportService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p3, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 164
    invoke-direct {p0}, Lcom/android/contacts/SimImportService;->notifyStateChanged()V

    const/4 p1, 0x3

    return p1
.end method

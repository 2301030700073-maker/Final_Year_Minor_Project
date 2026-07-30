.class Lcom/android/contacts/SimImportService$ImportTask;
.super Landroid/os/AsyncTask;
.source "SimImportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/SimImportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimContact;",
            ">;"
        }
    .end annotation
.end field

.field private final mDao:Lcom/android/contacts/database/SimContactDao;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mSim:Lcom/android/contacts/model/SimCard;

.field private final mStartId:I

.field private final mStartTime:J

.field private final mTargetAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

.field final synthetic this$0:Lcom/android/contacts/SimImportService;


# direct methods
.method public constructor <init>(Lcom/android/contacts/SimImportService;Lcom/android/contacts/model/SimCard;Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/database/SimContactDao;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/SimCard;",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimContact;",
            ">;",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            "Lcom/android/contacts/database/SimContactDao;",
            "I)V"
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lcom/android/contacts/SimImportService$ImportTask;->this$0:Lcom/android/contacts/SimImportService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 269
    iput-object p2, p0, Lcom/android/contacts/SimImportService$ImportTask;->mSim:Lcom/android/contacts/model/SimCard;

    .line 270
    iput-object p3, p0, Lcom/android/contacts/SimImportService$ImportTask;->mContacts:Ljava/util/List;

    .line 271
    iput-object p4, p0, Lcom/android/contacts/SimImportService$ImportTask;->mTargetAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 272
    iput-object p5, p0, Lcom/android/contacts/SimImportService$ImportTask;->mDao:Lcom/android/contacts/database/SimContactDao;

    const-string p2, "notification"

    .line 273
    invoke-virtual {p1, p2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/contacts/SimImportService$ImportTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 274
    iput p6, p0, Lcom/android/contacts/SimImportService$ImportTask;->mStartId:I

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/contacts/SimImportService$ImportTask;->mStartTime:J

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .line 286
    new-instance p1, Landroid/util/TimingLogger;

    const-string v0, "SimImportService"

    const-string v1, "import"

    invoke-direct {p1, v0, v1}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/SimImportService$ImportTask;->mDao:Lcom/android/contacts/database/SimContactDao;

    iget-object v2, p0, Lcom/android/contacts/SimImportService$ImportTask;->mContacts:Ljava/util/List;

    iget-object v3, p0, Lcom/android/contacts/SimImportService$ImportTask;->mTargetAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/database/SimContactDao;->importContacts(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)[Landroid/content/ContentProviderResult;

    .line 294
    iget-object v1, p0, Lcom/android/contacts/SimImportService$ImportTask;->mDao:Lcom/android/contacts/database/SimContactDao;

    iget-object v2, p0, Lcom/android/contacts/SimImportService$ImportTask;->mSim:Lcom/android/contacts/model/SimCard;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/SimCard;->withImportedState(Z)Lcom/android/contacts/model/SimCard;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/database/SimContactDao;->persistSimState(Lcom/android/contacts/model/SimCard;)V

    const-string v1, "done"

    .line 295
    invoke-virtual {p1, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Landroid/util/TimingLogger;->dumpToLog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 298
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/SimImportService$ImportTask;->this$0:Lcom/android/contacts/SimImportService;

    const-string v2, "Failed to import contacts from SIM card"

    invoke-static {v1, v0, v2, p1}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 258
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/SimImportService$ImportTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getSim()Lcom/android/contacts/model/SimCard;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/contacts/SimImportService$ImportTask;->mSim:Lcom/android/contacts/model/SimCard;

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    .line 311
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/android/contacts/SimImportService$ImportTask;->this$0:Lcom/android/contacts/SimImportService;

    iget v1, p0, Lcom/android/contacts/SimImportService$ImportTask;->mStartId:I

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    .line 316
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "simSubscriptionId"

    const-string v1, "requestedTime"

    const-string v2, "resultCode"

    if-eqz p1, :cond_0

    .line 317
    new-instance p1, Landroid/content/Intent;

    sget-object v3, Lcom/android/contacts/SimImportService;->BROADCAST_SIM_IMPORT_COMPLETE:Ljava/lang/String;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 318
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget-object v2, p0, Lcom/android/contacts/SimImportService$ImportTask;->mContacts:Ljava/util/List;

    .line 319
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "count"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget-wide v2, p0, Lcom/android/contacts/SimImportService$ImportTask;->mStartTime:J

    .line 320
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lcom/android/contacts/SimImportService$ImportTask;->mSim:Lcom/android/contacts/model/SimCard;

    .line 321
    invoke-virtual {v1}, Lcom/android/contacts/model/SimCard;->getSubscriptionId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 323
    iget-object v0, p0, Lcom/android/contacts/SimImportService$ImportTask;->this$0:Lcom/android/contacts/SimImportService;

    invoke-static {v0}, Lcom/android/contacts/SimImportService;->access$400(Lcom/android/contacts/SimImportService;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    .line 325
    :cond_0
    new-instance p1, Landroid/content/Intent;

    sget-object v3, Lcom/android/contacts/SimImportService;->BROADCAST_SIM_IMPORT_COMPLETE:Ljava/lang/String;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 326
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget-wide v2, p0, Lcom/android/contacts/SimImportService$ImportTask;->mStartTime:J

    .line 327
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lcom/android/contacts/SimImportService$ImportTask;->mSim:Lcom/android/contacts/model/SimCard;

    .line 328
    invoke-virtual {v1}, Lcom/android/contacts/model/SimCard;->getSubscriptionId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 330
    iget-object v0, p0, Lcom/android/contacts/SimImportService$ImportTask;->this$0:Lcom/android/contacts/SimImportService;

    invoke-static {v0}, Lcom/android/contacts/SimImportService;->access$500(Lcom/android/contacts/SimImportService;)Landroid/app/Notification;

    move-result-object v0

    .line 332
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/SimImportService$ImportTask;->this$0:Lcom/android/contacts/SimImportService;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 334
    invoke-static {}, Lcom/android/contacts/SimImportService;->access$000()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 339
    invoke-static {}, Lcom/android/contacts/SimImportService;->access$000()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 340
    iget-object p1, p0, Lcom/android/contacts/SimImportService$ImportTask;->this$0:Lcom/android/contacts/SimImportService;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 341
    iget-object p1, p0, Lcom/android/contacts/SimImportService$ImportTask;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x64

    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 343
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/SimImportService$ImportTask;->this$0:Lcom/android/contacts/SimImportService;

    invoke-static {p1}, Lcom/android/contacts/SimImportService;->access$600(Lcom/android/contacts/SimImportService;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 258
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/contacts/SimImportService$ImportTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 280
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 281
    iget-object v0, p0, Lcom/android/contacts/SimImportService$ImportTask;->this$0:Lcom/android/contacts/SimImportService;

    invoke-static {v0}, Lcom/android/contacts/SimImportService;->access$300(Lcom/android/contacts/SimImportService;)Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

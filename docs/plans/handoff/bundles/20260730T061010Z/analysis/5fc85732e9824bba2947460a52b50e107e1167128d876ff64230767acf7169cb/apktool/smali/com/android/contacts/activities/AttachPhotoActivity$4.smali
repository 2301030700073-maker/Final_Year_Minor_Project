.class Lcom/android/contacts/activities/AttachPhotoActivity$4;
.super Ljava/lang/Object;
.source "AttachPhotoActivity.java"

# interfaces
.implements Lcom/android/contacts/activities/AttachPhotoActivity$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/AttachPhotoActivity;->createNewRawContact(Lcom/android/contacts/model/account/AccountWithDataSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/AttachPhotoActivity;

.field final synthetic val$account:Lcom/android/contacts/model/account/AccountWithDataSet;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/AttachPhotoActivity;Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/android/contacts/activities/AttachPhotoActivity$4;->this$0:Lcom/android/contacts/activities/AttachPhotoActivity;

    iput-object p2, p0, Lcom/android/contacts/activities/AttachPhotoActivity$4;->val$account:Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactLoaded(Lcom/android/contacts/model/Contact;)V
    .locals 5

    .line 391
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->createRawContactDeltaList()Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v0

    .line 392
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 393
    iget-object v2, p0, Lcom/android/contacts/activities/AttachPhotoActivity$4;->val$account:Lcom/android/contacts/model/account/AccountWithDataSet;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v4, "account_type"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/android/contacts/activities/AttachPhotoActivity$4;->val$account:Lcom/android/contacts/model/account/AccountWithDataSet;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    const-string v4, "account_name"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v2, p0, Lcom/android/contacts/activities/AttachPhotoActivity$4;->val$account:Lcom/android/contacts/model/account/AccountWithDataSet;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    :cond_2
    const-string v2, "data_set"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    new-instance v2, Lcom/android/contacts/model/RawContactDelta;

    .line 398
    invoke-static {v1}, Lcom/android/contacts/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/contacts/model/RawContactDelta;-><init>(Lcom/android/contacts/model/ValuesDelta;)V

    .line 399
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v1, p0, Lcom/android/contacts/activities/AttachPhotoActivity$4;->this$0:Lcom/android/contacts/activities/AttachPhotoActivity;

    invoke-static {v1, p1, v0, v2}, Lcom/android/contacts/activities/AttachPhotoActivity;->access$200(Lcom/android/contacts/activities/AttachPhotoActivity;Lcom/android/contacts/model/Contact;Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/RawContactDelta;)V

    return-void
.end method

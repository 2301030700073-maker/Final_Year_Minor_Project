.class public Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;
.super Landroid/os/AsyncTask;
.source "UpdateGroupMembersAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mAccountType:Ljava/lang/String;

.field private final mContactIds:[J

.field private final mContext:Landroid/content/Context;

.field private final mDataSet:Ljava/lang/String;

.field private final mGroupId:J

.field private final mType:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;[JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->mContext:Landroid/content/Context;

    .line 51
    iput p1, p0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->mType:I

    .line 52
    iput-object p3, p0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->mContactIds:[J

    .line 53
    iput-wide p4, p0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->mGroupId:J

    .line 54
    iput-object p6, p0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->mAccountName:Ljava/lang/String;

    .line 55
    iput-object p7, p0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->mAccountType:Ljava/lang/String;

    .line 56
    iput-object p8, p0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->mDataSet:Ljava/lang/String;

    return-void
.end method

.method private getRawContactIds()[J
    .locals 10

    .line 87
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->mAccountName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "account_name"

    .line 90
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 91
    iget-object v1, p0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->mAccountType:Ljava/lang/String;

    const-string v2, "account_type"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->mDataSet:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "data_set"

    .line 94
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 96
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const-string v0, "_id"

    .line 97
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    iget-object v1, p0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->mContactIds:[J

    array-length v1, v1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 100
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->mContactIds:[J

    array-length v3, v3

    if-ge v2, v3, :cond_3

    if-lez v2, :cond_2

    const-string v3, " OR "

    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v3, "contact_id"

    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v3, p0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->mContactIds:[J

    aget-wide v8, v3, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 107
    invoke-virtual/range {v3 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v2, v2, [J

    const/4 v3, 0x0

    .line 112
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 113
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 117
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 118
    throw v1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/Intent;
    .locals 10

    .line 61
    invoke-direct {p0}, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->getRawContactIds()[J

    move-result-object p1

    .line 62
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 68
    :cond_0
    iget v0, p0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->mType:I

    if-nez v0, :cond_1

    const-string v0, "addToGroup"

    move-object v6, p1

    move-object v9, v0

    move-object v7, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const-string v0, "removeFromGroup"

    move-object v7, p1

    move-object v9, v0

    move-object v6, v1

    .line 79
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->mGroupId:J

    const/4 v5, 0x0

    const-class v8, Lcom/android/contacts/activities/PeopleActivity;

    invoke-static/range {v2 .. v9}, Lcom/android/contacts/ContactSaveService;->createGroupUpdateIntent(Landroid/content/Context;JLjava/lang/String;[J[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->mContext:Landroid/content/Context;

    const v0, 0x7f10013f

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/contacts/group/UpdateGroupMembersAsyncTask;->onPostExecute(Landroid/content/Intent;)V

    return-void
.end method

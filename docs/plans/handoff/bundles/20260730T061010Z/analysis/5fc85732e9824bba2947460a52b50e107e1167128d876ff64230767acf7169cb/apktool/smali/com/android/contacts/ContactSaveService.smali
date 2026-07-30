.class public Lcom/android/contacts/ContactSaveService;
.super Landroid/app/IntentService;
.source "ContactSaveService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactSaveService$State;,
        Lcom/android/contacts/ContactSaveService$GroupsDaoImpl;,
        Lcom/android/contacts/ContactSaveService$GroupsDao;,
        Lcom/android/contacts/ContactSaveService$ContactEntityQuery;,
        Lcom/android/contacts/ContactSaveService$JoinContactQuery;,
        Lcom/android/contacts/ContactSaveService$Listener;
    }
.end annotation


# static fields
.field public static final ACTION_CLEAR_PRIMARY:Ljava/lang/String; = "clearPrimary"

.field public static final ACTION_CREATE_GROUP:Ljava/lang/String; = "createGroup"

.field public static final ACTION_DELETE_CONTACT:Ljava/lang/String; = "delete"

.field public static final ACTION_DELETE_GROUP:Ljava/lang/String; = "deleteGroup"

.field public static final ACTION_DELETE_MULTIPLE_CONTACTS:Ljava/lang/String; = "deleteMultipleContacts"

.field public static final ACTION_JOIN_CONTACTS:Ljava/lang/String; = "joinContacts"

.field public static final ACTION_JOIN_SEVERAL_CONTACTS:Ljava/lang/String; = "joinSeveralContacts"

.field public static final ACTION_NEW_RAW_CONTACT:Ljava/lang/String; = "newRawContact"

.field public static final ACTION_RENAME_GROUP:Ljava/lang/String; = "renameGroup"

.field public static final ACTION_SAVE_CONTACT:Ljava/lang/String; = "saveContact"

.field public static final ACTION_SET_RINGTONE:Ljava/lang/String; = "setRingtone"

.field public static final ACTION_SET_SEND_TO_VOICEMAIL:Ljava/lang/String; = "sendToVoicemail"

.field public static final ACTION_SET_STARRED:Ljava/lang/String; = "setStarred"

.field public static final ACTION_SET_SUPER_PRIMARY:Ljava/lang/String; = "setSuperPrimary"

.field public static final ACTION_SLEEP:Ljava/lang/String; = "sleep"

.field public static final ACTION_SPLIT_CONTACT:Ljava/lang/String; = "splitContact"

.field public static final ACTION_UNDO:Ljava/lang/String; = "undo"

.field public static final ACTION_UPDATE_GROUP:Ljava/lang/String; = "updateGroup"

.field private static final ALLOWED_DATA_COLUMNS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BAD_ARGUMENTS:I = 0x3

.field public static final BROADCAST_GROUP_DELETED:Ljava/lang/String; = "groupDeleted"

.field public static final BROADCAST_LINK_COMPLETE:Ljava/lang/String; = "linkComplete"

.field public static final BROADCAST_SERVICE_STATE_CHANGED:Ljava/lang/String; = "serviceStateChanged"

.field public static final BROADCAST_UNLINK_COMPLETE:Ljava/lang/String; = "unlinkComplete"

.field public static final CONTACTS_LINKED:I = 0x1

.field public static final CONTACTS_SPLIT:I = 0x2

.field public static final CP2_ERROR:I = 0x0

.field private static final DEBUG:Z = false

.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field public static final EXTRA_ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field public static final EXTRA_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field public static final EXTRA_CALLBACK_INTENT:Ljava/lang/String; = "callbackIntent"

.field public static final EXTRA_CONTACT_ID1:Ljava/lang/String; = "contactId1"

.field public static final EXTRA_CONTACT_ID2:Ljava/lang/String; = "contactId2"

.field public static final EXTRA_CONTACT_IDS:Ljava/lang/String; = "contactIds"

.field public static final EXTRA_CONTACT_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field public static final EXTRA_CONTENT_VALUES:Ljava/lang/String; = "contentValues"

.field public static final EXTRA_CUSTOM_RINGTONE:Ljava/lang/String; = "customRingtone"

.field public static final EXTRA_DATA_ID:Ljava/lang/String; = "dataId"

.field public static final EXTRA_DATA_SET:Ljava/lang/String; = "dataSet"

.field public static final EXTRA_DISPLAY_NAME:Ljava/lang/String; = "extraDisplayName"

.field public static final EXTRA_DISPLAY_NAME_ARRAY:Ljava/lang/String; = "extraDisplayNameArray"

.field public static final EXTRA_GROUP_ID:Ljava/lang/String; = "groupId"

.field public static final EXTRA_GROUP_LABEL:Ljava/lang/String; = "groupLabel"

.field public static final EXTRA_HARD_SPLIT:Ljava/lang/String; = "extraHardSplit"

.field public static final EXTRA_RAW_CONTACTS_TO_ADD:Ljava/lang/String; = "rawContactsToAdd"

.field public static final EXTRA_RAW_CONTACTS_TO_REMOVE:Ljava/lang/String; = "rawContactsToRemove"

.field public static final EXTRA_RAW_CONTACT_IDS:Ljava/lang/String; = "rawContactIds"

.field public static final EXTRA_RESULT_CODE:Ljava/lang/String; = "resultCode"

.field public static final EXTRA_RESULT_COUNT:Ljava/lang/String; = "count"

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "resultReceiver"

.field public static final EXTRA_SAVE_IS_PROFILE:Ljava/lang/String; = "saveIsProfile"

.field public static final EXTRA_SAVE_MODE:Ljava/lang/String; = "saveMode"

.field public static final EXTRA_SAVE_SUCCEEDED:Ljava/lang/String; = "saveSucceeded"

.field public static final EXTRA_SEND_TO_VOICEMAIL_FLAG:Ljava/lang/String; = "sendToVoicemailFlag"

.field public static final EXTRA_SLEEP_DURATION:Ljava/lang/String; = "sleepDuration"

.field public static final EXTRA_STARRED_FLAG:Ljava/lang/String; = "starred"

.field public static final EXTRA_UNDO_ACTION:Ljava/lang/String; = "undoAction"

.field public static final EXTRA_UNDO_DATA:Ljava/lang/String; = "undoData"

.field public static final EXTRA_UPDATED_PHOTOS:Ljava/lang/String; = "updatedPhotos"

.field private static final MAX_CONTACTS_PROVIDER_BATCH_SIZE:I = 0x1f3

.field private static final PERSIST_TRIES:I = 0x3

.field public static final RESULT_FAILURE:I = 0x2

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final RESULT_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContactSaveService"

.field private static final sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/contacts/ContactSaveService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final sState:Lcom/android/contacts/ContactSaveService$State;


# instance fields
.field private mGroupsDao:Lcom/android/contacts/ContactSaveService$GroupsDao;

.field private mMainHandler:Landroid/os/Handler;

.field private mSimContactDao:Lcom/android/contacts/database/SimContactDao;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "mimetype"

    const-string v1, "is_primary"

    const-string v2, "data1"

    const-string v3, "data2"

    const-string v4, "data3"

    const-string v5, "data4"

    const-string v6, "data5"

    const-string v7, "data6"

    const-string v8, "data7"

    const-string v9, "data8"

    const-string v10, "data9"

    const-string v11, "data10"

    const-string v12, "data11"

    const-string v13, "data12"

    const-string v14, "data13"

    const-string v15, "data14"

    const-string v16, "data15"

    .line 170
    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactSaveService;->ALLOWED_DATA_COLUMNS:Ljava/util/HashSet;

    .line 198
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 202
    new-instance v0, Lcom/android/contacts/ContactSaveService$State;

    invoke-direct {v0}, Lcom/android/contacts/ContactSaveService$State;-><init>()V

    sput-object v0, Lcom/android/contacts/ContactSaveService;->sState:Lcom/android/contacts/ContactSaveService$State;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "ContactSaveService"

    .line 209
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 210
    invoke-virtual {p0, v0}, Landroid/app/IntentService;->setIntentRedelivery(Z)V

    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private addMembersToGroup(Landroid/content/ContentResolver;[JJ)V
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p2

    const-string v3, "vnd.android.cursor.item/group_membership"

    const-string v4, "ContactSaveService"

    if-nez v2, :cond_0

    return-void

    .line 963
    :cond_0
    array-length v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_2

    aget-wide v8, v2, v7

    .line 965
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 969
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 970
    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    .line 973
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v6

    const/4 v13, 0x1

    aput-object v3, v12, v13

    const/4 v13, 0x2

    .line 974
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 971
    invoke-virtual {v10, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 975
    invoke-virtual {v10, v6}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    .line 976
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 980
    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "raw_contact_id"

    .line 981
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v11, "mimetype"

    .line 982
    invoke-virtual {v10, v11, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v11, "data1"

    .line 983
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 984
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "com.android.contacts"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v11, p1

    .line 994
    :try_start_1
    invoke-virtual {v11, v10, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    move-object/from16 v11, p1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v11, p1

    .line 1004
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Assert failed in adding raw contact ID "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". Already exists in group "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1004
    invoke-static {p0, v4, v8, v0}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v11, p1

    .line 998
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Problem persisting user edits for raw contact ID "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 998
    invoke-static {p0, v4, v8, v0}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private applyDiffSubset(Ljava/util/ArrayList;I[Landroid/content/ContentProviderResult;Landroid/content/ContentResolver;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;I[",
            "Landroid/content/ContentProviderResult;",
            "Landroid/content/ContentResolver;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 683
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p2

    const/16 v1, 0x1f3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 684
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v0, p2

    .line 685
    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string p1, "com.android.contacts"

    .line 686
    invoke-virtual {p4, p1, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 688
    array-length p4, p1

    add-int/2addr p4, p2

    array-length v0, p3

    if-le p4, v0, :cond_0

    goto :goto_1

    .line 691
    :cond_0
    array-length p4, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    aget-object v1, p1, v0

    add-int/lit8 v2, p2, 0x1

    .line 692
    aput-object v1, p3, p2

    add-int/lit8 v0, v0, 0x1

    move p2, v2

    goto :goto_0

    .line 694
    :cond_1
    array-length p1, p1

    return p1

    :cond_2
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method private applyOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.contacts"

    .line 1521
    invoke-virtual {p1, v1, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    const/4 p2, 0x0

    .line 1522
    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_1

    .line 1524
    aget-object v1, p1, p2

    iget-object v1, v1, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1525
    :cond_0
    new-instance p1, Landroid/content/OperationApplicationException;

    invoke-direct {p1}, Landroid/content/OperationApplicationException;-><init>()V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string p2, "ContactSaveService"

    const-string v1, "Failed to apply aggregation exception batch"

    .line 1530
    invoke-static {p0, p2, v1, p1}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const p1, 0x7f1000a1

    .line 1532
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    return v0
.end method

.method private buildJoinContactDiff(Ljava/util/ArrayList;JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;JJ)V"
        }
    .end annotation

    .line 1719
    sget-object v0, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    .line 1720
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1721
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1722
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "raw_contact_id1"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1723
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "raw_contact_id2"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1724
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private buildSplitContactDiff(Ljava/util/ArrayList;JJZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;JJZ)V"
        }
    .end annotation

    .line 1734
    sget-object v0, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    .line 1735
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    if-eqz p6, :cond_0

    const/4 p6, 0x2

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    .line 1737
    :goto_0
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const-string v1, "type"

    .line 1736
    invoke-virtual {v0, v1, p6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1740
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "raw_contact_id1"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1741
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "raw_contact_id2"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1742
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private buildSplitTwoContacts(Ljava/util/ArrayList;[J[JZ)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;[J[JZ)Z"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto :goto_3

    .line 1321
    :cond_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    .line 1324
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_4

    const/4 v5, 0x0

    .line 1325
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_3

    .line 1326
    aget-wide v9, v0, v4

    aget-wide v11, v1, v5

    move-object v7, p0

    move-object v8, p1

    move/from16 v13, p4

    invoke-direct/range {v7 .. v13}, Lcom/android/contacts/ContactSaveService;->buildSplitContactDiff(Ljava/util/ArrayList;JJZ)V

    .line 1328
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int/lit16 v6, v6, 0x1f3

    if-nez v6, :cond_2

    move-object v6, p0

    move-object v7, p1

    .line 1329
    invoke-direct {p0, v3, p1}, Lcom/android/contacts/ContactSaveService;->applyOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Z

    move-result v8

    if-nez v8, :cond_1

    return v2

    .line 1332
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_2
    move-object v6, p0

    move-object v7, p1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move-object v6, p0

    move-object v7, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move-object v6, p0

    const/4 v0, 0x1

    return v0

    :cond_5
    :goto_3
    move-object v6, p0

    const-string v0, "ContactSaveService"

    const-string v1, "Invalid arguments for splitContact request"

    .line 1317
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static canUndo(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "undoData"

    .line 230
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private clearPrimary(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "dataId"

    const-wide/16 v1, -0x1

    .line 1156
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    const-string p1, "ContactSaveService"

    const-string v0, "Invalid arguments for clearPrimary request"

    .line 1158
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1163
    :cond_0
    new-instance p1, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/content/ContentValues;-><init>(I)V

    const/4 v0, 0x0

    .line 1164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_super_primary"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1165
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_primary"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1167
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static createClearPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2

    .line 1149
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "clearPrimary"

    .line 1150
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "dataId"

    .line 1151
    invoke-virtual {v0, p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method

.method public static createDeleteContactIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .line 1175
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "delete"

    .line 1176
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "contactUri"

    .line 1177
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createDeleteMultipleContactsIntent(Landroid/content/Context;[J[Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1186
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "deleteMultipleContacts"

    .line 1187
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "contactIds"

    .line 1188
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string p0, "extraDisplayNameArray"

    .line 1189
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private createGroup(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "accountType"

    .line 777
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountName"

    .line 778
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dataSet"

    .line 779
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "groupLabel"

    .line 780
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rawContactsToAdd"

    .line 781
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v4

    .line 784
    iget-object v5, p0, Lcom/android/contacts/ContactSaveService;->mGroupsDao:Lcom/android/contacts/ContactSaveService$GroupsDao;

    new-instance v6, Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-direct {v6, v1, v0, v2}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v3, v6}, Lcom/android/contacts/ContactSaveService$GroupsDao;->create(Ljava/lang/String;Lcom/android/contacts/model/account/AccountWithDataSet;)Landroid/net/Uri;

    move-result-object v0

    .line 786
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v0, :cond_0

    .line 791
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t create group with label "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContactSaveService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 796
    :cond_0
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/android/contacts/ContactSaveService;->addMembersToGroup(Landroid/content/ContentResolver;[JJ)V

    .line 798
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 802
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/group_membership"

    .line 803
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "callbackIntent"

    .line 806
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 807
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 809
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 810
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    return-void
.end method

.method public static createGroupDeletionIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2

    .line 854
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "deleteGroup"

    .line 855
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "groupId"

    .line 856
    invoke-virtual {v0, p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method

.method public static createGroupRenameIntent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 818
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "renameGroup"

    .line 819
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "groupId"

    .line 820
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "groupLabel"

    .line 821
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 825
    invoke-virtual {p1, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "callbackIntent"

    .line 826
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createGroupUpdateIntent(Landroid/content/Context;JLjava/lang/String;[J[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "[J[J",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 912
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "updateGroup"

    .line 913
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "groupId"

    .line 914
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "groupLabel"

    .line 915
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "rawContactsToAdd"

    .line 916
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string p1, "rawContactsToRemove"

    .line 917
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 921
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, p6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 922
    invoke-virtual {p1, p7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "callbackIntent"

    .line 923
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createHardSplitContactIntent(Landroid/content/Context;[[J)Landroid/content/Intent;
    .locals 2

    .line 1259
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "splitContact"

    .line 1260
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "rawContactIds"

    .line 1261
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "extraHardSplit"

    const/4 p1, 0x1

    .line 1262
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static createJoinContactsIntent(Landroid/content/Context;JJLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1345
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "joinContacts"

    .line 1346
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "contactId1"

    .line 1347
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "contactId2"

    .line 1348
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1351
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1352
    invoke-virtual {p1, p6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "callbackIntent"

    .line 1353
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createJoinSeveralContactsIntent(Landroid/content/Context;[J)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 1376
    invoke-static {p0, p1, v0}, Lcom/android/contacts/ContactSaveService;->createJoinSeveralContactsIntent(Landroid/content/Context;[JLandroid/support/v4/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createJoinSeveralContactsIntent(Landroid/content/Context;[JLandroid/support/v4/os/ResultReceiver;)Landroid/content/Intent;
    .locals 2

    .line 1364
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "joinSeveralContacts"

    .line 1365
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "contactIds"

    .line 1366
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string p0, "resultReceiver"

    .line 1367
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createNewGroupIntent(Landroid/content/Context;Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/String;[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            "Ljava/lang/String;",
            "[J",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 759
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "createGroup"

    .line 760
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    iget-object v1, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    const-string v2, "accountType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    iget-object v1, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    const-string v2, "accountName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    iget-object p1, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    const-string v1, "dataSet"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "groupLabel"

    .line 764
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "rawContactsToAdd"

    .line 765
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 769
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 770
    invoke-virtual {p1, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "callbackIntent"

    .line 771
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createNewRawContactIntent(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "newRawContact"

    .line 374
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 376
    iget-object v1, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    const-string v2, "accountName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    iget-object v1, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    const-string v2, "accountType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    iget-object p2, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    const-string v1, "dataSet"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p2, "contentValues"

    .line 380
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 386
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    invoke-virtual {p1, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "callbackIntent"

    .line 388
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private createRawContact(Landroid/content/Intent;)V
    .locals 8

    const-string v0, "accountName"

    .line 393
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountType"

    .line 394
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dataSet"

    .line 395
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "contentValues"

    .line 396
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "callbackIntent"

    .line 397
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 399
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 400
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "account_name"

    .line 401
    invoke-virtual {v5, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "account_type"

    .line 402
    invoke-virtual {v0, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data_set"

    .line 403
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 400
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 408
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 409
    invoke-virtual {v5}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v6

    sget-object v7, Lcom/android/contacts/ContactSaveService;->ALLOWED_DATA_COLUMNS:Ljava/util/HashSet;

    invoke-interface {v6, v7}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 410
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "raw_contact_id"

    .line 411
    invoke-virtual {v6, v7, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 412
    invoke-virtual {v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 413
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    .line 410
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string v2, "com.android.contacts"

    .line 419
    invoke-virtual {v0, v2, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    aget-object v1, v2, v1

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 425
    invoke-static {v0, v1}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 427
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception p1

    .line 421
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to store new contact"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;JLandroid/net/Uri;)Landroid/content/Intent;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/contacts/model/RawContactDeltaList;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Landroid/net/Uri;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 442
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 443
    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p9

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    .line 444
    invoke-static/range {v0 .. v9}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Long;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Long;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/contacts/model/RawContactDeltaList;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 463
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "saveContact"

    .line 465
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "state"

    .line 466
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "saveIsProfile"

    .line 467
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "saveMode"

    .line 468
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p7, :cond_0

    const-string p1, "updatedPhotos"

    .line 471
    invoke-virtual {v0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    if-eqz p5, :cond_2

    .line 478
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 479
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p8, :cond_1

    if-eqz p9, :cond_1

    .line 481
    invoke-virtual {p1, p8, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 483
    :cond_1
    invoke-virtual {p1, p6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "callbackIntent"

    .line 484
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    return-object v0
.end method

.method public static createSetRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "setRingtone"

    .line 1104
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "contactUri"

    .line 1105
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "customRingtone"

    .line 1106
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createSetSendToVoicemail(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 2

    .line 1077
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "sendToVoicemail"

    .line 1078
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "contactUri"

    .line 1079
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "sendToVoicemailFlag"

    .line 1080
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 2

    .line 1032
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "setStarred"

    .line 1033
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "contactUri"

    .line 1034
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "starred"

    .line 1035
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2

    .line 1127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "setSuperPrimary"

    .line 1128
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "dataId"

    .line 1129
    invoke-virtual {v0, p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method

.method public static createSleepIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2

    .line 1753
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "sleep"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "sleepDuration"

    .line 1754
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createSplitContactIntent(Landroid/content/Context;[[JLandroid/support/v4/os/ResultReceiver;)Landroid/content/Intent;
    .locals 2

    .line 1246
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "splitContact"

    .line 1247
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "rawContactIds"

    .line 1248
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "resultReceiver"

    .line 1249
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createUndoIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 880
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "undo"

    .line 881
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 882
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    return-object v0
.end method

.method private deleteContact(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "contactUri"

    .line 1194
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-nez p1, :cond_0

    const-string p1, "ContactSaveService"

    const-string v0, "Invalid arguments for deleteContact request"

    .line 1196
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1200
    :cond_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private deleteGroup(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "groupId"

    const-wide/16 v1, -0x1

    .line 862
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    const-string p1, "ContactSaveService"

    const-string v0, "Invalid arguments for deleteGroup request"

    .line 864
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 867
    :cond_0
    sget-object p1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 869
    new-instance v0, Landroid/content/Intent;

    const-string v1, "groupDeleted"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 870
    iget-object v1, p0, Lcom/android/contacts/ContactSaveService;->mGroupsDao:Lcom/android/contacts/ContactSaveService$GroupsDao;

    invoke-interface {v1, p1}, Lcom/android/contacts/ContactSaveService$GroupsDao;->captureDeletionUndoData(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "undoAction"

    const-string v3, "deleteGroup"

    .line 871
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "undoData"

    .line 872
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 874
    iget-object v1, p0, Lcom/android/contacts/ContactSaveService;->mGroupsDao:Lcom/android/contacts/ContactSaveService$GroupsDao;

    invoke-interface {v1, p1}, Lcom/android/contacts/ContactSaveService$GroupsDao;->delete(Landroid/net/Uri;)I

    .line 876
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private deleteMultipleContacts(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "contactIds"

    .line 1204
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "ContactSaveService"

    const-string v0, "Invalid arguments for deleteMultipleContacts request"

    .line 1206
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1209
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-wide v3, v0, v2

    .line 1210
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1211
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "extraDisplayNameArray"

    .line 1213
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1216
    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_5

    array-length v1, p1

    if-nez v1, :cond_2

    goto :goto_1

    .line 1219
    :cond_2
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1220
    invoke-virtual {p0}, Landroid/app/IntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000ba

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1222
    :cond_3
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1223
    invoke-virtual {p0}, Landroid/app/IntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000bb

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1226
    :cond_4
    invoke-virtual {p0}, Landroid/app/IntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000b9

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1217
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/app/IntentService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f0002

    array-length v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    .line 1230
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/ContactSaveService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/ContactSaveService$1;-><init>(Lcom/android/contacts/ContactSaveService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private deliverCallback(Landroid/content/Intent;)V
    .locals 2

    .line 1802
    iget-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/ContactSaveService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/ContactSaveService$4;-><init>(Lcom/android/contacts/ContactSaveService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getInsertedRawContactId(Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/CPOWrapper;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            ")J"
        }
    .end annotation

    const-wide/16 v0, -0x1

    if-nez p2, :cond_0

    return-wide v0

    .line 731
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 732
    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    if-ge v4, v3, :cond_2

    .line 734
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/CPOWrapper;

    .line 735
    invoke-static {v5}, Lcom/android/contacts/compat/CompatUtils;->isInsertCompat(Lcom/android/contacts/model/CPOWrapper;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 736
    invoke-virtual {v5}, Lcom/android/contacts/model/CPOWrapper;->getOperation()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 737
    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v6

    .line 736
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 738
    aget-object p1, p2, v4

    iget-object p1, p1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    return-wide p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method private getRawContactId(Lcom/android/contacts/model/RawContactDeltaList;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/RawContactDeltaList;",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/CPOWrapper;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            ")J"
        }
    .end annotation

    .line 715
    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDeltaList;->findRawContactId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    return-wide v0

    .line 720
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/ContactSaveService;->getInsertedRawContactId(Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J

    move-result-wide p1

    return-wide p1
.end method

.method private getRawContactIds(J)[J
    .locals 6

    .line 1633
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact_id"

    .line 1637
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 1638
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    sget-object p1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/ContactSaveService$JoinContactQuery;->PROJECTION:[Ljava/lang/String;

    .line 1643
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 1641
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "ContactSaveService"

    const-string p2, "Unable to open Contacts DB cursor"

    .line 1646
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 1650
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    new-array v0, p2, [J

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 1652
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1653
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1654
    aput-wide v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1657
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1658
    throw p2
.end method

.method private getRawContactIdsForAggregation(JJ)[J
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 p1, 0x1

    aput-wide p3, v0, p1

    .line 1711
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactSaveService;->getRawContactIdsForAggregation([J)[J

    move-result-object p1

    return-object p1
.end method

.method private getRawContactIdsForAggregation([J)[J
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1667
    :cond_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1670
    array-length v3, p1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1671
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    const-string v4, "contact_id=?"

    .line 1672
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    aget-wide v8, p1, v3

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    .line 1674
    aget-wide v8, p1, v3

    const-wide/16 v10, -0x1

    cmp-long v4, v8, v10

    if-nez v4, :cond_1

    return-object v0

    .line 1677
    :cond_1
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const-string v4, " OR "

    .line 1680
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1683
    :cond_3
    :goto_1
    sget-object p1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/ContactSaveService$JoinContactQuery;->PROJECTION:[Ljava/lang/String;

    .line 1685
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v2, p1

    .line 1683
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string v1, "ContactSaveService"

    if-nez p1, :cond_4

    const-string p1, "Unable to open Contacts DB cursor"

    .line 1688
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f1000a1

    .line 1689
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    return-object v0

    .line 1694
    :cond_4
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_5

    const-string v2, "Not enough raw contacts to aggregate together."

    .line 1695
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1705
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 1698
    :cond_5
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_6

    .line 1700
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1701
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1702
    aput-wide v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1705
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1706
    throw v0
.end method

.method private getSeparatedRawContactIds([J)[[J
    .locals 4

    .line 1620
    array-length v0, p1

    new-array v0, v0, [[J

    const/4 v1, 0x0

    .line 1621
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1622
    aget-wide v2, p1, v1

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/ContactSaveService;->getRawContactIds(J)[J

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getState()Lcom/android/contacts/ContactSaveService$State;
    .locals 1

    .line 238
    sget-object v0, Lcom/android/contacts/ContactSaveService;->sState:Lcom/android/contacts/ContactSaveService$State;

    return-object v0
.end method

.method private joinContacts(Landroid/content/Intent;)V
    .locals 29

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const-string v1, "contactId1"

    const-wide/16 v8, -0x1

    .line 1538
    invoke-virtual {v0, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v1, "contactId2"

    .line 1539
    invoke-virtual {v0, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 1543
    invoke-direct {v7, v10, v11, v12, v13}, Lcom/android/contacts/ContactSaveService;->getRawContactIdsForAggregation(JJ)[J

    move-result-object v14

    const-string v15, "ContactSaveService"

    if-nez v14, :cond_0

    const-string v0, "Invalid arguments for joinContacts request"

    .line 1545
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1549
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1552
    :goto_0
    array-length v1, v14

    if-ge v3, v1, :cond_3

    const/4 v4, 0x0

    .line 1553
    :goto_1
    array-length v1, v14

    if-ge v4, v1, :cond_2

    if-eq v3, v4, :cond_1

    .line 1555
    aget-wide v16, v14, v3

    aget-wide v18, v14, v4

    move-object/from16 v1, p0

    move-object v2, v5

    move/from16 v20, v3

    move/from16 v21, v4

    move-wide/from16 v3, v16

    move-object/from16 v22, v5

    const/4 v8, 0x0

    move-wide/from16 v5, v18

    invoke-direct/range {v1 .. v6}, Lcom/android/contacts/ContactSaveService;->buildJoinContactDiff(Ljava/util/ArrayList;JJ)V

    goto :goto_2

    :cond_1
    move/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v22, v5

    const/4 v8, 0x0

    :goto_2
    add-int/lit8 v4, v21, 0x1

    move/from16 v3, v20

    move-object/from16 v5, v22

    const/4 v6, 0x0

    const-wide/16 v8, -0x1

    goto :goto_1

    :cond_2
    move/from16 v20, v3

    move-object/from16 v22, v5

    const/4 v8, 0x0

    add-int/lit8 v3, v20, 0x1

    const/4 v6, 0x0

    const-wide/16 v8, -0x1

    goto :goto_0

    :cond_3
    move-object/from16 v22, v5

    const/4 v8, 0x0

    .line 1560
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1563
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "entities"

    .line 1565
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 1567
    sget-object v25, Lcom/android/contacts/ContactSaveService$ContactEntityQuery;->PROJECTION:[Ljava/lang/String;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v26, "mimetype = \'vnd.android.cursor.item/name\' AND data1=display_name AND data1 IS NOT NULL  AND data1 != \'\' "

    move-object/from16 v23, v1

    invoke-virtual/range {v23 .. v28}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v0, "Unable to open Contacts DB cursor"

    .line 1570
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1000a1

    .line 1571
    invoke-direct {v7, v0}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    return-void

    .line 1576
    :cond_4
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1577
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_5
    const-wide/16 v3, -0x1

    .line 1580
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x1

    const-wide/16 v5, -0x1

    cmp-long v9, v3, v5

    if-eqz v9, :cond_6

    .line 1586
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1587
    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1586
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 1588
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "is_super_primary"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1589
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "is_primary"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1590
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v4, v22

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    move-object/from16 v4, v22

    .line 1594
    :goto_4
    invoke-direct {v7, v1, v4}, Lcom/android/contacts/ContactSaveService;->applyOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Z

    move-result v3

    const/4 v4, 0x2

    new-array v4, v4, [J

    aput-wide v10, v4, v8

    aput-wide v12, v4, v2

    .line 1596
    invoke-direct {v7, v4}, Lcom/android/contacts/ContactSaveService;->queryNameOfLinkedContacts([J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "callbackIntent"

    .line 1597
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    .line 1599
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const v2, 0x7f1000b5

    .line 1600
    invoke-direct {v7, v2}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    goto :goto_5

    :cond_7
    const v3, 0x7f1000b6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v8

    .line 1602
    invoke-direct {v7, v3, v2}, Lcom/android/contacts/ContactSaveService;->showToast(I[Ljava/lang/Object;)V

    .line 1604
    :goto_5
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    aget-wide v3, v14, v8

    .line 1605
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1604
    invoke-static {v1, v2}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 1606
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1607
    invoke-static/range {p0 .. p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "linkComplete"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1608
    invoke-virtual {v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1610
    :cond_8
    invoke-direct {v7, v0}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    return-void

    :catchall_0
    move-exception v0

    .line 1580
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1581
    throw v0
.end method

.method private joinSeveralContacts(Landroid/content/Intent;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    const-string v1, "contactIds"

    .line 1408
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v7

    const-string v1, "resultReceiver"

    .line 1410
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/support/v4/os/ResultReceiver;

    .line 1413
    invoke-direct {v6, v7}, Lcom/android/contacts/ContactSaveService;->getRawContactIdsForAggregation([J)[J

    move-result-object v9

    .line 1414
    invoke-direct {v6, v7}, Lcom/android/contacts/ContactSaveService;->getSeparatedRawContactIds([J)[[J

    move-result-object v10

    if-nez v9, :cond_1

    const-string v0, "ContactSaveService"

    const-string v1, "Invalid arguments for joinSeveralContacts request"

    .line 1416
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_0

    const/4 v0, 0x3

    .line 1418
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v8, v0, v1}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    return-void

    .line 1424
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1427
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0x1f3

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1428
    :goto_0
    array-length v0, v9

    if-ge v15, v0, :cond_7

    const/4 v4, 0x0

    .line 1429
    :goto_1
    array-length v0, v9

    if-ge v4, v0, :cond_6

    if-eq v15, v4, :cond_2

    .line 1431
    aget-wide v2, v9, v15

    aget-wide v16, v9, v4

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v18, v4

    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/ContactSaveService;->buildJoinContactDiff(Ljava/util/ArrayList;JJ)V

    goto :goto_2

    :cond_2
    move/from16 v18, v4

    .line 1434
    :goto_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr v0, v13

    if-nez v0, :cond_5

    .line 1435
    invoke-direct {v6, v11, v12}, Lcom/android/contacts/ContactSaveService;->applyOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v8, :cond_3

    .line 1437
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v8, v14, v0}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_3
    return-void

    .line 1441
    :cond_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    :cond_5
    add-int/lit8 v4, v18, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1445
    :cond_7
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-direct {v6, v11, v12}, Lcom/android/contacts/ContactSaveService;->applyOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz v8, :cond_8

    .line 1447
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v8, v14, v0}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_8
    return-void

    .line 1453
    :cond_9
    invoke-direct {v6, v7}, Lcom/android/contacts/ContactSaveService;->queryNameOfLinkedContacts([J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    if-eqz v8, :cond_a

    .line 1456
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "rawContactIds"

    .line 1457
    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "extraDisplayName"

    .line 1458
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    invoke-virtual {v8, v1, v2}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_3

    .line 1461
    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const v0, 0x7f1000b5

    .line 1462
    invoke-direct {v6, v0}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    goto :goto_3

    :cond_b
    const v2, 0x7f1000b6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v14

    .line 1464
    invoke-direct {v6, v2, v1}, Lcom/android/contacts/ContactSaveService;->showToast(I[Ljava/lang/Object;)V

    .line 1467
    :goto_3
    invoke-static/range {p0 .. p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "linkComplete"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1468
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_4

    :cond_c
    if-eqz v8, :cond_d

    .line 1471
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v8, v14, v0}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_d
    const v0, 0x7f10009e

    .line 1473
    invoke-direct {v6, v0}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    :goto_4
    return-void
.end method

.method private notifyStateChanged()V
    .locals 3

    .line 242
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "serviceStateChanged"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private queryNameOfLinkedContacts([J)Ljava/lang/String;
    .locals 10

    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    array-length v2, p1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1481
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 1482
    aget-wide v4, p1, v3

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    const-string v4, "?,"

    .line 1483
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1485
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 v9, 0x1

    sub-int/2addr p1, v9

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v3, 0x29

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1486
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string p1, "display_name"

    const-string v5, "display_name_alt"

    filled-new-array {v1, p1, v5}, [Ljava/lang/String;

    move-result-object v5

    .line 1489
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    .line 1486
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 1495
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1496
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1497
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    .line 1498
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v3, v4

    move-object v5, v3

    .line 1500
    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1501
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v8, v6, v0

    if-eqz v8, :cond_2

    if-eqz p1, :cond_3

    .line 1511
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v4

    .line 1506
    :cond_4
    :try_start_1
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    .line 1507
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    .line 1506
    invoke-static {v3, v5, v0}, Lcom/android/contacts/util/ContactDisplayUtils;->getPreferredDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/preference/ContactsPreferences;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    if-eqz p1, :cond_6

    .line 1511
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1513
    :cond_7
    throw v0
.end method

.method public static registerListener(Lcom/android/contacts/ContactSaveService$Listener;)V
    .locals 2

    .line 222
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    return-void

    .line 223
    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only activities can be registered to receive callback from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    .line 224
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static removeMembersFromGroup(Landroid/content/ContentResolver;[JJ)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1017
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v3, p1, v2

    .line 1021
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    .line 1023
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    const-string v3, "vnd.android.cursor.item/group_membership"

    const/4 v4, 0x1

    aput-object v3, v6, v4

    const/4 v3, 0x2

    .line 1024
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const-string v3, "raw_contact_id=? AND mimetype=? AND data1=?"

    .line 1021
    invoke-virtual {p0, v5, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private renameGroup(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "groupId"

    const-wide/16 v1, -0x1

    .line 832
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "groupLabel"

    .line 833
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    cmp-long v5, v3, v1

    if-nez v5, :cond_0

    const-string p1, "ContactSaveService"

    const-string v0, "Invalid arguments for renameGroup request"

    .line 836
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 840
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "title"

    .line 841
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 843
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "callbackIntent"

    .line 845
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 846
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 847
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    return-void
.end method

.method private saveContact(Landroid/content/Intent;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Problem persisting user edits"

    const-string v0, "state"

    .line 490
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDeltaList;

    const-string v4, "saveIsProfile"

    const/4 v5, 0x0

    .line 491
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v6, "updatedPhotos"

    .line 492
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string v7, "ContactSaveService"

    if-nez v0, :cond_0

    const-string v0, "Invalid arguments for saveContact request"

    .line 495
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v8, "saveMode"

    const/4 v9, -0x1

    .line 499
    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 501
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v10

    .line 502
    invoke-static {v0, v10}, Lcom/android/contacts/model/RawContactModifier;->trimEmpty(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/AccountTypeManager;)V

    .line 506
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-wide/16 v17, -0x1

    move-object v14, v0

    move-wide/from16 v11, v17

    const/4 v0, 0x0

    const/16 v19, 0x0

    :goto_0
    add-int/lit8 v20, v0, 0x1

    const/4 v13, 0x3

    if-ge v0, v13, :cond_10

    .line 518
    :try_start_0
    invoke-virtual {v14}, Lcom/android/contacts/model/RawContactDeltaList;->buildDiffWrapper()Ljava/util/ArrayList;

    move-result-object v0

    .line 520
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 522
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/contacts/model/CPOWrapper;

    .line 523
    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/model/CPOWrapper;->getOperation()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 535
    :cond_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Landroid/content/ContentProviderResult;

    const/4 v5, 0x0

    .line 536
    :goto_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 537
    invoke-direct {v1, v13, v5, v15, v10}, Lcom/android/contacts/ContactSaveService;->applyDiffSubset(Ljava/util/ArrayList;I[Landroid/content/ContentProviderResult;Landroid/content/ContentResolver;)I

    move-result v9

    const/4 v2, -0x1

    if-ne v9, v2, :cond_2

    const-string v5, "Resolver.applyBatch failed in saveContacts"

    .line 539
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_d

    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    add-int/2addr v5, v9

    move-object/from16 v2, p1

    goto :goto_2

    :cond_3
    const/4 v2, -0x1

    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_4

    move-object/from16 v2, p1

    goto/16 :goto_12

    :cond_4
    move-object v5, v3

    .line 552
    :try_start_1
    invoke-direct {v1, v14, v0, v15}, Lcom/android/contacts/ContactSaveService;->getRawContactId(Lcom/android/contacts/model/RawContactDeltaList;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J

    move-result-wide v2

    cmp-long v9, v2, v17

    if-eqz v9, :cond_9

    .line 558
    invoke-direct {v1, v0, v15}, Lcom/android/contacts/ContactSaveService;->getInsertedRawContactId(Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J

    move-result-wide v22
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_a

    if-eqz v4, :cond_7

    .line 563
    :try_start_2
    sget-object v12, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v2, "lookup"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v13
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v0, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v10

    move-object v9, v14

    move-object v14, v0

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v3, :cond_5

    move-object/from16 v2, p1

    move-object v3, v5

    move-object v14, v9

    move/from16 v0, v20

    move-wide/from16 v11, v22

    goto/16 :goto_13

    .line 570
    :cond_5
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_6

    const/4 v13, 0x0

    .line 571
    :try_start_5
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v14, 0x1

    .line 572
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-static {v11, v12, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    .line 576
    :goto_4
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v14, v2

    move-object/from16 v2, v19

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    const/4 v13, 0x0

    :goto_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 577
    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Landroid/content/OperationApplicationException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_1
    move-exception v0

    const/4 v13, 0x0

    :goto_6
    move-object v14, v2

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v9, v14

    const/4 v13, 0x0

    move-wide/from16 v11, v22

    goto/16 :goto_d

    :cond_7
    move-object v9, v14

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 579
    :try_start_7
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 581
    invoke-static {v10, v0}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Landroid/content/OperationApplicationException; {:try_start_7 .. :try_end_7} :catch_6

    move-object v2, v0

    :goto_7
    if-eqz v2, :cond_8

    const/4 v0, 0x2

    .line 583
    :try_start_8
    invoke-static {v7, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saved contact. New URI: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Landroid/content/OperationApplicationException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_9

    :catch_4
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_a

    :catch_5
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_b

    :cond_8
    :goto_8
    move-wide/from16 v11, v22

    const/4 v14, 0x1

    goto/16 :goto_17

    :catch_6
    move-exception v0

    :goto_9
    move-wide/from16 v11, v22

    goto :goto_e

    :catch_7
    move-exception v0

    :goto_a
    move-wide/from16 v11, v22

    goto/16 :goto_14

    :catch_8
    move-exception v0

    :goto_b
    move-wide/from16 v11, v22

    goto/16 :goto_15

    :cond_9
    move-object v9, v14

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 554
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Could not determine RawContact ID after save"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Landroid/content/OperationApplicationException; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    move-exception v0

    goto :goto_e

    :catch_a
    move-exception v0

    goto :goto_c

    :catch_b
    move-exception v0

    goto/16 :goto_14

    :catch_c
    move-exception v0

    goto/16 :goto_15

    :catch_d
    move-exception v0

    move-object v5, v3

    :goto_c
    move-object v9, v14

    const/4 v13, 0x0

    :goto_d
    const/4 v14, 0x0

    .line 604
    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version consistency failed, re-parenting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id IN("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v15, 0x0

    const/16 v21, 0x1

    :goto_f
    if-ge v15, v3, :cond_c

    .line 609
    invoke-virtual {v9, v15}, Lcom/android/contacts/model/RawContactDeltaList;->getRawContactId(I)Ljava/lang/Long;

    move-result-object v13

    if-eqz v13, :cond_b

    .line 610
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    cmp-long v16, v22, v17

    if-eqz v16, :cond_b

    if-nez v21, :cond_a

    const/16 v14, 0x2c

    .line 612
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 614
    :cond_a
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v21, 0x0

    :cond_b
    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_f

    :cond_c
    const-string v3, ")"

    .line 618
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v21, :cond_f

    if-eqz v4, :cond_d

    .line 627
    sget-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    goto :goto_10

    .line 628
    :cond_d
    sget-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 629
    :goto_10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 625
    invoke-static {v0, v10, v2, v3, v3}, Lcom/android/contacts/model/RawContactDeltaList;->fromQuery(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v0

    .line 630
    invoke-static {v0, v9}, Lcom/android/contacts/model/RawContactDeltaList;->mergeAfter(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/RawContactDeltaList;)Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v14

    if-eqz v4, :cond_e

    .line 634
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/RawContactDelta;

    .line 635
    invoke-virtual {v2}, Lcom/android/contacts/model/RawContactDelta;->setProfileQueryUri()V

    goto :goto_11

    :cond_e
    move-object/from16 v2, p1

    move-object v3, v5

    :goto_12
    move/from16 v0, v20

    :goto_13
    const/4 v5, 0x0

    const/4 v9, -0x1

    goto/16 :goto_0

    .line 621
    :cond_f
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Version consistency failed for a new contact"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_e
    move-exception v0

    move-object v5, v3

    .line 598
    :goto_14
    invoke-static {v1, v7, v5, v0}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const v0, 0x7f1000a1

    .line 599
    invoke-direct {v1, v0}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    goto :goto_16

    :catch_f
    move-exception v0

    move-object v5, v3

    .line 593
    :goto_15
    invoke-static {v1, v7, v5, v0}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_16
    move-object/from16 v2, v19

    const/4 v14, 0x0

    :goto_17
    if-eqz v6, :cond_14

    .line 644
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 645
    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 646
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v15, 0x0

    cmp-long v3, v9, v15

    if-gez v3, :cond_12

    move-wide v9, v11

    :cond_12
    cmp-long v3, v9, v15

    if-ltz v3, :cond_13

    .line 655
    invoke-direct {v1, v9, v10, v4, v8}, Lcom/android/contacts/ContactSaveService;->saveUpdatedPhoto(JLandroid/net/Uri;I)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_13
    const/4 v14, 0x0

    goto :goto_18

    :cond_14
    const-string v0, "callbackIntent"

    move-object/from16 v3, p1

    .line 661
    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_16

    if-eqz v14, :cond_15

    const-string v3, "saveSucceeded"

    const/4 v4, 0x1

    .line 667
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 669
    :cond_15
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 670
    invoke-direct {v1, v0}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    :cond_16
    return-void
.end method

.method private saveUpdatedPhoto(JLandroid/net/Uri;I)Z
    .locals 1

    .line 702
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 703
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "display_photo"

    .line 702
    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p4, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 706
    :goto_0
    invoke-static {p0, p3, p1, p2}, Lcom/android/contacts/util/ContactPhotoUtils;->savePhotoFromUriToUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Z)Z

    move-result p1

    return p1
.end method

.method private setRingtone(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "contactUri"

    .line 1112
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, "customRingtone"

    .line 1113
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_0

    const-string p1, "ContactSaveService"

    const-string v0, "Invalid arguments for setRingtone"

    .line 1115
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1118
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "custom_ringtone"

    .line 1119
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private setSendToVoicemail(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "contactUri"

    .line 1086
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, "sendToVoicemailFlag"

    const/4 v2, 0x0

    .line 1087
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez v0, :cond_0

    const-string p1, "ContactSaveService"

    const-string v0, "Invalid arguments for setRedirectToVoicemail"

    .line 1089
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1093
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1094
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "send_to_voicemail"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1095
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private setStarred(Landroid/content/Intent;)V
    .locals 8

    const-string v0, "contactUri"

    .line 1041
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    const-string v0, "starred"

    const/4 v7, 0x0

    .line 1042
    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez v2, :cond_0

    const-string p1, "ContactSaveService"

    const-string v0, "Invalid arguments for setStarred request"

    .line 1044
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1048
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1049
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1050
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v1, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1053
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p1, "_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 1059
    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1060
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide v2, 0x7fffffff80000000L

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 1064
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/contacts/compat/PinnedPositionsCompat;->undemote(Landroid/content/ContentResolver;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1069
    throw v0
.end method

.method private setSuperPrimary(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "dataId"

    const-wide/16 v1, -0x1

    .line 1134
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    const-string p1, "ContactSaveService"

    const-string v0, "Invalid arguments for setSuperPrimary request"

    .line 1136
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1140
    :cond_0
    invoke-static {p0, v3, v4}, Lcom/android/contacts/database/ContactUpdateUtils;->setSuperPrimary(Landroid/content/Context;J)V

    return-void
.end method

.method private showToast(I)V
    .locals 2

    .line 1792
    iget-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/ContactSaveService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/ContactSaveService$3;-><init>(Lcom/android/contacts/ContactSaveService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private varargs showToast(I[Ljava/lang/Object;)V
    .locals 1

    .line 1778
    invoke-virtual {p0}, Landroid/app/IntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1779
    iget-object p2, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/contacts/ContactSaveService$2;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/ContactSaveService$2;-><init>(Lcom/android/contacts/ContactSaveService;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sleepForDebugging(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "sleepDuration"

    const-wide/16 v1, 0x3e8

    .line 1758
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string p1, "ContactSaveService"

    const/4 v2, 0x3

    .line 1759
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1760
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sleeping for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1765
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1767
    :goto_0
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "finished sleeping"

    .line 1768
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private splitContact(Landroid/content/Intent;)V
    .locals 9

    const-string v0, "rawContactIds"

    .line 1268
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [[J

    const-string v1, "resultReceiver"

    .line 1269
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/support/v4/os/ResultReceiver;

    const-string v2, "extraHardSplit"

    const/4 v3, 0x0

    .line 1270
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez v0, :cond_1

    const-string p1, "ContactSaveService"

    const-string v0, "Invalid argument for splitContact request"

    .line 1272
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    const/4 p1, 0x3

    .line 1274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    return-void

    .line 1279
    :cond_1
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1280
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x1f3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    .line 1281
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_4

    const/4 v6, 0x0

    .line 1282
    :goto_1
    array-length v7, v0

    if-ge v6, v7, :cond_3

    if-eq v5, v6, :cond_2

    .line 1284
    aget-object v7, v0, v5

    aget-object v8, v0, v6

    invoke-direct {p0, v4, v7, v8, p1}, Lcom/android/contacts/ContactSaveService;->buildSplitTwoContacts(Ljava/util/ArrayList;[J[JZ)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v1, :cond_2

    .line 1287
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v3, p1}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1294
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    invoke-direct {p0, v2, v4}, Lcom/android/contacts/ContactSaveService;->applyOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz v1, :cond_5

    .line 1296
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v3, p1}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_5
    return-void

    .line 1300
    :cond_6
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "unlinkComplete"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    if-eqz v1, :cond_7

    const/4 p1, 0x2

    .line 1303
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_2

    :cond_7
    const p1, 0x7f1000a5

    .line 1305
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    :goto_2
    return-void
.end method

.method public static startService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 279
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p1, 0x7f10009c

    const/4 v0, 0x0

    .line 281
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static startService(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 1

    const/4 v0, 0x1

    .line 252
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    const p1, 0x7f10009c

    goto :goto_0

    :cond_0
    const p1, 0x7f1000a4

    goto :goto_0

    :cond_1
    const p1, 0x7f10009e

    goto :goto_0

    :cond_2
    const p1, 0x7f1000a1

    :goto_0
    const/4 p2, 0x0

    .line 268
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return p2
.end method

.method private undo(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "undoAction"

    .line 887
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deleteGroup"

    .line 888
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/contacts/ContactSaveService;->mGroupsDao:Lcom/android/contacts/ContactSaveService$GroupsDao;

    const-string v1, "undoData"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/contacts/ContactSaveService$GroupsDao;->undoDeletion(Landroid/os/Bundle;)Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public static unregisterListener(Lcom/android/contacts/ContactSaveService$Listener;)V
    .locals 1

    .line 234
    sget-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateGroup(Landroid/content/Intent;)V
    .locals 9

    const-string v0, "groupId"

    const-wide/16 v1, -0x1

    .line 929
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "groupLabel"

    .line 930
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "rawContactsToAdd"

    .line 931
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v5

    const-string v6, "rawContactsToRemove"

    .line 932
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v6

    cmp-long v7, v3, v1

    if-nez v7, :cond_0

    const-string p1, "ContactSaveService"

    const-string v0, "Invalid arguments for updateGroup request"

    .line 935
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 939
    :cond_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 940
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 944
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "title"

    .line 945
    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 946
    invoke-virtual {v1, v2, v7, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 950
    :cond_1
    invoke-direct {p0, v1, v5, v3, v4}, Lcom/android/contacts/ContactSaveService;->addMembersToGroup(Landroid/content/ContentResolver;[JJ)V

    .line 951
    invoke-static {v1, v6, v3, v4}, Lcom/android/contacts/ContactSaveService;->removeMembersFromGroup(Landroid/content/ContentResolver;[JJ)V

    const-string v0, "callbackIntent"

    .line 953
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 954
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 955
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method deliverCallbackOnUiThread(Landroid/content/Intent;)V
    .locals 4

    .line 1815
    sget-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactSaveService$Listener;

    .line 1816
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Landroid/app/Activity;

    .line 1817
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 1816
    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1818
    invoke-interface {v1, p1}, Lcom/android/contacts/ContactSaveService$Listener;->onServiceCompleted(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 287
    invoke-super {p0, p1}, Landroid/app/IntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 292
    :cond_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 216
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 217
    new-instance v0, Lcom/android/contacts/ContactSaveService$GroupsDaoImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/ContactSaveService$GroupsDaoImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/ContactSaveService;->mGroupsDao:Lcom/android/contacts/ContactSaveService$GroupsDao;

    .line 218
    invoke-static {p0}, Lcom/android/contacts/database/SimContactDao;->create(Landroid/content/Context;)Lcom/android/contacts/database/SimContactDao;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactSaveService;->mSimContactDao:Lcom/android/contacts/database/SimContactDao;

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "ContactSaveService"

    if-nez p1, :cond_1

    const/4 p1, 0x3

    .line 307
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "onHandleIntent: could not handle null intent"

    .line 308
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string v1, "android.permission.WRITE_CONTACTS"

    .line 312
    invoke-static {p0, v1}, Lcom/android/contacts/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "No WRITE_CONTACTS permission, unable to write to CP2"

    .line 313
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f1000a1

    .line 316
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    return-void

    .line 322
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "newRawContact"

    .line 323
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 324
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->createRawContact(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "saveContact"

    .line 325
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 326
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->saveContact(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "createGroup"

    .line 327
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 328
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->createGroup(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "renameGroup"

    .line 329
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 330
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->renameGroup(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "deleteGroup"

    .line 331
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 332
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deleteGroup(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "updateGroup"

    .line 333
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 334
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->updateGroup(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "setStarred"

    .line 335
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 336
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setStarred(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "setSuperPrimary"

    .line 337
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 338
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setSuperPrimary(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "clearPrimary"

    .line 339
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 340
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->clearPrimary(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "deleteMultipleContacts"

    .line 341
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 342
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deleteMultipleContacts(Landroid/content/Intent;)V

    goto :goto_0

    :cond_c
    const-string v1, "delete"

    .line 343
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 344
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deleteContact(Landroid/content/Intent;)V

    goto :goto_0

    :cond_d
    const-string v1, "splitContact"

    .line 345
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 346
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->splitContact(Landroid/content/Intent;)V

    goto :goto_0

    :cond_e
    const-string v1, "joinContacts"

    .line 347
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 348
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->joinContacts(Landroid/content/Intent;)V

    goto :goto_0

    :cond_f
    const-string v1, "joinSeveralContacts"

    .line 349
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 350
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->joinSeveralContacts(Landroid/content/Intent;)V

    goto :goto_0

    :cond_10
    const-string v1, "sendToVoicemail"

    .line 351
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 352
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setSendToVoicemail(Landroid/content/Intent;)V

    goto :goto_0

    :cond_11
    const-string v1, "setRingtone"

    .line 353
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 354
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setRingtone(Landroid/content/Intent;)V

    goto :goto_0

    :cond_12
    const-string v1, "undo"

    .line 355
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 356
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->undo(Landroid/content/Intent;)V

    goto :goto_0

    :cond_13
    const-string v1, "sleep"

    .line 357
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 358
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->sleepForDebugging(Landroid/content/Intent;)V

    .line 361
    :cond_14
    :goto_0
    sget-object v0, Lcom/android/contacts/ContactSaveService;->sState:Lcom/android/contacts/ContactSaveService$State;

    invoke-static {v0, p1}, Lcom/android/contacts/ContactSaveService$State;->access$100(Lcom/android/contacts/ContactSaveService$State;Landroid/content/Intent;)V

    .line 362
    invoke-direct {p0}, Lcom/android/contacts/ContactSaveService;->notifyStateChanged()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 299
    sget-object v0, Lcom/android/contacts/ContactSaveService;->sState:Lcom/android/contacts/ContactSaveService$State;

    invoke-static {v0, p1}, Lcom/android/contacts/ContactSaveService$State;->access$000(Lcom/android/contacts/ContactSaveService$State;Landroid/content/Intent;)V

    .line 300
    invoke-direct {p0}, Lcom/android/contacts/ContactSaveService;->notifyStateChanged()V

    .line 301
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

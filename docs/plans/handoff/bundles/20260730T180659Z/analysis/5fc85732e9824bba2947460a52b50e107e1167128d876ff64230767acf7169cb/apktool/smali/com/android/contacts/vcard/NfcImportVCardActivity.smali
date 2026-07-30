.class public Lcom/android/contacts/vcard/NfcImportVCardActivity;
.super Landroid/app/Activity;
.source "NfcImportVCardActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/android/contacts/vcard/VCardImportExportListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

.field private mHandler:Landroid/os/Handler;

.field private mRecord:Landroid/nfc/NdefRecord;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private startImport()V
    .locals 2

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v1, 0x1

    .line 229
    invoke-virtual {p0, v0, p0, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method createImportRequest()Lcom/android/contacts/vcard/ImportRequest;
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "NfcImportVCardActivity"

    const v3, 0x7f100131

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 109
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayInputStream;

    iget-object v0, v1, Lcom/android/contacts/vcard/NfcImportVCardActivity;->mRecord:Landroid/nfc/NdefRecord;

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v0, 0x0

    .line 110
    invoke-virtual {v6, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 111
    new-instance v0, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v0}, Lcom/android/vcard/VCardParser_V21;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_b

    .line 113
    :try_start_1
    new-instance v7, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v7}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    :try_start_2
    new-instance v8, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v8}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_2
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :try_start_3
    invoke-virtual {v0, v7}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 116
    invoke-virtual {v0, v8}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 117
    invoke-virtual {v0, v6}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 135
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_4 .. :try_end_4} :catch_b

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object v8, v4

    goto :goto_5

    :catch_0
    move-object v8, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v7, v4

    move-object v8, v7

    goto :goto_5

    :catch_1
    move-object v7, v4

    move-object v8, v7

    .line 119
    :catch_2
    :goto_0
    :try_start_5
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->reset()V

    const/4 v5, 0x2

    .line 121
    new-instance v0, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v0}, Lcom/android/vcard/VCardParser_V30;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 123
    :try_start_6
    new-instance v9, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v9}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_6
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 124
    :try_start_7
    new-instance v7, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v7}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_7
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 125
    :try_start_8
    invoke-virtual {v0, v9}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 126
    invoke-virtual {v0, v7}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 127
    invoke-virtual {v0, v6}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_8
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 135
    :try_start_9
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_9 .. :try_end_9} :catch_b

    goto :goto_1

    :catch_3
    move-object v8, v7

    move-object v4, v9

    goto :goto_7

    :catch_4
    :goto_1
    move-object v8, v7

    move-object v7, v9

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v8, v7

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v8, v7

    goto :goto_3

    :catchall_3
    move-exception v0

    :goto_2
    move-object v7, v9

    goto :goto_5

    :catch_6
    move-exception v0

    :goto_3
    move-object v7, v9

    goto :goto_4

    :catch_7
    move-exception v0

    :goto_4
    :try_start_a
    const-string v9, "vcard with unsupported version"

    .line 129
    invoke-static {v1, v2, v9, v0}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    invoke-virtual {v1, v3}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->showFailureNotification(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 135
    :try_start_b
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_b .. :try_end_b} :catch_9
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_b .. :try_end_b} :catch_b

    :catch_8
    return-object v4

    :catchall_4
    move-exception v0

    :goto_5
    :try_start_c
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_c .. :try_end_c} :catch_9
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_6

    :catch_9
    move-object v4, v7

    goto :goto_7

    .line 138
    :catch_a
    :goto_6
    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_d .. :try_end_d} :catch_9
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_d .. :try_end_d} :catch_b

    :catch_b
    move-exception v0

    const-string v5, "Failed to parse vcard"

    .line 148
    invoke-static {v1, v2, v5, v0}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    invoke-virtual {v1, v3}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->showFailureNotification(I)V

    return-object v4

    :catch_c
    move-object v8, v4

    :goto_7
    const-string v0, "Nested Exception is found (it may be false-positive)."

    .line 144
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v4

    :catch_d
    :goto_8
    move/from16 v16, v5

    .line 153
    new-instance v0, Lcom/android/contacts/vcard/ImportRequest;

    iget-object v10, v1, Lcom/android/contacts/vcard/NfcImportVCardActivity;->mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v2, v1, Lcom/android/contacts/vcard/NfcImportVCardActivity;->mRecord:Landroid/nfc/NdefRecord;

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v11

    const/4 v12, 0x0

    const v2, 0x7f1001be

    .line 154
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v14

    .line 155
    invoke-virtual {v8}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7}, Lcom/android/vcard/VCardEntryCounter;->getCount()I

    move-result v17

    move-object v9, v0

    invoke-direct/range {v9 .. v17}, Lcom/android/contacts/vcard/ImportRequest;-><init>(Lcom/android/contacts/model/account/AccountWithDataSet;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V

    return-object v0

    :catch_e
    move-exception v0

    const-string v3, "Failed to read vcard data"

    .line 140
    invoke-static {v1, v2, v3, v0}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const v0, 0x7f10012e

    .line 141
    invoke-virtual {v1, v0}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->showFailureNotification(I)V

    return-object v4
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 214
    new-instance p1, Lcom/android/contacts/model/account/AccountWithDataSet;

    const-string p2, "account_name"

    .line 215
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "account_type"

    .line 216
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data_set"

    .line 217
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, v0, p3}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity;->mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 218
    invoke-direct {p0}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->startImport()V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCancelRequest(Lcom/android/contacts/vcard/CancelRequest;I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 171
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    invoke-static {p0}, Lcom/android/contacts/activities/RequestPermissionsActivity;->startPermissionActivityIfNeeded(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "NfcImportVCardActivity"

    if-nez v0, :cond_1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknowon intent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 184
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, "text/x-vcard"

    .line 186
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "text/vcard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "android.nfc.extra.NDEF_MESSAGES"

    .line 192
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Landroid/nfc/NdefMessage;

    .line 194
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object p1

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity;->mRecord:Landroid/nfc/NdefRecord;

    .line 196
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Lcom/android/contacts/model/AccountTypeManager;->blockForWritableAccounts()Ljava/util/List;

    move-result-object p1

    .line 198
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    const/4 p1, 0x0

    .line 199
    iput-object p1, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity;->mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    goto :goto_0

    .line 200
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 201
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/account/AccountWithDataSet;

    iput-object p1, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity;->mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 207
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->startImport()V

    return-void

    .line 203
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/contacts/vcard/SelectAccountActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_5
    :goto_1
    const-string p1, "Not a vcard"

    .line 187
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onExportFailed(Lcom/android/contacts/vcard/ExportRequest;)V
    .locals 0

    return-void
.end method

.method public onExportProcessed(Lcom/android/contacts/vcard/ExportRequest;I)Landroid/app/Notification;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onImportCanceled(Lcom/android/contacts/vcard/ImportRequest;I)V
    .locals 0

    return-void
.end method

.method public onImportFailed(Lcom/android/contacts/vcard/ImportRequest;)V
    .locals 1

    .line 260
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "NfcImportVCardActivity"

    const-string v0, "Late import failure -- ignoring"

    .line 261
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const p1, 0x7f100244

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->showFailureNotification(I)V

    .line 265
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onImportFinished(Lcom/android/contacts/vcard/ImportRequest;ILandroid/net/Uri;)V
    .locals 0

    .line 245
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "NfcImportVCardActivity"

    const-string p2, "Late import -- ignoring"

    .line 246
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 251
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 252
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 253
    invoke-static {p0, p2}, Lcom/android/contacts/util/ImplicitIntentsUtil;->startActivityInAppIfPossible(Landroid/content/Context;Landroid/content/Intent;)V

    .line 254
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onImportParsed(Lcom/android/contacts/vcard/ImportRequest;ILcom/android/vcard/VCardEntry;II)Landroid/app/Notification;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onImportProcessed(Lcom/android/contacts/vcard/ImportRequest;II)Landroid/app/Notification;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 160
    check-cast p2, Lcom/android/contacts/vcard/VCardService$MyBinder;

    invoke-virtual {p2}, Lcom/android/contacts/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/vcard/VCardService;

    move-result-object p1

    .line 161
    new-instance p2, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;

    invoke-direct {p2, p0}, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;-><init>(Lcom/android/contacts/vcard/NfcImportVCardActivity;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/contacts/vcard/VCardService;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method showFailureNotification(I)V
    .locals 3

    const-string v0, "notification"

    .line 290
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 294
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-static {p0, p1}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructImportFailureNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    const-string v1, "VCardServiceFailure"

    const/4 v2, 0x1

    .line 295
    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 297
    iget-object p1, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/contacts/vcard/NfcImportVCardActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/vcard/NfcImportVCardActivity$1;-><init>(Lcom/android/contacts/vcard/NfcImportVCardActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

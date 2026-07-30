.class public final Lcom/android/contacts/activities/ShowOrCreateActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ShowOrCreateActivity.java"

# interfaces
.implements Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;
    }
.end annotation


# static fields
.field static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCreateDescrip:Ljava/lang/String;

.field private mCreateExtras:Landroid/os/Bundle;

.field private mCreateForce:Z

.field private mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "_id"

    const-string v1, "lookup"

    .line 63
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/activities/ShowOrCreateActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const-string v0, "contact_id"

    .line 68
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/activities/ShowOrCreateActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 88
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-static {p0}, Lcom/android/contacts/activities/RequestPermissionsActivity;->startPermissionActivityIfNeeded(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    if-nez p1, :cond_1

    .line 96
    new-instance p1, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-direct {p1, p0, p0}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    iput-object p1, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    goto :goto_0

    :cond_1
    const/16 v0, 0x2a

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 101
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 113
    :goto_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    .line 114
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 116
    iget-object v3, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_3
    const-string v2, "com.android.contacts.action.CREATE_DESCRIPTION"

    .line 120
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateDescrip:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 122
    iput-object v1, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateDescrip:Ljava/lang/String;

    :cond_4
    const/4 v2, 0x0

    const-string v3, "com.android.contacts.action.FORCE_CREATE"

    .line 126
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateForce:Z

    const-string p1, "mailto"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 130
    iget-object p1, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v0, "email"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object p1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 133
    iget-object v1, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/16 v2, 0x2a

    const/4 v3, 0x0

    sget-object v5, Lcom/android/contacts/activities/ShowOrCreateActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p1, "tel"

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 136
    iget-object p1, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v0, "phone"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object p1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 139
    iget-object v2, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    sget-object v6, Lcom/android/contacts/activities/ShowOrCreateActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 142
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid intent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShowOrCreateActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 235
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 215
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/raw_contact"

    .line 217
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10002e

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateDescrip:Ljava/lang/String;

    aput-object v4, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 222
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    new-instance v1, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 226
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/contacts/activities/ShowOrCreateActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ShowOrCreateActivity$1;-><init>(Lcom/android/contacts/activities/ShowOrCreateActivity;)V

    .line 228
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 233
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5

    if-nez p3, :cond_0

    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 168
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result p2

    const-wide/16 v0, -0x1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 169
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x0

    .line 171
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 172
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    move-wide v3, v0

    .line 175
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    if-ne p2, v2, :cond_2

    cmp-long p3, v3, v0

    if-eqz p3, :cond_2

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 180
    invoke-static {v3, v4, p1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 181
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 182
    invoke-static {p0, p2}, Lcom/android/contacts/util/ImplicitIntentsUtil;->startActivityInApp(Landroid/content/Context;Landroid/content/Intent;)V

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_2
    if-le p2, v2, :cond_3

    .line 187
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SEARCH"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    new-instance p2, Landroid/content/ComponentName;

    const-class p3, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 189
    iget-object p2, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 191
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 195
    :cond_3
    iget-boolean p1, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateForce:Z

    if-eqz p1, :cond_4

    .line 197
    new-instance p1, Landroid/content/Intent;

    sget-object p2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string p3, "android.intent.action.INSERT"

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 198
    iget-object p2, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, "vnd.android.cursor.dir/raw_contact"

    .line 199
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-static {p0, p1}, Lcom/android/contacts/util/ImplicitIntentsUtil;->startActivityInApp(Landroid/content/Context;Landroid/content/Intent;)V

    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 205
    :cond_4
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 175
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 176
    throw p1
.end method

.method protected onStop()V
    .locals 2

    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 150
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    if-eqz v0, :cond_0

    const/16 v1, 0x2a

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    :cond_0
    return-void
.end method

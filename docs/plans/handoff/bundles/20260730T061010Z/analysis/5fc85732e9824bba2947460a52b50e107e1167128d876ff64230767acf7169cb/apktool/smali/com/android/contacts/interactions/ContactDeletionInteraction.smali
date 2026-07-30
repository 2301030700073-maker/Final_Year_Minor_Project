.class public Lcom/android/contacts/interactions/ContactDeletionInteraction;
.super Landroid/app/Fragment;
.source "ContactDeletionInteraction.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/content/DialogInterface$OnDismissListener;"
    }
.end annotation


# static fields
.field public static final ARG_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field private static final COLUMN_INDEX_ACCOUNT_TYPE:I = 0x1

.field private static final COLUMN_INDEX_CONTACT_ID:I = 0x3

.field private static final COLUMN_INDEX_DATA_SET:I = 0x2

.field private static final COLUMN_INDEX_DISPLAY_NAME:I = 0x5

.field private static final COLUMN_INDEX_DISPLAY_NAME_ALT:I = 0x6

.field private static final COLUMN_INDEX_LOOKUP_KEY:I = 0x4

.field private static final COLUMN_INDEX_RAW_CONTACT_ID:I = 0x0

.field private static final ENTITY_PROJECTION:[Ljava/lang/String;

.field private static final FRAGMENT_TAG:Ljava/lang/String; = "deleteContact"

.field private static final KEY_ACTIVE:Ljava/lang/String; = "active"

.field private static final KEY_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field private static final KEY_FINISH_WHEN_DONE:Ljava/lang/String; = "finishWhenDone"

.field public static final RESULT_CODE_DELETED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ContactDeletion"


# instance fields
.field private mActive:Z

.field private mContactUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisplayName:Ljava/lang/String;

.field private mDisplayNameAlt:Ljava/lang/String;

.field private mFinishActivityWhenDone:Z

.field mMessageId:I

.field private mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManagerBase;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "raw_contact_id"

    const-string v1, "account_type"

    const-string v2, "data_set"

    const-string v3, "contact_id"

    const-string v4, "lookup"

    const-string v5, "display_name"

    const-string v6, "display_name_alt"

    .line 66
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->ENTITY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private setFinishActivityWhenDone(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mFinishActivityWhenDone:Z

    return-void
.end method

.method private setTestLoaderManager(Lcom/android/contacts/interactions/TestLoaderManagerBase;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManagerBase;

    return-void
.end method

.method private showDialog(IILandroid/net/Uri;)V
    .locals 2

    .line 305
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    .line 306
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 308
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/contacts/interactions/ContactDeletionInteraction$1;

    invoke-direct {v0, p0, p3}, Lcom/android/contacts/interactions/ContactDeletionInteraction$1;-><init>(Lcom/android/contacts/interactions/ContactDeletionInteraction;Landroid/net/Uri;)V

    .line 309
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 317
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    .line 319
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 320
    iget-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->startWithTestLoaderManager(Landroid/app/Activity;Landroid/net/Uri;ZLcom/android/contacts/interactions/TestLoaderManagerBase;)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    move-result-object p0

    return-object p0
.end method

.method static startWithTestLoaderManager(Landroid/app/Activity;Landroid/net/Uri;ZLcom/android/contacts/interactions/TestLoaderManagerBase;)Lcom/android/contacts/interactions/ContactDeletionInteraction;
    .locals 2

    if-eqz p1, :cond_2

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "deleteContact"

    .line 133
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;

    if-nez v1, :cond_1

    .line 135
    new-instance v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;

    invoke-direct {v1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;-><init>()V

    .line 136
    invoke-direct {v1, p3}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setTestLoaderManager(Lcom/android/contacts/interactions/TestLoaderManagerBase;)V

    .line 137
    invoke-virtual {v1, p1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setContactUri(Landroid/net/Uri;)V

    .line 138
    invoke-direct {v1, p2}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setFinishActivityWhenDone(Z)V

    .line 139
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 140
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 142
    :cond_1
    invoke-direct {v1, p3}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setTestLoaderManager(Lcom/android/contacts/interactions/TestLoaderManagerBase;)V

    .line 143
    invoke-virtual {v1, p1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setContactUri(Landroid/net/Uri;)V

    .line 144
    invoke-direct {v1, p2}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setFinishActivityWhenDone(Z)V

    :goto_0
    return-object v1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected doDeleteContact(Landroid/net/Uri;)V
    .locals 5

    .line 348
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/contacts/ContactSaveService;->createDeleteContactIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 349
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mFinishActivityWhenDone:Z

    if-eqz p1, :cond_1

    .line 350
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 351
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 353
    iget-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDisplayName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDisplayNameAlt:Ljava/lang/String;

    new-instance v1, Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v2, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0, v1}, Lcom/android/contacts/util/ContactDisplayUtils;->getPreferredDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/preference/ContactsPreferences;)Ljava/lang/String;

    move-result-object p1

    .line 355
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0002

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1000ba

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 362
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 2

    .line 152
    invoke-super {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManagerBase;

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v1, v0}, Lcom/android/contacts/interactions/TestLoaderManagerBase;->setDelegate(Landroid/app/LoaderManager;)V

    .line 156
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManagerBase;

    :cond_0
    return-object v0
.end method

.method isStarted()Z
    .locals 1

    .line 200
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 339
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "active"

    .line 341
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    const-string v0, "contactUri"

    .line 342
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    const-string v0, "finishWhenDone"

    .line 343
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mFinishActivityWhenDone:Z

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 169
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 170
    iput-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const-string p1, "contactUri"

    .line 223
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 224
    new-instance p2, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    const-string v0, "entities"

    .line 225
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/interactions/ContactDeletionInteraction;->ENTITY_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public onDestroyView()V
    .locals 2

    .line 175
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 176
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 178
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 179
    iput-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 325
    iput-boolean p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    const/4 p1, 0x0

    .line 326
    iput-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 231
    iget-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 233
    iput-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    .line 236
    :cond_0
    iget-boolean p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "ContactDeletion"

    if-eqz p2, :cond_b

    .line 240
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_5

    :cond_2
    const-wide/16 v1, 0x0

    .line 249
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 250
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    .line 252
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v5

    const/4 v6, -0x1

    .line 253
    invoke-interface {p2, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 254
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_6

    const/4 v0, 0x0

    .line 255
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 256
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    .line 257
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    .line 258
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v11, 0x4

    .line 259
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x5

    .line 260
    invoke-interface {p2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDisplayName:Ljava/lang/String;

    const/4 v12, 0x6

    .line 261
    invoke-interface {p2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDisplayNameAlt:Ljava/lang/String;

    .line 262
    invoke-virtual {v5, v6, v8}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 263
    invoke-virtual {v6}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :cond_4
    :goto_1
    if-eqz v7, :cond_5

    .line 265
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 267
    :cond_5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2
    move-wide v1, v9

    move-object v0, v11

    goto :goto_0

    .line 270
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "Failed to find contact lookup key"

    .line 271
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 276
    :cond_7
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result p1

    .line 277
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result p2

    const v3, 0x104000a

    const v4, 0x7f1000ce

    if-lez p1, :cond_8

    if-lez p2, :cond_8

    const p1, 0x7f1001e5

    .line 280
    iput p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    goto :goto_4

    :cond_8
    if-lez p1, :cond_9

    if-nez p2, :cond_9

    const p1, 0x7f1001e6

    .line 282
    iput p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    const v3, 0x7f1001e7

    goto :goto_4

    :cond_9
    if-nez p1, :cond_a

    if-le p2, v7, :cond_a

    const p1, 0x7f1001b0

    .line 285
    iput p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    goto :goto_3

    :cond_a
    const p1, 0x7f1000cd

    .line 288
    iput p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    :goto_3
    const v3, 0x7f1000ce

    .line 292
    :goto_4
    invoke-static {v1, v2, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 293
    iget p2, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    invoke-direct {p0, p2, v3, p1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->showDialog(IILandroid/net/Uri;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    const p2, 0x7f0900ad

    invoke-virtual {p1, p2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    return-void

    :cond_b
    :goto_5
    const-string p2, "Failed to load contacts"

    .line 241
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 331
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 332
    iget-boolean v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    const-string v1, "active"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 333
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    const-string v1, "contactUri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 334
    iget-boolean v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mFinishActivityWhenDone:Z

    const-string v1, "finishWhenDone"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 205
    iget-boolean v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 207
    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    const-string v2, "contactUri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const v2, 0x7f0900ad

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 210
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 215
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 216
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    :cond_0
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 2

    .line 184
    iput-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    const/4 p1, 0x1

    .line 185
    iput-boolean p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    .line 186
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 188
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    const-string v1, "contactUri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const v1, 0x7f0900ad

    invoke-virtual {v0, v1, p1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    return-void
.end method

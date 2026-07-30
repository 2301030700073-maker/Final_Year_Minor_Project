.class public Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;
.super Landroid/app/Fragment;
.source "ContactMultiDeletionInteraction.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$MultiContactDeleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final RAW_CONTACT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContactIds:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mIsLoaderActive:Z

.field private mListener:Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$MultiContactDeleteListener;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "_id"

    const-string v1, "account_type"

    const-string v2, "data_set"

    const-string v3, "contact_id"

    const-string v4, "display_name"

    const-string v5, "display_name_alt"

    .line 65
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mIsLoaderActive:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private isStarted()Z
    .locals 1

    .line 142
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method private showDialog(II[J[Ljava/lang/String;)V
    .locals 2

    .line 273
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    .line 274
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 275
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 276
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$1;

    invoke-direct {v0, p0, p3, p4}, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$1;-><init>(Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;[J[Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 285
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    .line 287
    new-instance p2, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$2;

    invoke-direct {p2, p0}, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$2;-><init>(Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 294
    iget-object p1, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static start(Landroid/app/Fragment;Ljava/util/TreeSet;)Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "deleteMultipleContacts"

    .line 102
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;

    if-nez v1, :cond_1

    .line 104
    new-instance v1, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;

    invoke-direct {v1}, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;-><init>()V

    .line 105
    invoke-virtual {v1, p1}, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->setContactIds(Ljava/util/TreeSet;)V

    .line 106
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->setContactIds(Ljava/util/TreeSet;)V

    :goto_0
    return-object v1
.end method


# virtual methods
.method protected doDeleteContact([J[Ljava/lang/String;)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/contacts/ContactSaveService;->createDeleteMultipleContactsIntent(Landroid/content/Context;[J[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 316
    iget-object p1, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mListener:Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$MultiContactDeleteListener;

    invoke-interface {p1}, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$MultiContactDeleteListener;->onDeletionFinished()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 306
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "active"

    .line 308
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mIsLoaderActive:Z

    const-string v0, "contactIds"

    .line 309
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/TreeSet;

    iput-object p1, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mContactIds:Ljava/util/TreeSet;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 117
    iput-object p1, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
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

    const-string p1, "contactIds"

    .line 166
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/TreeSet;

    .line 167
    invoke-virtual {p1}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object p2

    .line 168
    invoke-virtual {p1}, Ljava/util/TreeSet;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 171
    :goto_0
    invoke-virtual {p1}, Ljava/util/TreeSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 172
    aget-object v2, p2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    const-string v2, "contact_id =?"

    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p1}, Ljava/util/TreeSet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, " OR "

    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_1
    :goto_1
    new-instance p1, Landroid/content/CursorLoader;

    iget-object v2, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 122
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 123
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 126
    iput-object v1, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 16
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

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 185
    iget-object v2, v0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 186
    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v2, 0x0

    .line 187
    iput-object v2, v0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    .line 190
    :cond_0
    iget-boolean v2, v0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mIsLoaderActive:Z

    if-nez v2, :cond_1

    return-void

    :cond_1
    if-eqz v1, :cond_c

    .line 194
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_6

    .line 200
    :cond_2
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 201
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 202
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    .line 203
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v5

    .line 205
    new-instance v6, Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v7, v0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v7

    const/4 v8, -0x1

    .line 208
    invoke-interface {v1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 209
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_7

    .line 210
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 211
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x2

    .line 212
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    .line 213
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v9, 0x4

    .line 214
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    .line 215
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 217
    invoke-static {v9, v10, v6}, Lcom/android/contacts/util/ContactDisplayUtils;->getPreferredDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/preference/ContactsPreferences;)Ljava/lang/String;

    move-result-object v9

    .line 219
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 220
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_3
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {v7, v8, v13}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 225
    invoke-virtual {v8}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-eqz v9, :cond_6

    .line 227
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_6
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :cond_7
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 234
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v2

    const v3, 0x104000a

    const v6, 0x7f1000ce

    if-lez v1, :cond_8

    if-lez v2, :cond_8

    const v1, 0x7f10003a

    goto :goto_4

    :cond_8
    if-lez v1, :cond_9

    if-nez v2, :cond_9

    const v1, 0x7f10003b

    const v3, 0x7f1001e7

    goto :goto_4

    :cond_9
    const/4 v1, 0x1

    if-ne v2, v1, :cond_a

    const v1, 0x7f10020f

    goto :goto_3

    :cond_a
    const v1, 0x7f100039

    :goto_3
    const v3, 0x7f1000ce

    .line 253
    :goto_4
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Long;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Long;

    .line 254
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v6

    new-array v6, v6, [J

    const/4 v9, 0x0

    .line 255
    :goto_5
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v7

    if-ge v9, v7, :cond_b

    .line 256
    aget-object v7, v2, v9

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 259
    :cond_b
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 260
    invoke-direct {v0, v1, v3, v6, v2}, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->showDialog(II[J[Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const v2, 0x7f0900ae

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    return-void

    :cond_c
    :goto_6
    const-string v1, "ContactMultiDeletion"

    const-string v2, "Failed to load contacts"

    .line 195
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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

    .line 299
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 300
    iget-boolean v0, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mIsLoaderActive:Z

    const-string v1, "active"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 301
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mContactIds:Ljava/util/TreeSet;

    const-string v1, "contactIds"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 147
    iget-boolean v0, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mIsLoaderActive:Z

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 149
    iget-object v1, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mContactIds:Ljava/util/TreeSet;

    const-string v2, "contactIds"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 150
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const v2, 0x7f0900ae

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 153
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 158
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 159
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    :cond_0
    return-void
.end method

.method public setContactIds(Ljava/util/TreeSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mContactIds:Ljava/util/TreeSet;

    const/4 p1, 0x1

    .line 132
    iput-boolean p1, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mIsLoaderActive:Z

    .line 133
    invoke-direct {p0}, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 134
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 135
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mContactIds:Ljava/util/TreeSet;

    const-string v1, "contactIds"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 136
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const v1, 0x7f0900ae

    invoke-virtual {v0, v1, p1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$MultiContactDeleteListener;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/android/contacts/interactions/ContactMultiDeletionInteraction;->mListener:Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$MultiContactDeleteListener;

    return-void
.end method

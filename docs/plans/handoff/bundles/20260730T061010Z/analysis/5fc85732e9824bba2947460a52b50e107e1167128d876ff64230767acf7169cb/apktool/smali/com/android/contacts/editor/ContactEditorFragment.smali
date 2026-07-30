.class public Lcom/android/contacts/editor/ContactEditorFragment;
.super Landroid/app/Fragment;
.source "ContactEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/activities/ContactEditorActivity$ContactEditor;
.implements Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$Listener;
.implements Lcom/android/contacts/editor/JoinContactConfirmationDialogFragment$Listener;
.implements Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;
.implements Lcom/android/contacts/editor/AggregationSuggestionView$Listener;
.implements Lcom/android/contacts/editor/CancelEditDialogFragment$Listener;
.implements Lcom/android/contacts/editor/RawContactEditorView$Listener;
.implements Lcom/android/contacts/editor/PhotoEditorView$Listener;
.implements Lcom/android/contacts/model/account/AccountsLoader$AccountsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;,
        Lcom/android/contacts/editor/ContactEditorFragment$Listener;
    }
.end annotation


# static fields
.field private static final VALID_INTENT_ACTIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field protected mAccountWithDataSet:Lcom/android/contacts/model/account/AccountWithDataSet;

.field protected mAction:Ljava/lang/String;

.field private mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

.field protected mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

.field private mAggregationSuggestionsRawContactId:J

.field protected mAutoAddToDefaultGroup:Z

.field protected mContact:Lcom/android/contacts/model/Contact;

.field protected mContactIdForJoin:J

.field protected final mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Lcom/android/contacts/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field protected mContent:Landroid/widget/LinearLayout;

.field protected mContext:Landroid/content/Context;

.field protected mCopyReadOnlyName:Z

.field protected mDisableDeleteMenuOption:Z

.field protected mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

.field private mEnabled:Z

.field protected mExistingContactDataReady:Z

.field protected mGroupMetaData:Landroid/database/Cursor;

.field protected final mGroupsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field protected mHasNewContact:Z

.field protected mIntentExtras:Landroid/os/Bundle;

.field protected mIsEdit:Z

.field protected mIsUserProfile:Z

.field protected mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

.field protected mLookupUri:Landroid/net/Uri;

.field protected mMaterialPalette:Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

.field protected mNewContactDataReady:Z

.field protected mNewLocalProfile:Z

.field private mPhotoRawContactId:J

.field protected mRawContactIdToDisplayAlone:J

.field protected mRawContacts:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/android/contacts/model/RawContact;",
            ">;"
        }
    .end annotation
.end field

.field protected mReadOnlyDisplayNameId:J

.field protected mState:Lcom/android/contacts/model/RawContactDeltaList;

.field protected mStatus:I

.field private mUpdatedPhotos:Landroid/os/Bundle;

.field protected mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

.field protected mWritableAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$1;

    invoke-direct {v0}, Lcom/android/contacts/editor/ContactEditorFragment$1;-><init>()V

    sput-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->VALID_INTENT_ACTIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 113
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-wide/16 v0, -0x1

    .line 358
    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdToDisplayAlone:J

    .line 363
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mWritableAccounts:Ljava/util/List;

    const/4 v0, 0x1

    .line 375
    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    .line 390
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$2;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 437
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$3;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 458
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/Contact;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->setState(Lcom/android/contacts/model/Contact;)V

    return-void
.end method

.method private copyReadOnlyName()V
    .locals 4

    .line 1265
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingReadOnlyRawContactWithNewContact()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDeltaList;->indexOfFirstWritableRawContact(Landroid/content/Context;)I

    move-result v0

    .line 1269
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    .line 1270
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContact:Lcom/android/contacts/model/Contact;

    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->getNameRawContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/RawContactDeltaList;->getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v1

    const-string v2, "vnd.android.cursor.item/name"

    .line 1272
    invoke-virtual {v0, v2}, Lcom/android/contacts/model/RawContactDelta;->getSuperPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v0

    .line 1274
    invoke-virtual {v1, v2}, Lcom/android/contacts/model/RawContactDelta;->getSuperPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v1

    const/4 v2, 0x0

    .line 1275
    iput-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCopyReadOnlyName:Z

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 1279
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/contacts/model/ValuesDelta;->copyStructuredNameFieldsFrom(Lcom/android/contacts/model/ValuesDelta;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private createContact(Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 2

    .line 1084
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 1085
    invoke-virtual {v0, p1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    .line 1087
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setStateForNewContact(Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountType;Z)V

    return-void
.end method

.method private static createLocalRawContactDelta()Lcom/android/contacts/model/RawContactDelta;
    .locals 2

    .line 1252
    new-instance v0, Lcom/android/contacts/model/RawContact;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContact;-><init>()V

    .line 1253
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContact;->setAccountToLocal()V

    .line 1255
    new-instance v1, Lcom/android/contacts/model/RawContactDelta;

    .line 1256
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/contacts/model/RawContactDelta;-><init>(Lcom/android/contacts/model/ValuesDelta;)V

    .line 1257
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta;->setProfileQueryUri()V

    return-object v1
.end method

.method private createNewRawContactDelta(Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;)Lcom/android/contacts/model/RawContactDelta;
    .locals 1

    .line 1156
    new-instance v0, Lcom/android/contacts/model/RawContact;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContact;-><init>()V

    if-eqz p1, :cond_0

    .line 1158
    invoke-virtual {v0, p1}, Lcom/android/contacts/model/RawContact;->setAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    goto :goto_0

    .line 1160
    :cond_0
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContact;->setAccountToLocal()V

    .line 1163
    :goto_0
    new-instance p1, Lcom/android/contacts/model/RawContactDelta;

    .line 1164
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/contacts/model/RawContactDelta;-><init>(Lcom/android/contacts/model/ValuesDelta;)V

    if-nez p3, :cond_1

    .line 1167
    iget-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-static {p3, p2, p1, p4}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V

    goto :goto_1

    .line 1169
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p1, p4, p2}, Lcom/android/contacts/model/RawContactModifier;->migrateStateForNewContact(Landroid/content/Context;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/account/AccountType;)V

    :goto_1
    const-string p3, "vnd.android.cursor.item/name"

    .line 1175
    invoke-static {p1, p2, p3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    const-string p3, "vnd.android.cursor.item/phone_v2"

    .line 1176
    invoke-static {p1, p2, p3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    const-string p3, "vnd.android.cursor.item/email_v2"

    .line 1177
    invoke-static {p1, p2, p3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    const-string p3, "vnd.android.cursor.item/organization"

    .line 1178
    invoke-static {p1, p2, p3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    const-string p3, "vnd.android.cursor.item/contact_event"

    .line 1179
    invoke-static {p1, p2, p3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    const-string p3, "vnd.android.cursor.item/postal-address_v2"

    .line 1180
    invoke-static {p1, p2, p3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    .line 1184
    iget-boolean p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-eqz p2, :cond_2

    .line 1185
    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->setProfileQueryUri()V

    :cond_2
    return-object p1
.end method

.method private doJoinContactAction()Z
    .locals 3

    .line 882
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    goto :goto_0

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->isContactInsert()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 889
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasPendingChanges()Z

    move-result v0

    if-nez v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f100239

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 891
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v2

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->showJoinAggregateActivity(Landroid/net/Uri;)V

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method private doSplitContactAction()Z
    .locals 1

    .line 875
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 877
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasPendingChanges()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->show(Lcom/android/contacts/editor/ContactEditorFragment;Z)V

    const/4 v0, 0x1

    return v0
.end method

.method private getContactId()J
    .locals 3

    .line 1590
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContactDelta;

    .line 1591
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/ValuesDelta;

    move-result-object v1

    const-string v2, "contact_id"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1593
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getContent()Lcom/android/contacts/editor/RawContactEditorView;
    .locals 1

    .line 1796
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    check-cast v0, Lcom/android/contacts/editor/RawContactEditorView;

    return-object v0
.end method

.method private getEditorActivity()Lcom/android/contacts/activities/ContactEditorActivity;
    .locals 1

    .line 1792
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/ContactEditorActivity;

    return-object v0
.end method

.method private getNameToDisplay(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1445
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "display_name"

    const-string v3, "display_name_alt"

    .line 1446
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1452
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 1453
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 1454
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1455
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1456
    new-instance v2, Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/android/contacts/util/ContactDisplayUtils;->getPreferredDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/preference/ContactsPreferences;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1460
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1461
    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getPhotoMode()I
    .locals 1

    .line 1787
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContent()Lcom/android/contacts/editor/RawContactEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/editor/RawContactEditorView;->isWritablePhotoSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method private hasPendingChanges()Z
    .locals 4

    .line 984
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingReadOnlyRawContactWithNewContact()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 987
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    iget-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mReadOnlyDisplayNameId:J

    .line 988
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/RawContactDeltaList;->getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v0

    const-string v2, "vnd.android.cursor.item/name"

    if-nez v0, :cond_0

    goto :goto_0

    .line 990
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/contacts/model/RawContactDelta;->getSuperPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v1

    .line 991
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    .line 992
    invoke-virtual {v0, v2}, Lcom/android/contacts/model/RawContactDeltaList;->getSuperPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v0

    .line 993
    invoke-direct {p0, v1, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->structuredNamesAreEqual(Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/ValuesDelta;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 994
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 995
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 996
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasPendingRawContactChanges(Ljava/util/Set;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1000
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->hasPendingRawContactChanges(Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method private hasPendingRawContactChanges(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 974
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 975
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-static {v1, v0, p1}, Lcom/android/contacts/model/RawContactModifier;->hasChanges(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/AccountTypeManager;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method private hasValidState()Z
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .line 1841
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 1843
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 1845
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    .line 1844
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private invalidateOptionsMenu()V
    .locals 1

    .line 1342
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1344
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private isEditingReadOnlyRawContact()Z
    .locals 5

    .line 963
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdToDisplayAlone:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    .line 964
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/contacts/model/RawContactDeltaList;->getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    .line 965
    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getAccountType(Lcom/android/contacts/model/AccountTypeManager;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    .line 966
    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEditingReadOnlyRawContactWithNewContact()Z
    .locals 2

    .line 956
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mHasNewContact:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isEditingUserProfile()Z
    .locals 1

    .line 948
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isReadyToBindEditors()Z
    .locals 4

    .line 1349
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "ContactEditor"

    if-eqz v0, :cond_1

    .line 1350
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "No data to bind editors"

    .line 1351
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 1355
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsEdit:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mExistingContactDataReady:Z

    if-nez v0, :cond_3

    .line 1356
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Existing contact data is not ready to bind editors."

    .line 1357
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    .line 1361
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mHasNewContact:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewContactDataReady:Z

    if-nez v0, :cond_5

    .line 1362
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "New contact data is not ready to bind editors."

    .line 1363
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1

    .line 1368
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/activities/RequestPermissionsActivity;->hasRequiredPermissions(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$maybeRestoreFocus$0(IZ)V
    .locals 2

    .line 1809
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1812
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1816
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    return-void

    .line 1820
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 1824
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    const-string v1, "ContactEditor"

    if-nez v0, :cond_4

    const-string p1, "requestFocus failed"

    .line 1826
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-eqz p2, :cond_5

    .line 1830
    iget-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x1

    .line 1831
    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result p1

    const/4 p2, 0x3

    .line 1832
    invoke-static {v1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1833
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showSoftInput -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private maybeRestoreFocus(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "focusedViewId"

    const/4 v1, -0x1

    .line 1801
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v1, "restoreSoftInput"

    .line 1805
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 1806
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/contacts/editor/-$$Lambda$ContactEditorFragment$4r1p2fbPZh8Cz8CDj92XHX7Cn0o;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/contacts/editor/-$$Lambda$ContactEditorFragment$4r1p2fbPZh8Cz8CDj92XHX7Cn0o;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;IZ)V

    const-wide/16 v3, 0x64

    .line 1807
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private rebindEditorsForNewContact(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 7

    .line 1382
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 1383
    invoke-virtual {v0, p2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v5

    .line 1384
    invoke-virtual {v0, p3}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v3

    const/4 p2, 0x0

    .line 1386
    iput-boolean p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mExistingContactDataReady:Z

    .line 1387
    iput-boolean p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewContactDataReady:Z

    .line 1388
    new-instance p2, Lcom/android/contacts/model/RawContactDeltaList;

    invoke-direct {p2}, Lcom/android/contacts/model/RawContactDeltaList;-><init>()V

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    .line 1390
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v6

    move-object v1, p0

    move-object v2, p3

    move-object v4, p1

    .line 1389
    invoke-direct/range {v1 .. v6}, Lcom/android/contacts/editor/ContactEditorFragment;->setStateForNewContact(Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Z)V

    .line 1391
    iget-boolean p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsEdit:Z

    if-eqz p1, :cond_0

    .line 1392
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result p1

    iget-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->setStateForExistingContact(ZLcom/google/common/collect/ImmutableList;)V

    :cond_0
    return-void
.end method

.method private selectAccountAndCreateContact()V
    .locals 3

    .line 1050
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mWritableAccounts:Ljava/util/List;

    const-string v1, "Accounts must be loaded first"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1054
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    return-void

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mWritableAccounts:Ljava/util/List;

    invoke-static {v0}, Lcom/android/contacts/model/account/AccountInfo;->extractAccounts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1061
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v1, v0}, Lcom/android/contacts/editor/ContactEditorUtils;->shouldShowAccountChangedNotification(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1062
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    .line 1064
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x4

    .line 1065
    iput v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    const/4 v1, 0x1

    .line 1066
    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1070
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v1, v0}, Lcom/android/contacts/editor/ContactEditorUtils;->maybeUpdateDefaultAccount(Ljava/util/List;)V

    .line 1073
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v1, v0}, Lcom/android/contacts/editor/ContactEditorUtils;->getOnlyOrDefaultAccount(Ljava/util/List;)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    .line 1074
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    :goto_0
    return-void
.end method

.method private setEnabled(Z)V
    .locals 3

    .line 1230
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    if-eq v0, p1, :cond_1

    .line 1231
    iput-boolean p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    .line 1234
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1235
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1237
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1242
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1243
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_1
    return-void
.end method

.method private setState(Lcom/android/contacts/model/Contact;)V
    .locals 3

    .line 1096
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x2

    const-string v0, "ContactEditor"

    .line 1097
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Ignoring background change. This will have to be rebased later"

    .line 1098
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 1102
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContact:Lcom/android/contacts/model/Contact;

    .line 1103
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 1107
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/Contact;->isWritableContact(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 1108
    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mHasNewContact:Z

    .line 1109
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getNameRawContactId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mReadOnlyDisplayNameId:J

    .line 1110
    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCopyReadOnlyName:Z

    .line 1112
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->selectAccountAndCreateContact()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1114
    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mHasNewContact:Z

    .line 1117
    :goto_0
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setStateForExistingContact(ZLcom/google/common/collect/ImmutableList;)V

    .line 1118
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToDefaultGroup:Z

    if-eqz v0, :cond_3

    .line 1119
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/contacts/quickcontact/InvisibleContactUtil;->isInvisibleAndAddable(Lcom/android/contacts/model/Contact;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1120
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/contacts/quickcontact/InvisibleContactUtil;->markAddToDefaultGroup(Lcom/android/contacts/model/Contact;Lcom/android/contacts/model/RawContactDeltaList;Landroid/content/Context;)Z

    :cond_3
    return-void
.end method

.method private setStateForExistingContact(ZLcom/google/common/collect/ImmutableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/android/contacts/model/RawContact;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1196
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->setEnabled(Z)V

    .line 1198
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/android/contacts/model/RawContactDeltaList;->addAll(Ljava/util/Iterator;)V

    .line 1199
    iget-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {p0, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->setIntentExtras(Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 1200
    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 1203
    iput-boolean p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    if-eqz p1, :cond_2

    .line 1207
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContactDelta;

    .line 1209
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta;->setProfileQueryUri()V

    .line 1211
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/ValuesDelta;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 1218
    iget-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdToDisplayAlone:J

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_2

    .line 1219
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->createLocalRawContactDelta()Lcom/android/contacts/model/RawContactDelta;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    :cond_2
    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mExistingContactDataReady:Z

    .line 1223
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    return-void
.end method

.method private setStateForNewContact(Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Z)V
    .locals 2

    const/4 v0, 0x1

    .line 1139
    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1140
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountWithDataSet:Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 1141
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/editor/ContactEditorFragment;->createNewRawContactDelta(Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    iput-boolean p5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    .line 1143
    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewContactDataReady:Z

    .line 1144
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    return-void
.end method

.method private setStateForNewContact(Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountType;Z)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 1129
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/editor/ContactEditorFragment;->setStateForNewContact(Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Z)V

    return-void
.end method

.method private showJoinAggregateActivity(Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1551
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1555
    :cond_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    .line 1556
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.android.contacts.action.JOIN_CONTACT"

    .line 1557
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1558
    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    const-string v2, "com.android.contacts.action.CONTACT_ID"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 1559
    invoke-virtual {p0, p1, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startSaveService(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 0

    .line 1701
    invoke-static {p1, p2, p3}, Lcom/android/contacts/ContactSaveService;->startService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1704
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->onCancelEditConfirmed()V

    :cond_0
    return p1
.end method

.method private structuredNamesAreEqual(Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/ValuesDelta;)Z
    .locals 3

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-nez p2, :cond_1

    goto :goto_0

    .line 1015
    :cond_1
    invoke-virtual {p1}, Lcom/android/contacts/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object p1

    .line 1016
    invoke-virtual {p2}, Lcom/android/contacts/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object p2

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    const-string v1, "data1"

    .line 1018
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1019
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1020
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    const-string v1, "data4"

    .line 1022
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1023
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1024
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    const-string v1, "data2"

    .line 1026
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1027
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1028
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    const-string v1, "data5"

    .line 1030
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1031
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1032
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    :cond_5
    const-string v1, "data3"

    .line 1034
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1035
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1036
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    :cond_6
    const-string v0, "data6"

    .line 1038
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1039
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1040
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_7
    :goto_0
    return v0
.end method

.method private static validateAction(Ljava/lang/String;)V
    .locals 3

    .line 612
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->VALID_INTENT_ACTIONS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 615
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; Supported actions: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/contacts/editor/ContactEditorFragment;->VALID_INTENT_ACTIONS:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected acquireAggregationSuggestions(Landroid/content/Context;JLcom/android/contacts/model/ValuesDelta;)V
    .locals 0

    .line 1571
    iput-wide p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    .line 1573
    iget-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    if-nez p2, :cond_0

    .line 1574
    new-instance p2, Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-direct {p2, p1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    .line 1575
    invoke-virtual {p2, p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->setListener(Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;)V

    .line 1576
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 1579
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContactId()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->setContactId(J)V

    .line 1580
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    .line 1581
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContent()Lcom/android/contacts/editor/RawContactEditorView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/contacts/editor/RawContactEditorView;->getCurrentRawContactDelta()Lcom/android/contacts/model/RawContactDelta;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/contacts/model/RawContactDelta;->getAccountWithDataSet()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p2

    .line 1580
    invoke-virtual {p1, p2}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->setAccountFilter(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 1583
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {p1, p4}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->onNameChange(Lcom/android/contacts/model/ValuesDelta;)V

    return-void
.end method

.method protected bindEditors()V
    .locals 10

    .line 1287
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isReadyToBindEditors()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1292
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContent()Lcom/android/contacts/editor/RawContactEditorView;

    move-result-object v0

    .line 1293
    invoke-virtual {v0, p0}, Lcom/android/contacts/editor/RawContactEditorView;->setListener(Lcom/android/contacts/editor/RawContactEditorView$Listener;)V

    .line 1294
    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCopyReadOnlyName:Z

    if-eqz v1, :cond_1

    .line 1295
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->copyReadOnlyName()V

    .line 1297
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mMaterialPalette:Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    iget-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mHasNewContact:Z

    iget-boolean v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountWithDataSet:Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-wide v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdToDisplayAlone:J

    move-object v1, v0

    invoke-virtual/range {v1 .. v9}, Lcom/android/contacts/editor/RawContactEditorView;->setState(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;Lcom/android/contacts/editor/ViewIdGenerator;ZZLcom/android/contacts/model/account/AccountWithDataSet;J)V

    .line 1300
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingReadOnlyRawContact()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1301
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getEditorActivity()Lcom/android/contacts/activities/ContactEditorActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactEditorActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    if-eqz v1, :cond_2

    const v2, 0x7f1000b0

    .line 1303
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 1305
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getEditorActivity()Lcom/android/contacts/activities/ContactEditorActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->setTitle(I)V

    const v2, 0x7f0800a3

    .line 1306
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    const v2, 0x7f100038

    .line 1307
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 1308
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 1313
    :cond_2
    invoke-virtual {v0, p0}, Lcom/android/contacts/editor/RawContactEditorView;->setPhotoListener(Lcom/android/contacts/editor/PhotoEditorView$Listener;)V

    .line 1314
    invoke-virtual {v0}, Lcom/android/contacts/editor/RawContactEditorView;->getPhotoRawContactId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoRawContactId:J

    .line 1317
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 1319
    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/RawContactEditorView;->setFullSizePhoto(Landroid/net/Uri;)V

    .line 1321
    :cond_3
    invoke-virtual {v0}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditorView()Lcom/android/contacts/editor/StructuredNameEditorView;

    move-result-object v1

    .line 1322
    invoke-virtual {v0}, Lcom/android/contacts/editor/RawContactEditorView;->getPhoneticEditorView()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v2

    .line 1323
    sget-object v3, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    .line 1324
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 1326
    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/StructuredNameEditorView;->setPhoneticView(Lcom/android/contacts/editor/TextFieldsEditorView;)V

    .line 1330
    :cond_4
    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/RawContactEditorView;->setEnabled(Z)V

    const/4 v1, 0x0

    .line 1331
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1335
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->invalidateOptionsMenu()V

    return-void
.end method

.method public doEditSuggestedContact(Landroid/net/Uri;J)V
    .locals 2

    .line 1668
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 1670
    iput v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1672
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContent()Lcom/android/contacts/editor/RawContactEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/editor/RawContactEditorView;->getCurrentRawContactDelta()Lcom/android/contacts/model/RawContactDelta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v1

    .line 1671
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onEditOtherRawContactRequested(Landroid/net/Uri;JLjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method protected doSaveAction(ILjava/lang/Long;)Z
    .locals 10

    .line 1692
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    .line 1693
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v4

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    .line 1694
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    const-string v2, "saveMode"

    const-string v6, "saveCompleted"

    const-string v8, "joinContactId"

    move v3, p1

    move-object v9, p2

    .line 1692
    invoke-static/range {v0 .. v9}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Long;)Landroid/content/Intent;

    move-result-object p2

    .line 1697
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->startSaveService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result p1

    return p1
.end method

.method protected getAggregationAnchorView()Landroid/view/View;
    .locals 1

    .line 1642
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContent()Lcom/android/contacts/editor/RawContactEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/editor/RawContactEditorView;->getAggregationAnchorView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 464
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected joinAggregate(J)V
    .locals 7

    .line 1717
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    const-class v5, Lcom/android/contacts/activities/ContactEditorActivity;

    const-string v6, "joinCompleted"

    move-wide v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/ContactSaveService;->createJoinContactsIntent(Landroid/content/Context;JJLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1720
    iget-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public synthetic lambda$maybeRestoreFocus$0$ContactEditorFragment(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->lambda$maybeRestoreFocus$0(IZ)V

    return-void
.end method

.method public load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .line 1407
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    .line 1408
    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    .line 1409
    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz p3, :cond_1

    const-string p1, "addToDefaultDirectory"

    .line 1413
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToDefaultGroup:Z

    .line 1414
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string p2, "newLocalProfile"

    .line 1415
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    .line 1416
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string p2, "disableDeleteMenuOption"

    .line 1417
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDisableDeleteMenuOption:Z

    .line 1418
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string p2, "material_palette_primary_color"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string p3, "material_palette_secondary_color"

    .line 1419
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1420
    new-instance p1, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 1421
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 1422
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;-><init>(II)V

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mMaterialPalette:Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    .line 1424
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string p2, "raw_contact_id_to_display_alone"

    .line 1425
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdToDisplayAlone:J

    :cond_1
    return-void
.end method

.method public onAccountsLoaded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 720
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mWritableAccounts:Ljava/util/List;

    .line 722
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountWithDataSet:Lcom/android/contacts/model/account/AccountWithDataSet;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mHasNewContact:Z

    if-eqz v0, :cond_0

    .line 723
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->selectAccountAndCreateContact()V

    .line 726
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContent()Lcom/android/contacts/editor/RawContactEditorView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 730
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/RawContactEditorView;->setAccounts(Ljava/util/List;)V

    .line 731
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountWithDataSet:Lcom/android/contacts/model/account/AccountWithDataSet;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/editor/RawContactEditorView;->getCurrentRawContactDelta()Lcom/android/contacts/model/RawContactDelta;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 735
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountWithDataSet:Lcom/android/contacts/model/account/AccountWithDataSet;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 737
    :cond_3
    invoke-virtual {v0}, Lcom/android/contacts/editor/RawContactEditorView;->getCurrentRawContactDelta()Lcom/android/contacts/model/RawContactDelta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getAccountWithDataSet()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v1

    .line 740
    :goto_0
    invoke-static {p1, v1}, Lcom/android/contacts/model/account/AccountInfo;->contains(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 741
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isReadyToBindEditors()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 742
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContent()Lcom/android/contacts/editor/RawContactEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/editor/RawContactEditorView;->getCurrentRawContactDelta()Lcom/android/contacts/model/RawContactDelta;

    move-result-object v0

    .line 743
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/account/AccountInfo;

    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountInfo;->getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    .line 742
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->onRebindEditorsForNewContact(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    goto :goto_1

    .line 745
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/account/AccountInfo;

    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountInfo;->getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountWithDataSet:Lcom/android/contacts/model/account/AccountWithDataSet;

    :cond_5
    :goto_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .line 548
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 550
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->validateAction(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, "android.intent.action.EDIT"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 561
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v4, v3, v5}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 565
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    :cond_1
    :goto_0
    if-nez p1, :cond_7

    .line 570
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz p1, :cond_5

    if-nez p1, :cond_2

    move-object p1, v3

    goto :goto_1

    :cond_2
    const-string v0, "android.provider.extra.ACCOUNT"

    .line 572
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    .line 573
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v3, "android.provider.extra.DATA_SET"

    .line 574
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    if-eqz p1, :cond_4

    .line 576
    new-instance v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v4, p1, v3}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 577
    :cond_4
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v0, "com.android.contacts.ACCOUNT_WITH_DATA_SET"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    :goto_3
    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountWithDataSet:Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 581
    :cond_5
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 582
    iput-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsEdit:Z

    goto :goto_4

    .line 583
    :cond_6
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    const-string v0, "android.intent.action.INSERT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 584
    iput-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mHasNewContact:Z

    .line 585
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountWithDataSet:Lcom/android/contacts/model/account/AccountWithDataSet;

    if-eqz p1, :cond_7

    .line 586
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 591
    :cond_7
    :goto_4
    iget-boolean p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mHasNewContact:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x3

    .line 592
    invoke-static {}, Lcom/android/contacts/model/AccountTypeManager;->writableFilter()Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/contacts/model/account/AccountsLoader;->loadAccounts(Landroid/app/Fragment;ILcom/google/common/base/Predicate;)V

    :cond_8
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_2

    const-string p1, "android.provider.extra.ACCOUNT"

    .line 704
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 710
    :cond_1
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 712
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    goto :goto_1

    .line 705
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz p1, :cond_3

    .line 706
    invoke-interface {p1}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onReverted()V

    :cond_3
    return-void

    :cond_4
    if-eq p2, v0, :cond_5

    return-void

    :cond_5
    if-eqz p3, :cond_7

    .line 690
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    .line 691
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasPendingChanges()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 693
    invoke-static {p0, p1, p2}, Lcom/android/contacts/editor/JoinContactConfirmationDialogFragment;->show(Lcom/android/contacts/editor/ContactEditorFragment;J)V

    goto :goto_1

    .line 696
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->joinAggregate(J)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onAggregationSuggestionChange()V
    .locals 4

    .line 1601
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1602
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1603
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1607
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/android/contacts/util/UiClosables;->closeQuietly(Landroid/widget/ListPopupWindow;)Z

    .line 1609
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getSuggestedContactCount()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 1613
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getAggregationAnchorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 1617
    :cond_3
    new-instance v1, Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    .line 1618
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1619
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1620
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1621
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;

    .line 1623
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    .line 1625
    invoke-virtual {v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getSuggestions()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, p0, v3}, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;-><init>(Landroid/app/Activity;Lcom/android/contacts/editor/AggregationSuggestionView$Listener;Ljava/util/List;)V

    .line 1621
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1626
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/android/contacts/editor/ContactEditorFragment$5;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/ContactEditorFragment$5;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1635
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 469
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 470
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    .line 471
    invoke-static {p1}, Lcom/android/contacts/editor/ContactEditorUtils;->create(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    return-void
.end method

.method public onBindEditorsFailed()V
    .locals 3

    .line 1761
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1762
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f100108

    const/4 v2, 0x0

    .line 1763
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1764
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1765
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 1766
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCancelEditConfirmed()V
    .locals 1

    const/4 v0, 0x3

    .line 839
    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 840
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_0

    .line 841
    invoke-interface {v0}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onReverted()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "action"

    .line 480
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    const-string v0, "uri"

    .line 481
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    .line 484
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 487
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez p1, :cond_1

    .line 490
    new-instance p1, Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-direct {p1}, Lcom/android/contacts/editor/ViewIdGenerator;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 494
    new-instance p1, Lcom/android/contacts/model/RawContactDeltaList;

    invoke-direct {p1}, Lcom/android/contacts/model/RawContactDeltaList;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    goto/16 :goto_0

    :cond_1
    const-string v0, "viewidgenerator"

    .line 496
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/ViewIdGenerator;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    const-string v0, "autoAddToDefaultGroup"

    .line 498
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToDefaultGroup:Z

    const-string v0, "disableDeleteMenuOption"

    .line 499
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDisableDeleteMenuOption:Z

    const-string v0, "newLocalProfile"

    .line 500
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    const-string v0, "materialPalette"

    .line 501
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mMaterialPalette:Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    const-string v0, "saveToAccount"

    .line 502
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountWithDataSet:Lcom/android/contacts/model/account/AccountWithDataSet;

    const-string v0, "rawContacts"

    .line 503
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    const-string v0, "state"

    .line 508
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDeltaList;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    const-string v0, "status"

    .line 509
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    const-string v0, "hasNewContact"

    .line 511
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mHasNewContact:Z

    const-string v0, "newContactDataReady"

    .line 512
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewContactDataReady:Z

    const-string v0, "isEdit"

    .line 514
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsEdit:Z

    const-string v0, "existingContactDataReady"

    .line 515
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mExistingContactDataReady:Z

    const-string v0, "isUserProfile"

    .line 517
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    const-string v0, "enabled"

    .line 519
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    const-string v0, "aggregationSuggestionsRawContactId"

    .line 522
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    const-string v0, "contactidforjoin"

    .line 526
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    const-string v0, "readOnlyDisplayNameId"

    .line 528
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mReadOnlyDisplayNameId:J

    const/4 v0, 0x0

    const-string v1, "copyReadOnlyDisplayName"

    .line 529
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCopyReadOnlyName:Z

    const-string v0, "photo_raw_contact_id"

    .line 531
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoRawContactId:J

    const-string v0, "updated_photos"

    .line 532
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const/high16 v0, 0x7f0d0000

    .line 756
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x1

    .line 538
    invoke-virtual {p0, p3}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    const p3, 0x7f0c0025

    const/4 v0, 0x0

    .line 540
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09017f

    .line 542
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 677
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 678
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->quit()Z

    :cond_0
    return-void
.end method

.method public onEditAction(Landroid/net/Uri;J)V
    .locals 0

    .line 1660
    invoke-static {p0, p1, p2, p3}, Lcom/android/contacts/editor/SuggestionEditConfirmationDialogFragment;->show(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/net/Uri;J)V

    return-void
.end method

.method public onEditorsBound()V
    .locals 4

    .line 1772
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1773
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1776
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_1
    :goto_0
    return-void
.end method

.method public onJoinCompleted(Landroid/net/Uri;)V
    .locals 7

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v1, p0

    move-object v5, p1

    .line 1436
    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;Ljava/lang/Long;)V

    return-void
.end method

.method public onJoinContactConfirmed(J)V
    .locals 0

    .line 901
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->doSaveAction(ILjava/lang/Long;)Z

    return-void
.end method

.method public onNameFieldChanged(JLcom/android/contacts/model/ValuesDelta;)V
    .locals 2

    .line 1745
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1746
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1749
    :cond_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->acquireAggregationSuggestions(Landroid/content/Context;JLcom/android/contacts/model/ValuesDelta;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 797
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 798
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->revert()Z

    move-result p1

    return p1

    .line 801
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 802
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 808
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f090138

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 810
    invoke-virtual {p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    move-result p1

    return p1

    :cond_2
    const v0, 0x7f09012d

    if-ne p1, v0, :cond_4

    .line 812
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {p1, v0}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onDeleteRequested(Landroid/net/Uri;)V

    :cond_3
    return v1

    :cond_4
    const v0, 0x7f09013f

    if-ne p1, v0, :cond_5

    .line 815
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doSplitContactAction()Z

    move-result p1

    return p1

    :cond_5
    const v0, 0x7f090132

    if-ne p1, v0, :cond_6

    .line 817
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doJoinContactAction()Z

    move-result p1

    return p1

    :cond_6
    const v0, 0x7f090131

    if-ne p1, v0, :cond_7

    .line 819
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contactsbind/HelpUtils;->launchHelpAndFeedbackForContactScreen(Landroid/app/Activity;)V

    return v1

    :cond_7
    return v2

    :cond_8
    :goto_0
    return v1
.end method

.method public onPhotoEditorViewClicked()V
    .locals 2

    .line 1783
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getEditorActivity()Lcom/android/contacts/activities/ContactEditorActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getPhotoMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ContactEditorActivity;->changePhoto(I)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    const v0, 0x7f090138

    .line 764
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f09013f

    .line 765
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f090132

    .line 766
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f09012d

    .line 767
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    .line 771
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 772
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 773
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 775
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingReadOnlyRawContact()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 776
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/editor/ContactEditorFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment$4;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/view/MenuItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f090131

    .line 786
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 787
    invoke-static {}, Lcom/android/contactsbind/HelpUtils;->isHelpAndFeedbackAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 789
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 791
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRebindEditorsForNewContact(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 0

    .line 1756
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->rebindEditorsForNewContact(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    return-void
.end method

.method public onSaveCompleted(ZIZLandroid/net/Uri;Ljava/lang/Long;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    if-eq p2, v0, :cond_1

    if-eq p2, v3, :cond_3

    .line 1480
    invoke-direct {p0, p4}, Lcom/android/contacts/editor/ContactEditorFragment;->getNameToDisplay(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 1482
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1483
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1000a2

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1486
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f1000a3

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1488
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1476
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f1000a5

    invoke-static {p1, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1477
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1492
    :cond_2
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f1000a1

    invoke-static {p1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    const/4 p1, 0x0

    if-eqz p2, :cond_9

    if-eq p2, v2, :cond_8

    if-eq p2, v0, :cond_6

    if-eq p2, v3, :cond_5

    const/4 p3, 0x4

    if-eq p2, p3, :cond_4

    goto/16 :goto_2

    .line 1514
    :cond_4
    iput v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1515
    iget-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz p2, :cond_b

    invoke-interface {p2, p1}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onSaveFinished(Landroid/content/Intent;)V

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_b

    if-eqz p4, :cond_b

    if-eqz p5, :cond_b

    .line 1520
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->joinAggregate(J)V

    goto :goto_2

    .line 1535
    :cond_6
    iput v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1536
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz p1, :cond_7

    .line 1537
    invoke-interface {p1, p4}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onContactSplit(Landroid/net/Uri;)V

    goto :goto_2

    :cond_7
    const-string p1, "ContactEditor"

    .line 1538
    invoke-static {p1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "No listener registered, can not call onSplitFinished"

    .line 1539
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    if-eqz p3, :cond_b

    if-eqz p4, :cond_b

    .line 1527
    new-instance p2, Lcom/android/contacts/model/RawContactDeltaList;

    invoke-direct {p2}, Lcom/android/contacts/model/RawContactDeltaList;-><init>()V

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    const-string p2, "android.intent.action.EDIT"

    .line 1528
    invoke-virtual {p0, p2, p4, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1529
    iput v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1530
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p2

    iget-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p2, v2, p1, p3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_2

    :cond_9
    if-eqz p3, :cond_a

    if-eqz p4, :cond_a

    .line 1499
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {p1, p4, p2}, Lcom/android/contacts/editor/ContactEditorUtils;->maybeConvertToLegacyLookupUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 1501
    iget-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const/4 p3, 0x6

    invoke-static {p2, p1, p3}, Lcom/android/contacts/util/ImplicitIntentsUtil;->composeQuickContactIntent(Landroid/content/Context;Landroid/net/Uri;I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "contact_edited"

    .line 1503
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1508
    :cond_a
    iput v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1509
    iget-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz p2, :cond_b

    invoke-interface {p2, p1}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onSaveFinished(Landroid/content/Intent;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    const-string v1, "action"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    const-string v1, "uri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 623
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToDefaultGroup:Z

    const-string v1, "autoAddToDefaultGroup"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 624
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDisableDeleteMenuOption:Z

    const-string v1, "disableDeleteMenuOption"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 625
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    const-string v1, "newLocalProfile"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 626
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mMaterialPalette:Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    if-eqz v0, :cond_0

    const-string v1, "materialPalette"

    .line 627
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    const-string v1, "viewidgenerator"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 631
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    if-nez v0, :cond_1

    .line 632
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    const-string v1, "rawContacts"

    .line 631
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 635
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 636
    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    const-string v1, "status"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 637
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mHasNewContact:Z

    const-string v1, "hasNewContact"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 638
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewContactDataReady:Z

    const-string v1, "newContactDataReady"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 639
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsEdit:Z

    const-string v1, "isEdit"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 640
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mExistingContactDataReady:Z

    const-string v1, "existingContactDataReady"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 641
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountWithDataSet:Lcom/android/contacts/model/account/AccountWithDataSet;

    const-string v1, "saveToAccount"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 642
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    const-string v1, "isUserProfile"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 644
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    const-string v1, "enabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 647
    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    const-string v2, "aggregationSuggestionsRawContactId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 651
    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    const-string v2, "contactidforjoin"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 653
    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mReadOnlyDisplayNameId:J

    const-string v2, "readOnlyDisplayNameId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 654
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCopyReadOnlyName:Z

    const-string v1, "copyReadOnlyDisplayName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 656
    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoRawContactId:J

    const-string v2, "photo_raw_contact_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 657
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    const-string v1, "updated_photos"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 660
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    .line 662
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "focusedViewId"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 663
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v0

    const-string v1, "restoreSoftInput"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 666
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSplitContactCanceled()V
    .locals 0

    return-void
.end method

.method public onSplitContactConfirmed(Z)V
    .locals 5

    .line 847
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ContactEditor"

    const-string v0, "mState became null during the user\'s confirming split action. Cannot perform the save action."

    .line 851
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_2

    .line 856
    iget-boolean p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mHasNewContact:Z

    if-eqz p1, :cond_2

    .line 859
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 860
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 861
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    .line 862
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 863
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 867
    :cond_2
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDeltaList;->markRawContactsForSplitting()V

    const/4 p1, 0x2

    .line 868
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 671
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 672
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/android/contacts/util/UiClosables;->closeQuietly(Landroid/widget/ListPopupWindow;)Z

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    .line 598
    invoke-super {p0, p1}, Landroid/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    return-void

    .line 602
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->maybeRestoreFocus(Landroid/os/Bundle;)V

    return-void
.end method

.method public removePhoto()V
    .locals 3

    .line 1724
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContent()Lcom/android/contacts/editor/RawContactEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/editor/RawContactEditorView;->removePhoto()V

    .line 1725
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoRawContactId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public revert()Z
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasPendingChanges()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 831
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/editor/CancelEditDialogFragment;->show(Lcom/android/contacts/editor/ContactEditorFragment;)V

    goto :goto_1

    .line 829
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->onCancelEditConfirmed()V

    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public save(I)Z
    .locals 9

    .line 906
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-eqz p1, :cond_1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    if-ne p1, v0, :cond_2

    .line 913
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 916
    :cond_2
    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 918
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasPendingChanges()Z

    move-result v0

    if-nez v0, :cond_5

    .line 919
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v0, :cond_3

    if-ne p1, v2, :cond_3

    .line 922
    iput v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    return v2

    :cond_3
    const/4 v4, 0x0

    .line 925
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;Ljava/lang/Long;)V

    return v2

    .line 930
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setEnabled(Z)V

    .line 931
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hideSoftKeyboard()V

    const/4 v0, 0x0

    .line 932
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->doSaveAction(ILjava/lang/Long;)Z

    move-result p1

    return p1

    :cond_6
    :goto_1
    return v1
.end method

.method protected setGroupMetaData()V
    .locals 2

    .line 1680
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1681
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContent()Lcom/android/contacts/editor/RawContactEditorView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/RawContactEditorView;->setGroupMetaData(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method

.method public setIntentExtras(Landroid/os/Bundle;)V
    .locals 1

    .line 1431
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContent()Lcom/android/contacts/editor/RawContactEditorView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/RawContactEditorView;->setIntentExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public setListener(Lcom/android/contacts/editor/ContactEditorFragment$Listener;)V
    .locals 0

    .line 1402
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    return-void
.end method

.method public updatePhoto(Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1729
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/contacts/util/ContactPhotoUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1730
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1735
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoRawContactId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1736
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContent()Lcom/android/contacts/editor/RawContactEditorView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/RawContactEditorView;->updatePhoto(Landroid/net/Uri;)V

    return-void

    .line 1731
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f10009f

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1732
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

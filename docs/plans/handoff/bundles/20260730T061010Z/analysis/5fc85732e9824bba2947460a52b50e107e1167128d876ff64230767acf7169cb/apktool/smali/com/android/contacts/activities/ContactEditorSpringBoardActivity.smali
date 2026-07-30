.class public Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;
.super Lcom/android/contacts/AppCompatContactsActivity;
.source "ContactEditorSpringBoardActivity.java"

# interfaces
.implements Lcom/android/contacts/editor/PickRawContactDialogFragment$PickRawContactListener;
.implements Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$Listener;


# instance fields
.field private mHasWritableAccount:Z

.field private mMaterialPalette:Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

.field protected final mRawContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mResult:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

.field private mShowReadOnly:Z

.field private mUri:Landroid/net/Uri;

.field private mWritableAccountPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/contacts/AppCompatContactsActivity;-><init>()V

    .line 58
    new-instance v0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity$1;-><init>(Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mRawContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;)Landroid/net/Uri;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->toastErrorAndFinish()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;)Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mResult:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->onLoad()V

    return-void
.end method

.method private getIntentForRawContact(J)Landroid/content/Intent;
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mMaterialPalette:Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/contacts/editor/EditorIntents;->createEditContactIntentForRawContact(Landroid/content/Context;Landroid/net/Uri;JLcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x2000000

    .line 222
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object p1
.end method

.method private getRawContactIds()[[J
    .locals 6

    .line 286
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mResult:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    iget-object v0, v0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->rawContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v2, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    const-class v0, J

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    const/4 v1, 0x0

    .line 287
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mResult:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    iget-object v3, v3, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->rawContacts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 288
    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mResult:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    iget-object v4, v4, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->rawContacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;

    iget-wide v4, v4, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->id:J

    aput-wide v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private loadEditor()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    invoke-static {v0, v1}, Lcom/android/contacts/logging/Logger;->logEditorEvent(II)V

    .line 194
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mHasWritableAccount:Z

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mResult:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    iget-object v0, v0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->rawContacts:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mWritableAccountPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;

    iget-wide v0, v0, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->id:J

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->getIntentForRawContact(J)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mMaterialPalette:Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/contacts/editor/EditorIntents;->createEditContactIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;J)Landroid/content/Intent;

    move-result-object v0

    .line 200
    const-class v1, Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 202
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->startEditorAndForwardExtras(Landroid/content/Intent;)V

    return-void
.end method

.method private maybeTrimReadOnly()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mResult:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mShowReadOnly:Z

    iput-boolean v1, v0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->showReadOnly:Z

    if-eqz v1, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->trimReadOnly(Lcom/android/contacts/model/AccountTypeManager;)V

    return-void
.end method

.method private onLoad()V
    .locals 2

    .line 137
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->maybeTrimReadOnly()V

    .line 138
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->setHasWritableAccount()V

    .line 139
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mShowReadOnly:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mResult:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    iget-object v0, v0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->rawContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mHasWritableAccount:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->loadEditor()V

    goto :goto_1

    .line 140
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->showDialog()V

    :goto_1
    return-void
.end method

.method private setHasWritableAccount()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mResult:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    .line 210
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->getIndexOfFirstWritableAccount(Lcom/android/contacts/model/AccountTypeManager;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mWritableAccountPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 211
    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mHasWritableAccount:Z

    return-void
.end method

.method private showDialog()V
    .locals 3

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "SplitConfirmation"

    .line 165
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v1}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :cond_0
    const-string v1, "rawContactsDialog"

    .line 172
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/PickRawContactDialogFragment;

    if-nez v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mResult:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    invoke-static {v2}, Lcom/android/contacts/editor/PickRawContactDialogFragment;->getInstance(Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;)Lcom/android/contacts/editor/PickRawContactDialogFragment;

    move-result-object v2

    .line 175
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 176
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 182
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-void
.end method

.method private startEditorAndForwardExtras(Landroid/content/Intent;)V
    .locals 1

    .line 230
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 234
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/util/ImplicitIntentsUtil;->startActivityInApp(Landroid/content/Context;Landroid/content/Intent;)V

    .line 235
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private toastErrorAndFinish()V
    .locals 2

    const v0, 0x7f100108

    const/4 v1, 0x0

    .line 239
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 242
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    if-eqz p3, :cond_1

    .line 252
    iget-object p1, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mResult:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    iget-wide v1, p1, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->contactId:J

    .line 253
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    const-class v5, Lcom/android/contacts/quickcontact/QuickContactActivity;

    const-string v6, "android.intent.action.VIEW"

    move-object v0, p0

    .line 252
    invoke-static/range {v0 .. v6}, Lcom/android/contacts/ContactSaveService;->createJoinContactsIntent(Landroid/content/Context;JJLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 255
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 85
    invoke-super {p0, p1}, Lcom/android/contacts/AppCompatContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-static {p0}, Lcom/android/contacts/activities/RequestPermissionsActivity;->startPermissionActivityIfNeeded(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.EDIT"

    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string v0, "material_palette_primary_color"

    .line 102
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "material_palette_secondary_color"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    new-instance v2, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 104
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v2, v0, v1}, Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;-><init>(II)V

    iput-object v2, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mMaterialPalette:Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;

    :cond_2
    const-string v0, "showReadOnly"

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mShowReadOnly:Z

    .line 108
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mUri:Landroid/net/Uri;

    .line 109
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {p0}, Lcom/android/contacts/AppCompatContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.contacts"

    .line 112
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const-string v2, "vnd.android.cursor.item/raw_contact"

    .line 113
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    invoke-static {v3, v1}, Lcom/android/contacts/logging/Logger;->logEditorEvent(II)V

    .line 116
    iget-object p1, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 117
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->getIntentForRawContact(J)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->startEditorAndForwardExtras(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v0, "contacts"

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 120
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v0, "EditorSpringBoard"

    const-string v1, "Legacy Uri was passed to editor."

    invoke-static {p0, v0, v1, p1}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->toastErrorAndFinish()V

    goto :goto_0

    .line 124
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mRawContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p1, v3, v0, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :goto_0
    return-void
.end method

.method public onPickRawContact(J)V
    .locals 0

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->getIntentForRawContact(J)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->startEditorAndForwardExtras(Landroid/content/Intent;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 281
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "rawContactsMetadata"

    .line 282
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mResult:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 275
    invoke-super {p0, p1}, Lcom/android/contacts/activities/AppCompatTransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 276
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->mResult:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    const-string v1, "rawContactsMetadata"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSplitContactCanceled()V
    .locals 0

    .line 270
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onSplitContactConfirmed(Z)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->getRawContactIds()[[J

    move-result-object p1

    .line 263
    invoke-static {p0, p1}, Lcom/android/contacts/ContactSaveService;->createHardSplitContactIntent(Landroid/content/Context;[[J)Landroid/content/Intent;

    move-result-object p1

    .line 264
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 265
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

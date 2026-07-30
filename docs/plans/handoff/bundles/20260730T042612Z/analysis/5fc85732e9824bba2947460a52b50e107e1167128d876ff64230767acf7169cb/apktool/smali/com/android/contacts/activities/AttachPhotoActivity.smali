.class public Lcom/android/contacts/activities/AttachPhotoActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "AttachPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/AttachPhotoActivity$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mPhotoDim:I


# instance fields
.field private mAccountsFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContactUri:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCroppedPhotoUri:Landroid/net/Uri;

.field private mTempPhotoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lcom/android/contacts/activities/AttachPhotoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/AttachPhotoActivity;Lcom/android/contacts/model/Contact;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/AttachPhotoActivity;->saveContact(Lcom/android/contacts/model/Contact;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 69
    sget-object v0, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/AttachPhotoActivity;Lcom/android/contacts/model/Contact;Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/RawContactDelta;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/activities/AttachPhotoActivity;->saveToContact(Lcom/android/contacts/model/Contact;Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/RawContactDelta;)V

    return-void
.end method

.method private createNewRawContact(Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContactUri:Landroid/net/Uri;

    new-instance v1, Lcom/android/contacts/activities/AttachPhotoActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/activities/AttachPhotoActivity$4;-><init>(Lcom/android/contacts/activities/AttachPhotoActivity;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/activities/AttachPhotoActivity;->loadContact(Landroid/net/Uri;Lcom/android/contacts/activities/AttachPhotoActivity$Listener;)V

    return-void
.end method

.method private hasIntentHandler(Landroid/content/Intent;)Z
    .locals 2

    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    .line 242
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 243
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private loadContact(Landroid/net/Uri;Lcom/android/contacts/activities/AttachPhotoActivity$Listener;)V
    .locals 2

    .line 251
    new-instance v0, Lcom/android/contacts/model/ContactLoader;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/contacts/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 252
    new-instance p1, Lcom/android/contacts/activities/AttachPhotoActivity$3;

    invoke-direct {p1, p0, p2}, Lcom/android/contacts/activities/AttachPhotoActivity$3;-><init>(Lcom/android/contacts/activities/AttachPhotoActivity;Lcom/android/contacts/activities/AttachPhotoActivity$Listener;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/content/AsyncTaskLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 265
    invoke-virtual {v0}, Landroid/content/AsyncTaskLoader;->startLoading()V

    return-void
.end method

.method private saveContact(Lcom/android/contacts/model/Contact;)V
    .locals 2

    .line 280
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 281
    sget-object p1, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    const-string v0, "No raw contacts found for contact"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 287
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->createRawContactDeltaList()Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v0

    .line 288
    invoke-virtual {v0, p0}, Lcom/android/contacts/model/RawContactDeltaList;->getFirstWritableRawContact(Landroid/content/Context;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v1

    if-nez v1, :cond_1

    .line 291
    invoke-direct {p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->selectAccountAndCreateContact()V

    return-void

    .line 295
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/activities/AttachPhotoActivity;->saveToContact(Lcom/android/contacts/model/Contact;Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/RawContactDelta;)V

    return-void
.end method

.method private saveToContact(Lcom/android/contacts/model/Contact;Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/RawContactDelta;)V
    .locals 12

    .line 302
    sget-object v0, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getThumbnailSize(Landroid/content/Context;)I

    move-result v1

    .line 305
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mCroppedPhotoUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/contacts/util/ContactPhotoUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    const-string p1, "Could not decode bitmap"

    .line 312
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 317
    invoke-static {v2, v1, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 318
    invoke-static {v1}, Lcom/android/contacts/util/ContactPhotoUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "could not create scaled and compressed Bitmap"

    .line 320
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 329
    :cond_1
    invoke-virtual {p3, p0}, Lcom/android/contacts/model/RawContactDelta;->getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/photo"

    .line 331
    invoke-static {p3, v2, v3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v2

    if-nez v2, :cond_2

    const-string p1, "cannot attach photo to this account type"

    .line 333
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 337
    :cond_2
    invoke-virtual {v2, v1}, Lcom/android/contacts/model/ValuesDelta;->setPhoto([B)V

    const/4 v1, 0x2

    .line 340
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "all prerequisites met, about to save photo to contact"

    .line 341
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v5, 0x0

    .line 347
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 349
    invoke-virtual {p3}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_4
    const-wide/16 v0, -0x1

    :goto_0
    move-wide v9, v0

    iget-object v11, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mCroppedPhotoUri:Landroid/net/Uri;

    const-string v4, ""

    move-object v2, p0

    move-object v3, p2

    .line 343
    invoke-static/range {v2 .. v11}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;JLandroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 352
    invoke-static {p0, p1}, Lcom/android/contacts/ContactSaveService;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 353
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :catch_0
    const-string p1, "Could not find bitmap"

    .line 307
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private selectAccountAndCreateContact()V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mAccountsFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    const-string v1, "Accounts future must be initialized first"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-static {p0}, Lcom/android/contacts/editor/ContactEditorUtils;->create(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mAccountsFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 369
    invoke-static {v1}, Lcom/android/contacts/model/account/AccountInfo;->extractAccounts(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 370
    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorUtils;->shouldShowAccountChangedNotification(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    .line 372
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x3

    .line 373
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorUtils;->getOnlyOrDefaultAccount(Ljava/util/List;)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    .line 378
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/AttachPhotoActivity;->createNewRawContact(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    if-eq p2, v1, :cond_0

    .line 159
    sget-object p1, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    const-string p2, "account selector was not successful"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "android.provider.extra.ACCOUNT"

    .line 165
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/account/AccountWithDataSet;

    if-eqz p1, :cond_1

    .line 168
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/AttachPhotoActivity;->createNewRawContact(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    return-void

    .line 173
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/AttachPhotoActivity;->createNewRawContact(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p1, v2, :cond_8

    if-eq p2, v1, :cond_3

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 181
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 189
    iget-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {p0, p2, v0, v1}, Lcom/android/contacts/util/ContactPhotoUtils;->savePhotoFromUriToUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Z)Z

    move-result p2

    if-nez p2, :cond_4

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 194
    :cond_4
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {p2, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "mimeType"

    .line 195
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 196
    iget-object v2, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    :cond_5
    iget-object p1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mCroppedPhotoUri:Landroid/net/Uri;

    invoke-static {p2, p1}, Lcom/android/contacts/util/ContactPhotoUtils;->addPhotoPickerExtras(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 199
    sget p1, Lcom/android/contacts/activities/AttachPhotoActivity;->mPhotoDim:I

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    const/16 p1, 0x2d0

    :goto_0
    invoke-static {p2, p1}, Lcom/android/contacts/util/ContactPhotoUtils;->addCropExtras(Landroid/content/Intent;I)V

    .line 200
    invoke-direct {p0, p2}, Lcom/android/contacts/activities/AttachPhotoActivity;->hasIntentHandler(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 203
    iget-object p1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mCroppedPhotoUri:Landroid/net/Uri;

    .line 204
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContactUri:Landroid/net/Uri;

    .line 205
    new-instance p2, Lcom/android/contacts/activities/AttachPhotoActivity$1;

    invoke-direct {p2, p0}, Lcom/android/contacts/activities/AttachPhotoActivity$1;-><init>(Lcom/android/contacts/activities/AttachPhotoActivity;)V

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/activities/AttachPhotoActivity;->loadContact(Landroid/net/Uri;Lcom/android/contacts/activities/AttachPhotoActivity$Listener;)V

    return-void

    .line 215
    :cond_7
    :try_start_0
    invoke-virtual {p0, p2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContactUri:Landroid/net/Uri;

    goto :goto_1

    :catch_0
    const p1, 0x7f1001a5

    .line 217
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_8
    if-ne p1, v3, :cond_a

    .line 226
    invoke-virtual {p0}, Lcom/android/contacts/ContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p3, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    invoke-virtual {p1, p3, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    if-eq p2, v1, :cond_9

    .line 228
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 231
    :cond_9
    iget-object p1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContactUri:Landroid/net/Uri;

    new-instance p2, Lcom/android/contacts/activities/AttachPhotoActivity$2;

    invoke-direct {p2, p0}, Lcom/android/contacts/activities/AttachPhotoActivity$2;-><init>(Lcom/android/contacts/activities/AttachPhotoActivity;)V

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/activities/AttachPhotoActivity;->loadContact(Landroid/net/Uri;Lcom/android/contacts/activities/AttachPhotoActivity$Listener;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 96
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-static {p0}, Lcom/android/contacts/activities/RequestPermissionsActivity;->startPermissionActivityIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "contact_uri"

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContactUri:Landroid/net/Uri;

    const-string v0, "temp_photo_uri"

    .line 105
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    const-string v0, "cropped_photo_uri"

    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mCroppedPhotoUri:Landroid/net/Uri;

    goto :goto_1

    .line 108
    :cond_2
    invoke-static {p0}, Lcom/android/contacts/util/ContactPhotoUtils;->generateTempImageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    .line 109
    invoke-static {p0}, Lcom/android/contacts/util/ContactPhotoUtils;->generateTempCroppedImageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mCroppedPhotoUri:Landroid/net/Uri;

    .line 110
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "vnd.android.cursor.dir/contact"

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 113
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 116
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 121
    sget p1, Lcom/android/contacts/activities/AttachPhotoActivity;->mPhotoDim:I

    if-nez p1, :cond_4

    .line 122
    sget-object v2, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    const-string p1, "display_max_dim"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 126
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 127
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/contacts/activities/AttachPhotoActivity;->mPhotoDim:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 131
    throw v0

    .line 136
    :cond_4
    :goto_2
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object p1

    .line 137
    invoke-static {}, Lcom/android/contacts/model/AccountTypeManager;->writableFilter()Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 136
    invoke-virtual {p1, v0}, Lcom/android/contacts/model/AccountTypeManager;->filterAccountsAsync(Lcom/google/common/base/Predicate;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mAccountsFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 142
    invoke-super {p0, p1}, Lcom/android/contacts/activities/TransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    iget-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contact_uri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "temp_photo_uri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mCroppedPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cropped_photo_uri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

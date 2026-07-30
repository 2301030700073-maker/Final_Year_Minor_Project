.class public abstract Lcom/android/contacts/detail/PhotoSelectionHandler;
.super Ljava/lang/Object;
.source "PhotoSelectionHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mPhotoDim:I


# instance fields
.field private final mChangeAnchorView:Landroid/view/View;

.field protected final mContext:Landroid/content/Context;

.field private final mCroppedPhotoUri:Landroid/net/Uri;

.field private final mIsDirectoryContact:Z

.field private final mPhotoMode:I

.field private final mPhotoPickSize:I

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private final mState:Lcom/android/contacts/model/RawContactDeltaList;

.field private final mTempPhotoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/android/contacts/detail/PhotoSelectionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZLcom/android/contacts/model/RawContactDeltaList;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mChangeAnchorView:Landroid/view/View;

    .line 84
    iput p3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoMode:I

    .line 85
    invoke-static {p1}, Lcom/android/contacts/util/ContactPhotoUtils;->generateTempImageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mTempPhotoUri:Landroid/net/Uri;

    .line 86
    iget-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/contacts/util/ContactPhotoUtils;->generateTempCroppedImageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mCroppedPhotoUri:Landroid/net/Uri;

    .line 87
    iput-boolean p4, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mIsDirectoryContact:Z

    .line 88
    iput-object p5, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    .line 89
    invoke-direct {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getPhotoPickSize()I

    move-result p1

    iput p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoPickSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/PhotoSelectionHandler;)Landroid/net/Uri;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mTempPhotoUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/PhotoSelectionHandler;Landroid/net/Uri;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startTakePhotoActivity(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/PhotoSelectionHandler;Landroid/net/Uri;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPickFromGalleryActivity(Landroid/net/Uri;)V

    return-void
.end method

.method private doCropPhoto(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 3

    .line 244
    sget-object v0, Lcom/android/contacts/detail/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getCropImageIntent(Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    .line 245
    invoke-direct {p0, p2}, Lcom/android/contacts/detail/PhotoSelectionHandler;->hasIntentHandler(Landroid/content/Intent;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 247
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->onPhotoSelected(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Cannot save uncropped photo"

    .line 249
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    iget-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const p2, 0x7f10009f

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x3eb

    .line 257
    :try_start_1
    invoke-virtual {p0, p2, v1, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILandroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "Cannot crop image"

    .line 259
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    iget-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const p2, 0x7f1001cf

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method private getCropImageIntent(Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 336
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    invoke-static {v0, p2}, Lcom/android/contacts/util/ContactPhotoUtils;->addPhotoPickerExtras(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 338
    iget p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoPickSize:I

    invoke-static {v0, p1}, Lcom/android/contacts/util/ContactPhotoUtils;->addCropExtras(Landroid/content/Intent;I)V

    return-object v0
.end method

.method private getPhotoPickIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3

    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "image/*"

    .line 320
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    invoke-static {v0, p1}, Lcom/android/contacts/util/ContactPhotoUtils;->addPhotoPickerExtras(Landroid/content/Intent;Landroid/net/Uri;)V

    return-object v0
.end method

.method private getPhotoPickSize()I
    .locals 7

    .line 287
    sget v0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoDim:I

    if-eqz v0, :cond_0

    return v0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    const-string v0, "display_max_dim"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 296
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 297
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sput v1, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoDim:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 301
    throw v1

    .line 303
    :cond_2
    :goto_0
    sget v0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoDim:I

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x2d0

    :goto_1
    return v0
.end method

.method private getTakePhotoIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 311
    invoke-static {v0, p1}, Lcom/android/contacts/util/ContactPhotoUtils;->addPhotoPickerExtras(Landroid/content/Intent;Landroid/net/Uri;)V

    return-object v0
.end method

.method private getWritableEntityIndex()I
    .locals 2

    .line 191
    iget-boolean v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mIsDirectoryContact:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDeltaList;->indexOfFirstWritableRawContact(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private hasIntentHandler(Landroid/content/Intent;)Z
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    .line 327
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 328
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

.method private startPickFromGalleryActivity(Landroid/net/Uri;)V
    .locals 2

    .line 282
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getPhotoPickIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3ea

    .line 283
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILandroid/net/Uri;)V

    return-void
.end method

.method private startTakePhotoActivity(Landroid/net/Uri;)V
    .locals 2

    .line 271
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getTakePhotoIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3e9

    .line 272
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILandroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public abstract getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
.end method

.method public handlePhotoActivityResult(IILandroid/content/Intent;)Z
    .locals 4

    .line 125
    sget-object v0, Lcom/android/contacts/detail/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_4

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz p3, :cond_0

    .line 130
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 132
    iget-object p3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mCroppedPhotoUri:Landroid/net/Uri;

    invoke-static {p3, p1, v0, v2}, Lcom/android/contacts/util/ContactPhotoUtils;->savePhotoFromUriToUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Z)Z

    .line 138
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mTempPhotoUri:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 139
    iget-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mCroppedPhotoUri:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->onPhotoSelected(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    return v2

    :pswitch_1
    if-eqz p3, :cond_1

    .line 151
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const/4 p3, 0x0

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {v1}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->getCurrentPhotoUri()Landroid/net/Uri;

    move-result-object p1

    const/4 p3, 0x1

    :goto_0
    if-eqz p3, :cond_2

    goto :goto_1

    .line 164
    :cond_2
    iget-object p3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mTempPhotoUri:Landroid/net/Uri;

    .line 166
    :try_start_1
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, v2}, Lcom/android/contacts/util/ContactPhotoUtils;->savePhotoFromUriToUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Z)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_3

    return v2

    :cond_3
    move-object p1, p3

    .line 178
    :goto_1
    iget-object p3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mCroppedPhotoUri:Landroid/net/Uri;

    invoke-direct {p0, p1, p3}, Lcom/android/contacts/detail/PhotoSelectionHandler;->doCropPhoto(Landroid/net/Uri;Landroid/net/Uri;)V

    return p2

    :catch_1
    nop

    const/4 p2, 0x3

    .line 171
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 172
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Did not have read-access to uri : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 100
    invoke-virtual {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getWritableEntityIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mChangeAnchorView:Landroid/view/View;

    iget v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoMode:I

    invoke-static {v0, v1, p1, v2}, Lcom/android/contacts/editor/PhotoActionPopup;->createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/widget/ListPopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/widget/ListPopupWindow;

    .line 105
    new-instance v1, Lcom/android/contacts/detail/PhotoSelectionHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler$1;-><init>(Lcom/android/contacts/detail/PhotoSelectionHandler;Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 111
    iget-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->show()V

    :cond_0
    return-void
.end method

.method protected abstract startPhotoActivity(Landroid/content/Intent;ILandroid/net/Uri;)V
.end method

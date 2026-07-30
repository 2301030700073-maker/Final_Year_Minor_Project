.class public Lcom/android/contacts/DynamicShortcuts;
.super Ljava/lang/Object;
.source "DynamicShortcuts.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x19
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/DynamicShortcuts$PermissionsGrantedReceiver;,
        Lcom/android/contacts/DynamicShortcuts$ShortcutUpdateTask;
    }
.end annotation


# static fields
.field private static final EXTRA_SHORTCUT_TYPE:Ljava/lang/String; = "extraShortcutType"

.field private static final LONG_LABEL_MAX_LENGTH:I = 0x1e

.field private static final MAX_SHORTCUTS:I = 0x3

.field static final PROJECTION:[Ljava/lang/String;

.field public static final SHORTCUT_ADD_CONTACT:Ljava/lang/String; = "shortcut-add-contact"

.field private static final SHORTCUT_TYPE_ACTION_URI:I = 0x2

.field private static final SHORTCUT_TYPE_CONTACT_URI:I = 0x1

.field private static final SHORTCUT_TYPE_UNKNOWN:I = 0x0

.field private static final SHORT_LABEL_MAX_LENGTH:I = 0xc

.field private static final TAG:Ljava/lang/String; = "DynamicShortcuts"


# instance fields
.field private final mContentChangeMaxUpdateDelay:I

.field private final mContentChangeMinUpdateDelay:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mIconSize:I

.field private final mJobScheduler:Landroid/app/job/JobScheduler;

.field private mLongLabelMaxLength:I

.field private mShortLabelMaxLength:I

.field private final mShortcutManager:Landroid/content/pm/ShortcutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_id"

    const-string v1, "lookup"

    const-string v2, "display_name"

    .line 101
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/DynamicShortcuts;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "shortcut"

    .line 118
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager;

    const-string v2, "jobscheduler"

    .line 119
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    .line 117
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/contacts/DynamicShortcuts;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/content/pm/ShortcutManager;Landroid/app/job/JobScheduler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/content/pm/ShortcutManager;Landroid/app/job/JobScheduler;)V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 109
    iput v0, p0, Lcom/android/contacts/DynamicShortcuts;->mShortLabelMaxLength:I

    const/16 v0, 0x1e

    .line 110
    iput v0, p0, Lcom/android/contacts/DynamicShortcuts;->mLongLabelMaxLength:I

    .line 125
    iput-object p1, p0, Lcom/android/contacts/DynamicShortcuts;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/android/contacts/DynamicShortcuts;->mContentResolver:Landroid/content/ContentResolver;

    .line 127
    iput-object p3, p0, Lcom/android/contacts/DynamicShortcuts;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    .line 128
    iput-object p4, p0, Lcom/android/contacts/DynamicShortcuts;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 129
    invoke-static {}, Lcom/android/contactsbind/experiments/Flags;->getInstance()Lcom/android/contactsbind/experiments/Flags;

    move-result-object p2

    const-string p3, "Shortcuts__dynamic_min_content_change_update_delay_millis"

    .line 130
    invoke-virtual {p2, p3}, Lcom/android/contactsbind/experiments/Flags;->getInteger(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/contacts/DynamicShortcuts;->mContentChangeMinUpdateDelay:I

    .line 131
    invoke-static {}, Lcom/android/contactsbind/experiments/Flags;->getInstance()Lcom/android/contactsbind/experiments/Flags;

    move-result-object p2

    const-string p3, "Shortcuts__dynamic_max_content_change_update_delay_millis"

    .line 132
    invoke-virtual {p2, p3}, Lcom/android/contactsbind/experiments/Flags;->getInteger(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/contacts/DynamicShortcuts;->mContentChangeMaxUpdateDelay:I

    const-string p2, "activity"

    .line 134
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0701cd

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/contacts/DynamicShortcuts;->mIconSize:I

    if-nez p1, :cond_0

    .line 137
    invoke-virtual {p2}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result p1

    iput p1, p0, Lcom/android/contacts/DynamicShortcuts;->mIconSize:I

    :cond_0
    return-void
.end method

.method private addIconForContact(JLjava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutInfo$Builder;)V
    .locals 0

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/DynamicShortcuts;->getContactPhoto(J)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 341
    invoke-direct {p0, p4, p3}, Lcom/android/contacts/DynamicShortcuts;->getFallbackAvatar(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 344
    :cond_0
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 345
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_0

    .line 347
    :cond_1
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    .line 350
    :goto_0
    invoke-virtual {p5, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    return-void
.end method

.method private addIconForContact(Landroid/database/Cursor;Landroid/content/pm/ShortcutInfo$Builder;)V
    .locals 7

    const/4 v0, 0x0

    .line 331
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x1

    .line 332
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    .line 333
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v6, p2

    .line 334
    invoke-direct/range {v1 .. v6}, Lcom/android/contacts/DynamicShortcuts;->addIconForContact(JLjava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutInfo$Builder;)V

    return-void
.end method

.method private createShortcutForUri(Landroid/net/Uri;)Landroid/content/pm/ShortcutInfo;
    .locals 6

    .line 209
    iget-object v0, p0, Lcom/android/contacts/DynamicShortcuts;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/contacts/DynamicShortcuts;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 213
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/contacts/DynamicShortcuts;->createShortcutFromRow(Landroid/database/Cursor;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 218
    throw v0
.end method

.method private decodeStreamForShortcut(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 376
    invoke-static {p1, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p1

    .line 378
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    .line 379
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v1

    .line 381
    iget-object v2, p0, Lcom/android/contacts/DynamicShortcuts;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutManager;->getIconMaxWidth()I

    move-result v2

    .line 382
    iget-object v3, p0, Lcom/android/contacts/DynamicShortcuts;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutManager;->getIconMaxHeight()I

    move-result v3

    .line 384
    iget v4, p0, Lcom/android/contacts/DynamicShortcuts;->mIconSize:I

    .line 385
    invoke-static {v0, v4}, Lcom/android/contacts/util/BitmapUtil;->findOptimalSampleSize(II)I

    move-result v4

    iget v5, p0, Lcom/android/contacts/DynamicShortcuts;->mIconSize:I

    .line 386
    invoke-static {v1, v5}, Lcom/android/contacts/util/BitmapUtil;->findOptimalSampleSize(II)I

    move-result v5

    .line 384
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 387
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 388
    iput v4, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 390
    div-int v6, v0, v4

    .line 391
    div-int v4, v1, v4

    .line 393
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 394
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 397
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v6, v2

    .line 401
    iget v3, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int v6, v6, v3

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v2

    mul-int v4, v4, v3

    .line 402
    div-int/lit8 v4, v4, 0x2

    .line 404
    new-instance v3, Landroid/graphics/Rect;

    sub-int/2addr v0, v6

    sub-int/2addr v1, v4

    invoke-direct {v3, v6, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v3, v5}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 408
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 410
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result p1

    if-nez p1, :cond_0

    .line 411
    invoke-static {v0, v2, v2}, Lcom/android/contacts/util/BitmapUtil;->getRoundedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method private getContactPhoto(J)Landroid/graphics/Bitmap;
    .locals 6

    .line 354
    iget-object v0, p0, Lcom/android/contacts/DynamicShortcuts;->mContext:Landroid/content/Context;

    .line 355
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 356
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    .line 354
    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 360
    :cond_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/contacts/DynamicShortcuts;->decodeStreamForShortcut(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 361
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "DynamicShortcuts"

    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to decode contact photo for shortcut. ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-object v1

    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 372
    :catch_3
    throw p1
.end method

.method private getFallbackAvatar(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 419
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 421
    new-instance v2, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v2, p1, p2, v0}, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 423
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 425
    invoke-static {}, Lcom/android/contacts/lettertiles/LetterTileDrawable;->getAdaptiveIconScale()F

    move-result p1

    iput p1, v2, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->scale:F

    .line 427
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/DynamicShortcuts;->mContext:Landroid/content/Context;

    .line 428
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 427
    invoke-static {p1, v1, v2}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarDrawableForContact(Landroid/content/res/Resources;ZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 429
    iget p2, p0, Lcom/android/contacts/DynamicShortcuts;->mIconSize:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 431
    invoke-virtual {p1, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 432
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 433
    iget v1, p0, Lcom/android/contacts/DynamicShortcuts;->mIconSize:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 434
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p2
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 8

    const-class v0, Lcom/android/contacts/DynamicShortcuts;

    monitor-enter v0

    :try_start_0
    const-string v1, "DynamicShortcuts"

    const/4 v2, 0x3

    .line 480
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 481
    invoke-static {}, Lcom/android/contactsbind/experiments/Flags;->getInstance()Lcom/android/contactsbind/experiments/Flags;

    move-result-object v1

    const-string v3, "DynamicShortcuts"

    .line 482
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DyanmicShortcuts.initialize\nVERSION >= N_MR1? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x19

    const/4 v7, 0x1

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\nisJobScheduled? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isLauncherShortcutCompatible()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0}, Lcom/android/contacts/DynamicShortcuts;->isJobScheduled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\nminDelay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Shortcuts__dynamic_min_content_change_update_delay_millis"

    .line 487
    invoke-virtual {v1, v5}, Lcom/android/contactsbind/experiments/Flags;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\nmaxDelay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Shortcuts__dynamic_max_content_change_update_delay_millis"

    .line 489
    invoke-virtual {v1, v5}, Lcom/android/contactsbind/experiments/Flags;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_2
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isLauncherShortcutCompatible()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    monitor-exit v0

    return-void

    .line 494
    :cond_3
    :try_start_1
    new-instance v1, Lcom/android/contacts/DynamicShortcuts;

    invoke-direct {v1, p0}, Lcom/android/contacts/DynamicShortcuts;-><init>(Landroid/content/Context;)V

    .line 496
    invoke-virtual {v1}, Lcom/android/contacts/DynamicShortcuts;->hasRequiredPermissions()Z

    move-result v3

    if-nez v3, :cond_4

    .line 497
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "broadcastPermissionsGranted"

    .line 498
    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 499
    iget-object v1, v1, Lcom/android/contacts/DynamicShortcuts;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/DynamicShortcuts$PermissionsGrantedReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/contacts/DynamicShortcuts$PermissionsGrantedReceiver;-><init>(Lcom/android/contacts/DynamicShortcuts$1;)V

    invoke-virtual {v1, v2, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_2

    .line 501
    :cond_4
    invoke-static {p0}, Lcom/android/contacts/DynamicShortcuts;->isJobScheduled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 508
    new-instance p0, Lcom/android/contacts/DynamicShortcuts$ShortcutUpdateTask;

    invoke-direct {p0, v1}, Lcom/android/contacts/DynamicShortcuts$ShortcutUpdateTask;-><init>(Lcom/android/contacts/DynamicShortcuts;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isJobScheduled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "jobscheduler"

    .line 543
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    const/4 v0, 0x1

    .line 544
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removeAllShortcuts()V
    .locals 4

    .line 445
    iget-object v0, p0, Lcom/android/contacts/DynamicShortcuts;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->removeAllDynamicShortcuts()V

    .line 447
    iget-object v0, p0, Lcom/android/contacts/DynamicShortcuts;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getPinnedShortcuts()Ljava/util/List;

    move-result-object v0

    .line 448
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 449
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 450
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/DynamicShortcuts;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    iget-object v2, p0, Lcom/android/contacts/DynamicShortcuts;->mContext:Landroid/content/Context;

    const v3, 0x7f100100

    .line 453
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 452
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ShortcutManager;->disableShortcuts(Ljava/util/List;Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    const-string v1, "DynamicShortcuts"

    .line 454
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DynamicShortcuts have been removed."

    .line 455
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static reportShortcutUsed(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 548
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isLauncherShortcutCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "shortcut"

    .line 550
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    .line 551
    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutManager;->reportShortcutUsed(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static reset(Landroid/content/Context;)V
    .locals 2

    const-string v0, "jobscheduler"

    .line 515
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    const/4 v1, 0x1

    .line 516
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 518
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isLauncherShortcutCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 521
    :cond_0
    new-instance v0, Lcom/android/contacts/DynamicShortcuts;

    invoke-direct {v0, p0}, Lcom/android/contacts/DynamicShortcuts;-><init>(Landroid/content/Context;)V

    invoke-direct {v0}, Lcom/android/contacts/DynamicShortcuts;->removeAllShortcuts()V

    return-void
.end method

.method private setLabel(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/String;)V
    .locals 4

    .line 317
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/contacts/DynamicShortcuts;->mLongLabelMaxLength:I

    const-string v2, "\u2026"

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    .line 318
    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    goto :goto_0

    .line 320
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/contacts/DynamicShortcuts;->mLongLabelMaxLength:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 323
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/contacts/DynamicShortcuts;->mShortLabelMaxLength:I

    if-ge v0, v1, :cond_1

    .line 324
    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    goto :goto_1

    .line 326
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/contacts/DynamicShortcuts;->mShortLabelMaxLength:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    :goto_1
    return-void
.end method

.method public static updateFromJob(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .locals 2

    .line 530
    new-instance v0, Lcom/android/contacts/DynamicShortcuts$1;

    new-instance v1, Lcom/android/contacts/DynamicShortcuts;

    invoke-direct {v1, p0}, Lcom/android/contacts/DynamicShortcuts;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, p0, p1}, Lcom/android/contacts/DynamicShortcuts$1;-><init>(Lcom/android/contacts/DynamicShortcuts;Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 537
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method builderForContactShortcut(JLjava/lang/String;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 3

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "_id"

    .line 276
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x1

    const-string v2, "extraShortcutType"

    .line 277
    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 279
    new-instance v1, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v2, p0, Lcom/android/contacts/DynamicShortcuts;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p3}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/contacts/DynamicShortcuts;->mContext:Landroid/content/Context;

    .line 281
    invoke-static {p1, p2, p3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 280
    invoke-static {v2, p1}, Lcom/android/contacts/util/ImplicitIntentsUtil;->getIntentForQuickContactLauncherShortcut(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/contacts/DynamicShortcuts;->mContext:Landroid/content/Context;

    const p3, 0x7f100100

    .line 282
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutInfo$Builder;->setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 283
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 285
    invoke-direct {p0, p1, p4}, Lcom/android/contacts/DynamicShortcuts;->setLabel(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/String;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method builderForContactShortcut(Landroid/database/Cursor;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 4

    const/4 v0, 0x0

    .line 264
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x1

    .line 265
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 266
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/contacts/DynamicShortcuts;->builderForContactShortcut(JLjava/lang/String;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method createShortcutFromRow(Landroid/database/Cursor;)Landroid/content/pm/ShortcutInfo;
    .locals 1

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/contacts/DynamicShortcuts;->builderForContactShortcut(Landroid/database/Cursor;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 258
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/DynamicShortcuts;->addIconForContact(Landroid/database/Cursor;Landroid/content/pm/ShortcutInfo$Builder;)V

    .line 259
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    return-object p1
.end method

.method getActionShortcutInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo;
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const/4 v1, 0x2

    const-string v2, "extraShortcutType"

    .line 295
    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 297
    new-instance v1, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v2, p0, Lcom/android/contacts/DynamicShortcuts;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1, p3}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 299
    invoke-virtual {p1, p4}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 300
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    iget-object p3, p0, Lcom/android/contacts/DynamicShortcuts;->mContext:Landroid/content/Context;

    const p4, 0x7f100100

    .line 301
    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/pm/ShortcutInfo$Builder;->setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 303
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/DynamicShortcuts;->setLabel(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getQuickContactShortcutInfo(JLjava/lang/String;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 7

    .line 308
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/contacts/DynamicShortcuts;->builderForContactShortcut(JLjava/lang/String;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v6

    if-nez v6, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, v6

    .line 312
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/DynamicShortcuts;->addIconForContact(JLjava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutInfo$Builder;)V

    .line 313
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    return-object p1
.end method

.method public getStrequentShortcuts()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 225
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 227
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "limit"

    .line 226
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 229
    iget-object v2, p0, Lcom/android/contacts/DynamicShortcuts;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/contacts/DynamicShortcuts;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 231
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 233
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 237
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/contacts/DynamicShortcuts;->createShortcutFromRow(Landroid/database/Cursor;)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 242
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 246
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 247
    throw v1

    .line 246
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method handleFlagDisabled()V
    .locals 2

    .line 440
    invoke-direct {p0}, Lcom/android/contacts/DynamicShortcuts;->removeAllShortcuts()V

    .line 441
    iget-object v0, p0, Lcom/android/contacts/DynamicShortcuts;->mJobScheduler:Landroid/app/job/JobScheduler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method hasRequiredPermissions()Z
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/android/contacts/DynamicShortcuts;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PermissionsUtil;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method refresh()V
    .locals 4

    .line 155
    invoke-virtual {p0}, Lcom/android/contacts/DynamicShortcuts;->hasRequiredPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/DynamicShortcuts;->getStrequentShortcuts()Ljava/util/List;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/android/contacts/DynamicShortcuts;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/ShortcutManager;->setDynamicShortcuts(Ljava/util/List;)Z

    const/4 v1, 0x3

    const-string v2, "DynamicShortcuts"

    .line 159
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set dynamic shortcuts "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/DynamicShortcuts;->updatePinned()V

    return-void
.end method

.method scheduleUpdateJob()V
    .locals 4

    .line 461
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/contacts/DynamicShortcuts;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/contacts/ContactsJobService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    new-instance v1, Landroid/app/job/JobInfo$TriggerContentUri;

    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    .line 467
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/DynamicShortcuts;->mContentChangeMinUpdateDelay:I

    int-to-long v1, v1

    .line 469
    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/DynamicShortcuts;->mContentChangeMaxUpdateDelay:I

    int-to-long v1, v1

    .line 470
    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 472
    iget-object v1, p0, Lcom/android/contacts/DynamicShortcuts;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method setLongLabelMaxLength(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/android/contacts/DynamicShortcuts;->mLongLabelMaxLength:I

    return-void
.end method

.method setShortLabelMaxLength(I)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/android/contacts/DynamicShortcuts;->mShortLabelMaxLength:I

    return-void
.end method

.method updateInBackground()V
    .locals 2

    .line 476
    new-instance v0, Lcom/android/contacts/DynamicShortcuts$ShortcutUpdateTask;

    invoke-direct {v0, p0}, Lcom/android/contacts/DynamicShortcuts$ShortcutUpdateTask;-><init>(Lcom/android/contacts/DynamicShortcuts;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method updatePinned()V
    .locals 8

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 171
    iget-object v3, p0, Lcom/android/contacts/DynamicShortcuts;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutManager;->getPinnedShortcuts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 172
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v6, 0x0

    const-string v7, "extraShortcutType"

    .line 174
    invoke-virtual {v5, v7, v6}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    goto :goto_0

    :cond_1
    const-string v6, "_id"

    .line 180
    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 183
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 182
    invoke-direct {p0, v5}, Lcom/android/contacts/DynamicShortcuts;->createShortcutForUri(Landroid/net/Uri;)Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 185
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 189
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 192
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    const-string v4, "DynamicShortcuts"

    .line 196
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updating "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enabling "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disabling "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/DynamicShortcuts;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/ShortcutManager;->updateShortcuts(Ljava/util/List;)Z

    .line 203
    iget-object v0, p0, Lcom/android/contacts/DynamicShortcuts;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ShortcutManager;->enableShortcuts(Ljava/util/List;)V

    .line 204
    iget-object v0, p0, Lcom/android/contacts/DynamicShortcuts;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    iget-object v2, p0, Lcom/android/contacts/DynamicShortcuts;->mContext:Landroid/content/Context;

    const v3, 0x7f1000ff

    .line 205
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ShortcutManager;->disableShortcuts(Ljava/util/List;Ljava/lang/CharSequence;)V

    return-void
.end method

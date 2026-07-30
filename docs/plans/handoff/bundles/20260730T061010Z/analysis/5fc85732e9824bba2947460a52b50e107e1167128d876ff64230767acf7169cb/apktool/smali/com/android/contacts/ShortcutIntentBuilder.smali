.class public Lcom/android/contacts/ShortcutIntentBuilder;
.super Ljava/lang/Object;
.source "ShortcutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;,
        Lcom/android/contacts/ShortcutIntentBuilder$ContactLoadingAsyncTask;,
        Lcom/android/contacts/ShortcutIntentBuilder$LoadingAsyncTask;,
        Lcom/android/contacts/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;
    }
.end annotation


# static fields
.field private static final CONTACT_COLUMNS:[Ljava/lang/String;

.field private static final PHONE_COLUMNS:[Ljava/lang/String;

.field private static final PHOTO_COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIconDensity:I

.field private mIconSize:I

.field private final mListener:Lcom/android/contacts/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

.field private final mOverlayTextBackgroundColor:I

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "display_name"

    const-string v1, "photo_id"

    const-string v2, "lookup"

    .line 62
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ShortcutIntentBuilder;->CONTACT_COLUMNS:[Ljava/lang/String;

    const-string v1, "display_name"

    const-string v2, "photo_id"

    const-string v3, "data1"

    const-string v4, "data2"

    const-string v5, "data3"

    const-string v6, "lookup"

    .line 72
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ShortcutIntentBuilder;->PHONE_COLUMNS:[Ljava/lang/String;

    const-string v0, "data15"

    .line 88
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ShortcutIntentBuilder;->PHOTO_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mResources:Landroid/content/res/Resources;

    const-string p2, "activity"

    .line 133
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 134
    iget-object p2, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0701cd

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mIconSize:I

    if-nez p2, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result p2

    iput p2, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mIconSize:I

    .line 138
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result p1

    iput p1, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mIconDensity:I

    .line 139
    iget-object p1, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f060104

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mOverlayTextBackgroundColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ShortcutIntentBuilder;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lcom/android/contacts/ShortcutIntentBuilder;->PHOTO_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lcom/android/contacts/ShortcutIntentBuilder;->CONTACT_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/android/contacts/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lcom/android/contacts/ShortcutIntentBuilder;->PHONE_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct/range {p0 .. p8}, Lcom/android/contacts/ShortcutIntentBuilder;->createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createContactShortcutIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 5

    .line 279
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 280
    iget-object p2, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1001a6

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 282
    :cond_0
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 283
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 284
    iget-object p2, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    const-string v3, "shortcut"

    .line 285
    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ShortcutManager;

    .line 286
    new-instance v3, Lcom/android/contacts/DynamicShortcuts;

    iget-object v4, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/contacts/DynamicShortcuts;-><init>(Landroid/content/Context;)V

    .line 287
    invoke-virtual {v3, v1, v2, p4, p3}, Lcom/android/contacts/DynamicShortcuts;->getQuickContactShortcutInfo(JLjava/lang/String;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 290
    invoke-virtual {p2, v1}, Landroid/content/pm/ShortcutManager;->createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v0

    .line 293
    :goto_0
    invoke-direct {p0, p5, p3, p4}, Lcom/android/contacts/ShortcutIntentBuilder;->getPhotoDrawable([BLjava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 295
    iget-object p5, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-static {p5, p1}, Lcom/android/contacts/util/ImplicitIntentsUtil;->getIntentForQuickContactLauncherShortcut(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p5

    if-nez p2, :cond_2

    .line 298
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 300
    :cond_2
    invoke-direct {p0, p4}, Lcom/android/contacts/ShortcutIntentBuilder;->generateQuickContactIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 301
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 302
    invoke-static {p4}, Landroidx/core/graphics/drawable/IconCompat;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p4

    .line 303
    iget-object v1, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p4, p2, v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->addToShortcutIntent(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    const-string v0, "android.intent.extra.shortcut.ICON"

    .line 305
    invoke-virtual {p2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_1
    const-string p4, "android.intent.extra.shortcut.INTENT"

    .line 307
    invoke-virtual {p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p4, "android.intent.extra.shortcut.NAME"

    .line 308
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    iget-object p3, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    invoke-interface {p3, p1, p2}, Lcom/android/contacts/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;->onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V

    return-void
.end method

.method private createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 316
    invoke-direct {p0, p4, p2, p3}, Lcom/android/contacts/ShortcutIntentBuilder;->getPhotoDrawable([BLjava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 320
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object p2, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1001a6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string v0, "android.intent.action.CALL"

    .line 324
    invoke-virtual {v0, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string v0, "tel"

    .line 326
    invoke-static {v0, p5, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    const v0, 0x7f0800c5

    .line 327
    invoke-direct {p0, p4, p6, p7, v0}, Lcom/android/contacts/ShortcutIntentBuilder;->generatePhoneNumberIcon(Landroid/graphics/drawable/Drawable;ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 329
    iget-object p6, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    const p7, 0x7f100062

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    .line 330
    invoke-virtual {p6, p7, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    goto :goto_0

    :cond_1
    const-string v0, "smsto"

    .line 332
    invoke-static {v0, p5, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    const v0, 0x7f0800bf

    .line 333
    invoke-direct {p0, p4, p6, p7, v0}, Lcom/android/contacts/ShortcutIntentBuilder;->generatePhoneNumberIcon(Landroid/graphics/drawable/Drawable;ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 335
    iget-object p6, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    const p7, 0x7f100213

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p6, p7, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    .line 338
    :goto_0
    new-instance p7, Landroid/content/Intent;

    invoke-direct {p7, p8, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x4000000

    .line 339
    invoke-virtual {p7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 343
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    invoke-static {p4}, Landroidx/core/graphics/drawable/IconCompat;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    const-string v2, "shortcut"

    .line 346
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager;

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 348
    new-instance p5, Lcom/android/contacts/DynamicShortcuts;

    iget-object p8, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p5, p8}, Lcom/android/contacts/DynamicShortcuts;-><init>(Landroid/content/Context;)V

    .line 350
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object p8

    .line 349
    invoke-virtual {p5, p3, p2, p7, p8}, Lcom/android/contacts/DynamicShortcuts;->getActionShortcutInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 352
    invoke-virtual {v1, p2}, Landroid/content/pm/ShortcutManager;->createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, v3

    goto :goto_1

    :cond_3
    move-object p2, v3

    move-object v0, p2

    :goto_1
    if-nez p2, :cond_4

    .line 356
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    :cond_4
    if-eqz v0, :cond_5

    .line 359
    iget-object p3, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2, v3, p3}, Landroidx/core/graphics/drawable/IconCompat;->addToShortcutIntent(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    goto :goto_2

    :cond_5
    const-string p3, "android.intent.extra.shortcut.ICON"

    .line 361
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_2
    const-string p3, "android.intent.extra.shortcut.INTENT"

    .line 363
    invoke-virtual {p2, p3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p3, "android.intent.extra.shortcut.NAME"

    .line 364
    invoke-virtual {p2, p3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    iget-object p3, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    invoke-interface {p3, p1, p2}, Lcom/android/contacts/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;->onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V

    return-void
.end method

.method private generatePhoneNumberIcon(Landroid/graphics/drawable/Drawable;ILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p0

    .line 404
    iget-object v1, v0, Lcom/android/contacts/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 405
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 407
    iget v3, v0, Lcom/android/contacts/ShortcutIntentBuilder;->mIconDensity:I

    move/from16 v4, p4

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 410
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/contacts/util/BitmapUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 412
    invoke-direct/range {p0 .. p1}, Lcom/android/contacts/ShortcutIntentBuilder;->generateQuickContactIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 413
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 416
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    .line 417
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 418
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 419
    new-instance v14, Landroid/graphics/Rect;

    iget v5, v0, Lcom/android/contacts/ShortcutIntentBuilder;->mIconSize:I

    const/4 v6, 0x0

    invoke-direct {v14, v6, v6, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move/from16 v5, p2

    move-object/from16 v7, p3

    .line 423
    invoke-static {v1, v5, v7}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 424
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v5, :cond_0

    .line 425
    new-instance v11, Landroid/text/TextPaint;

    const/16 v7, 0x101

    invoke-direct {v11, v7}, Landroid/text/TextPaint;-><init>(I)V

    const v7, 0x7f0701cf

    .line 427
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v11, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    const v7, 0x7f060111

    .line 428
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v11, v7}, Landroid/text/TextPaint;->setColor(I)V

    const/high16 v7, 0x40800000    # 4.0f

    const/4 v8, 0x0

    const v9, 0x7f060112

    .line 429
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {v11, v7, v8, v10, v9}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 431
    invoke-virtual {v11}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    .line 434
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 435
    iget v9, v0, Lcom/android/contacts/ShortcutIntentBuilder;->mOverlayTextBackgroundColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v9, 0x7f0701ce

    .line 438
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 439
    iget v9, v7, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v15, v7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v9, v15

    mul-int/lit8 v15, v1, 0x2

    add-int/2addr v9, v15

    .line 440
    iget v15, v0, Lcom/android/contacts/ShortcutIntentBuilder;->mIconSize:I

    sub-int v9, v15, v9

    invoke-virtual {v14, v6, v9, v15, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 441
    invoke-virtual {v12, v14, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 443
    iget v8, v0, Lcom/android/contacts/ShortcutIntentBuilder;->mIconSize:I

    int-to-float v8, v8

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v5, v11, v8, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 444
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v11, v8, v6, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    .line 445
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v15

    iget v6, v0, Lcom/android/contacts/ShortcutIntentBuilder;->mIconSize:I

    int-to-float v9, v6

    sub-float/2addr v9, v5

    div-float/2addr v9, v10

    iget v5, v7, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v6, v5

    sub-int/2addr v6, v1

    int-to-float v10, v6

    move-object v5, v12

    move-object v6, v8

    const/4 v1, 0x0

    move v7, v1

    move v8, v15

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 450
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 451
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 459
    iget v1, v0, Lcom/android/contacts/ShortcutIntentBuilder;->mIconSize:I

    int-to-float v1, v1

    const/high16 v5, 0x42340000    # 45.0f

    mul-float v5, v5, v2

    sub-float/2addr v1, v5

    float-to-int v1, v1

    const/high16 v5, 0x41a80000    # 21.0f

    mul-float v2, v2, v5

    float-to-int v2, v2

    int-to-float v1, v1

    int-to-float v2, v2

    .line 461
    invoke-virtual {v12, v3, v1, v2, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    const/high16 v5, 0x41a00000    # 20.0f

    mul-float v5, v5, v2

    float-to-int v5, v5

    sub-int v5, v1, v5

    const/4 v7, -0x1

    const/high16 v8, 0x41980000    # 19.0f

    mul-float v2, v2, v8

    float-to-int v2, v2

    .line 463
    invoke-virtual {v14, v5, v7, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 465
    invoke-virtual {v12, v3, v6, v14, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 468
    :goto_0
    invoke-virtual {v12, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v4
.end method

.method private generateQuickContactIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 371
    iget v0, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mIconSize:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 372
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 375
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mIconSize:I

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 376
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 377
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 380
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 385
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mResources:Landroid/content/res/Resources;

    .line 386
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p1

    const/4 v0, 0x1

    .line 387
    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 388
    iget v0, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mIconSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 389
    iget v0, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mIconSize:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 390
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 391
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 392
    invoke-virtual {p1, v1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    .line 393
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private getPhotoDrawable([BLjava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 262
    array-length p2, p1

    const/4 p3, 0x0

    invoke-static {p1, v0, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 263
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p3, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2

    .line 265
    :cond_0
    new-instance p1, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {p1, p2, p3, v0}, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 267
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 269
    invoke-static {}, Lcom/android/contacts/lettertiles/LetterTileDrawable;->getAdaptiveIconScale()F

    move-result p2

    iput p2, p1, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->scale:F

    .line 271
    :cond_1
    iget-object p2, p0, Lcom/android/contacts/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, v0, p1}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarDrawableForContact(Landroid/content/res/Resources;ZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public createContactShortcutIntent(Landroid/net/Uri;)V
    .locals 1

    .line 143
    new-instance v0, Lcom/android/contacts/ShortcutIntentBuilder$ContactLoadingAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/ShortcutIntentBuilder$ContactLoadingAsyncTask;-><init>(Lcom/android/contacts/ShortcutIntentBuilder;Landroid/net/Uri;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 147
    new-instance v0, Lcom/android/contacts/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/contacts/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;-><init>(Lcom/android/contacts/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

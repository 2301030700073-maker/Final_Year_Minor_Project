.class public abstract Lcom/android/contacts/ContactPhotoManager;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;,
        Lcom/android/contacts/ContactPhotoManager$LetterTileDefaultImageProvider;,
        Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;,
        Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;
    }
.end annotation


# static fields
.field private static final CONTACT_TYPE_PARAM_KEY:Ljava/lang/String; = "contact_type"

.field static final DEBUG:Z = false

.field static final DEBUG_SIZES:Z = false

.field public static DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider; = null

.field public static final DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

.field private static final DEFAULT_IMAGE_URI:Landroid/net/Uri;

.field private static final DEFAULT_IMAGE_URI_SCHEME:Ljava/lang/String; = "defaultimage"

.field private static final DISPLAY_NAME_PARAM_KEY:Ljava/lang/String; = "display_name"

.field private static final IDENTIFIER_PARAM_KEY:Ljava/lang/String; = "identifier"

.field public static final IS_CIRCULAR_DEFAULT:Z = false

.field private static final IS_CIRCULAR_PARAM_KEY:Ljava/lang/String; = "is_circular"

.field public static final OFFSET_DEFAULT:F = 0.0f

.field private static final OFFSET_PARAM_KEY:Ljava/lang/String; = "offset"

.field public static final SCALE_DEFAULT:F = 1.0f

.field private static final SCALE_PARAM_KEY:Ljava/lang/String; = "scale"

.field static final TAG:Ljava/lang/String; = "ContactPhotoManager"

.field public static final TYPE_BUSINESS:I = 0x2

.field public static final TYPE_DEFAULT:I = 0x1

.field public static final TYPE_PERSON:I = 0x1

.field public static final TYPE_VOICEMAIL:I = 0x3

.field private static sDefaultLetterAvatar:Landroid/graphics/drawable/Drawable;

.field private static sInstance:Lcom/android/contacts/ContactPhotoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "defaultimage://"

    .line 111
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 115
    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->sDefaultLetterAvatar:Landroid/graphics/drawable/Drawable;

    .line 433
    new-instance v1, Lcom/android/contacts/ContactPhotoManager$LetterTileDefaultImageProvider;

    invoke-direct {v1, v0}, Lcom/android/contacts/ContactPhotoManager$LetterTileDefaultImageProvider;-><init>(Lcom/android/contacts/ContactPhotoManager$1;)V

    sput-object v1, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    .line 435
    new-instance v1, Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;

    invoke-direct {v1, v0}, Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;-><init>(Lcom/android/contacts/ContactPhotoManager$1;)V

    sput-object v1, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendBusinessContactType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 189
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 190
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const/4 v0, 0x2

    .line 191
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 192
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;
    .locals 2

    const-class v0, Lcom/android/contacts/ContactPhotoManager;

    monitor-enter v0

    .line 450
    :try_start_0
    new-instance v1, Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-direct {v1, p0}, Lcom/android/contacts/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getDefaultAvatarDrawableForContact(Landroid/content/res/Resources;ZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-nez p2, :cond_1

    .line 127
    sget-object p1, Lcom/android/contacts/ContactPhotoManager;->sDefaultLetterAvatar:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 130
    invoke-static {p0, p1}, Lcom/android/contacts/ContactPhotoManager$LetterTileDefaultImageProvider;->getDefaultImageForContact(Landroid/content/res/Resources;Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sput-object p0, Lcom/android/contacts/ContactPhotoManager;->sDefaultLetterAvatar:Landroid/graphics/drawable/Drawable;

    .line 133
    :cond_0
    sget-object p0, Lcom/android/contacts/ContactPhotoManager;->sDefaultLetterAvatar:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 135
    :cond_1
    invoke-static {p0, p2}, Lcom/android/contacts/ContactPhotoManager$LetterTileDefaultImageProvider;->getDefaultImageForContact(Landroid/content/res/Resources;Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultAvatarUriForContact(Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)Landroid/net/Uri;
    .locals 3

    .line 153
    sget-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    if-eqz p0, :cond_5

    .line 155
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->displayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->displayName:Ljava/lang/String;

    const-string v2, "display_name"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->identifier:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->identifier:Ljava/lang/String;

    const-string v2, "identifier"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 161
    :cond_1
    iget v1, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->contactType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 163
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "contact_type"

    .line 162
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 165
    :cond_2
    iget v1, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    .line 166
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scale"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 168
    :cond_3
    iget v1, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->offset:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_4

    .line 169
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "offset"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 171
    :cond_4
    iget-boolean p0, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    if-eqz p0, :cond_5

    .line 173
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "is_circular"

    .line 172
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 177
    :cond_5
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method protected static getDefaultImageRequestFromUri(Landroid/net/Uri;)Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;
    .locals 4

    .line 228
    new-instance v0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    const-string v1, "display_name"

    .line 229
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "identifier"

    .line 230
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    const-string v1, "contact_type"

    .line 232
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->contactType:I

    :cond_0
    const-string v1, "scale"

    .line 237
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->scale:F

    :cond_1
    const-string v1, "offset"

    .line 242
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 244
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->offset:F

    :cond_2
    const-string v1, "is_circular"

    .line 247
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 248
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 249
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->isCircular:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ContactPhotoManager"

    const-string v1, "Invalid DefaultImageRequest image parameters provided, ignoring and using defaults."

    .line 252
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;
    .locals 2

    .line 438
    sget-object v0, Lcom/android/contacts/ContactPhotoManager;->sInstance:Lcom/android/contacts/ContactPhotoManager;

    if-nez v0, :cond_0

    .line 439
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 440
    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/ContactPhotoManager;->sInstance:Lcom/android/contacts/ContactPhotoManager;

    .line 441
    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 442
    invoke-static {p0}, Lcom/android/contacts/util/PermissionsUtil;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 443
    sget-object p0, Lcom/android/contacts/ContactPhotoManager;->sInstance:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManager;->preloadPhotosInBackground()V

    .line 446
    :cond_0
    sget-object p0, Lcom/android/contacts/ContactPhotoManager;->sInstance:Lcom/android/contacts/ContactPhotoManager;

    return-object p0
.end method

.method public static injectContactPhotoManagerForTesting(Lcom/android/contacts/ContactPhotoManager;)V
    .locals 0

    .line 455
    sput-object p0, Lcom/android/contacts/ContactPhotoManager;->sInstance:Lcom/android/contacts/ContactPhotoManager;

    return-void
.end method

.method public static isBusinessContactUri(Landroid/net/Uri;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 222
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object p0

    .line 223
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 224
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static removeContactType(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .line 202
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 206
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public abstract cacheBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V
.end method

.method public abstract cancelPendingRequests(Landroid/view/View;)V
.end method

.method protected isDefaultImageUri(Landroid/net/Uri;)Z
    .locals 1

    .line 260
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "defaultimage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V
    .locals 8

    .line 522
    sget-object v7, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V

    return-void
.end method

.method public final loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V
    .locals 8

    .line 508
    sget-object v7, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V

    return-void
.end method

.method public abstract loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public final loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V
    .locals 8

    .line 473
    sget-object v7, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V

    return-void
.end method

.method public abstract loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract preloadPhotosInBackground()V
.end method

.method public abstract refreshCache()V
.end method

.method public abstract removePhoto(Landroid/widget/ImageView;)V
.end method

.method public abstract resume()V
.end method

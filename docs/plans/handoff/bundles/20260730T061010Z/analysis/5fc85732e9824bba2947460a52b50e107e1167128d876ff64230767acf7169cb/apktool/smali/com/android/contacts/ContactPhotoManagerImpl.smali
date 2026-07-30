.class Lcom/android/contacts/ContactPhotoManagerImpl;
.super Lcom/android/contacts/ContactPhotoManager;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactPhotoManagerImpl$Request;,
        Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;,
        Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    }
.end annotation


# static fields
.field private static final BITMAP_UNAVAILABLE:Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static mThumbnailSize:I


# instance fields
.field private final mBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapHolderCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Object;",
            "Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBitmapHolderCacheAllUnfresh:Z

.field private final mBitmapHolderCacheRedZoneBytes:I

.field private final mContext:Landroid/content/Context;

.field private mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/widget/ImageView;",
            "Lcom/android/contacts/ContactPhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 600
    sput-object v1, Lcom/android/contacts/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "data15"

    .line 602
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    .line 611
    new-instance v1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    new-array v2, v0, [B

    invoke-direct {v1, v2, v0}, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;-><init>([BI)V

    sput-object v1, Lcom/android/contacts/ContactPhotoManagerImpl;->BITMAP_UNAVAILABLE:Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    .line 612
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 708
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManager;-><init>()V

    const/4 v0, 0x1

    .line 646
    iput-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 664
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 670
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    .line 698
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 701
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 709
    iput-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    .line 711
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 714
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const/high16 v1, 0x49d80000    # 1769472.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 717
    new-instance v2, Lcom/android/contacts/ContactPhotoManagerImpl$1;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/ContactPhotoManagerImpl$1;-><init>(Lcom/android/contacts/ContactPhotoManagerImpl;I)V

    iput-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    const v1, 0x49f42400    # 2000000.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 728
    new-instance v2, Lcom/android/contacts/ContactPhotoManagerImpl$2;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/ContactPhotoManagerImpl$2;-><init>(Lcom/android/contacts/ContactPhotoManagerImpl;I)V

    iput-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 738
    iput v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache adj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContactPhotoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/contacts/ContactPhotoManagerImpl;->mThumbnailSize:I

    .line 749
    invoke-static {p1}, Lcom/android/contactsbind/util/UserAgentGenerator;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mUserAgent:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, ""

    .line 751
    iput-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mUserAgent:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/ContactPhotoManagerImpl;)Ljava/lang/String;
    .locals 0

    .line 583
    iget-object p0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/util/LruCache;
    .locals 0

    .line 583
    iget-object p0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/contacts/ContactPhotoManagerImpl;)I
    .locals 0

    .line 583
    iget p0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/content/Context;
    .locals 0

    .line 583
    iget-object p0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 583
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/ContactPhotoManagerImpl;->obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .line 583
    sget-object v0, Lcom/android/contacts/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .line 583
    sget-object v0, Lcom/android/contacts/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    .locals 0

    .line 583
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/os/Handler;
    .locals 0

    .line 583
    iget-object p0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private cacheBitmap(Ljava/lang/Object;[BZI)V
    .locals 3

    .line 1198
    sget-object v0, Lcom/android/contacts/ContactPhotoManagerImpl;->BITMAP_UNAVAILABLE:Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    new-instance v1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    if-nez p2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    .line 1199
    :cond_0
    invoke-static {p2}, Lcom/android/contacts/util/BitmapUtil;->getSmallerExtentFromBytes([B)I

    move-result v2

    :goto_0
    invoke-direct {v1, p2, v2}, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;-><init>([BI)V

    if-nez p3, :cond_1

    .line 1204
    invoke-static {v1, p4}, Lcom/android/contacts/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;I)V

    :cond_1
    if-eqz p2, :cond_2

    .line 1208
    iget-object p2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    iget-object p2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v1, :cond_3

    const-string p2, "ContactPhotoManager"

    const-string p3, "Bitmap too big to fit in cache."

    .line 1210
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object p2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p2, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1214
    :cond_2
    iget-object p2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p2, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 1217
    iput-boolean p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    return-void
.end method

.method private createAndApplyDefaultImageForUri(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V
    .locals 0

    .line 860
    invoke-static {p2}, Lcom/android/contacts/ContactPhotoManager;->getDefaultImageRequestFromUri(Landroid/net/Uri;)Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    move-result-object p2

    .line 861
    iput-boolean p5, p2, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    .line 862
    invoke-virtual {p6, p1, p3, p4, p2}, Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V

    return-void
.end method

.method private getDrawableForBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/android/contacts/ContactPhotoManagerImpl$Request;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 998
    invoke-static {p3}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->access$000(Lcom/android/contacts/ContactPhotoManagerImpl$Request;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1000
    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p1

    const/4 p3, 0x1

    .line 1001
    invoke-virtual {p1, p3}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 1002
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    return-object p1

    .line 1005
    :cond_0
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p3, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p3
.end method

.method private static inflateBitmap(Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;I)V
    .locals 5

    .line 1015
    iget v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->originalSmallerExtent:I

    .line 1016
    invoke-static {v0, p1}, Lcom/android/contacts/util/BitmapUtil;->findOptimalSampleSize(II)I

    move-result p1

    .line 1017
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v0, :cond_3

    .line 1018
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 1022
    :cond_0
    iget v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->decodedSampleSize:I

    if-ne p1, v1, :cond_1

    .line 1025
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v1, :cond_1

    .line 1026
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    return-void

    .line 1034
    :cond_1
    :try_start_0
    invoke-static {v0, p1}, Lcom/android/contacts/util/BitmapUtil;->decodeBitmapFromBytes([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1040
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1041
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1046
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget v4, Lcom/android/contacts/ContactPhotoManagerImpl;->mThumbnailSize:I

    mul-int/lit8 v4, v4, 0x2

    if-gt v3, v4, :cond_2

    .line 1047
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1048
    invoke-static {v0, v1, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1066
    :cond_2
    iput p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->decodedSampleSize:I

    .line 1067
    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 1068
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method private static isChildView(Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 907
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 908
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 909
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 908
    invoke-static {p0, p1}, Lcom/android/contacts/ContactPhotoManagerImpl;->isChildView(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;Z)Z
    .locals 7

    .line 933
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 936
    invoke-static {p2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->access$000(Lcom/android/contacts/ContactPhotoManagerImpl$Request;)Z

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;Z)V

    return v1

    .line 940
    :cond_0
    iget-object v2, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v2, :cond_8

    array-length v2, v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 945
    :cond_1
    iget-object v2, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    :goto_0
    if-nez v2, :cond_4

    .line 947
    iget-object v2, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    array-length v2, v2

    const/16 v4, 0x2000

    if-ge v2, v4, :cond_3

    .line 949
    invoke-virtual {p2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/contacts/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;I)V

    .line 950
    iget-object v2, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    return v1

    .line 955
    :cond_3
    invoke-static {p2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->access$000(Lcom/android/contacts/ContactPhotoManagerImpl$Request;)Z

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;Z)V

    return v1

    .line 960
    :cond_4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz p3, :cond_6

    if-eqz v4, :cond_6

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    .line 964
    instance-of v5, v4, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    .line 965
    check-cast v4, Landroid/graphics/drawable/TransitionDrawable;

    .line 968
    invoke-virtual {v4}, Landroid/graphics/drawable/TransitionDrawable;->getNumberOfLayers()I

    move-result v5

    sub-int/2addr v5, v6

    .line 967
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, p3, v1

    goto :goto_1

    :cond_5
    aput-object v4, p3, v1

    .line 972
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1, v2, p2}, Lcom/android/contacts/ContactPhotoManagerImpl;->getDrawableForBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/android/contacts/ContactPhotoManagerImpl$Request;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, p3, v6

    .line 973
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, p3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 974
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0xc8

    .line 975
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_2

    .line 977
    :cond_6
    iget-object p3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    .line 978
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-direct {p0, p3, v2, p2}, Lcom/android/contacts/ContactPhotoManagerImpl;->getDrawableForBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/android/contacts/ContactPhotoManagerImpl$Request;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 977
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 983
    :goto_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    iget-object p3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {p3}, Landroid/util/LruCache;->maxSize()I

    move-result p3

    div-int/lit8 p3, p3, 0x6

    if-ge p1, p3, :cond_7

    .line 984
    iget-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    :cond_7
    iput-object v3, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 990
    iget-boolean p1, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    return p1

    .line 941
    :cond_8
    :goto_3
    invoke-static {p2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->access$000(Lcom/android/contacts/ContactPhotoManagerImpl$Request;)Z

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;Z)V

    .line 942
    iget-boolean p1, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    return p1
.end method

.method private loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;)V
    .locals 1

    const/4 v0, 0x0

    .line 866
    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    iget-object p2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    iget-boolean p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    if-nez p1, :cond_1

    .line 873
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->requestLoading()V

    :cond_1
    :goto_0
    return-void
.end method

.method private obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/contacts/ContactPhotoManagerImpl$Request;",
            ">;)V"
        }
    .end annotation

    .line 1240
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 1241
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 1242
    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 1254
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1255
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1256
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    .line 1257
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    .line 1258
    sget-object v4, Lcom/android/contacts/ContactPhotoManagerImpl;->BITMAP_UNAVAILABLE:Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_3

    .line 1261
    iget-object v4, v3, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v4, :cond_3

    iget-boolean v4, v3, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v4, :cond_2

    .line 1262
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1264
    :cond_2
    invoke-virtual {v2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v1

    invoke-static {v3, v1}, Lcom/android/contacts/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;I)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 1267
    iget-boolean v3, v3, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-nez v3, :cond_0

    .line 1268
    :cond_4
    invoke-virtual {v2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->isUriRequest()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1269
    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1271
    :cond_5
    invoke-virtual {v2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1272
    invoke-static {v2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->access$100(Lcom/android/contacts/ContactPhotoManagerImpl$Request;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    .line 1278
    iget-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    return-void
.end method

.method private processLoadedImages()V
    .locals 4

    .line 1151
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1152
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1156
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/android/contacts/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1158
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1162
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->softenCache()V

    .line 1164
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1165
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->requestLoading()V

    :cond_2
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .line 1107
    iget-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoadingRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1108
    iput-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 1109
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private softenCache()V
    .locals 3

    .line 1174
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    const/4 v2, 0x0

    .line 1175
    iput-object v2, v1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public cacheBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V
    .locals 3

    .line 1222
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1225
    sget-object v1, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2, v1}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->createFromUri(Landroid/net/Uri;IZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    move-result-object p1

    .line 1227
    new-instance v1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    invoke-direct {v1, p3, v0}, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;-><init>([BI)V

    .line 1228
    new-instance p3, Ljava/lang/ref/SoftReference;

    invoke-direct {p3, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, v1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    .line 1229
    iget-object p3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    iput-boolean v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 1231
    iget-object p3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelPendingRequests(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    .line 892
    iget-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 896
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 897
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 900
    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p1, v1}, Lcom/android/contacts/ContactPhotoManagerImpl;->isChildView(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 901
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1081
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1082
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 1083
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public ensureLoaderThread()V
    .locals 2

    .line 1140
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    if-nez v0, :cond_0

    .line 1141
    new-instance v0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;-><init>(Lcom/android/contacts/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    .line 1142
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1118
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return v0

    .line 1129
    :cond_0
    iget-boolean p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    if-nez p1, :cond_1

    .line 1130
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->processLoadedImages()V

    :cond_1
    return v1

    .line 1120
    :cond_2
    iput-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 1121
    iget-boolean p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    if-nez p1, :cond_3

    .line 1122
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 1123
    iget-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {p1}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestLoading()V

    :cond_3
    return v1
.end method

.method public loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V
    .locals 7

    if-nez p2, :cond_0

    .line 843
    invoke-virtual {p7, p1, p3, p4, p6}, Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V

    .line 845
    iget-object p2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 848
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/contacts/ContactPhotoManager;->isDefaultImageUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    .line 849
    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManagerImpl;->createAndApplyDefaultImageForUri(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V

    goto :goto_0

    :cond_1
    move-object v0, p2

    move v1, p3

    move v2, p4

    move v3, p5

    move-object v4, p7

    move-object v5, p6

    .line 852
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->createFromUri(Landroid/net/Uri;IZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;)V

    :goto_0
    return-void
.end method

.method public loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    const/4 p2, -0x1

    .line 828
    invoke-virtual {p7, p1, p2, p4, p6}, Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V

    .line 829
    iget-object p2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-wide v0, p2

    move v2, p4

    move v3, p5

    move-object v4, p7

    move-object v5, p6

    .line 832
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->createFromThumbnailId(JZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;)V

    :goto_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 813
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->clear()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 1088
    iput-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    return-void
.end method

.method public preloadPhotosInBackground()V
    .locals 1

    .line 819
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 820
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    return-void
.end method

.method public refreshCache()V
    .locals 3

    .line 914
    iget-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 919
    iput-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 920
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    .line 921
    sget-object v2, Lcom/android/contacts/ContactPhotoManagerImpl;->BITMAP_UNAVAILABLE:Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 922
    iput-boolean v2, v1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removePhoto(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 880
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 881
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 1093
    iput-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    .line 1095
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->requestLoading()V

    :cond_0
    return-void
.end method

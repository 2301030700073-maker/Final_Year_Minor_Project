.class final Lcom/android/contacts/ContactPhotoManagerImpl$Request;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Request"
.end annotation


# instance fields
.field private final mDarkTheme:Z

.field private final mDefaultProvider:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

.field private final mDefaultRequest:Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

.field private final mId:J

.field private final mIsCircular:Z

.field private final mRequestedExtent:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(JLandroid/net/Uri;IZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V
    .locals 0

    .line 1647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1648
    iput-wide p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mId:J

    .line 1649
    iput-object p3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    .line 1650
    iput-boolean p5, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mDarkTheme:Z

    .line 1651
    iput-boolean p6, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mIsCircular:Z

    .line 1652
    iput p4, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    .line 1653
    iput-object p7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mDefaultProvider:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    .line 1654
    iput-object p8, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mDefaultRequest:Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ContactPhotoManagerImpl$Request;)Z
    .locals 0

    .line 1633
    iget-boolean p0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mIsCircular:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/contacts/ContactPhotoManagerImpl$Request;)J
    .locals 2

    .line 1633
    iget-wide v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mId:J

    return-wide v0
.end method

.method public static createFromThumbnailId(JZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)Lcom/android/contacts/ContactPhotoManagerImpl$Request;
    .locals 10

    .line 1659
    new-instance v9, Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, v9

    move-wide v1, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;-><init>(JLandroid/net/Uri;IZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V

    return-object v9
.end method

.method public static createFromUri(Landroid/net/Uri;IZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/ContactPhotoManagerImpl$Request;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1665
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->createFromUri(Landroid/net/Uri;IZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    move-result-object p0

    return-object p0
.end method

.method public static createFromUri(Landroid/net/Uri;IZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)Lcom/android/contacts/ContactPhotoManagerImpl$Request;
    .locals 10

    .line 1672
    new-instance v9, Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    const-wide/16 v1, 0x0

    move-object v0, v9

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;-><init>(JLandroid/net/Uri;IZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V

    return-object v9
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;Z)V
    .locals 3

    .line 1733
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mDefaultRequest:Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    if-nez v0, :cond_3

    if-eqz p2, :cond_1

    .line 1735
    iget-object p2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    invoke-static {p2}, Lcom/android/contacts/ContactPhotoManager;->isBusinessContactUri(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1736
    sget-object p2, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->EMPTY_CIRCULAR_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    goto :goto_0

    .line 1737
    :cond_0
    sget-object p2, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->EMPTY_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    :goto_0
    move-object v0, p2

    goto :goto_1

    .line 1739
    :cond_1
    iget-object p2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    invoke-static {p2}, Lcom/android/contacts/ContactPhotoManager;->isBusinessContactUri(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1740
    sget-object p2, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->EMPTY_DEFAULT_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    goto :goto_0

    .line 1741
    :cond_2
    sget-object p2, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->EMPTY_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    goto :goto_0

    .line 1746
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mDefaultProvider:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    iget v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    iget-boolean v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mDarkTheme:Z

    invoke-virtual {p2, p1, v1, v2, v0}, Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1706
    :cond_1
    const-class v2, Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 1707
    :cond_2
    check-cast p1, Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    .line 1708
    iget-wide v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mId:J

    iget-wide v4, p1, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mId:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 1709
    :cond_3
    iget v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    iget v3, p1, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    if-eq v2, v3, :cond_4

    return v1

    .line 1710
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    iget-object p1, p1, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    invoke-static {v2, p1}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getId()J
    .locals 2

    .line 1685
    iget-wide v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mId:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2

    .line 1719
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRequestedExtent()I
    .locals 1

    .line 1689
    iget v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1681
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1696
    iget-wide v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mId:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x1f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 1697
    iget v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 1698
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public isUriRequest()Z
    .locals 1

    .line 1677
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

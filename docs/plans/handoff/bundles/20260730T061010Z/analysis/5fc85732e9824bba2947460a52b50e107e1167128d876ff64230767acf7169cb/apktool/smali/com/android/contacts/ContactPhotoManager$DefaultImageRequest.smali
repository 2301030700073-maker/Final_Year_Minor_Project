.class public Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImageRequest"
.end annotation


# static fields
.field public static EMPTY_CIRCULAR_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

.field public static EMPTY_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

.field public static EMPTY_DEFAULT_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

.field public static EMPTY_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;


# instance fields
.field public contactType:I

.field public displayName:Ljava/lang/String;

.field public identifier:Ljava/lang/String;

.field public isCircular:Z

.field public offset:F

.field public scale:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 322
    new-instance v0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v0}, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;-><init>()V

    sput-object v0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->EMPTY_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    .line 328
    new-instance v0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->EMPTY_DEFAULT_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    .line 335
    new-instance v0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v1, v3}, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->EMPTY_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    .line 342
    new-instance v0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->EMPTY_CIRCULAR_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 291
    iput v0, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->contactType:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 297
    iput v0, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->scale:F

    const/4 v0, 0x0

    .line 311
    iput v0, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->offset:F

    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IFFZ)V
    .locals 1

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 291
    iput v0, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->contactType:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 297
    iput v0, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->scale:F

    const/4 v0, 0x0

    .line 311
    iput v0, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->offset:F

    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    .line 359
    iput-object p1, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->displayName:Ljava/lang/String;

    .line 360
    iput-object p2, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->identifier:Ljava/lang/String;

    .line 361
    iput p3, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->contactType:I

    .line 362
    iput p4, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->scale:F

    .line 363
    iput p5, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->offset:F

    .line 364
    iput-boolean p6, p0, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    .line 354
    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IFFZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    .line 349
    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IFFZ)V

    return-void
.end method

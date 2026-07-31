.class public final Lcom/google/zxing/common/HybridBinarizer;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final EMPTY:[B


# instance fields
.field public final buckets:[I

.field public luminances:[B

.field public matrix:Lcom/google/zxing/common/BitMatrix;

.field public final source:Lcom/google/zxing/PlanarYUVLuminanceSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    sput-object v0, Lcom/google/zxing/common/HybridBinarizer;->EMPTY:[B

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/PlanarYUVLuminanceSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/common/HybridBinarizer;->source:Lcom/google/zxing/PlanarYUVLuminanceSource;

    .line 5
    .line 6
    sget-object p1, Lcom/google/zxing/common/HybridBinarizer;->EMPTY:[B

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/zxing/common/HybridBinarizer;->luminances:[B

    .line 9
    .line 10
    const/16 p1, 0x20

    .line 11
    .line 12
    new-array p1, p1, [I

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/zxing/common/HybridBinarizer;->buckets:[I

    .line 15
    .line 16
    return-void
.end method

.class public final Lcom/google/zxing/common/DecoderResult;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final byteSegments:Ljava/util/List;

.field public final ecLevel:Ljava/lang/String;

.field public other:Lokio/AsyncTimeout$Companion;

.field public final rawBytes:[B

.field public final structuredAppendParity:I

.field public final structuredAppendSequenceNumber:I

.field public final symbologyModifier:I

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/common/DecoderResult;->rawBytes:[B

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/zxing/common/DecoderResult;->text:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/zxing/common/DecoderResult;->byteSegments:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/zxing/common/DecoderResult;->ecLevel:Ljava/lang/String;

    .line 11
    .line 12
    iput p6, p0, Lcom/google/zxing/common/DecoderResult;->structuredAppendParity:I

    .line 13
    .line 14
    iput p5, p0, Lcom/google/zxing/common/DecoderResult;->structuredAppendSequenceNumber:I

    .line 15
    .line 16
    iput p7, p0, Lcom/google/zxing/common/DecoderResult;->symbologyModifier:I

    .line 17
    .line 18
    return-void
.end method

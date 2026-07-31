.class public final Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget p0, p0, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 7
    .line 8
    check-cast p2, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 9
    .line 10
    iget p0, p2, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    .line 11
    .line 12
    iget p1, p1, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    .line 13
    .line 14
    sub-float/2addr p0, p1

    .line 15
    float-to-double p0, p0

    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    cmpg-double p2, p0, v0

    .line 19
    .line 20
    if-gez p2, :cond_0

    .line 21
    .line 22
    const/4 p0, -0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    cmpl-double p0, p0, v0

    .line 25
    .line 26
    if-lez p0, :cond_1

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    :goto_0
    return p0

    .line 32
    :pswitch_0
    check-cast p1, Lcom/google/zxing/Result;

    .line 33
    .line 34
    check-cast p2, Lcom/google/zxing/Result;

    .line 35
    .line 36
    iget-object p0, p1, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/EnumMap;

    .line 37
    .line 38
    sget-object p1, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    iget-object p2, p2, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/EnumMap;

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    return p0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

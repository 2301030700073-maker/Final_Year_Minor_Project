.class public final Lorg/apache/james/mime4j/stream/MimeConfig;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final maxHeaderCount:I

.field public maxHeaderLen:I

.field public final maxLineLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    if-ltz p1, :cond_1

    .line 8
    .line 9
    if-gt p1, p2, :cond_0

    .line 10
    .line 11
    iput p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxLineLen:I

    .line 12
    .line 13
    iput p2, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    .line 14
    .line 15
    iput p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string p0, "Lower bound cannot be greater then upper bound"

    .line 19
    .line 20
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    throw p0

    .line 25
    :cond_1
    const-string p0, "Lower bound cannot be negative"

    .line 26
    .line 27
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    throw p0
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->$r8$classId:I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxLineLen:I

    .line 34
    iput p2, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    .line 35
    iput p3, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    return-void
.end method


# virtual methods
.method public atEnd()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    .line 2
    .line 3
    iget p0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    .line 4
    .line 5
    if-lt v0, p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "["

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxLineLen:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x3e

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v2, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget p0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    .line 32
    .line 33
    const/16 v1, 0x5d

    .line 34
    .line 35
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v1, "[strictParsing=false, maxLineLen="

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxLineLen:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, ", maxHeaderCount="

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, ", maxHeaderLen="

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget p0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    .line 68
    .line 69
    const-string v1, ", maxContentLen=-1, countLineNumbers=false, headlessParsing=null, malformedHeaderStartsBody=false]"

    .line 70
    .line 71
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public updatePos(I)V
    .locals 2

    .line 1
    const-string v0, "pos: "

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxLineLen:I

    .line 4
    .line 5
    if-lt p1, v1, :cond_1

    .line 6
    .line 7
    iget v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    .line 8
    .line 9
    if-gt p1, v1, :cond_0

    .line 10
    .line 11
    iput p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p0, " > upperBound: "

    .line 15
    .line 16
    invoke-static {p1, v1, v0, p0}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    const-string p0, " < lowerBound: "

    .line 25
    .line 26
    invoke-static {p1, v1, v0, p0}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

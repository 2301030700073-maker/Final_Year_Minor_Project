.class public final synthetic Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:D


# direct methods
.method public synthetic constructor <init>(DI)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-wide p1, p0, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda5;->f$0:D

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iget-wide v1, p0, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda5;->f$0:D

    .line 4
    .line 5
    check-cast p1, Lorg/schabi/newpipe/extractor/Image;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v1, v2}, Lorg/schabi/newpipe/util/image/ImageStrategy;->estimatePixelCount(Lorg/schabi/newpipe/extractor/Image;D)D

    .line 14
    .line 15
    .line 16
    move-result-wide p0

    .line 17
    neg-double p0, p0

    .line 18
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v1, v2}, Lorg/schabi/newpipe/util/image/ImageStrategy;->estimatePixelCount(Lorg/schabi/newpipe/extractor/Image;D)D

    .line 27
    .line 28
    .line 29
    move-result-wide p0

    .line 30
    const-wide v3, 0x40ee848000000000L    # 62500.0

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    mul-double/2addr v3, v1

    .line 36
    sub-double/2addr p0, v3

    .line 37
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide p0

    .line 41
    goto :goto_0

    .line 42
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v1, v2}, Lorg/schabi/newpipe/util/image/ImageStrategy;->estimatePixelCount(Lorg/schabi/newpipe/extractor/Image;D)D

    .line 46
    .line 47
    .line 48
    move-result-wide p0

    .line 49
    const-wide v3, 0x40b5f90000000000L    # 5625.0

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    mul-double/2addr v3, v1

    .line 55
    sub-double/2addr p0, v3

    .line 56
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    .line 57
    .line 58
    .line 59
    move-result-wide p0

    .line 60
    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

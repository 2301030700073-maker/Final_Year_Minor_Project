.class public Lorg/maplibre/android/maps/Image;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field private final buffer:[B

.field private final content:[F

.field private final height:I

.field private final name:Ljava/lang/String;

.field private final pixelRatio:F

.field private final sdf:Z

.field private final stretchX:[F

.field private final stretchY:[F

.field private final width:I


# direct methods
.method public constructor <init>([BFLjava/lang/String;IIZ)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    .line 23
    invoke-direct/range {v0 .. v9}, Lorg/maplibre/android/maps/Image;-><init>([BFLjava/lang/String;IIZ[F[F[F)V

    return-void
.end method

.method public constructor <init>([BFLjava/lang/String;IIZ[F[F[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/maplibre/android/maps/Image;->buffer:[B

    .line 5
    .line 6
    iput p2, p0, Lorg/maplibre/android/maps/Image;->pixelRatio:F

    .line 7
    .line 8
    iput-object p3, p0, Lorg/maplibre/android/maps/Image;->name:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lorg/maplibre/android/maps/Image;->width:I

    .line 11
    .line 12
    iput p5, p0, Lorg/maplibre/android/maps/Image;->height:I

    .line 13
    .line 14
    iput-boolean p6, p0, Lorg/maplibre/android/maps/Image;->sdf:Z

    .line 15
    .line 16
    iput-object p9, p0, Lorg/maplibre/android/maps/Image;->content:[F

    .line 17
    .line 18
    iput-object p7, p0, Lorg/maplibre/android/maps/Image;->stretchX:[F

    .line 19
    .line 20
    iput-object p8, p0, Lorg/maplibre/android/maps/Image;->stretchY:[F

    .line 21
    .line 22
    return-void
.end method

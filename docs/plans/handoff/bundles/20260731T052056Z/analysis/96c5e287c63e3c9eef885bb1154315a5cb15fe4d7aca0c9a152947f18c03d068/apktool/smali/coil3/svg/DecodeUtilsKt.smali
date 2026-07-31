.class public abstract Lcoil3/svg/DecodeUtilsKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final LEFT_ANGLE_BRACKET:Lokio/ByteString;

.field public static final SVG_TAG:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 2
    .line 3
    const-string v0, "<svg"

    .line 4
    .line 5
    invoke-static {v0}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcoil3/svg/DecodeUtilsKt;->SVG_TAG:Lokio/ByteString;

    .line 10
    .line 11
    const-string v0, "<"

    .line 12
    .line 13
    invoke-static {v0}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcoil3/svg/DecodeUtilsKt;->LEFT_ANGLE_BRACKET:Lokio/ByteString;

    .line 18
    .line 19
    return-void
.end method

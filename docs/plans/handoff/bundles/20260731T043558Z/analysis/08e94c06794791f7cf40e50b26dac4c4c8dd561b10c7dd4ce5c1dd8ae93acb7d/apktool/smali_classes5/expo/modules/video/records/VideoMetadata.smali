.class public final Lexpo/modules/video/records/VideoMetadata;
.super Ljava/lang/Object;
.source "VideoMetadata.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u00002\u00020\u00012\u00020\u0002B+\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR&\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR&\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0013\u0010\u000b\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/video/records/VideoMetadata;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "title",
        "",
        "artist",
        "artwork",
        "Landroid/net/Uri;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V",
        "getTitle$annotations",
        "()V",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "getArtist$annotations",
        "getArtist",
        "setArtist",
        "getArtwork$annotations",
        "getArtwork",
        "()Landroid/net/Uri;",
        "setArtwork",
        "(Landroid/net/Uri;)V",
        "expo-video_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private artist:Ljava/lang/String;

.field private artwork:Landroid/net/Uri;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lexpo/modules/video/records/VideoMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lexpo/modules/video/records/VideoMetadata;->title:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lexpo/modules/video/records/VideoMetadata;->artist:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lexpo/modules/video/records/VideoMetadata;->artwork:Landroid/net/Uri;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 8
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/video/records/VideoMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic getArtist$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getArtwork$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getTitle$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getArtist()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lexpo/modules/video/records/VideoMetadata;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public final getArtwork()Landroid/net/Uri;
    .locals 1

    .line 11
    iget-object v0, p0, Lexpo/modules/video/records/VideoMetadata;->artwork:Landroid/net/Uri;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lexpo/modules/video/records/VideoMetadata;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final setArtist(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lexpo/modules/video/records/VideoMetadata;->artist:Ljava/lang/String;

    return-void
.end method

.method public final setArtwork(Landroid/net/Uri;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lexpo/modules/video/records/VideoMetadata;->artwork:Landroid/net/Uri;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lexpo/modules/video/records/VideoMetadata;->title:Ljava/lang/String;

    return-void
.end method

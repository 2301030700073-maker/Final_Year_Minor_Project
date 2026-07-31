.class public final Lexpo/modules/video/records/VideoTrack;
.super Ljava/lang/Object;
.source "Tracks.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/video/records/VideoTrack$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001b\u0008\u0007\u0018\u0000 )2\u00020\u00012\u00020\u0002:\u0001)BO\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0016\u0010\u0013\u001a\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0019\u0010\u0013\u001a\u0004\u0008\u001a\u0010\u0015R\u001c\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001b\u0010\u0013\u001a\u0004\u0008\u0008\u0010\u001cR \u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010 \u0012\u0004\u0008\u001d\u0010\u0013\u001a\u0004\u0008\u001e\u0010\u001fR \u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010$\u0012\u0004\u0008!\u0010\u0013\u001a\u0004\u0008\"\u0010#R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006*"
    }
    d2 = {
        "Lexpo/modules/video/records/VideoTrack;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "id",
        "",
        "size",
        "Lexpo/modules/video/records/VideoSize;",
        "mimeType",
        "isSupported",
        "",
        "bitrate",
        "",
        "frameRate",
        "",
        "format",
        "Landroidx/media3/common/Format;",
        "<init>",
        "(Ljava/lang/String;Lexpo/modules/video/records/VideoSize;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Float;Landroidx/media3/common/Format;)V",
        "getId$annotations",
        "()V",
        "getId",
        "()Ljava/lang/String;",
        "getSize$annotations",
        "getSize",
        "()Lexpo/modules/video/records/VideoSize;",
        "getMimeType$annotations",
        "getMimeType",
        "isSupported$annotations",
        "()Z",
        "getBitrate$annotations",
        "getBitrate",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getFrameRate$annotations",
        "getFrameRate",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "getFormat",
        "()Landroidx/media3/common/Format;",
        "setFormat",
        "(Landroidx/media3/common/Format;)V",
        "Companion",
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


# static fields
.field public static final Companion:Lexpo/modules/video/records/VideoTrack$Companion;


# instance fields
.field private final bitrate:Ljava/lang/Integer;

.field private format:Landroidx/media3/common/Format;

.field private final frameRate:Ljava/lang/Float;

.field private final id:Ljava/lang/String;

.field private final isSupported:Z

.field private final mimeType:Ljava/lang/String;

.field private final size:Lexpo/modules/video/records/VideoSize;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/video/records/VideoTrack$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/video/records/VideoTrack$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/video/records/VideoTrack;->Companion:Lexpo/modules/video/records/VideoTrack$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lexpo/modules/video/records/VideoSize;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Float;Landroidx/media3/common/Format;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lexpo/modules/video/records/VideoTrack;->id:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lexpo/modules/video/records/VideoTrack;->size:Lexpo/modules/video/records/VideoSize;

    .line 57
    iput-object p3, p0, Lexpo/modules/video/records/VideoTrack;->mimeType:Ljava/lang/String;

    .line 58
    iput-boolean p4, p0, Lexpo/modules/video/records/VideoTrack;->isSupported:Z

    .line 59
    iput-object p5, p0, Lexpo/modules/video/records/VideoTrack;->bitrate:Ljava/lang/Integer;

    .line 60
    iput-object p6, p0, Lexpo/modules/video/records/VideoTrack;->frameRate:Ljava/lang/Float;

    .line 61
    iput-object p7, p0, Lexpo/modules/video/records/VideoTrack;->format:Landroidx/media3/common/Format;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lexpo/modules/video/records/VideoSize;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Float;Landroidx/media3/common/Format;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 v0, p8, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p5

    :goto_1
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, p6

    :goto_2
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_3

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object/from16 v8, p7

    :goto_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 54
    invoke-direct/range {v1 .. v8}, Lexpo/modules/video/records/VideoTrack;-><init>(Ljava/lang/String;Lexpo/modules/video/records/VideoSize;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Float;Landroidx/media3/common/Format;)V

    return-void
.end method

.method public static synthetic getBitrate$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getFrameRate$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getId$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getMimeType$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getSize$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic isSupported$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getBitrate()Ljava/lang/Integer;
    .locals 1

    .line 59
    iget-object v0, p0, Lexpo/modules/video/records/VideoTrack;->bitrate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getFormat()Landroidx/media3/common/Format;
    .locals 1

    .line 61
    iget-object v0, p0, Lexpo/modules/video/records/VideoTrack;->format:Landroidx/media3/common/Format;

    return-object v0
.end method

.method public final getFrameRate()Ljava/lang/Float;
    .locals 1

    .line 60
    iget-object v0, p0, Lexpo/modules/video/records/VideoTrack;->frameRate:Ljava/lang/Float;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lexpo/modules/video/records/VideoTrack;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lexpo/modules/video/records/VideoTrack;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()Lexpo/modules/video/records/VideoSize;
    .locals 1

    .line 56
    iget-object v0, p0, Lexpo/modules/video/records/VideoTrack;->size:Lexpo/modules/video/records/VideoSize;

    return-object v0
.end method

.method public final isSupported()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lexpo/modules/video/records/VideoTrack;->isSupported:Z

    return v0
.end method

.method public final setFormat(Landroidx/media3/common/Format;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lexpo/modules/video/records/VideoTrack;->format:Landroidx/media3/common/Format;

    return-void
.end method

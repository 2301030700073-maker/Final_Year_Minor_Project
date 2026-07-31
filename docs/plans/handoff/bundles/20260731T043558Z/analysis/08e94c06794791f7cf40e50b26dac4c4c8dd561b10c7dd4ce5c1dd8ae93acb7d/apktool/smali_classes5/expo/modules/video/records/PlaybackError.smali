.class public final Lexpo/modules/video/records/PlaybackError;
.super Ljava/lang/Object;
.source "PlaybackError.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/video/records/PlaybackError$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u000f2\u00020\u00012\u00020\u0002:\u0001\u000fB\u0013\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u0011\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0005\u0010\tR&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/video/records/PlaybackError;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "message",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "exception",
        "Landroidx/media3/common/PlaybackException;",
        "(Landroidx/media3/common/PlaybackException;)V",
        "getMessage$annotations",
        "()V",
        "getMessage",
        "()Ljava/lang/String;",
        "setMessage",
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
.field public static final Companion:Lexpo/modules/video/records/PlaybackError$Companion;


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/video/records/PlaybackError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/video/records/PlaybackError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/video/records/PlaybackError;->Companion:Lexpo/modules/video/records/PlaybackError$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lexpo/modules/video/records/PlaybackError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/PlaybackException;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lexpo/modules/video/records/PlaybackError;->Companion:Lexpo/modules/video/records/PlaybackError$Companion;

    invoke-static {v0, p1}, Lexpo/modules/video/records/PlaybackError$Companion;->access$errorMessageFromException(Lexpo/modules/video/records/PlaybackError$Companion;Landroidx/media3/common/PlaybackException;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lexpo/modules/video/records/PlaybackError;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lexpo/modules/video/records/PlaybackError;->message:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lexpo/modules/video/records/PlaybackError;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic getMessage$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lexpo/modules/video/records/PlaybackError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lexpo/modules/video/records/PlaybackError;->message:Ljava/lang/String;

    return-void
.end method
